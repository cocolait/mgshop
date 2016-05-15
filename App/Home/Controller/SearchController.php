<?php namespace Home\Controller; 
/**
 * 搜索页控制器
 */
class SearchController extends CommonController{
	//构造函数
	protected $categoryModel = null;
	protected $goodsModel = null;
	protected $goodsAttrModel = null;
	protected $goodsTypeAttrModel = null;
	public function __init(){
		parent::__init();
		//实例化分类模型
		$this->categoryModel = new \Common\Model\Category();
		//实例化商品属性表
		$this->goodsAttrModel = new \Common\Model\GoodsAttr();
		//商品表模型
		$this->goodsModel = new \Common\Model\Goods();
		//实例化类型属性表
		$this->goodsTypeAttrModel = new \Common\Model\GoodsTypeAttr();
		
	}

	//搜索首页
   	public function index(){
   			//接受搜索的name名
   			$words = isset($_GET['words']) ? $_GET['words'] : '';
   			$hot = isset($_GET['hot']) ? $_GET['hot'] : 0;
   			
   			if (empty($words)) {
   				$words = "上衣";
   			}
   			//排序条件
   			$order = "";
   			switch ($hot) {
   				case 1:
   					$order = "hot";
   					break;
   				case 2:
   					$order = "time";
   				 	break;
   				default:
   					$order = "time";
   					break;
   			}
   			
   			if ($words) {
   				//查出该分类下面所有的分类ID
   				$cid = $this->categoryModel->where("cname LIKE '%{$words}%' ")->pluck('cid');
   				if ($cid) {
   					//有商品
					//1.根据分类cid查询所有的所有商品id
   					$gids = $this->cidGetgids($cid);
   					//2.根据gid获取商品属性
   					$gAttrData = $this->getGoodsAttr($gids);
   					//3.筛选地址处理，筛选参数param处理
   					$sum = count($gAttrData);
   					if ($sum) {
   						//有商品的时候
   						$path = isset($_GET['path']) ? explode('_', $_GET['path']) : array_fill(0, $sum, 0);
   					}else{
   						//如果分类下面没有商品属性的时候
   						$path = array();
   					}
   					//4.根据商品属性id进行筛选商品
   					$lastGids = $this->filterGid($path,$gids);
   					//5.根据gids查询出所有的商品
   					if ($lastGids) {
   						//有商品的时候
   						$where = "gid IN (" .implode(',', $lastGids). ")" . " AND is_delete=0";
   						//统计总数
   						$total = $this->goodsModel->where($where)->count();
   						//定制分页样式
   						$page = Page::row(20)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
   						$field = 'gid,gname,shopprice,pic,click,goods_type_tid';
   						if ($order) {
   							$goodsData = $this->goodsModel->where($where)->field($field)->orderBy($order,"DESC")->limit(Page::limit())->get();
   						}else{
   							$goodsData = $this->goodsModel->where($where)->field($field)->limit(Page::limit())->get();
   						}
   						
   					}else{
   						//没有商品的时候
   						$goodsData = array();
   						$page = "";
   					}
   				}else{
   					//如果没有默认上衣分类,确保有商品
   					$cid = 1;
   					//1.根据分类cid查询所有的所有商品id
   					$gids = $this->cidGetgids($cid);
   					//2.根据gid获取商品属性
   					$gAttrData = $this->getGoodsAttr($gids);
   					//3.筛选地址处理，筛选参数param处理
   					$sum = count($gAttrData);
   					if ($sum) {
   						//有商品的时候
   						$path = isset($_GET['path']) ? explode('_', $_GET['path']) : array_fill(0, $sum, 0);
   					}else{
   						//如果分类下面没有商品属性的时候
   						$path = array();
   					}
   					//4.根据商品属性id进行筛选商品
   					$lastGids = $this->filterGid($path,$gids);
   					//5.根据gids查询出所有的商品
   					if ($lastGids) {
   						//有商品的时候
   						$where = "gid IN (" .implode(',', $lastGids). ")" . " AND is_delete=0";
   						//统计总数
   						$total = $this->goodsModel->where($where)->count();
   						//定制分页样式
   						$page = Page::row(20)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
   						$field = 'gid,gname,shopprice,pic,click,goods_type_tid';
   						if ($order) {
   							$goodsData = $this->goodsModel->where($where)->field($field)->orderBy($order,"DESC")->limit(Page::limit())->get();
   						}else{
   							$goodsData = $this->goodsModel->where($where)->field($field)->limit(Page::limit())->get();
   						}
   					}
   					
   				}
   			}
   			
   			//分配筛选地址
   			$this->assign('path', $path);
   			//分配循环总数-1
   			$this->assign('sum', isset($sum)?$sum-1:0);
   			//分配商品的属性
   			$this->assign('gAttrData', $gAttrData);
   			//分配商品信息
   			$this->assign('goodsData',$goodsData);
   			//分配分页样式
   			$this->assign('page', $page);
   			//分配hot
   			$this->assign('hot', isset($_GET['hot'])?$_GET['hot']:0);
   			$this->display();
    }
    
    
    
    //根据分类cid查询所有的所有商品id
    private  function cidGetgids($cid){
    	//查出所有的子分类
    	$cids = childLevel($this->categoryModel->get(),$cid);
    	$cids[] = $cid;
    	//查询所有的商品ID
    	$gids = $this->goodsModel->where("category_cid IN (" . implode(',', $cids) . ")")->lists('gid');
    	return $gids;
    }
    
    //根据gid获取商品属性
    private function getGoodsAttr($gids){
    	//为了避免相同属性值的出现，用分组查询
    	if ($gids) {
    		//有商品的时候
    		//根据属性名称分组,去掉重复的属性名称
    		$goodsAttrData = $this->goodsAttrModel->where("goods_gid IN (" .implode(',', $gids). ")")->groupBy('gt_name')->get();
    		//重组数组,按类型id来重组,把相同的属性归结在一起
    		$temp = array();
    		foreach ($goodsAttrData as $v) {
    			$temp[$v['goods_type_attr_gtid']][] = $v;
    		}
    		//查询出类型名称,并且压入新数组中
    		$newTemp = array();
    		foreach ($temp as $gtid => $v){
    			//查询出商品类型名称
    			$gtname = $this->goodsTypeAttrModel->where(array('gtid'=>$gtid))->pluck('gtname');
    			$newTemp[] =  array(
    					'gtname' => $gtname,
    					'value' => $v
    					);
    		}
    		return $newTemp;
    	}else{
    		//没有商品的时候
    		return array();
    	}
    	
    }
    	
     //根据商品属性id进行筛选商品
    private function filterGid($path,$cidGetgids){
    		$gids = array();
    		foreach ($path as $gt_id) {
    			//点击属性筛选的时候
    			if ($gt_id) {
    				//查询出名称
    				$gt_name = $this->goodsAttrModel->where(array('gt_id'=>$gt_id))->pluck('gt_name');
    				//根据名称查询出所有的gid
    				$gids[] = $this->goodsAttrModel->where(array('gt_name'=>$gt_name))->lists('goods_gid');
    			}
    		}
    		
    		if ($gids) {
    			//根据查询出来的gid进行取交集
    			$gidsOne = $gids[0];
    			foreach ($gids as $v) {
    				$gidsOne = array_intersect($v, $gidsOne);
    			}
    			//在和分类查询出来的gid进行取交集
    			$lastGids = array_intersect($gidsOne, $cidGetgids);
    			return $lastGids;
    		}else{
    			return $cidGetgids;
    		}
    }
}

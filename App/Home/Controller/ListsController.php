<?php namespace Home\Controller; 

/**
 * 首页商品列表页
 */
class ListsController extends CommonController{
	//构造函数
	public function __init(){
		parent::__init();
	}

   	public function index(){
   			//实例化分类表模型
   			$category = new \Common\Model\Category();
   			//实例化商品表模型
   			$goodsModel = new \Common\Model\Goods();
   			//接受分类ID,查询对应的父级ID
   			$cid = Q('get.cid',0,'intval');
   			
   			$hot = isset($_GET['hot']) ? $_GET['hot'] : 0;
   			
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
   			
   			
   			if ($cid) {
   				//获取所有的商品的数据
   				//获取除自身之外所有子分类id
   				$cids = childLevel($category->get(),$cid);
   				//压入自身
   				$cids[] = $cid;
   				//总计总数,没有被删除的
   				$where = "category_cid IN" . "(" . implode(',',$cids) . ")" . " AND is_delete=0";
   				$total = $goodsModel->where($where)->count();
   				//定制分页样式
   				$page = Page::row(30)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
   				$goodsData = $goodsModel->where($where)->orderBy($order,"DESC")->limit(Page::limit())->field('gid,gname,shopprice,pic,click,goods_type_tid')->get();
   				//分配商品数据
   				$this->assign('goodsData', $goodsData);
   				$this->assign('page', $page);
   				
   				//获取所有父级栏目
   				$pids= Data::parentChannel($category->get(),$cid);
   				//分配分类ID
   				$this->assign('cid', $this->getParentCid($pids));
   				//分配分类名称
   				$this->assign('cname', $category->where(array('cid'=>$cid))->pluck('cname'));
   				//查出所有分类的数据
   				$this->assign('cateData', Data::channelLevel($category->get()));
   			}
   			//分配hot
   			$this->assign('hot', isset($_GET['hot'])?$_GET['hot']:0);
   			$this->display();
    }
    
    protected function getParentCid($pids){
    	$cid = '';
    	foreach ($pids as $v){
    		if ($v['pid'] == 0) {
    			$cid = $v['cid'];
    		}
    	}
    	return $cid;
    }
}

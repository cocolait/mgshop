<?php namespace Home\Controller; 

/**
 * 前台详情页控制器
 */
class DetailsController extends CommonController{
	//构造函数
	public function __init(){
		parent::__init();
	}
	
	//详情页
   	public function index(){
   			$gid = Q('get.gid',0,'intval');
			
   			//实例化商品表模型
   			$goodsModel = new \Common\Model\Goods();
   			//取商品数据和图片
   			$where = array('gid'=>$gid);
   			$Imgdata = $goodsModel->join('goods_detail','goods_gid','=','gid')->where($where)->field('gid,gname,marketprice,shopprice,click,intro,service,repertory')->find();
   			
   			$this->assign('imgData', $Imgdata);
   			//查出商品属性
   			$attrModel = new \Common\Model\GoodsAttr();
   			$attrData = $attrModel->join('goods_type_attr','gtid','=','goods_type_attr_gtid')->where("goods_gid={$gid} AND goods_class=0")->get();
   			
   			//查出货品数据 规格
   			//实例化货品表模型
   			$goodsListModel = new \Common\Model\GoodsList();
   			//实例化类型属性表模型
   			$gTypeAttrModel = new \Common\Model\GoodsTypeAttr();
   			//实例化类型属性表
   			$goodsAttrModel = new \Common\Model\GoodsAttr();
   			//查询商品对应的规格
   			$listData = $goodsAttrModel->join('goods_type_attr','goods_type_attr_gtid','=','gtid')->where("goods_gid={$gid} AND goods_class=1")->get();
   			$newData = array();
   			foreach ($listData as $k=>$v) {
   				$newData[$v['gtname']][] = $v;
   			}
   			
   			//分配规格值
   			$this->assign('listData',$newData);
   			//分配属性
   			$this->assign('attrData', $attrData);
   			//分配图册
   			//实例化图册模型
   			$imgsModel = new \Common\Model\Imgs();
   			$imgData = $imgsModel->where(array('goods_gid'=>$gid))->get();
   			$this->assign('imgsData', $imgData);
   			$this->assign('firstImgs', $imgData[0]['medium']);
   			//查询出商品数据
   			$this->display();
    }
    
    //异步处理库存值
    public function detList(){
    	if (IS_AJAX) {
    		$gid = Q('post.gid',0,'intval');
    		$gtid = implode(',', Q('post.gtid'));
    		
    		//找到了那么就查询数据数据库
    		//实例化商品货品表模型
    		$goodsListModel = new \Common\Model\GoodsList();
    		$inventory = $goodsListModel->where("goods_gid={$gid} AND combine='{$gtid}' ")->pluck('inventory');
    		if ($inventory) {
    				//就代表货品存在,返回库存量
    				exit(json_encode(array('status'=>1,'msg'=>$inventory,'gtid'=>$gtid)));
    		}else{
    				exit(json_encode(array('status'=>0,'msg'=>'该商品已被售空,请您重新选择哦^_^','gtid'=>0)));
    		}
    		
    	}
    }
    
    //异步处理库存 加
    /* public function addDet(){
    	if (IS_AJAX) {
    		//接受参数值
    		$gid = Q('post.gid',0,'intval');
    		$gtid = Q('post.gtid');
    		//修改库存量
    		//实例化商品货品表模型
    		$goodsListModel = new \Common\Model\GoodsList();
    		$where = "goods_gid={$gid} AND combine='{$gtid}' ";
    		//查出旧库存
    		$inventory = $goodsListModel->where($where)->pluck('inventory');
    		//计算新库存
    		$newInventory = $inventory - 1;
    		if ($goodsListModel->where($where)->save(array('inventory'=>$newInventory))) {
    			exit(json_encode(array('status'=>1,'msg'=>$newInventory)));
    		}
    		exit(json_encode(array('status'=>0,'msg'=>'操作失败')));
    	}
    } */
    
    //异步处理库存 减
    /* public function minusDet(){
    	if (IS_AJAX) {
    		//接受参数值
    		$gid = Q('post.gid',0,'intval');
    		$gtid = Q('post.gtid');
    		//修改库存量
    		//实例化商品货品表模型
    		$goodsListModel = new \Common\Model\GoodsList();
    		$where = "goods_gid={$gid} AND combine='{$gtid}' ";
    		//查出旧库存
    		$inventory = $goodsListModel->where($where)->pluck('inventory');
    		//计算新库存
    		$newInventory = $inventory + 1;
    		if ($goodsListModel->where($where)->save(array('inventory'=>$newInventory))) {
    			exit(json_encode(array('status'=>1,'msg'=>$newInventory)));
    		}
    		exit(json_encode(array('status'=>0,'msg'=>'操作失败')));
    	}
    } */
    
    //加入购物车 异步
    public function joinCart(){
    	 if (IS_AJAX) {
    	 	$gid = Q('post.gid',0,'intval');
    		$gtid = Q('post.gtid');
    		//定义用于判断刷新的变量
    		
    		
    		//实例化商品货品表模型
    		$goodsListModel = new \Common\Model\GoodsList();
    		$where = "goods_gid={$gid} AND combine='{$gtid}' ";
    		//查出货品id,和库存
    		$glData = $goodsListModel->where($where)->field('glid,inventory')->find();
    		
    		//查询出商品名称,商品图片,规格属性,价格
    		$goodsModel = new \Common\Model\Goods();
    		$gData = $goodsModel->where(array('gid'=>$gid))->field('gname,pic,marketprice,shopprice')->find();
    		//查出规格属性
    		//实例化类型属性表模型
    		$goodsAttrModel = new \Common\Model\GoodsAttr();
    		$gtData = $goodsAttrModel->join('goods_type_attr','gtid','=','goods_type_attr_gtid')->where("gt_id IN ($gtid)")->get();
    		$newData = array();
    		foreach ($gtData as $v){
    			$newData[$v['gtname']] = $v['gt_name'];
    		}
//     		$newData['gtid'] = $gtid;
    		//购买数量
    		$num = Q('post.num');
    		//把信息存入session中
    		$data = array(
    				'gid' => $gid,
    				'gname' => $gData['gname'],
    				'pic' => $gData['pic'],
    				'marketprice' => $gData['marketprice'],
    				'shopprice' => $gData['shopprice'],
    				'options' => $newData,
    				'num' => $num,
    				'price' => $gData['shopprice'] * $num,
    				'gtid' => $gtid,
    				'glid' => $glData['glid'],
    				'inventory' => $glData['inventory']
    				);
    		//判断购物车session如果存在,就往后压入
    		if (isset($_SESSION['goods']) && !empty($_SESSION['goods'])) {
    			$datas = $_SESSION['goods'];
    			//同一产品数量加一即可
    			foreach ($datas as $k=>$v){
    				//判断商品是否已经存在
    				if ($v['glid'] == $glData['glid']) {
    					//数量
    					$data['num'] = $datas[$k]['num'] + 1;
    					//小计
    					$data['price'] = $datas[$k]['shopprice'] * $data['num'];
    					unset($datas[$k]);
    				}
    			}
    			//重新赋值
    			$datas[] = $data;
    			$tatol = count($datas);
    			$_SESSION['goods'] = array_values($datas);
    			//商品数量
    			$_SESSION['tatol'] = $tatol;
    			$first = 1;
    		}else{
    			$first = 0;
    			$datas[] = $data;
    			$tatol = count($datas);
    			$_SESSION['goods'] = $datas;
    			//商品数量
    			$_SESSION['tatol'] = $tatol;
    		}
    		exit(json_encode(array('status'=>1,'msg'=>'加入购车成功^_^','tatol'=>$tatol,'first' => $first)));
    	 }
    }
    
}

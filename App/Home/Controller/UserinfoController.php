<?php namespace Home\Controller; 
/**
 * 前台用户个人中心和订单管理和地址管理
 */
class UserinfoController extends CommonController{
	//构造函数
	protected $tagModel = null;
	
	public function __init(){
			parent::__init();
			//实例化标签表
			$this->tagModel = new \Common\Model\Tag();
			$this->assign('status','');
			$this->assign('tatol', '');
	}
	
	//用户基本信息
    public function userinfo(){
    	 if (IS_POST) {
    	 	if ($this->UserinfoModel->store()) $this->success('修改成功^_^');
    	 	$this->error('修改失败/(ㄒoㄒ)/~~');
    	 }
    	 //分配数据
    	 $where = array('user_uid'=>$_SESSION['uid']);
    	 $userData = $this->UserinfoModel->where($where)->find();
    	 $tData = $this->tagModel->where($where)->lists('tname');
    	 if ($tData) {
    	 	$userData['tag'] = implode(',', $tData);
    	 }
    	 $sex  = isset($userData['sex']) ? $userData['sex'] : '';
    	 $this->assign('userData', $userData);
    	 $this->assign('sex', $sex);
    	 $this->assign('nickname', $this->userModel->where(array('uid'=>$_SESSION['uid']))->pluck('nickname'));
       	 $this->assign('pay', $this->userModel->where(array('uid'=>$_SESSION['uid']))->pluck('pay'));
    	 $this->display();
    }
    
    public function editFace(){
    	//分配头像
    	$this->display();
    }
    
    //异步处理图片
    public function face(){
    	//文件路径
    	$imgDir = 'Upload/User/' . date('ymd');
    	//上传图片
    	$file = Upload::path($imgDir)->type('jpg,jpeg,png,gif')->size(2000000)->make();
    	if (!$file) {
    		//上传失败
    		exit(json_encode(array('status' => 0,'msg' => Upload::getError())));
    	}else{
    		//上传成功,组合缩略路径返回
    		$face48x48 =  $imgDir . '/' . 'face48x48_' . $file['0']['basename'];
    		$face100x100 =  $imgDir . '/' . 'face100x100_' . $file['0']['basename'];
    		//缩略图
    		$face48x48Path = Image::thumb($file['0']['path'],$face48x48,48,48,6);
    		$face100x100Path = Image::thumb($file['0']['path'],$face100x100,100,100,6);
    		//缩略成功,更新数据
    		$data = array(
    				'face48x48' => $face48x48Path,
    				'face100x100' => $face100x100Path
    				);
    		$this->UserinfoModel->where(array('user_uid'=>$_SESSION['uid']))->save($data);
    		//删除原图
    		unlink($file['0']['path']);
    		exit(json_encode(array('status' => 1,'msg' =>$face100x100Path)));
    	}
    }
	
    //用户地址管理
    public function site(){
    	$sid = Q('get.sid',0,'intval');
    	$this->assign('oldSiteData', $this->siteModel->where(array('sid'=>$sid))->find());
    	$this->assign('siteData', $this->siteModel->where(array('user_uid'=>$_SESSION['uid']))->orderBy('status','DESC')->get());
    	$this->display();
    }
	
	//我的订单
	public function myIndent(){
		$status = Q('get.s',0,'intval');
		$total = 0;
		if (!$status) {
			//全部订单
			$orderData = $this->orderModel->join('order_list','oid','=','order_oid')->field('oid,number,subtotal,time,status,goods_gid,glid,quantity,paymethod')->where(array('user_uid'=>$_SESSION['uid']))->get();
			$orderData = $this->combineArray($orderData);
			$total = count($orderData);
		}else{
			//指定订单
			$where = "user_uid={$_SESSION['uid']} AND status = {$status}";
			$orderData = $this->orderModel->join('order_list','oid','=','order_oid')->field('oid,number,subtotal,time,status,goods_gid,glid,quantity,paymethod')->where($where)->get();
			if ($orderData) {
				//代表已查到
				$orderData = $this->combineArray($orderData);
				$total = count($orderData);
			}else{
				$orderData = '';
			}
		}
		$this->assign('tatol', $total);
		$this->assign('status', isset($status)?$status:'');
		$this->assign('orderData', $orderData);
		$this->display();
	}
	
	
	//组合数组
	protected  function combineArray($orderData){
		//实例化商品表
		$goodsModel = new \Common\Model\Goods();
		foreach ($orderData as $k=>$v){
			//首先查询出商品的名称,价格
			$gData = $goodsModel->where(array('gid'=>$v['goods_gid']))->field('gname,marketprice,shopprice,pic')->find();
			$orderData[$k]['gname'] = $gData['gname'];
			$orderData[$k]['marketprice'] = $gData['marketprice'];
			$orderData[$k]['shopprice'] = $gData['shopprice'];
			$orderData[$k]['pic'] = $gData['pic'];
			$orderData[$k]['glid'] = $v['glid'];
			//查询出规格
			//实例化货品表模型
			$goodsListModel = new \Common\Model\GoodsList();
			//查询商品列表商品对应的属性ID
			$combine = $goodsListModel->where(array('glid'=>$v['glid']))->pluck('combine');
		
			//实例化类型属性表
			$goodsAttrModel = new \Common\Model\GoodsAttr();
			//查询商品对应的规格
			$listData = $goodsAttrModel->join('goods_type_attr','goods_type_attr_gtid','=','gtid')->where(" gt_id IN ({$combine})")->field('gtname,gt_name')->get();
			//组合规格属性
			$newData = array();
			foreach ($listData as $v) {
				$newData[$v['gtname']]= $v['gt_name'];
			}
			//压入规格属性
			$orderData[$k]['options'] = $newData;
		}
		return $orderData;
	}
	
	
	//订单详情页
	public function orderdetail(){
		$oid = Q('get.oid',0,'intval');
		//订单详情
		$orderData = $this->orderModel->join('order_list','oid','=','order_oid')->where(array('oid'=>$oid))->field('consignee,address,mobile,number,status,time,subtotal,goods_gid,quantity,glid,plytime,sendtime,puttime')->find();
		//商品详情
		$goodsModel = new \Common\Model\Goods();
		$gData = $goodsModel->where(array('gid'=>$orderData['goods_gid']))->field('gname,marketprice,shopprice,pic')->find();
		//把商品信息压入数组中
		$orderData['gname'] = $gData['gname'];
		$orderData['marketprice'] = $gData['marketprice'];
		$orderData['shopprice'] = $gData['shopprice'];
		$orderData['pic'] = $gData['pic'];
		
		//获取物流信息压入数组中
		$logisticsModel = new \Common\Model\Logistics();
		$logisticsData = $logisticsModel->where(array('order_oid'=>$oid))->find();
		
		
		//规格
		//实例化货品表模型
		$goodsListModel = new \Common\Model\GoodsList();
		//查询商品列表商品对应的属性ID
		$combine = $goodsListModel->where(array('glid'=>$orderData['glid']))->pluck('combine');
		
		//实例化类型属性表
		$goodsAttrModel = new \Common\Model\GoodsAttr();
		//查询商品对应的规格
		$listData = $goodsAttrModel->join('goods_type_attr','goods_type_attr_gtid','=','gtid')->where(" gt_id IN ({$combine})")->field('gtname,gt_name')->get();
		//组合规格属性
		$newData = array();
		foreach ($listData as $v) {
			$newData[$v['gtname']]= $v['gt_name'];
		}
		//压入规格属性
		$orderData['options'] = $newData;
		
		//分配数据
		$this->assign('orderData', $orderData);
		//分配物流信息
		$this->assign('LogData', isset($logisticsData)?$logisticsData:array());
		$this->display();
	}
}

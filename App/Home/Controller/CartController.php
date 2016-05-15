<?php namespace Home\Controller; 

/**
 * 购物车控制器
 */
class CartController extends CommonController{
	//构造函数
	public function __init(){
		parent::__init();
		$sum = 0;
		if (isset($_SESSION['goods'])) {
			foreach ($_SESSION['goods'] as $v){
				$sum+=(int) $v['price'];
			}
		}
		$this->assign('sum', isset($sum)?$sum:0);
	}
	
	//我的购物车首页
   	public function index(){
   			//计算总价格
   			$this->display();
    }
    
    //确认订单
    public function affirmCart(){
    	//分配地址信息
    	//获取sid 编辑地址
    	$sid = Q('get.sid',0,'intval');
    	$this->assign('oldSiteData', $this->siteModel->where(array('sid'=>$sid))->find());
    	$this->assign('siteData', $this->siteModel->where(array('user_uid'=>$_SESSION['uid']))->orderBy('status','DESC')->get());
    	$this->display();
    }
    
    //支付
    public function alipay(){
    	$oid = Q('get.oid',0,'intval');
    	if ($oid) {
    		$totalPrice = $this->orderModel->where(array('oid'=>$oid))->pluck('total');
    	}
    	//分配用户余额
    	$pay = $this->userModel->where(array('uid'=>$_SESSION['uid']))->pluck('pay');
    	$this->assign('pay', $pay);
    	$this->assign('totalPrice', isset($totalPrice)?$totalPrice:0);
    	$this->display();
    }
}

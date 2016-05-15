<?php namespace Home\Controller; 
use Hdphp\Controller\Controller;
/**
 * 前台公共控制器
 */
class CommonController extends Controller{
	//构造函数
	protected $UserinfoModel = null;
	protected $userModel = null;
	protected $siteModel = null;
	protected $orderModel = null;
	protected $orderListModel = null;
	protected $goodsListModel = null;
	protected $linkModel = null;
	public function __init(){
		//实例化用户信息模型表
		$this->UserinfoModel = new \Common\Model\Userinfo();
		//实例化用户表
		$this->userModel = new \Common\Model\User();
		//实例化收货地址表模型
		$this->siteModel = new \Common\Model\Site();
		//实例化订单表模型
		$this->orderModel = new \Common\Model\Order();
		//实例化订单列表模型
		$this->orderListModel = new \Common\Model\OrderList();
		//实例化货品表模型
		$this->goodsListModel = new \Common\Model\GoodsList();
		//实例化货品表模型
		$this->linkModel = new \Common\Model\Link();
		
		//判断2周自动登录
		if (isset($_COOKIE['auto']) && !isset($_SESSION['uid'])) {
			$auto = encryption($_COOKIE['auto'],1);
			$data = $this->userModel->where(array('account'=>$auto))->find();
			if (!$data) {
				setcookie('auto','',time()-1,'/');
			}else{
				if (!$data['mg_lock']) {
					//用户未被锁定,自动登录成功
					$_SESSION['uid'] = $data['uid'];
				}
			}
		}
		
		//session存在才分配数据
		if (isset($_SESSION['uid'])) {
			$face = $this->UserinfoModel->where(array('user_uid'=>$_SESSION['uid']))->pluck('face100x100');
			$face = isset($face) ? $face : '';
			$this->assign('face', $face);
		}
		
		//设置缓存
		if (!$cateData_Cache = Cache::get('cateData_Cache')) {
			//查询数据库,把数据写入缓存文件中
			//分配热点分类
			$cateModel = new \Common\Model\Category();
			$cateData = $cateModel->where(array('is_hot'=>1))->field('cid,cname')->orderBy('rand()')->limit(8)->get();
			//设置缓存
			Cache::set('cateData_Cache',$cateData,604800);
		}
		$hotgoods =  isset($cateData_Cache)?$cateData_Cache:$cateModel->where(array('is_hot'=>1))->field('cid,cname')->orderBy('rand()')->limit(8)->get();
		//分配热点分类
		$this->assign('cateData_cache', $hotgoods);
		
		//分配友情链接
		$this->assign('linkData', $this->linkModel->get());
	}
	
	//异步请求商品   数量加1
	public function Addnum(){
		if (IS_AJAX) {
			//接受货品ID
			$glid = Q('post.glid',0,'intval');
			
			//更新SESSION数组里面 购买数量和小计价格
			if (isset($_SESSION['goods'])) {
				foreach ($_SESSION['goods'] as $k=>$v){
					if ($v['glid'] == $glid) {
						//重新赋值，更新购买数量
						$_SESSION['goods'][$k]['num'] = $_SESSION['goods'][$k]['num'] + 1;
						//更新小计价格
						$_SESSION['goods'][$k]['price'] = $_SESSION['goods'][$k]['num'] * $_SESSION['goods'][$k]['shopprice'];
					}
				}
			}
			exit(json_encode(array('status'=>1)));
			/* //查询货品库存
			$goodsListModel = new \Common\Model\GoodsList();
			$inventory = $goodsListModel->where(array('glid'=>$glid))->pluck('inventory');
			$Newinventory  = $inventory -1;
			if ($inventory) {
				$goodsListModel->where(array('glid'=>$glid))->save(array('inventory'=>$Newinventory));
				exit(json_encode(array('status'=>1,'msg'=>$Newinventory)));
			}else{
				exit(json_encode(array('status'=>0,'msg'=>'库存不足^_^')));
			} */
		}
	}
	
	//异步请求商品   数量减一
	public function desNum(){
		if (IS_AJAX) {
			$glid = Q('post.glid',0,'intval');
			
			//更新SESSION数组里面 购买数量和小计价格
			if (isset($_SESSION['goods'])) {
				foreach ($_SESSION['goods'] as $k=>$v){
					if ($v['glid'] == $glid) {
						//重新赋值，更新购买数量
						$_SESSION['goods'][$k]['num'] = $_SESSION['goods'][$k]['num'] - 1;
						//更新小计价格
						$_SESSION['goods'][$k]['price'] = $_SESSION['goods'][$k]['num'] * $_SESSION['goods'][$k]['shopprice'];
					}
				}
			}
			exit(json_encode(array('status'=>1)));
			/* //查询货品库存
			$goodsListModel = new \Common\Model\GoodsList();
			$inventory = $goodsListModel->where(array('glid'=>$glid))->pluck('inventory');
			$Newinventory  = $inventory + 1;
			if ($inventory) {
				$goodsListModel->where(array('glid'=>$glid))->save(array('inventory'=>$Newinventory));
				exit(json_encode(array('status'=>1,'msg'=>$Newinventory)));
			}else{
				exit(json_encode(array('status'=>0,'msg'=>'库存不足^_^')));
			} */
		}
	}
	
	//异步删除购物车商品
	public function delNum(){
		if (IS_AJAX) {
			$glid = Q('post.glid',0,'intval');
			//1.删除session数组中指定数组
			$num = '';
			if (isset($_SESSION['goods'])) {
				foreach ($_SESSION['goods'] as $k=>$v){
					if ($v['glid'] == $glid) {
						//购买数量
						$num = $_SESSION['goods'][$k]['num'];
						//删除
						unset($_SESSION['goods'][$k]);
					}
				}
			}
			//2.恢复指定货品表数据库存
			/* //实例化话货品表模型
			$goodsListModel = new \Common\Model\GoodsList();
			$where = array('glid'=>$glid);
			//查出旧库存
			$inventory = $goodsListModel->where($where)->pluck('inventory');
			//计算新库存
			$newNum = $inventory + $num;
			//更新库存量
			$goodsListModel->where($where)->save(array('inventory'=>$newNum)); */
			
			//3.更新统计session中的tatol
			if ($_SESSION['goods']) {
				$_SESSION['tatol'] = count($_SESSION['goods']);
			}else{
				$_SESSION['tatol'] = 0;
			}
			//4.计算总价格,返回
			$sum = 0;
			if (isset($_SESSION['goods'])) {
				foreach ($_SESSION['goods'] as $v){
					$sum+=(int) $v['price'];
				}
			}
			
			//返回数据,总价格
			exit(json_encode(array('status'=>1,'msg'=>$sum,'tatol'=>$_SESSION['tatol'])));
		}
	}
	
	//异步添加收货地址或者修改地址
	public function site(){
		if (IS_AJAX) {
			$siteData = Q('post.');
			$sid = Q('post.sid',0,'intval');
			if ($_SESSION['uid'] && $siteData) {
				unset($siteData['province']);
				unset($siteData['city']);
				$location = Q('post.province') . "," . Q('post.city');
				$uid = $_SESSION['uid'];
				$siteData['location'] = $location;
				$siteData['user_uid'] = $uid;
			}
			
			if ($sid) {
				//修改
				$this->siteModel->where(array('sid'=>$sid))->save($siteData);
				exit(json_encode(array('status'=>1,'msg'=>'操作成功^_^')));
			}else{
				//添加
				$data = $this->siteModel->where(array('user_uid'=>$uid))->get();
				if (!$data) $siteData['status'] = 1;
				if ($this->siteModel->add($siteData)) {
					exit(json_encode(array('status'=>1,'msg'=>'操作成功^_^')));
				}
				exit(json_encode(array('status'=>0,'msg'=>'操作失败/(ㄒoㄒ)/')));
			}
			
		}
	}
	
	
	//异步处理地址设为默认 操作
	public function siteDefault(){
		if (IS_AJAX) {
			$sid = Q('post.sid',0,'intval');
			//先修改所有的状态为0
			$this->siteModel->where(array('user_uid'=>$_SESSION['uid']))->save(array('status'=>0));
			//在修改对饮的状态为1
			if ($this->siteModel->where(array('sid'=>$sid))->save(array('status'=>1))) {
				exit(json_encode(array('status'=>1,'msg'=>'操作成功^_^')));
			}else{
				exit(json_encode(array('status'=>0,'msg'=>'操作失败/(ㄒoㄒ)/~~')));
			}
		}
	}
	
	//异步删除收货地址
	public function delSite(){
		if (IS_AJAX) {
			$sid = Q('post.sid',0,'intval');
			if ($this->siteModel->delete($sid)) {
				exit(json_encode(array('status'=>1,'msg'=>'删除成功^_^')));
			}else{
				exit(json_encode(array('status'=>0,'msg'=>'删除失败/(ㄒoㄒ)/~~')));
			}
		}
	}
	
	//异步处理 下订单
	public function order(){
		if (IS_AJAX) {
			$sid = Q('post.sid',0,'intval');
			//总价格
			$sum = 0;
			if (isset($_SESSION['goods'])) {
				foreach ($_SESSION['goods'] as $v){
					$sum+=(int) $v['price'];
				}
			}
			//查出收货地址
			$siteData = $this->siteModel->where(array('sid'=>$sid))->find();
			//组合订单信息 添加到订单表
			$orderData = array(
					'number' => date('YmdHis') . '_' . $_SESSION['uid'] . '_' . get_client_ip() . '_' . rand(0,10000),
					'consignee' => $siteData['consignee'],
					'address' => $siteData['location'] . $siteData['street'],
					'mobile' => $siteData['phone'],
					'total' => $sum,
					'time' => time(),
					'status' => 1,
					'user_uid' => $_SESSION['uid']
					);
			//添加订单
			$oid = $this->orderModel->add($orderData);
			if ($oid) {
				//实例化货品表模型
				$goodsListModel = new \Common\Model\GoodsList();
				//添加成功后,货品列表添加
				foreach ($_SESSION['goods'] as $v) {
					$number = $goodsListModel->where(array('glid'=>$v['glid']))->pluck('number');
					//组合订单列表信息
					$orderListData = array(
							'quantity' => $v['num'],
							'subtotal' => $v['price'],
							'glid' => $v['glid'],
							'glnumber' => $number,
							'goods_gid' => $v['gid'],
							'order_oid' => $oid
							);
					//执行添加操作
					$this->orderListModel->add($orderListData);
				}
				//添加成功后,清空sesssion数据
				unset($_SESSION['goods']);
				unset($_SESSION['tatol']);
				//返回订单ID
				exit(json_encode(array('status'=>1,'msg'=>'订单提交成功^_^','oid'=>$oid)));
			}else{
				exit(json_encode(array('status'=>1,'msg'=>'订单提交失败/(ㄒoㄒ)/~')));
			}
			
		}
	}
	
	
	//订单支付 异步
	public function payAjax(){
		if (IS_AJAX) {
			//订单id
			$oid = Q('post.oid',0,'intval');
			//付款方式
			$payMethod = Q('post.payMethod');
			//购买商品的总价格
			$goods = Q('post.goods');
			if ($oid) {
				//修改订单状态和订单
				if ($payMethod) {
					//货到付款  修改状态 2
					$this->orderModel->where(array('oid'=>$oid))->save(array('status'=>2,'paymethod'=>1));
					exit(json_encode(array('status'=>1,'msg'=>'付款成功^_^')));
				}else{
					//余额支付 修改状态 2
					//用户余额
					$pay = $this->userModel->where(array('uid'=>$_SESSION['uid']))->pluck('pay');
					//计算出新余额
					$newPay = $pay - $goods;
					//修改订单状态和支付时间和付款方式
					$data = array(
							'status'=>2,
							'paymethod'=>2,
							'plytime' => time()
							);
					$this->orderModel->where(array('oid'=>$oid))->save($data);
					
					//修改用户余额
					$this->userModel->where(array('uid'=>$_SESSION['uid']))->save(array('pay'=>$newPay));
					exit(json_encode(array('status'=>1,'msg'=>'付款成功^_^')));
				}
			}else{
				exit(json_encode(array('status'=>0,'msg'=>'付款失败/(ㄒoㄒ)/')));
			}
		}
	}
	
	//异步删除我的订单
	public function delOrder(){
		if (IS_AJAX) {
			//未付款的订单需要恢复库存 订单表 订单列表
			//订单id
			$oid = Q('post.oid',0,'intval');
			//购买数量
			$num = Q('post.num');
			//货品id
			$glid = Q('post.glid',0,'intval');
			$inventory = $this->goodsListModel->where(array('glid'=>$glid))->pluck('inventory');
			//计算出新库存
			$newInventory = $inventory + $num;
			//修改库存值
			$this->goodsListModel->where(array('glid'=>$glid))->save(array('inventory'=>$newInventory));
			//删除订单表数据
			$this->orderModel->delete($oid);
			if ($this->orderListModel->where(array('order_oid'=>$oid))->delete()) {
				exit(json_encode(array('status'=>1,'msg'=>'取消订单成功^_^')));
			}else{
				exit(json_encode(array('status'=>0,'msg'=>'取消订单失败/(ㄒoㄒ)/')));
			}
		}
	}
	
	//确认收货 我的订单
	public function confirmOrder(){
		if (IS_AJAX) {
				//修改订单状态 确认收货
				$oid = Q('post.oid',0,'intval');
				if ($this->orderModel->where(array('oid'=>$oid))->save(array('status'=>4))) {
					exit(json_encode(array('status'=>1,'msg'=>'确认收货成功^_^')));
				}else{
					exit(json_encode(array('status'=>1,'msg'=>'确认收货失败/(ㄒoㄒ)/')));
				}
		}
	}
	
	//余额充值
	public function payValue(){
		if (IS_AJAX) {
			$pay = Q('post.pay',0,'intval');
			$where = array('uid'=>$_SESSION['uid']);
			$oldPay = $this->userModel->where($where)->pluck('pay');
			$newPay = $oldPay + $pay;
			if ($this->userModel->where($where)->save(array('pay'=>$newPay))) {
				exit(json_encode(array('status'=>1,'msg'=>'充值成功^_^','pay'=>$newPay)));
			}else{
				exit(json_encode(array('status'=>0,'msg'=>'充值失败^_^,请重试...')));
			}
		}
	}
}

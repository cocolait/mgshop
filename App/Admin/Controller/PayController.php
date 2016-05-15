<?php namespace Admin\Controller; 
/**
 * 充值管理
 */
class PayController extends CommonController {
		protected $userModel = null;
		public function __init(){
			//执行父类的构造方法
			parent::__init();
			//实例化用户模型
			$this->userModel = new \Common\Model\User();
		}
		
		//余额列表
		public function index(){
			//总计总数
			$total = $this->userModel->count();
			//定制分页样式
			$page = Page::row(8)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
			$userData = $this->userModel->orderBy('uid')->limit(Page::limit())->get();
			
			$this->assign('page', $page);
			
			$this->assign('userData', $userData);
			$this->display();
		}
		
		//余额充值
		public function addPay(){
			$pay = Q('post.pay');
			$uid = Q('post.uid',0,'intval');
			$this->userModel->where(array('uid'=>$uid))->save(array('pay'=>$pay));
			$this->success('充值成功^_^,马上为您跳转...');
		}
		
}
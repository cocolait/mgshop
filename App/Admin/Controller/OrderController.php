<?php namespace Admin\Controller; 
/**
 * 后台订单管理
 */
class OrderController extends CommonController {
		protected $orderModel = null;
		protected $orderListModel = null;
		protected $LogisticsModel = null;
		public function __init(){
			//执行父类的构造方法
			parent::__init();
			//实例化订单表模型
			$this->orderModel = new \Common\Model\Order();
			//实例化订单列表模型
			$this->orderListModel = new \Common\Model\OrderList();
			//实例化物流表模型
			$this->LogisticsModel = new \Common\Model\Logistics();
		}
		
		//订单列表
		public function orderList(){
			//总计总数
			$total = $this->orderModel->count();
			//定制分页样式
			$page = Page::row(8)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
			$orderData = $this->orderModel->join('order_list','oid','=','order_oid')->orderBy('status')->limit(Page::limit())->get();
			foreach ($orderData as $k => $v) {
				$logid = $this->LogisticsModel->where(array('order_oid'=>$v['oid']))->pluck('logid');
				$orderData[$k]['logid'] = isset($logid) ? $logid : 0;
			}
			
			$this->assign('page', $page);
			
			$this->assign('orderData', $orderData);
			$this->display();
		}
		
		//添加物流
		public function addLogistics(){
			$oid = Q('get.oid',0,'intval');
			$logid = Q('get.logid',0,'intval');
			if (IS_POST) {
				if ($this->LogisticsModel->store($logid)) $this->success('操作成功,马上为您跳转...',U('orderList'));
				$this->error($this->LogisticsModel->getError());
			}
			$logData = $this->LogisticsModel->where(array('logid'=>$logid))->find();
			$this->assign('company',isset($logData['company'])?$logData['company']:'');
			$this->assign('logData',$logData);
			$this->display();
		}
		
		//异步发货修改发货时间
		public function editStatus(){
			if (IS_AJAX) {
				$oid = Q('post.oid',0,'intval');
				$where = array('oid'=>$oid);
				if ($this->orderModel->where($where)->save(array('status'=>3,'sendtime'=>time()))) {
					exit(json_encode(array('status'=>1)));
				}
				exit(json_encode(array('status'=>0)));
			}
		}
}
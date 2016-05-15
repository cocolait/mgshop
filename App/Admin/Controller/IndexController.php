<?php namespace Admin\Controller;
class IndexController extends CommonController {
	protected $adminModel = null;
	protected $AdminRole = null;
	public function __init(){
		parent::__init();
		$this->adminModel = new \Common\Model\Admin();
		$this->AdminRole = new \Common\Model\AdminRole();
	}
	
	//后台首页
    public function index(){
    		$this->assign('lock', $this->adminModel->where(array('mg_lock'=>1))->count());
    		$this->assign('count', $this->adminModel->count());
    		$this->assign('Usergroup', $this->AdminRole->join('role','role_id','=','id')->where(array('admin_id'=>$_SESSION['aid']))->lists('name'));
      		$this->assign('data', $this->adminModel->where(array('aid'=>$_SESSION['aid']))->find());
    		$this->display();
    }
   
}
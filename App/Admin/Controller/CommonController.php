<?php namespace Admin\Controller; 
use Hdphp\Controller\Controller;
class CommonController extends Controller {
		public function __init(){
			//验证是否登录
			if (!$_SESSION['aid']) {
				go(U('Login/index'));
			}
			//权限判断
			if (!Rbac::verify()) {
				$this->error('您没有权限哦/(ㄒoㄒ)/~~');
			}
		}
		
}
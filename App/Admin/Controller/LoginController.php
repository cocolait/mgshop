<?php namespace Admin\Controller;
use Hdphp\Controller\Controller;
class LoginController extends Controller{
		public function index(){
			$this->display();
		}
	
		//异步处理登录
		public function login(){
			if (IS_AJAX) {
				//实例化模型
				$db = new \Common\Model\Admin();
				//接受参数值
				$uname = Q('post.uname');
				$password = mgEncrypt($uname,Q('post.password'));
				$where = array('uname'=>$uname);
				//检测是否存在
				$userData = $db->where($where)->find();
				if (!$userData) {
					exit(json_encode(array('status'=>0,'msg'=>'用户名错误')));
				}else{
					//判断密码是否正确
					if ($userData['password'] != $password) {
						exit(json_encode(array('status'=>0,'msg'=>'密码错误')));
					}
					//判断用户是否被锁定
					if ($userData['mg_lock']) {
						exit(json_encode(array('status'=>0,'msg'=>'用户被锁定,请联系管理员')));
					}
				}
				$data = array(
						'loginip' => get_client_ip(),
						'logintime' => time()
						);
				//登录成功后,更新数据
				$db->where($where)->save($data);
				//把用户名和UID存入SESSION中
				$_SESSION['aid'] = $userData['aid'];
				$_SESSION['uname'] = $userData['uname'];
				$_SESSION['logtime'] = time();
				exit(json_encode(array('status'=>1,'msg'=>'登录成功^_^')));
			}
		}
		
		//退出
		public function loginOut(){
			//清空所有session
			session_unset();
			session_destroy();
			$this->success('退出成功，马上为您跳转...',U('Login/index'));
		}
}
<?php namespace Home\Controller; 
use Hdphp\Controller\Controller;
/**
 * 登录和注册控制器
 */
class LoginController extends Controller{
	//构造函数
	protected $userModel = null;
	public function __init(){
			$this->userModel = new \Common\Model\User();
	}
	
	//登录
    public function login(){
    		$this->display();
    }
    
    //注册
    public function register(){
    		$this->display();
    }
	    
    //异步处理注册
    public function reg(){
		if (IS_AJAX) {
			$account = Q('post.account');
			$code = strtolower(Q('post.code'));
			$nickname = Q('post.nickname');
			$password = mgEncrypt($account, Q('post.password'));
			
			//验证验证码是否正确
			if ($code != strtolower($_SESSION['code'])) {
					exit(json_encode(array('status'=>0,'msg'=>'验证码错误^_^')));
			}
			//验证用户存在
			$data = $this->userModel->where(array('account'=>$account))->find();
			if ($data) {
				exit(json_encode(array('status'=>0,'msg'=>'邮箱已被注册^_^')));
			}
			//验证通过,添加处理
			$data = array(
					'account' => $account,
					'password' => $password,
					'regtime' => time(),
					'nickname' => $nickname
					);
			$uid = $this->userModel->add($data);
			//把用户和ID存入session中
			$_SESSION['uid'] = $uid;
			$_SESSION['account'] = $account;
			exit(json_encode(array('status'=>1,'msg'=>'注册成功^_^')));
		}
    }
	    
    //异步处理登录
    public function loginHandle(){
    	if (IS_AJAX) {
    		$account = Q('post.account');
    		$code = strtolower(Q('post.code'));
    		$password = mgEncrypt($account, Q('post.password'));
    		$status = Q('post.status');
    		//验证验证码是否正确
    		if ($code != strtolower($_SESSION['code'])) {
    			exit(json_encode(array('status'=>0,'msg'=>'验证码错误^_^')));
    		}
    		//验证用户存在
    		$data = $this->userModel->where(array('account'=>$account))->find();
    		if ($data) {
    			if ($data['password'] != $password) {
    				exit(json_encode(array('status'=>0,'msg'=>'密码错误^_^')));
    			}
    			if ($data['mg_lock']) {
    				exit(json_encode(array('status'=>0,'msg'=>'用户名已被锁定,请联系管理员^_^')));
    			}
    		}else {
    			exit(json_encode(array('status'=>0,'msg'=>'用户名错误^_^')));
    		}
    		
			//处理2周自动登录
			if ($status) {
				//设置COOKIE
				//加密字符
				$auto = encryption($account);
				setcookie('auto',$auto,time()+3600*24*14,'/');
			}
    		//把用户和ID存入session中
    		$_SESSION['uid'] = $data['uid'];
    		$_SESSION['account'] = $data['account'];
    		exit(json_encode(array('status'=>1,'msg'=>'登录成功^_^')));
    	}
    }
	    
    //验证码
    public function code(){
    	Code::num(4)->width(284)->height(50)->make();
    }
		
	//退出
	public function LoginOut(){
		session_unset();
		session_destroy();
		//设置cookie时间过期
		setcookie('auto','',time()-1,'/');
		$this->success('退出成功,马上为您跳转...',U('Login/login'));
	}
}

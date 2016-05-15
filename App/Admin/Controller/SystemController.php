<?php namespace Admin\Controller;
/**
 * 系统设置控制器
 */
class SystemController extends CommonController {
	protected $adminModel = null;
	protected $linkModel = null;
	public function __init(){
		parent::__init();
		$this->adminModel = new \Common\Model\Admin();
		$this->linkModel = new \Common\Model\Link();
	}
	
    //修改用户头像
    public function UserFace(){
    	$this->assign('face', $this->adminModel->where(array('aid'=>$_SESSION['aid']))->pluck('face'));
    	$this->display();
    }
    
    //异步上传用户头像
    public function face(){
    	//文件路径
    	$imgDir = 'Upload/UserFace/' . date('ymd');
    	//上传图片
    	$file = Upload::path($imgDir)->type('jpg,png,gif')->size(2000000)->make();
    	//上传失败
    	if (!$file) {
    		exit(json_encode(array('status' => 0,'msg' => Upload::getError())));
    	}else{
    		//上传成功,组合缩略路径返回
    		$face =  $imgDir . '/' . 'face_' . $file['0']['basename'];
    		//用户图
    		$facePath = Image::thumb($file['0']['path'],$face,180,220,6);
    		//把用户图存入数据库
    		$data = array('face'=>$facePath);
    		$this->adminModel->where(array('aid'=>$_SESSION['aid']))->save($data);
    		//删除原图
    		unlink($file['0']['path']);
    		//返回数据
    		exit(json_encode(array('status'=>1,'msg'=>$facePath)));
    	}
    }
    
    
    
    //修改密码
    public function editUser(){
    	if (IS_POST) {
    		$pwd = Q('post.pwd');
    		$passwd = Q('post.password');
    		$where = array('aid'=>$_SESSION['aid']);
    		$oldData = $this->adminModel->where($where)->find();
    		if ($oldData['password'] != mgEncrypt($oldData['uname'], $pwd)) {
    			$this->error('旧密码错误');
    		}
    		$password = mgEncrypt($oldData['uname'],$passwd);
    		$this->adminModel->where($where)->save(array('password'=>$password));
    		$this->success('修改密码成功^_^');
    	}
    	$this->display();
    }
    
    //网站配置
    public function systemSet(){
    	//实例化站点模型
    	$webModel = new \Common\Model\Webset();
    	if (IS_POST) {
    		//修改数据
    		$postData = Q('post.');
    		$wid = Q('post.wid',0,'intval');
    		if (!$wid) {
    			$webModel->add($postData);
    		}else{
    			$webModel->where(array('wid'=>$wid))->save($postData);
    		}
    		//把数据合法化存入文件中,便于前台调用
    		$data = "<?php return " . var_export($postData,true) . "?>";
    		//判断是否有写的权限
    		if (!file_put_contents('./Config/webset.php', $data)) {
    			$this->error('请检查权限!');
    		}
    		//成功跳转
    		$this->success('操作成功^_^');
    	}
    	//查出所有的站点数据,并且分配
    	$data = $webModel->find();
    	$this->assign('data',$data);
    	$this->display();
    }
    
    //友情链接
    public function linkList(){
    	$page = Page::row(8)->make($this->linkModel->count());
		$linkData = $this->linkModel->limit(Page::limit())->get();
		$this->assign('page',$page);
		$this->assign('total',$this->linkModel->count());
		$this->assign('listData',$linkData);
	 	$this->display();
    }
    
    public function addLink(){
    	$lid = Q('get.lid',0,'intval');
    	if (IS_POST) {
    		$lid = Q('post.lid',0,'intval');
    		if ($this->linkModel->store($lid)) {
    			$this->success('操作成功,马上为您跳转...',U('linkList'));
    		}
    		$this->error($this->linkModel->getError());
    	}
    	$oldData = $this->linkModel->where(array('lid'=>$lid))->find();
    	
    	$this->assign('oldData', $oldData);
    	$this->display();
    }
    
    public function delLink(){
    	if (IS_AJAX) {
    		$lid = Q('post.lid',0,'intval');
    		if ($this->linkModel->delete($lid)) {
    			exit(json_encode(array('status'=>1)));
    		}else{
    			exit(json_encode(array('status'=>0)));
    		}
    	}
    }
}
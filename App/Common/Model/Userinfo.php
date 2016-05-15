<?php namespace Common\Model;
use Hdphp\Model\Model;
/**
 * 前台用户个人信息表模型
 */
class Userinfo extends Model{
	//用户个人信息表
	protected $table = 'userinfo';
	
	public function store(){
		//查询是否有添加
		$data = $this->where(array('user_uid'=>$_SESSION['uid']))->find();
		if ($data) {
			//修改
			$infoData = array(
					'trunname' => Q('post.trunname'),
					'location' => Q('post.province') . "," . Q('post.city'),
					'sex' => Q('post.sex'),
					'profession' => Q('post.profession'),
					'constellation' => Q('post.constellation'),
					'schoolname' => Q('post.schoolname'),
					'student' => Q('post.student'),
					'intro' => Q('post.intro'),
					'user_uid' => $_SESSION['uid']
			);
			$this->where(array('user_uid'=>$_SESSION['uid']))->save($infoData);
			
			//标签表
			$this->tagData(Q('post.tname'));
			return true;
		}else{
			//添加
			//用户表
			$userModel = new \Common\Model\User();
			
			$userModel->where(array('uid'=>$_SESSION['uid']))->save(array('nickname'=>Q('post.nickname')));
			//添加用户个人信息表
			$infoData = array(
					'trunname' => Q('post.trunname'),
					'location' => Q('post.province') . "," . Q('post.city'),
					'sex' => Q('post.sex'),
					'profession' => Q('post.profession'),
					'constellation' => Q('post.constellation'),
					'schoolname' => Q('post.schoolname'),
					'student' => Q('post.student'),
					'intro' => Q('post.intro'),
					'user_uid' => $_SESSION['uid']
					);
			$this->add($infoData);
			//标签表
			$this->tagData(Q('post.tname'));
			return true;
		}
	}
	
	protected  function tagData($tname=null){
		if ($tname) {
			//用户标签表
			$tagModel = new \Common\Model\Tag();
			//先删除数据
			$tagModel->where(array('user_uid'=>$_SESSION['uid']))->delete();
			$tnameData = explode(',', $tname);
			//在添加
			foreach ($tnameData as $tname) {
				$tagData = array(
						'user_uid' => $_SESSION['uid'],
						'tname' => $tname
				);
				$tagModel->add($tagData);
			}
		}
	}
	
	
}

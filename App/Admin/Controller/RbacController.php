<?php namespace Admin\Controller; 
/**
 * 后台权限管理
 */
class RbacController extends CommonController {
		protected $nodeModel = null;
		protected $AccessModel = null;
		protected $RoleModel = null;
		protected $AdminRole = null;
		protected $AdminModel = null;
		public function __init(){
			//执行父类的构造方法
			parent::__init();
			//实例化节点表
			$this->nodeModel = new \Common\Model\Node();
			//实例化权限表
			$this->AccessModel = new \Common\Model\Access();
			//实例化角色表
			$this->RoleModel = new \Common\Model\Role();
			//实例化用户和角色的中间表
			$this->AdminRole = new \Common\Model\AdminRole();
			//实例化后台用户表
			$this->AdminModel = new \Common\Model\Admin();
		}
		
		
		//用户列表
		Public function index () {
			//如果是超级管理员才显示修改和删除,其余权限的只能查看
			$status = $this->Rbshow();
			//分配权限状态
			$this->assign('status',$status);
			//分配用户数据
			$userData = $this->AdminModel->get();
			foreach ($userData as $k=>$v) {
				$name = $this->AdminRole->join('role','id','=','role_id')->where(array('admin_id'=>$v['aid']))->lists('name');
				$userData[$k]['name'] = $name;
			}
			$this->assign('userData',$userData);
			$this->display();
		}
		
		//角色列表
		Public function Rolelist () {
			$status = $this->Rbshow();
			//分配权限状态
			$this->assign('status',$status);
			//把自己的角色分配过去
			/* $roids = $this->AdminRole->where(array('admin_id'=>$_SESSION['aid']))->lists('role_id');
			$this->assign('roids', $roids); */
			//分配数据
			$this->assign('RoleData',$this->RoleModel->orderBy('id')->get());
			$this->display();
		}
		
		//节点列表
		Public function nodelist () {
			$field = 'name,title,id,pid,level';
			$node = $this->nodeModel->field($field)->orderBy('sort')->get();
			$this->assign('node', node_merge($node));
			$this->display();
		}
		
		
		//节点修改
		Public function editNode(){
			$level = Q('level', 1, 'intval');
			$id = Q('id', 0, 'intval');
		
			switch ($level) {
				case 1 :
					$type = '模块';
					break;
						
				case 2 :
					$type = '控制器';
					break;
						
				case 3 :
					$type = '方法';
					break;
			}
			//分配类型
			$this->assign('type', $type);
			//分类类型的级别
			$this->assign('level', $level);
			//分配节点ID
			$this->assign('id', $id);
			//分配节点信息
			$this->assign('node', $this->nodeModel->where(array('id'=>$id))->find());
			$this->display();
		
		}
		//修改节点处理操作
		Public function NodeEdit(){
			$data = $_POST;
			$this->nodeModel->save($data);
			$this->success('修改成功^_^',U('nodelist'));
		}
		//删除节点
		Public function delNode() {
			$id = Q('id',0,'intval');
			if ($this->nodeModel->delete($id)) {
				$this->success('删除成功^_^',U('nodelist'));
			} else {
				$this->error('删除失败/(ㄒoㄒ)/');
			}
		}
		//添加用户
		Public function addUser () {
				if (IS_POST) {
					$uname = Q('post.uname');
					if ($uname == '' || Q('post.password') == '') {
						$this->error('用户名和密码都必须填写^_^');
					}
					$name = $this->AdminModel->where(array('uname'=>$uname))->pluck('uname');
					if ($name) {
						$this->error('用户名已经被注册了,请您重新填写^_^');
					}
					$roid_id = Q('post.role_id');
					if (!$roid_id[0]) {
						$this->error('请您选择所属角色^_^');
					}
					
					$password = mgEncrypt($uname,Q('post.password'));
					$adminData = array(
							'uname' => $uname,
							'password' => $password,
							'loginip' => get_client_ip(),
							'logintime' => time()
							);
					//添加到用户表
					$aid = $this->AdminModel->add($adminData);
					//添加到用户和角色的中间表
					foreach ($roid_id as $roid) {
							if ($roid) {
								$data = array(
										'role_id' => $roid,
										'admin_id' => $aid
								);
								$this->AdminRole->add($data);
							}
					}
					$this->success('添加成功^_^',U('index'));
				}
				//分配所有的角色
				$this->assign('roleData', $this->RoleModel->get());
				//
				$this->display();
		}
		
		//修改用户
		public function editUser(){
			$aid = Q('get.aid',0,'intval');
			if (IS_POST) {
				$aid = Q('post.aid',0,'intval');
				/* $pwd = Q('post.pwd');
				$pwd2 = Q('post.pwd2'); */
				if ($aid) {
					/* $uname = Q('post.uname');
					if ($pwd == '' || $pwd2 =='') {
						$this->error('新密码或确认新密码必须填写^_^');
					}
					if ($pwd != $pwd2) {
						$this->error('两次输入密码不一致/(ㄒoㄒ)/~~');
					}
					//修改操作
					$password = mgEncrypt($uname,$pwd);
					if ($this->AdminModel->where(array('id'=>$aid))->save(array('password'=>$password))) { */
					//修改中间表数据
					//先删除旧用户的角色
					$this->AdminRole->where(array('admin_id'=>$aid))->delete();
					//添加
					//添加到用户和角色的中间表
					foreach (Q('post.role_id') as $roid) {
						if ($roid) {
							$data = array(
									'role_id' => $roid,
									'admin_id' => $aid
							);
							$this->AdminRole->add($data);
						}
					}
					$this->success('操作成功^_^',U('index'));
					
				}
			}
			//分配旧数据
			$this->assign('oldData', $this->AdminModel->where(array('aid'=>$aid))->find());
			//分配
			$this->assign('oldRole', $this->AdminRole->where(array('admin_id'=>$aid))->get());
			//分配所有的角色
			$this->assign('roleData', $this->RoleModel->get());
			$this->display();
		}
		
		//添加角色
		Public function addRole () {
			$this->display();
		}
		
		//配置权限视图
		Public function access () {
			$rid = Q('rid',0,'intval');
			//查询数据
			//分配旧数据
			$node = $this->nodeModel->orderBy('sort')->get();
			$access = $this->AccessModel->where(array('role_id'=>$rid))->lists('node_id');
			
			$this->assign('node', node_merge($node,$access));
			$this->assign('rid', $rid);
			$this->display();
		}
		
		//用户权限操作处理【添加权限】
		Public function addAccess(){
			$rid = Q('rid',0,'intval');
			
			//清空旧权限
			$this->AccessModel->where(array('role_id' => $rid))->delete();
		
			//重组全新权限
			
			$access = Q('post.access',array());
			
			foreach ($access as $v) {
				if ($v) {
					$tmp = explode('_', $v);
					$data = array(
							'role_id' => $rid,
							'node_id' => $tmp[0],
							'level' => $tmp[1]
					);
					$this->AccessModel->add($data);
				}
			}
			$this->success('操作成功',U('Rolelist'));
			
		}
		
		//添加角色处理
		Public function addRoleHanlde () {
			if ($this->RoleModel->add($_POST)) {
				$this->success('操作成功',U('Rolelist'));
			} else {
				$this->error('操作失败,请重试...');
			}
		}
		
		//添加节点
		Public function addNode () {
			$level = Q('level', 1, 'intval');
			$pid = Q('pid', 0, 'intval');
		
			switch ($level) {
				case 1 :
					$type = '模块';
					break;
						
				case 2 :
					$type = '控制器';
					break;
						
				case 3 :
					$type = '方法';
					break;
			}
			//分配类型
			$this->assign('type', $type);
			//分类类型的级别
			$this->assign('level', $level);
			//分配节点父级ID
			$this->assign('pid', $pid);
			$this->display();
		}
		
		//添加节点处理操作
		Public function addNodeHanlde(){
			if (IS_POST) {
				if ($this->nodeModel->add($_POST)) {
					$this->success('操作成功^_^,马上为您跳转...',U('nodelist'));
				} else {
					$this->error('操作失败');
				}
			}
		}
		
		//异步处理用户 是否显示
		public function showUser(){
			if (IS_AJAX) {
				$aid = Q('post.aid',0,'intval');
				$src = Q('post.src');
				if ($src == 'check.png') {
					$this->AdminModel->where(array('aid'=>$aid))->save(array('mg_lock'=>1));
					exit(json_encode(array('status'=>1,'msg'=>'lock.png','info'=>'账号锁定成功^_^')));
				}else{
					$this->AdminModel->where(array('aid'=>$aid))->save(array('mg_lock'=>0));
					exit(json_encode(array('status'=>1,'msg'=>'check.png','info'=>'账号解锁成功^_^')));
				}
			}
		}
		
		//显示权限
		private function Rbshow(){
			$data = $this->AdminRole->where(array('admin_id'=>$_SESSION['aid']))->get();
			$supp = $this->RoleModel->where(array('name'=>'超级管理员'))->pluck('id');
			$status = 0;
			if ($data) {
				foreach ($data as $v) {
					if ($v['role_id'] == $supp) {
						$status = 1;
					}
				}
			}
			return $status;
		}
		
}
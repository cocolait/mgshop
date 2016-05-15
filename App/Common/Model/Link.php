<?php namespace Common\Model;
use Hdphp\Model\Model;
/**
 * 友情链接模型
 */
class Link extends Model{
		protected $table = 'link';
		//自动验证
		protected $validate = array(
				array('lname','required','名称必须填写哦^_^',3,3),
				array('url','required','Url地址必须填写哦^_^',3,3)
				);
		//自动完成
		protected $auto = array(
				array('addtime','time','function',3,1)
				);
		
		
		//添加
		public function store($lid){
			 if (!$this->create()) return false;
			 if ($lid) {
			 	//编辑
			 	$this->save();
			 }else{
			 	//添加
			 	$this->add();
			 }
			 return true;
		}
	
}
?>
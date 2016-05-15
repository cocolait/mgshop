<?php namespace Common\Model;
use Hdphp\Model\Model;
/**
 * 商品类属性表模型
 */
class GoodsTypeAttr extends Model{
	//标签表
	protected $table = 'goods_type_attr';
	
	//自动验证
	protected $validate = array(
			array('gtname','required','属性名称必须填写哦^_^',3,3),
			array('goods_type_tid','required','类型必须选择哦^_^',3,3),
			array('gtvalue','required','属性值必须填写哦^_^',3,3)
	);
	
	public function store($gtid){
		if (!$this->create()) return false;
		//验证通过,做添加处理 编辑处理
		if ($gtid) {
			//编辑
			$this->where(array('gtid'=>$gtid))->save();
			return true;
		}
		$this->add();
		return true;
	}
	
}

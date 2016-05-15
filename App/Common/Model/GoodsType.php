<?php namespace Common\Model;
use Hdphp\Model\Model;
/**
 * 商品类型表模型
 */
class GoodsType extends Model{
	//标签表
	protected $table = 'goods_type';
	//自动验证(前提：表字段必须和表单一致)
	protected $validate = array(
			array('tname','required','商品类型名称必须填写哦^_^',3,3)
	);
	
	public function combine($tid){
			//添加 或 修改处理
			if (!$this->create()) return false;
			if (!$tid) {
				$this->add();
			}else{
				$this->where(array('tid'=>$tid))->save();
			}
			return true;
	}
}

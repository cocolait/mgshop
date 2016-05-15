<?php namespace Common\Model;
use Hdphp\Model\Model;
/**
 * 货品列表模型
 */
class GoodsList extends Model{
	//货品表
	protected $table = 'goods_list';
	
	//自动验证
	protected $validate = array(
			array('inventory','required','商品库存必须填写哦^_^',3,3),
			array('inventory','num:0,65535','商品库存必须填写数字哦^_^',3,3)
	);
	
	//商品添加
	public function store(){
		
		if (!$this->create()) return false;
		$data = array(
				'combine' => implode(',', Q('post.spce',array())),
				'inventory' => Q('post.inventory',0,'intval'),
				'goods_gid' => Q('post.goods_gid',0,'intval')
				);
		$glid = Q('post.glid',0,'intval');
		if ($glid) {
			//编辑
			$this->where(array('glid'=>$glid))->save($data);
		}else{
			//生成16位数字 rand最多生成9位
			$a = mt_rand(10000000,99999999);
			$b = mt_rand(10000000,99999999);
			$num = $a.$b;
			$data['number'] = $num;
			$this->add($data);
		}
		return true;
	}
	
}
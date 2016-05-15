<?php namespace Common\Model;
use Hdphp\Model\Model;
/**
 * 物流详情表
 */
class Logistics extends Model{
	//物流详情表
	protected $table = 'logistics';
	
	//自动验证
	protected $validate = array(
			array('logname','required','发货人必须填写哦^_^',3,3),
			array('address','required','请您填写详细的发货地址^_^',3,3),
			array('company','required','物流公司必须选择哦^_^',3,3),
			array('cellphone','required','请您填写发货人的手机号码^_^',3,3),
			array('zipcode','required','请您填写邮政编码^_^',3,3),
			array('tel','required','请您客服号码^_^',3,3)
	);
	
	//自动完成
	protected $auto=array(
			array('waybill','waybillFun','method',3,1)
	);
	
	//运单编码 随机生成
	public function waybillFun(){
		$a = mt_rand(10000000,99999999);
		$b = mt_rand(10000000,99999999);
		$num = $a.$b;
		return $num;
	}
	
	//编辑和添加
	public function store($logid){
		if (!$this->create()) return false; 
		$this->data['order_oid'] = Q('post.oid',0,'intval');
		if ($logid) {
			//修改
			$this->where(array('logid'=>$logid))->save();
		}else{
			//添加
			$this->add();
		}
		return true;
	}
}

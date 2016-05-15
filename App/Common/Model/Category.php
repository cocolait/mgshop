<?php namespace Common\Model;
use Hdphp\Model\Model;
/**
 * 商品分类表模型
 */
class Category extends Model{
	//标签表
	protected $table = 'category';
	//自动验证
	protected $validate = array(
			array('cname','required','商品分类名称必须填写哦^_^',3,3),
			array('goods_type_tid','required','类型必须选择哦^_^',3,3),
			array('csort','required','排序必须填写哦^_^',3,3),
			array('csort','num:0,65535','排序必须为数字哦^_^',3,3)
	);
	
	//添加
	public function store(){
			if (!$this->create()) return false;
			$this->add();
			return true;
	}
	
	//编辑
	public function edit($cid){
			if (!$this->create()) return false;
			$this->where(array('cid'=>$cid))->save();
			return true;
	}
	
	//编辑
	/**
	 * [getNoMine 获得除了自身和自身的所有的子集]
	 * @return [type] [description]
	 */
	public function getNoMine($cid){
		//1.获取自身所有的子集
		$cids = $this->getSon($this->get(),$cid);
		//2.压入自身的cid
		$cids[] = $cid;
		//3.排除
		$data = $this->where("cid NOT IN(" . implode(',', $cids) . ")")->get();
		//树形数据,并且返回
		return Data::tree($data,'cname');
	}
	
	/**
	 * 获取所有的子集
	 * @param array $data 所有的数据
	 * @param string $cid  分类的自增ID
	 */
	private function getSon($data,$cid){
		//用于存储cid,声明静态变量是为了在递归调用时,数据不会被丢失
		static $temp = array();
		/* +-----+------------+-----+
		 | cid | cname      | pid |
		+-----+------------+-----+
		|   1 | 军事       		 |   0 |
		|   5 | 国际新闻  	 |   0 |
		|   6 | 国内军事   	 |   1 |
		|   8 | 娱乐抢先看	 |   0 |
		|  10 | 果果军事   	 |   1 |
		|  11 | 国外军事   	 |   1 |
		|  12 | 后盾网     	 |   6 |
		+-----+------------+-----+ */
		/*父级不能是自身和自身的所有子集*/
		foreach ($data as $v) {
			if ($v['pid'] == $cid) {
				$temp[] = $v['cid'];
				//递归调用
				$this->getSon($data,$v['cid']);
			}
		}
		return $temp;
	}
}

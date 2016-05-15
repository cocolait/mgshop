<?php namespace Common\Model;
use Hdphp\Model\Model;
/**
 * 商品表模型
 */
class Goods extends Model{
	//标签表
	protected $table = 'goods';
	
	//自动验证
	protected $validate = array(
			array('category_cid','required','所属分类必须选择哦^_^',3,3),
			array('brand_bid','required','所属品牌必须选择哦^_^',3,3),
			array('goods_type_tid','required','所属品牌必须选择哦^_^',3,3),
			array('gname','required','商品名称必须填写哦^_^',3,3),
			array('unit','required','记件单位必须填写哦^_^',3,3),
			array('marketprice','required','市场价必须填写哦^_^',3,3),
			array('marketprice','num:0,65535','市场价必须填写数字哦^_^',3,3),
			array('shopprice','required','商城价必须填写哦^_^',3,3),
			array('shopprice','num:0,65535','商城价必须填写数字哦^_^',3,3),
			array('repertory','required','商品库存必须填写哦^_^',3,3),
			array('repertory','num:0,65535','商品库存必须填写数字哦^_^',3,3)
	);
	
	 //自动完成
	 protected $auto=array(
	 		array('click','mtrand','method',3,1),
	 		array('hot','hotrand','method',3,1),
	 		array('time','time','function',3,1),
	 		array('admin_id','getUid','method',3,3)
	 );
	 
	 //点击率
	 public function mtrand(){
	 	return mt_rand(200,800);
	 }
	 //热度
	 public function hotrand(){
	 	return mt_rand(800,2000);
	 }
	 
	 //用户id
	 public function getUid(){
	 	return $_SESSION['aid'];
	 }
	
	//商品添加
	public function store(){
		if (!$this->create()) return false;
		//1.goods 商品表,返回自增ID
		$gid = $this->add();
		//2.goods_detail 商品详情表
		$this->addDetail($gid);
		//3.goods_attr 商品属性表
		//属性添加 
		$attr = Q('post.attr',array());
		$this->addAttr($attr, $gid);
		//规格添加
		$spec = Q('post.spec',array());
		$this->addNorms($spec, $gid);
		//添加成功,返回TRUE
		return true;
	}
	
	//编辑商品
	public function edit($gid){
		$goodsAttrModel = new \Common\Model\GoodsAttr();
		$gdetailModel = new \Common\Model\GoodsDetail();
		//实例化商品货品表模型
		$goodsListModel = new \Common\Model\GoodsList();
		
		$where = array('goods_gid'=>$gid);
		if (!$this->create()) return false;
		//商品的编辑
		$this->save();
		
		//goods_detail 商品详情表 先删除在添加
		$gdetailModel->where($where)->delete();
		$this->addDetail($gid);
		//goods_attr 商品属性表
		$goodsAttrModel->where($where)->delete();
		//随便删除商品货品表
		$goodsListModel->where($where)->delete();
		
		//属性添加
		$attr = Q('post.attr',array());
		$this->addAttr($attr, $gid);
		//规格添加
		$spec = Q('post.spec',array());
		$this->addNorms($spec, $gid);
		return true;
	}
	
	//添加属性
	protected  function addAttr($attr,$gid){
		//实例化商品属性表模型
		$goodsAttrModel = new \Common\Model\GoodsAttr();
		foreach ($attr as $k=>$v) {
			if ($v) {
				$data = array(
						'gt_name' => $v,
						'added'    => 0,
						'goods_type_attr_gtid' => $k,
						'goods_class' =>0,
						'goods_gid' => $gid
				);
				$goodsAttrModel->add($data);
			}
		}
	}
	
	//添加规格
	protected  function addNorms($spec,$gid){
		//实例化商品属性表模型
		$goodsAttrModel = new \Common\Model\GoodsAttr();
		foreach ($spec as $k=>$v) {
			if ($v) {
				for ($i=0;$i < count($v['gtvalue']);$i++){
					$data = array(
							'gt_name' => $v['gtvalue'][$i],
							'added'    => $v['added'][$i],
							'goods_type_attr_gtid' => $k,
							'goods_class' => 1,
							'goods_gid' => $gid
					);
					$goodsAttrModel->add($data);
				}
			}
		}
	}
	
	//添加详情
	protected function addDetail($gid){
		//实例化商品详情表
		$gdetailModel = new \Common\Model\GoodsDetail();
		$detailData = array(
				'intro' => trim(Q('post.intro','')),
				'service' => trim(Q('post.service','')),
				'goods_gid' => $gid
		);
		$gdetailModel->add($detailData);
	}
	
	
	
}

<?php namespace Home\Controller; 

/**
 * 前台首页控制器
 */
class IndexController extends CommonController{
	//构造函数
	public function __init(){
		parent::__init();
	}

   	public function index(){
   			$category = new \Common\Model\Category();
   			$goodsModel = new \Common\Model\Goods();
   			$brandModel = new \Common\Model\Brand();
   			$cateModel =  new \Common\Model\CateImg();
   			//随机抽取6条衣服类型的商品 1f衣服
   			//设置缓存
   			if (!$goodsData1 = Cache::get('goodsData1')) {
   				$goods_data_1 = $cateModel->where("goods_type_tid=1")->get();
   				//设置缓存
   				Cache::set('goodsData1',$goods_data_1,0);
   			}
   			$yfGoods = isset($goodsData1) ? $goodsData1 : $cateModel->where("goods_type_tid=1")->get();
   			$this->assign('goodsData1', $yfGoods);
   			//第一层
   			//随机抽取8个品牌
   			//设置缓存
   			if (!$brandData = Cache::get('brandData')) {
   				$brandData = $brandModel->orderBy('rand()')->limit(8)->get();
   				//设置缓存
   				Cache::set('brandData',$brandData,0);
   			}
   			$brandData_ca1 = isset($brandData) ? $brandData : $brandModel->orderBy('rand()')->limit(8)->get();
   			$this->assign('brandData', $brandData_ca1);
   			
   			//第二层
   			//设置缓存
   			if (!$brandData1 = Cache::get('brandData1')) {
   				$brandData1 = $brandModel->orderBy('rand()')->limit(8)->get();
   				//设置缓存
   				Cache::set('brandData1',$brandData1,0);
   			}
   			$brandData_ca2 = isset($brandData1) ? $brandData1 : $brandModel->orderBy('rand()')->limit(8)->get();
   			$this->assign('brandData1', $brandData_ca2);
   			
   			//第三层
   			//设置缓存
   			if (!$brandData2 = Cache::get('brandData1')) {
   				$brandData2 = $brandModel->orderBy('rand()')->limit(8)->get();
   				//设置缓存
   				Cache::set('brandData2',$brandData2,0);
   			}
   			$brandData_ca3 = isset($brandData2) ? $brandData2 : $brandModel->orderBy('rand()')->limit(8)->get();
   			$this->assign('brandData2', $brandData_ca3);
   			
   			//随机抽取6条裤子类型的商品  裤子
   			//设置缓存
   			if (!$goodsData2 = Cache::get('goodsData2')) {
   				$goods_data_2 = $cateModel->where("goods_type_tid=2")->get();
   				//设置缓存
   				Cache::set('goodsData2',$goods_data_2,0);
   			}
   			$kzGoods = isset($goodsData2) ? $goodsData2 : $cateModel->where("goods_type_tid=2")->get();
   			$this->assign('goodsData2', $kzGoods);
   			
   			//随机抽取6条【衣服,化妆品】类型的商品   心水好货
   			//设置缓存
   			if (!$goodsData3 = Cache::get('goodsData3')) {
   				$goods_data_3 = $cateModel->where("goods_type_tid=14")->get();
   				//设置缓存
   				Cache::set('goodsData3',$goods_data_3,0);
   			}
   			$hhGoods = isset($goodsData3) ? $goodsData3 : $cateModel->where("goods_type_tid=14")->get();
   			$this->assign('goodsData3', $hhGoods);
   			//随机抽取6条【衣服,鞋子,饰品】类型的商品   轻时髦
   			
   			//分配分类数据
   			
   			//设置缓存
//    			Cache::flush();
   			if (!$cateData = Cache::get('cateData')) {
   				$cateData = Data::channelLevel($category->get());
   				//设置缓存
   				Cache::set('cateData',$cateData,0);
   			}
   			$cacheCate = isset($cateData) ? $cateData : Data::channelLevel($category->get());
   			$this->assign('cateData',$cacheCate);
       		$this->display();
    }
}

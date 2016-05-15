<?php namespace Admin\Controller;
/**
 * 商品类型控制器
 */
class GoodsController extends CommonController {
	protected $gtypeModel = null;
	protected $gTypeAttrModel = null;
	protected $categoryModel = null;
	protected $brandModel = null;
	protected $goodsModel = null;
	protected $gdetailModel = null;
	protected $goodsAttrModel = null;
	protected $goodsListModel = null;
	protected $imgsModel = null;
	protected $cateImgsModel = null;
	public function __init(){
		//执行父类构造方法以免被覆盖
		parent::__init();
		//实例化商品类型模型
		$this->gtypeModel = new \Common\Model\GoodsType();
		//实例化商品类型属性表模型
		$this->gTypeAttrModel = new \Common\Model\GoodsTypeAttr();
		//实例化商品分类模型
		$this->categoryModel = new \Common\Model\Category();
		//实例化商品品牌模型
		$this->brandModel = new \Common\Model\Brand();
		//实例化商品表模型
		$this->goodsModel = new \Common\Model\Goods();
		//实例化商品详情表模型
		$this->gdetailModel = new \Common\Model\GoodsDetail();
		//实例化商品属性表模型
		$this->goodsAttrModel = new \Common\Model\GoodsAttr();
		//实例化货品表模型
		$this->goodsListModel = new \Common\Model\GoodsList();
		//实例化商品图册模型
		$this->imgsModel = new \Common\Model\Imgs();
		//实例化商品分类图片模型
		$this->cateImgsModel = new \Common\Model\CateImg();
	}
	
	//==============商品类型 start==================\\
	//商品类型列表
    public function listType(){
	    	//总计总数
	    	$total = $this->gtypeModel->count();
	    	//定制分页样式
	    	$page = Page::row(10)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
	    	$typeData = $this->gtypeModel->limit(Page::limit())->get();
	    	$this->assign('typeData',$typeData);
	    	$this->assign('page', $page);
      		$this->display();
    }
    
    //商品类型 添加
    public function addType(){
    		$tid = Q('tid',0,'intval');
    		$tname = '';
    		if (!$tid) {
    			//添加
    			if (IS_POST) {
	    			if ($this->gtypeModel->combine($tid)) {
	    				$this->success('添加成功,马上为您跳转...',U('listType'));
	    			}
    				$this->error($this->gtypeModel->getError());
    			}
    		}else{
    			//修改
    			if (IS_POST) {
    				if ($this->gtypeModel->combine($tid)) {
    					$this->success('修改成功,马上为您跳转...',U('listType'));
    				}
    				$this->error($this->gtypeModel->getError());
    			}
    			//查出旧数据
    			$tname = $this->gtypeModel->where(array('tid'=>$tid))->pluck('tname');
    		}
    		$this->assign('tname', $tname);
    		$this->display();
    }
    
    //类型删除
    public function delType(){
    		if (IS_AJAX) {
    			$tid = Q('post.tid',0,'intval');
    			$data = $this->gtypeModel->join('goods_attr','tid','=','goods_type_attr_gtid')->where(array('tid'=>$tid))->find();
    			if ($data) {
    				//有数据不能直接删除
    				exit(json_encode(array('status'=>0)));
    			}else{
    				if ($this->gtypeModel->delete($tid)) {
    					exit(json_encode(array('status'=>1)));
    				}
    			}
    		}
    }
    //==============商品类型 end==================\\
    
    //==============商品属性列表 start==================//
    //属性列表
    public function listAttr(){
	    	//总计总数
	    	$total = $this->gTypeAttrModel->count();
	    	//定制分页样式
	    	$page = Page::row(10)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
    		$listData = $this->gTypeAttrModel->join('goods_type','goods_type_tid','=','tid')->limit(Page::limit())->get();
	    	$this->assign('listData',$listData);
	    	$this->assign('page',$page);
    		$this->display();
    }
    //添加和修改商品属性
    public function addAttr(){
    	$gtid = Q('gtid',0,'intval');
    	$oldAttrData = array();
    	$type_tid = '';
    	$class = 0;
    	if ($gtid) {
    		//修改
    		if (IS_POST) {
    			//编辑处理
    			$gtid = Q('post.gtid',0,'intval');
    			if ($this->gTypeAttrModel->store($gtid)) $this->success('操作成功,马上为您跳转...',U('listAttr'));
    			$this->error($this->gTypeAttrModel->getError());
    		}
    		//取得旧数据
    		$oldAttrData = $this->gTypeAttrModel->where(array('gtid'=>$gtid))->find();
    		
    		$class = $oldAttrData['class'];
    		$type_tid = $oldAttrData['goods_type_tid'];
    	
    	}else{
    		//添加
    		if (IS_POST) {
    			//添加处理
    			if ($this->gTypeAttrModel->store($gtid)) $this->success('操作成功,马上为您跳转...',U('listAttr'));
    			$this->error($this->gTypeAttrModel->getError());
    		}
    	}
    	//查出所有类型并且分配
    	 $this->assign('gData',$this->gtypeModel->get());
    	 $this->assign('class', $class);
    	 $this->assign('typeId',$type_tid);
    	 $this->assign('oldAttrData', $oldAttrData);
    	 $this->display();
    }
   	
    //删除商品属性
    public function delAttr(){
    		if (IS_AJAX) {
    			$gtid = Q('post.gtid',0,'intval');
    			if ($this->gTypeAttrModel->delete($gtid)) {
    				exit(json_encode(array('status'=>1)));
    			}
    		}
    }
    //==============商品属性列表 end==================//
    
    
    //==============商品分类管理 start==================//
    //商品分类列表
    public function ListCategory(){
    		//总计总数
	    	$total = $this->categoryModel->where(array('pid'=>0))->count();
	    	//定制分页样式
	    	$page = Page::row(8)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
	    	$this->assign('page',$page);
	    	
	    	/* $listData = $this->categoryModel->get();
    		$listData = Data::tree($listData,'cname');
    		//重新组合索引
    		$listData = array_values($listData);
    		$newArray = array();
    		$page = Q('get.page',1,'intval');
    		//配合page参数值,重组新数组,生成新分页
    		//截取数组个数,一页显示10条数据
    		for ($i=($page-1)*10;$i < $page*10;$i++){
    			$newArray[] = $listData[$i];
    		}
	    	$this->assign('listData',$newArray); */
    		$this->assign('listData', $this->categoryModel->where(array('pid'=>0))->limit(Page::limit())->orderBy('csort','ASC')->get());
	    	$this->display();
    }
    
    //商品顶级分类添加
    public function addCategory(){
    		if (IS_POST) {
    			if ($this->categoryModel->store()) $this->success('添加成功,马上为您跳转...',U('ListCategory'));
    			$this->error($this->categoryModel->getError()); 
    		}
    		//商品类型数据
    		$this->assign('gData',$this->gtypeModel->get());
    		$this->display();
    }
    
    //添加字分类
    public function addSon(){
    	if(IS_POST){
    		if (!$this->categoryModel->store()) {
    			$this->error($this->category->getError());
    		}
    		$this->success('添加成功,正在为您跳转...',U('ListCategory'));
    	}
    	
    	//查询出所有的栏目
    	$cateData = $this->categoryModel->get();
    	$treeData = Data::tree($cateData,'cname');
    	$this->assign('treeData', $treeData);
    	$typeData = $this->categoryModel->join('goods_type','tid','=','goods_type_tid')->where(array('cid'=>Q('get.cid',0,'intval')))->find();
    	$this->assign('typeData',$typeData);
    	//商品类型数据
    	$this->assign('gData',$this->gtypeModel->get());
    	$this->display();
    }
    
    //商品分类编辑
    public function editCategory(){
    	if (IS_POST) {
    		$cid = Q('post.cid',0,'intval');
    		if ($this->categoryModel->edit($cid)) $this->success('编辑成功,马上为您跳转...',U('ListCategory'));
    		$this->error($this->categoryModel->getError());
    	}
    	//获取分类ID
    	$cid = Q('get.cid',0,'intval');
    	//查询旧数据,分配到模板
    	$oldData = $this->categoryModel->where(array('cid' =>$cid))->find();
    	
    	$this->assign('oldData',$oldData);
    	//获取所属分类（除去自身和自身所有的子集）
    	$cateData = $this->categoryModel->getNoMine($cid);
    	
    	//分配所属分类数据到模板
    	$this->assign('cateData',$cateData);
    	//商品类型数据
    	$this->assign('gData',$this->gtypeModel->get());
    	$this->display();
    }
    
    //删除分类 异步
    public function delCategory(){
    	if (IS_AJAX) {
    		$cid = Q('post.cid',0,'intval');
    		//关联商品表[还没有关联]
    		$data = $this->categoryModel->join('goods','cid','=','category_cid')->where(array('cid'=>$cid))->find();
    		if ($data) {
    			//有数据不能直接删除
    			exit(json_encode(array('status'=>0)));
    		}else{
    			if ($this->categoryModel->delete($cid)) {
    				exit(json_encode(array('status'=>1)));
    			}
    		}
    	}
    }
    
    //异步修改分类排序
    public function sortCategory(){
    	if (IS_AJAX) {
    		$cid = Q('post.cid',0,'intval');
    		$csort = Q('post.csort',0,'intval');
    		if ($this->categoryModel->where(array('cid'=>$cid))->save(array('csort'=>$csort))) {
    			exit(json_encode(array('status' => 1)));
    		}else{
    			exit(json_encode(array('status' => 0)));
    		}
    	}
    }
    //异步修改是否显示分类
    public function showCategory(){
    	if (IS_AJAX) {
    		$cid = Q('post.cid',0,'intval');
    		$src = Q('post.src');
    		if ($src == 'yes.gif') {
    			$this->categoryModel->where(array('cid'=>$cid))->save(array('is_show'=>0));
    			exit(json_encode(array('status'=>1,'msg'=>'no.gif')));
    		}else{
    			$this->categoryModel->where(array('cid'=>$cid))->save(array('is_show'=>1));
    			exit(json_encode(array('status'=>1,'msg'=>'yes.gif')));
    		}
    	}
    }
    //==============商品分类管理 end==================//
    
    //==============商品品牌管理 start==================//
    //品牌列表
    public function listBrand(){
    		if (IS_POST) {
    			$title = Q('post.title','');
    			$where = " bname LIKE '%{$title}%' ";
    			$listData = $this->brandModel->where($where)->limit(20)->get();
    			$this->assign('listData', $listData);
    			$this->assign('page','');
    		}else{
    			$total = $this->brandModel->count();
    			//定制分页样式
    			$page = Page::row(10)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
    			$listData = $this->brandModel->orderBy('bsort')->limit(Page::limit())->get();
    			$this->assign('listData',$listData);
    			$this->assign('page',$page);
    		}
    		$this->display();
    }
    
    //添加和编辑商品品牌
    public function addBrand(){
    	$bid = Q('bid',0,'intval');
    	$oldData = array();
    	if ($bid) {
    		//修改处理
    		if (IS_POST) {
    			$bid = Q('post.bid',0,'intval');
    			if ($this->brandModel->edit($bid)) $this->success('添加成功,马上为您跳转...',U('listBrand'));
    			$this->error($this->brandModel->getError());
    		}
    		$oldData = $this->brandModel->where(array('bid'=>$bid))->find();
    	}else{
    		//添加操作
    		if (IS_POST) {
    			if ($this->brandModel->store()) $this->success('添加成功,马上为您跳转...',U('listBrand'));
    			$this->error($this->brandModel->getError());
    		}
    	}
    	$this->assign('oldData', $oldData);
    	$this->display();
    }
    
    //品牌删除
    public function delBrand(){
    		if (IS_AJAX) {
    			$bid = Q('post.bid',0,'intval');
    			if ($this->brandModel->delete($bid)) {
    				exit(json_encode(array('status'=>1)));
    			}
    		}
    }
    
    //==============商品品牌管理 end==================//
    
    //==============商品管理 start==================//
    //商品列表
    public function listGoods(){
    	$total = $this->goodsModel->where(array('is_delete'=>0))->count();
    	//定制分页样式
    	$page = Page::row(10)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
    	$listData = $this->goodsModel->where(array('is_delete'=>0))->orderBy('time','DESC')->limit(Page::limit())->get();
    	$this->assign('listData',$listData);
    	$this->assign('page', $page);
    	$this->display();
    }
    //商品添加
    public function addGoods(){
    	 if (IS_POST) {
    	 		if ($this->goodsModel->store()) $this->success('添加成功,马上为您跳转...',U('listGoods'));
    	 		$this->error($this->goodsModel->getError());
    	 }
    	 //查出所有分类
    	 $cateData = Data::tree($this->categoryModel->get(),'cname');
    	 $this->assign('cateData',  $cateData);
    	 //查出所有品牌
    	 $this->assign('brandData', $this->brandModel->get());
    	 //查出所有的的类型
    	 $this->assign('TypeData', $this->gtypeModel->get());
    	 $this->display();
    }
    
    //商品编辑
    public function editGoods(){
    	if (IS_POST) {
    		$gid = Q('post.gid',0,'intval');
    		if ($this->goodsModel->edit($gid)) $this->success('编辑成功,马上为您跳转...',U('listGoods'));
    		$this->error($this->goodsModel->getError());
    	}
    	
    	//查出旧数据
    	$gid = Q('get.gid',0,'intval');
    	$oldAttrData = $this->goodsAttrModel->where(" goods_gid={$gid} AND goods_class=0")->get();
    	$oldNorms = $this->goodsAttrModel->where(" goods_gid={$gid} AND goods_class=1")->get();
		
    	//分配商品属性
    	$this->assign('oldAttrData', $this->getGroupArray($oldAttrData,$gid));
    	//分配规格
    	$this->assign('oldNormsData', $this->getGroupArray($oldNorms,$gid));
    	
    	//分配旧数据
    	$oldData = $this->goodsModel->join('goods_detail','goods_gid','=','gid')->where(array('gid'=>$gid))->find();
    	$this->assign('oldData', $oldData);
    	
    	//查出所有分类
    	$cateData = Data::tree($this->categoryModel->get(),'cname');
    	$this->assign('cateData',  $cateData);
    	//查出所有品牌
    	$this->assign('brandData', $this->brandModel->get());
    	//查出所有的的类型
    	$this->assign('TypeData', $this->gtypeModel->get());
    	$this->display();
    }
    
    //异步删除到回收站
    public function recycle(){
    	$total = $this->goodsModel->where(array('is_delete'=>1))->count();
    	//定制分页样式
    	$page = Page::row(10)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
    	$listData = $this->goodsModel->where(array('is_delete'=>1))->orderBy('time','DESC')->limit(Page::limit())->get();
    	$this->assign('listData',$listData);
    	$this->assign('page', $page);
    	$this->display();
    }
    
    //重新组合数组 用于属性和规格
    protected  function getGroupArray($data,$gid){
    	$newData = array();
    	foreach ($data as $k=>$v){
    		if (!$v['goods_class']) {
    			$gtvalue = $this->goodsAttrModel->join('goods_type_attr','gtid','=','goods_type_attr_gtid')->where("goods_gid={$gid} AND goods_class=0  AND gtid={$v['goods_type_attr_gtid']}")->pluck('gtvalue');
    		}else{
    			$gtvalue = $this->goodsAttrModel->join('goods_type_attr','gtid','=','goods_type_attr_gtid')->where("goods_gid={$gid} AND goods_class=1  AND gtid={$v['goods_type_attr_gtid']}")->pluck('gtvalue');
    		}
    		$v['gtname'] = $this->gTypeAttrModel->where(array('gtid'=>$v['goods_type_attr_gtid']))->pluck('gtname');
    		$newData[]=$v;
    		$newData[$k]['gtvalue'] = explode('|', $gtvalue);
    	}
    	return $newData;
    }
    //==============商品管理 end==================//
    
    //==============货品列表管理 start==================//
    //货品列表
    public function goodsList(){
    	//获取商品ID
    	$gid = Q('get.gid',0,'intval');
    	//获取商品类型ID
//     	$tid = Q('get.tid',0,'intval');
    	//查出商品规格
    	$specData = $this->gTypeAttrModel->where("goods_type_tid=2  AND class=1")->field('gtid,gtname')->get();
    	
    	//查出规格属性值
    	$where = array('goods_gid'=>$gid);
    	$total = $this->goodsListModel->where($where)->count();
    	
    	//定制分页样式
    	$page = Page::row(10)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
    	$listData = $this->goodsListModel->where($where)->limit(Page::limit())->get();
    	//循环数组,给数组压入颜色和尺码值
    	foreach ($listData as $k=>$v){
    		$listData[$k]['spce'] = $this->goodsAttrModel->where("gt_id IN ({$v['combine']})")->lists('gt_name');
    	}
    	//分配循环数据
    	$this->assign('page', $page);
    	$this->assign('listData',$listData);
    	//分配规格
    	$this->assign('specData', $specData);
    	$this->display();
    }
    //货品列表 添加 修改
    public function goodsListAdd(){
    	 $glid = Q('glid',0,'intval');
    	 $oldData = array();
    	 $combine = array();
    	 if (!$glid) {
    	 	//添加
    	 	if (IS_POST) {
//     	 		U('listGoods')
    	 		if ($this->goodsListModel->store())  $this->success('添加成功,马上为您跳转...');
    	 		$this->error($this->goodsListModel->getError());
    	 	}
    	 }else{
    	 	//编辑
    	 	if (IS_POST) {
    	 		if ($this->goodsListModel->store())  $this->success('编辑成功,马上为您跳转...',U('listGoods'));
    	 		$this->error($this->goodsListModel->getError());
    	 	}
    	 	//查询旧数据,并且分配
    	 	$oldData = $this->goodsListModel->where(array('glid'=>$glid))->find();
    	 	$combine = explode(',', $oldData['combine']);
    	 }
    	  //获取商品ID查出规格和属性
    	 $gid = Q('get.gid',0,'intval');
    	 $oldNorms = $this->goodsAttrModel->where("goods_gid={$gid} AND goods_class=1")->get();
    	 $this->assign('NormsData', $this->newNorms($oldNorms));
    	 $this->assign('glid', $glid);
    	 //分配旧数据
    	 $this->assign('combine', $combine);
    	 $this->assign('oldData', $oldData);
    	 $this->display();
    }
    //货品列表 删除
    public function goodsListDel(){
    		if (IS_AJAX) {
    			if ($this->goodsListModel->delete(Q('glid',0,'intval'))) {
    				exit(json_encode(array('status'=>1,'msg'=>'删除成功^_^')));
    			}else{
    				exit(json_encode(array('status'=>0,'msg'=>'删除失败/(ㄒoㄒ)/')));
    			}
    		}
    }
    
    //重新组合规格数组
    public function newNorms($data){
    		$newData = array();
    		foreach ($data as $k=>$v){
    			$gtname = $this->gTypeAttrModel->where(array('gtid'=>$v['goods_type_attr_gtid']))->pluck('gtname');
    			$newData[$gtname][]=$v;
    		}
    		return $newData;
    }
    
    //==============货品列表管理 end==================//
    
    //==============商品图册  开始==================//
    //图册列表
    public function imgsList(){
    	$gid = Q('get.gid',0,'intval');
    	$this->assign('imgData', $this->imgsModel->where(array('goods_gid'=>$gid))->get());
    	$this->assign('gname', $this->goodsModel->where(array('gid'=>$gid))->pluck('gname'));
    	$this->display();
    }
    //图册添加
    public function addImgs(){
    	if (IS_POST) {
    		$this->imgsModel->store();
    		$this->success('操作成功^_^',U('imgsList',array('gid'=>Q('post.gid',0,'intval'))));
    	}
    	$this->display();
    }
    
    //删除全部
    public function delimgs(){
    	if (IS_AJAX) {
    		$gid = Q('post.gid',0,'intval');
			if ($this->imgsModel->where(array('goods_gid'=>$gid))->delete()) {
    			exit(json_encode(array('status'=>1)));
    		}
    		exit(json_encode(array('status'=>1)));
    	}
    }
    
    //异步处理商品图片上传【多图上传】
    public function imgsGoods(){
    	//文件路径
    	$imgDir = 'Upload/Imgs/' . date('ymd');
    	//上传图片
    	$file = Upload::path($imgDir)->type('jpg,png,gif')->size(2000000)->make();
    	//上传失败
    	if (!$file) {
    		exit(json_encode(array('status' => 0,'msg' => Upload::getError())));
    	}else{
    		//上传成功,组合缩略路径返回
    		$midPath =  $imgDir . '/' . 'mid_' . $file['0']['basename'];
    		$bigPath =  $imgDir . '/' . 'max_' . $file['0']['basename'];
    		$miniPath =  $imgDir . '/' . 'mini_' . $file['0']['basename'];
    	
    		//中图处理
    		$midThumbPath = Image::thumb($file['0']['path'],$midPath,468,468,6);
    		//大图处理
    		$bigThumbPath = Image::thumb($file['0']['path'],$bigPath,700,700,1);
    		//小图
    		$miniThumbPath = Image::thumb($file['0']['path'],$miniPath,100,100,6);
    	
    		//组合返回路径
    		$data = array (
    				'status'	  =>  1,
    				'path'	  => array (
    						'max'	     =>  $bigPath,
    						'mid'		 =>  $midPath,
    						'mini'	     =>   $miniPath
    				)
    		);
    	
    		//删除原图
    		unlink($file['0']['path']);
    		//返回数据
    		exit(json_encode($data));
    	}
    }
    //==============商品图册  结束==================//
    
    //==============分类图片 管理 开始==================//
    public function CategoryImg(){
    	$total = $this->cateImgsModel->count();
    	//定制分页样式
    	$page = Page::row(6)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make($total);
    	$listData = $this->cateImgsModel->limit(Page::limit())->get();
    	$this->assign('listData',$listData);
    	$this->assign('page',$page);
    	$this->display();
    }
    
    //添加分类图片
    public function addCate(){
    	$teid = Q('teid',0,'intval');
    	$oldData = array();
    	if ($teid) {
    		//修改处理
    		if (IS_POST) {
    			$teid = Q('post.teid',0,'intval');
    			if ($this->cateImgsModel->edit($teid)) $this->success('操作成功,马上为您跳转...',U('CategoryImg'));
    			$this->error($this->cateImgsModel->getError());
    		}
    		$oldData = $this->cateImgsModel->where(array('teid'=>$teid))->find();
    	}else{
    		//添加操作
    		if (IS_POST) {
    			if ($this->cateImgsModel->store()) $this->success('添加成功,马上为您跳转...',U('CategoryImg'));
    			$this->error($this->cateImgsModel->getError());
    		}
    	}
    	//分配旧数据
    	$this->assign('oldData', $oldData);
    	$this->assign('cid', isset($oldData['category_cid'])?$oldData['category_cid']:0);
    	$this->assign('tid', isset($oldData['goods_type_tid'])?$oldData['goods_type_tid']:0);
    	//查出所有分类
    	$cateData = Data::tree($this->categoryModel->get(),'cname');
    	$this->assign('cateData',  $cateData);
    	
    	//查出所有类型
    	$this->assign('TypeData', $this->gtypeModel->get());
    	
    	$this->display();
    }
    
    //删除分类图片
    public function delCate(){
    	if (IS_AJAX) {
    		$teid = Q('post.teid',0,'intval');
    		if ($this->cateImgsModel->delete($teid)) {
    			exit(json_encode(array('status'=>1)));
    		}
    	}
    }
    //==============分类图片 管理 结束==================//
    
    //==============栏目图片管理 开始==================//
    public function cateImgList(){
    	$where = array('is_imgs'=>1);
    	$listData = $this->categoryModel->where($where)->get();
    	//取得所有子栏目
    	$data = Data::channelLevel($listData);
    	//重新组合索引
    	$listData = array_values($data);
    	//定制分页样式
    	$page = Page::row(5)->desc(array('pre'=>'← Previous', 'next'=>'Next → '))->make(count($listData));
    	$this->assign('page', $page);
    	$newArray = array();
    	//接受分页数据值
    	$page = Q('get.page',1,'intval');
    	//配合page参数值,重组新数组,生成新分页
    	//截取数组个数,一页显示5条数据
    	for ($i=($page-1)*5;$i < $page*5;$i++){
    		//把存在的数据值压入新数组中
    		if (isset($listData[$i])) {
    			$newArray[] = $listData[$i];
    		}
    	}
    	//分配数据
    	$this->assign('listData',$newArray);
    	$this->display();
    }
    
    //二级栏目图片列表
    public function twoCateList(){
    	$cid = Q('get.cid',0,'intval');
    	$where = array('is_imgs'=>1);
    	$listData = $this->categoryModel->where($where)->get();
    	//取得所有子栏目
    	$data = Data::channelLevel($listData,$cid);
    	$this->assign('listData', $data);
    	$this->display();
    }
    //添加图片[编辑分类]
    public function cateImgedit(){
    	if (IS_POST) {
    	 	$cid = Q('post.cid',0,'intval');
    	 	if ($cid) {
    	 		$where = array('cid' => $cid);
    	 		$mini_imgs_120x120 = Q('post.mini_imgs_120x120');
    	 		$max_imgs_250x130 = Q('post.max_imgs_250x130');
    	 		$max_imgs_200x240 = Q('post.max_imgs_200x240');
    	 		if ($max_imgs_250x130 && $max_imgs_200x240) {
    	 			//一级栏目
    	 			$data = array(
    	 					'max_imgs_250x130' => $max_imgs_250x130,
    	 					'max_imgs_200x240' => $max_imgs_200x240,
                             'is_imgs' => 1
    	 					);
    	 			$this->categoryModel->where($where)->save($data);
    	 		}else if ($mini_imgs_120x120) {
    	 			$data = array(
    	 					'mini_imgs_120x120' => $mini_imgs_120x120,
                            'is_imgs' => 1
    	 			);
    	 			$this->categoryModel->where($where)->save($data);
    	 		}else{
    	 			$this->error('操作失败/(ㄒoㄒ)/~~');
    	 		}
    	 		$this->success('操作成功,马上为您跳转^_^',U('cateImgList'));
    	 	}else{
    	 		$this->error('操作失败/(ㄒoㄒ)/~~');
    	 	}
    	 }
	     //查出所有分类
	     $cateData = Data::tree($this->categoryModel->get(),'cname');
	     $this->assign('cateData',  $cateData);
	     $this->display();
    }
    
    //编辑图片
    public function cateImgShow(){
    	//获取cid
    	$cid = Q('get.cid',0,'intval');
    	//获取级别
    	$lev = Q('get.lev',0,'intval');
    	//查出所有分类
    	$cateData = Data::tree($this->categoryModel->get(),'cname');
    	$this->assign('cateData',  $cateData);
    	
    	//查出cid指定的数据
    	$oldData = $this->categoryModel->where(array('cid'=>$cid))->find();
    	$this->assign('oldData', $oldData);
    	$this->assign('lev', $lev);
    	$this->display();
    }
    
    //删除图片
    public function cateImgDel(){
    	 if (IS_AJAX) {
    	 	$cid = Q('cid',0,'intval');
    	 	$lev = Q('lev',0,'intval');
    	 	$where = array('cid'=>$cid);
    	 	if ($lev == 1) {
    	 		//修改一级栏目图片
    	 		$data = array(
    	 				'max_imgs_250x130' => '',
    	 				'max_imgs_200x240' => ''
    	 		);
    	 		$this->categoryModel->where($where)->save($data);
    	 		exit(json_encode(array('status'=>1,'msg'=>'删除成功^_^')));
    	 	}else if ($lev == 2) {
    	 		//修改二级栏目图片
    	 		$data = array(
    	 				'mini_imgs_120x120' => ''
    	 		);
    	 		$this->categoryModel->where($where)->save($data);
    	 		exit(json_encode(array('status'=>1,'msg'=>'删除成功^_^')));
    	 	}else{
    	 		exit(json_encode(array('status'=>0,'msg'=>'删除失败ㄒoㄒ')));
    	 	}
    	 }
    }
    
    //==============栏目图片管理 结束==================//
}
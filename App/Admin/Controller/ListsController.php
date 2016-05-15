<?php namespace Admin\Controller; 
/**
 * 异步处理控制器
 */
class ListsController extends CommonController {
		protected $gtypeModel = null;
		protected $gTypeAttrModel = null;
		protected $categoryModel = null;
		protected $brandModel = null;
		protected $goodsModel = null;
		protected $gdetailModel = null;
		protected $goodsAttrModel = null;
		protected $goodsListModel = null;
		
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
		}
		
		//异步处理商品品牌 是否显示
		public function showBrand(){
			if (IS_AJAX) {
				$bid = Q('post.bid',0,'intval');
				$src = Q('post.src');
				if ($src == 'yes.gif') {
					$this->brandModel->where(array('bid'=>$bid))->save(array('is_show'=>0));
					exit(json_encode(array('status'=>1,'msg'=>'no.gif')));
				}else{
					$this->brandModel->where(array('bid'=>$bid))->save(array('is_show'=>1));
					exit(json_encode(array('status'=>1,'msg'=>'yes.gif')));
				}
			}
		}
		
		//异步商品  是否热门
		public function hotBrand(){
			if (IS_AJAX) {
				$bid = Q('post.bid',0,'intval');
				$src = Q('post.src');
				if ($src == 'yes.gif') {
					$this->brandModel->where(array('bid'=>$bid))->save(array('is_hot'=>0));
					exit(json_encode(array('status'=>1,'msg'=>'no.gif')));
				}else{
					$this->brandModel->where(array('bid'=>$bid))->save(array('is_hot'=>1));
					exit(json_encode(array('status'=>1,'msg'=>'yes.gif')));
				}
			}
		}
		
		//异步处理商品品牌 排序
		public function sortBrand(){
			if (IS_AJAX) {
				$bid = Q('post.bid',0,'intval');
				$bsort = Q('post.csort',0,'intval');
				if ($this->brandModel->where(array('bid'=>$bid))->save(array('bsort'=>$bsort))) {
					exit(json_encode(array('status' => 1)));
				}else{
					exit(json_encode(array('status' => 0)));
				}
			}
		}
		
		//异步获取商品属性
		public function getAttr(){
			if (IS_AJAX) {
				$tid = Q('post.tid',0,'intval');
				//获取类型属性表的数据
				$where = " goods_type_tid=2 AND class=0";
				$data = $this->gTypeAttrModel->where($where)->get();
				//重组数组
				foreach ($data as $k=>$v){
					$data[$k]['gtvalue'] = explode('|', $v['gtvalue']);
				}
				$str = '';
				//组合字符串返回
				foreach ($data as $v){
					$str .=<<<str
					<div class="control-group">
							<label for="select" class="control-label">{$v['gtname']}</label>
							<div class="controls">
								<select name="attr[{$v['gtid']}]" id="select" style="width: 224px;padding-left:5px;">
								<option value="0">请选择</option>
str;
					foreach ($v['gtvalue'] as $vo){
						$str .= <<<str
									<option value="{$vo}">{$vo}</option>
str;
					}
								$str .=<<<str
								</select>
						</div>
				</div>
str;
					
				}
				exit($str);
				
			}
		}
		
		//异步获取商品规格
		public function getNorms(){
			if (IS_AJAX) {
				$tid = Q('post.tid',0,'intval');
				//获取类型属性表的数据
				$where = " goods_type_tid=2 AND class=1";
				$data = $this->gTypeAttrModel->where($where)->get();
				$sData = array();
				//重组数组
				foreach ($data as $k=>$v){
					$data[$k]['gtvalue'] = explode('|', $v['gtvalue']);
				}
				
				$str = '';
				foreach ($data as $v){
					$str .=<<<str
				<div class="row-fluid force-margin spec-area" style="position: relative;">
						<div class="span3" style="width:400px;">
							<div class="control-group">
								<label for="select" class="control-label">{$v['gtname']}</label>
								<div class="controls">
									<select name="spec[{$v['gtid']}][gtvalue][]" id="select" style="width: 224px;padding-left:5px;">
									<option value="">请选择...</option>
str;
					foreach ($v['gtvalue'] as $vo){
						//循环select
						$str .=<<<str
						<option value="{$vo}">{$vo}</option>
str;
					}
					
					$str.=<<<str
					</select>
												</div>
											</div>
										</div>
										
										<div class="span3" style="width:400px;">
											<div class="control-group">
												<div class="controls" style="margin-left: 20px;">
													<label for="goods_sn" class="control-label">附加价格</label>
													<div class="controls">
														<input type="text" name="spec[{$v['gtid']}][added][]" class='input-square'  value="0">
													</div>
												</div>
											</div>
										</div>
										<div class="span3" style="width:0px;">
											<button class="btn btn-success add-spec" style="position: absolute;top: 0px;right: 2px;" type="button">+添加规格</button>
										</div>
									</div>
									</div>
str;
				}
				
			}
			exit($str);
		}
		
		
		//异步上传图片 Uploadify
		public function picUploads(){
			//文件路径
			$imgDir = 'Upload/GoodsList/' . date('ymd');
			//上传图片
			$file = Upload::path($imgDir)->type('jpg,png,gif')->size(2000000)->make();
			if (!$file) {
				//上传失败
				exit(json_encode(array('status' => 0,'msg' => Upload::getError())));
			}else{
				//上传成功,组合缩略路径返回
				$picPath =  $imgDir . '/' . 'pic_' . $file['0']['basename'];
				//缩略图
				Image::thumb($file['0']['path'],$picPath,200,330,6);
				//删除原图
				unlink($file['0']['path']);
				exit(json_encode(array('status' => 1,'msg' =>$picPath )));
			}
		}
		
		//异步上传商品 图片
		public function MiniUploads(){
			//文件路径
			$imgDir = 'Upload/GoodsImg/' . date('ymd');
			//上传图片
			$file = Upload::path($imgDir)->type('jpg,png,gif')->size(2000000)->make();
			//上传失败
			if (!$file) {
				exit(json_encode(array('status' => 0,'msg' => Upload::getError())));
			}else{
				//上传成功,组合缩略路径返回
				$maxPath =  $imgDir . '/' . 'max_' . $file['0']['basename'];
				$miniPath =  $imgDir . '/' . 'mini_' . $file['0']['basename'];
				
				//大图处理
				$imgsPath = Image::thumb($file['0']['path'],$maxPath,468,468,6);
				//小图
				$imgsPath = Image::thumb($file['0']['path'],$miniPath,100,100,6);
				
				//组合返回路径
				$data = array (
						'status'	  =>  1,
						'path'	  => array (
								'max'	     =>  $maxPath,
								'mini'	     =>   $miniPath
						)
				);
				
				//删除原图
				unlink($file['0']['path']);
				//返回数据
				exit(json_encode($data));
			}
		}
		
		
		
		//异步删除列表图片
		public function delPic(){
			if (IS_AJAX) {
				$pic = Q('post.pic');
				//删除图片
				if ($pic) {
					unlink($pic);
					exit(json_encode(array('status'=>1,'msg'=>'删除成功^_^')));
				}else{
					exit(json_encode(array('status'=>0,'msg'=>'删除失败/(ㄒoㄒ)/')));
				}
			}
		}
		
		//异步删除商品图片
		public function delMini(){
			if (IS_AJAX) {
					$data = Q('post.');
					if ($data) {
						//删除大图
						unlink(Q('post.big'));
						//删除中图
						unlink(Q('post.mid'));
						//删除小图
						unlink(Q('post.mini'));
						//数据返回
						exit(json_encode(array('status'=>1,'msg'=>'删除成功^_^')));
					}else{
						exit(json_encode(array('status'=>0,'msg'=>'删除失败/(ㄒoㄒ)/')));
					}
			}
			
		}
		
		//删除商品到回收站 异步
		public function recycle(){
			if (IS_AJAX) {
				$gid = Q('post.gid',0,'intval');
				if ($gid) {
					$this->goodsModel->where(array('gid'=>$gid))->save(array('is_delete'=>1));
					exit(json_encode(array('status'=>1,'msg'=>'删除成功^_^')));
				}else{
					exit(json_encode(array('status'=>0,'msg'=>'删除失败/(ㄒoㄒ)/')));
				}
			}
		}
		
		//彻底删除商品
		public function delGoods(){
			if (IS_AJAX) {
				$gid = Q('post.gid',0,'intval');
				$where = array('goods_gid'=>$gid);
				//删除商品表信息和列表图片
				$pic = $this->goodsModel->where(array('gid'=>$gid))->pluck('pic');
				unlink($pic);
				$this->goodsModel->delete($gid);
				//删除商品详情表和图片
				$this->gdetailModel->where($where)->delete();
				//删除货品属性表数据
				$this->goodsListModel->where($where)->delete();
				//删除商品属性表
				if ($this->goodsAttrModel->where($where)->delete()) {
					 exit(json_encode(array('status'=>1,'msg'=>'删除成功^_^')));
				}else{
					exit(json_encode(array('status'=>1,'msg'=>'删除失败/(ㄒoㄒ)/')));
				}
				
			}
		}
		
		//还原商品
		public function restoreGoods(){
			if (IS_AJAX) {
				$gid = Q('post.gid',0,'intval');
				if ($gid) {
					$this->goodsModel->where(array('gid'=>$gid))->save(array('is_delete'=>0));
					exit(json_encode(array('status'=>1,'msg'=>'还原成功^_^')));
				}else{
					exit(json_encode(array('status'=>0,'msg'=>'还原失败/(ㄒoㄒ)/')));
				}
			}
		}
		
		//异步检测货品是否存在
		public function changeSpce(){
			if (IS_AJAX) {
				$gid = Q('post.gid',0,'intval');
				$spec = implode(',',Q('post.spec'));
				$where = "goods_gid={$gid} AND combine='{$spec}' ";
				if ($this->goodsListModel->where($where)->count()) {
					//就代表已经存在
					exit(json_encode(array('status'=>0,'msg'=>'货品已存在,请重新选择^_^')));
				}else{
					//不存在
					exit(json_encode(array('status'=>1)));
				}
				
			}
		}
		
		
		
		//异步上传栏目图片 二级栏目图片
		public function CateMiniUp(){
			//文件路径
			$imgDir = 'Upload/Cate/' . date('ymd');
			//上传图片
			$file = Upload::path($imgDir)->type('jpg,png,gif,jpeg')->size(2000000)->make();
			//上传失败
			if (!$file) {
				exit(json_encode(array('status' => 0,'msg' => Upload::getError())));
			}else{
				//上传成功,组合缩略路径返回
				$maxPath =  $imgDir . '/' . 'cate_max120x120_' . $file['0']['basename'];
				
				//大图处理
				Image::thumb($file['0']['path'],$maxPath,120,120,6);
				
				//组合返回路径
				$data = array (
						'status'	  =>  1,
						'msg'	  => $maxPath
				);
		
				//删除原图
				unlink($file['0']['path']);
				//返回数据
				exit(json_encode($data));
			}
		}
		
		
		//异步上传栏目图片 一级栏目图片(首页)
		public function CateMaxUpOne(){
			//文件路径
			$imgDir = 'Upload/Cate/' . date('ymd');
			//上传图片
			$file = Upload::path($imgDir)->type('jpg,png,gif,jpeg')->size(2000000)->make();
			//上传失败
			if (!$file) {
				exit(json_encode(array('status' => 0,'msg' => Upload::getError())));
			}else{
				//上传成功,组合缩略路径返回
				$maxPath250x130 =  $imgDir . '/' . 'cate_max250x130_' . $file['0']['basename'];
				//大图处理
				Image::thumb($file['0']['path'],$maxPath250x130,250,130,6);
				
				//组合返回路径
				$data = array (
						'status'	  =>  1,
						'msg'	  => $maxPath250x130
				);
		
				//删除原图
				unlink($file['0']['path']);
				//返回数据
				exit(json_encode($data));
			}
		}
		
		
		//异步上传栏目图片 一级栏目图片  (列表页)
		public function CateMaxUpTwo(){
			//文件路径
			$imgDir = 'Upload/Cate/' . date('ymd');
			//上传图片
			$file = Upload::path($imgDir)->type('jpg,png,gif,jpeg')->size(2000000)->make();
			//上传失败
			if (!$file) {
				exit(json_encode(array('status' => 0,'msg' => Upload::getError())));
			}else{
				//上传成功,组合缩略路径返回
				$maxPath200x240 =  $imgDir . '/' . 'cate_max200x240_' . $file['0']['basename'];
				//大图处理
				Image::thumb($file['0']['path'],$maxPath200x240,200,240,6);
		
				//组合返回路径
				$data = array (
						'status'	  =>  1,
						'msg'	  => $maxPath200x240
				);
		
				//删除原图
				unlink($file['0']['path']);
				//返回数据
				exit(json_encode($data));
			}
		}
		
		
		//异步删除图片
		public function CateAjaxDel(){
			if (IS_AJAX) {
				$img = Q('post.img');
				if (unlink($img)) {
					exit(json_encode(array('status'=>1,'msg'=>'删除成功^_^')));
				}else{
					exit(json_encode(array('status'=>0,'msg'=>'删除失败/(ㄒoㄒ)/')));
				}
			}
		}
}
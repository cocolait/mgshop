<?php namespace Common\Model;
use Hdphp\Model\Model;
/**
 * 商品品牌表模型
 */
class Brand extends Model{
	//标签表
	protected $table = 'brand';
	
	//自动验证
	protected $validate = array(
			array('bname','required','品牌必须填写哦^_^',3,3),
			array('bsort','required','排序必须填写哦^_^',3,3),
			array('bsort','num:0,65535','排序必须为数字哦^_^',3,3)
	);
	
	//自动完成
	protected $auto=array(
			array('logo','getImg','method',3,3)
	);
	
	//上传缩略图
	public function getImg(){
		//如果编辑时,没有选择图片
		if ($_FILES['logo']['error'] ==4) {
			if ($logo = Q('post.logo')) {
				//直接返回隐藏域内的图片地址
				return $logo;
			}
		}
		//文件路径
		$imgDir = 'Upload/Brand/' . date('ymd');
		//上传图片
		$upload = Upload::path($imgDir)->type('jpg,png,gif')->size(2000000)->make('logo');
		
		//上传成功
		if ($upload) {
			//组合缩略图路径
			$imgPath =  $imgDir . '/' . 'brand_logo_' . $upload['0']['basename'];
			//缩略图处理，进行缩略并保存起来
			$thumbPath = Image::thumb($upload['0']['path'],$imgPath,111,60,6);
			//删除原图
			unlink($upload['0']['path']);
			return $thumbPath;
		}
		return '';
	}
	
	
	//添加
	public function  store(){
		if (!$this->create()) return false;
		//上传文件判断 4代表没有选择上传文件
		if ($_FILES) {
			//判断缩略图
			if ($_FILES['logo']['error'] !=4) {
				if ($error = Upload::getError()) {
					//把上传的错误信息存入到Model的error属性中
					$this->error = $error;
					return false;
				}
			}
		}
		//上传成功后，返回自增ID
		$this->add();
		return true;
	}
	
	//编辑
	public function edit($bid){
		if (!$this->create()) return false;
		//上传文件判断 4代表没有选择上传文件
		if ($_FILES) {
			if (!Q('post.logo')) {
				if ($_FILES['logo']['error'] !=4) {
					if ($error = Upload::getError()) {
						//把上传的错误信息存入到Model的error属性中
						$this->error = $error;
						return false;
					}
				}
			}
		}
		//验证通过后,直接修改数据
		$this->save();
		return true;
	}
}

<?php namespace Common\Tag;
use Hdphp\View\TagBase;
/**
 * 自定义标签
 *
 */
class Common extends TagBase{
		/**
		 * 标签声明
		 * @var array
		 */
		public $tags = array(
				//block说明 1：块标签  0：行标签
				'nickname' => array('block' => 1, 'level' => 4),
				'cate' => array('block' => 1, 'level' => 4),
				'hotgoods' => array('block' => 1, 'level' => 4),
				'likegoods' => array('block' => 1, 'level' => 4),
		);
		
		/**
		 * 用户名称标签【自定义】
		 * @param $attr 属性
		 * @param $content 内容
		 * @param $hd HdView模型引擎对象
		 */
		public function _nickname($attr, $content, &$hd){
			$str=<<<str
				<?php
					\$userModel = new \Common\Model\User();
					\$nickname = \$userModel->where(array('uid'=>\$_SESSION['uid']))->pluck('nickname');
				?>
			$content
str;
			return $str;
		}
		
		
		/**
		 * 分类标签【自定义】
		 * @param $attr 属性
		 * @param $content 内容
		 * @param $hd HdView模型引擎对象
		 */
		public function _cate($attr, $content, &$hd){
			$pid = isset($attr['pid']) ? $attr['pid'] : null;
			$limit = isset($attr['limit']) ? $attr['limit'] : 8;
			$where = '';
			if (!is_null($pid)) {
				$where = "->where('pid={$pid} AND is_show=1')";
			}
			$str=<<<str
				<?php
					\$model = new \Common\Model\Category();
					\$data = \$model{$where}->limit($limit)->get();
					foreach(\$data as \$field):
					//列表页地址
					\$field['url'] =__ROOT__ .  "/H_L_i_". \$field['cid'] . ".html";
				?>
					$content
				<?php endforeach;?>
str;
			return $str;
		}
		
		/**
		 * 商品推荐标签【自定义】
		 * @param $attr 属性
		 * @param $content 内容
		 * @param $hd HdView模型引擎对象
		 */
		public function _hotgoods($attr, $content, &$hd){
			$limit = isset($attr['limit']) ? $attr['limit'] : 3;
			$where = "->orderBy('hot','DESC')->limit({$limit})";
			
			$str=<<<str
				<?php
					\$model = new \Common\Model\Goods();
					\$data = \$model{$where}->field('gid,pic,shopprice')->get();
					foreach(\$data as \$field):
					//详情页地址
					\$field['url'] =__ROOT__ .  "/H_D_i_". \$field['gid'] . ".html";
				?>
					$content
				<?php endforeach;?>
str;
			return $str;
		}
		
		
		/**
		 * 看了又看标签【自定义】
		 * @param $attr 属性
		 * @param $content 内容
		 * @param $hd HdView模型引擎对象
		 */
		public function _likegoods($attr, $content, &$hd){
			$limit = isset($attr['limit']) ? $attr['limit'] : 8;
			$where = "->orderBy('click','DESC')->limit({$limit})";
				
			$str=<<<str
				<?php
					\$model = new \Common\Model\Goods();
					\$data = \$model{$where}->field('gid,gname,pic,shopprice','click')->get();
					foreach(\$data as \$field):
					//详情页地址
					\$field['url'] =__ROOT__ .  "/H_D_i_". \$field['gid'] . ".html";
				?>
					$content
				<?php endforeach;?>
str;
			return $str;
		}
		
		
		
		
}
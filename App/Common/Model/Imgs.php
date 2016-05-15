<?php namespace Common\Model;
use Hdphp\Model\Model;
/**
 * 商品图册
 */
class Imgs extends Model{
	//标签表
	protected $table = 'imgs';
	
	//添加图册
	public function store(){
		$big = Q('post.big');
		$medium = Q('post.medium');
		$mini = Q('post.mini');
		for ($i=0;$i <  count(Q('post.big'));$i++) {
			//组合插入数据
			$data = array(
					'is_show' 		=> Q('post.is_show',0,'intval'),
					'goods_gid' 	=> Q('post.gid',0,'intval'),
					'big'		   		=> $big[$i],
					'mini'		  		=>  $mini[$i],
					'medium' 		=> $medium[$i]
					);
			//执行插入操作
			$this->add($data);
		}
	}
}

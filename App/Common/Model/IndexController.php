<?php namespace Home\Controller; 
use Hdphp\Controller\Controller;
/**
 * 前台首页控制器
 */
class IndexController extends Controller{
	//构造函数
	public function __init(){
			
	}
	
    public function index(){
       	 $this->display();
    }
}

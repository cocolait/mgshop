<?php
/**
 * 双重MD5加密函数
 */
function mgEncrypt($name,$pwd){
	$key = 'www.mgshop.com';
	return md5(md5($name . $pwd .$key));
}

/**
 * 获取客户端IP地址
 * @param integer $type 返回类型 0 返回IP地址 1 返回IPV4地址数字
 * @param boolean $adv 是否进行高级模式获取（有可能被伪装）
 * @return mixed
 */
function get_client_ip($type = 0,$adv=false) {
	$type       =  $type ? 1 : 0;
	static $ip  =   NULL;
	if ($ip !== NULL) return $ip[$type];
	if($adv){
		if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
			$arr    =   explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
			$pos    =   array_search('unknown',$arr);
			if(false !== $pos) unset($arr[$pos]);
			$ip     =   trim($arr[0]);
		}elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
			$ip     =   $_SERVER['HTTP_CLIENT_IP'];
		}elseif (isset($_SERVER['REMOTE_ADDR'])) {
			$ip     =   $_SERVER['REMOTE_ADDR'];
		}
	}elseif (isset($_SERVER['REMOTE_ADDR'])) {
		$ip     =   $_SERVER['REMOTE_ADDR'];
	}
	// IP地址合法验证
	$long = sprintf("%u",ip2long($ip));
	$ip   = $long ? array($ip, $long) : array('0.0.0.0', 0);
	return $ip[$type];
}


/*
 **异位或加密字符串
* @param  [String]  $value [需要加密的字符串]
* @param  [integer] $type  [加密解密（0：加密，1：解密）]
* @return [String]         [加密或解密后的字符串]
*/
function encryption($value,$type=0){
	//加密key值
	$key = 'www.mgshop.com';
	if (!$type) {
		//加密的处理
		return str_replace('=','',base64_encode($value ^ $key));
	}
	//解密处理
	$value=base64_decode($value);
	return $value ^ $key;
}

/**
 * 取得所有子分类
 * @param  $data 所有分类的数据
 * @param  $cid 分类id 当前获取的cid
 * @param  $fieldPri  分类id 
 * @param $fieldPid  分类的父级id
 * @return 返回所有的子分类
 */
function childLevel($data,$cid=0,$fieldPri='cid',$fieldPid='pid'){
	$children=array();
	foreach ($data as $value) {
		if($value[$fieldPid]==$cid){
			$children[]=$value[$fieldPri];
			$children=array_merge($children,childLevel($data,$value[$fieldPri],$fieldPri,$fieldPid));
		}
	}
	return $children;
}


/**
 * 字符串截取，支持中文和其他编码
 * static
 * access public
 * @param string $str 需要转换的字符串
 * @param string $start 开始位置
 * @param string $length 截取长度
 * @param string $charset 编码格式
 * @param string $suffix 截断显示字符
 * return string
 */
function msubstr($str, $start=0, $length, $charset="utf-8", $suffix=true) {
	if(function_exists("mb_substr")){
		$slice = mb_substr($str, $start, $length, $charset);
		$strlen = mb_strlen($str,$charset);
	}elseif(function_exists('iconv_substr')){
		$slice = iconv_substr($str,$start,$length,$charset);
		$strlen = iconv_strlen($str,$charset);
	}else{
		$re['utf-8']   = "/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|[\xe0-\xef][\x80-\xbf]{2}|[\xf0-\xff][\x80-\xbf]{3}/";
		$re['gb2312'] = "/[\x01-\x7f]|[\xb0-\xf7][\xa0-\xfe]/";
		$re['gbk']    = "/[\x01-\x7f]|[\x81-\xfe][\x40-\xfe]/";
		$re['big5']   = "/[\x01-\x7f]|[\x81-\xfe]([\x40-\x7e]|\xa1-\xfe])/";
		preg_match_all($re[$charset], $str, $match);
		$slice = join("",array_slice($match[0], $start, $length));
		$strlen = count($match[0]);
	}
	if($suffix && $strlen>$length)$slice.='...';
	return $slice;
}

/**
 * 递归重组节点信息为多维数组
 * @param  [type]  $node [要处理的节点数组]
 * @param  integer $pid  [父级ID]
 * @return [array]        [返回多维数组]
 */
function node_merge($node,$access=null,$pid=0){
	$temp = array();
	foreach ($node as $v) {
		if ($access) {
			$v['mark'] = in_array($v['id'], $access) ? 1 : 0;
		}else{
			$v['mark']=0;
		}
		if ($v['pid'] == $pid) {
			$v['child'] = node_merge($node,$access,$v['id']);
			$temp[] = $v;
		}
	}
	return $temp;
}

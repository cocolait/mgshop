<div class="mu-nav-wrap">
<div class="nav-info">
<!--头像-->
<div class="nav-info-avatar">
<a href="H_U.html"><div class="mu_nav_info_avatar_mk"></div></a>

{{if value="$face"}}
<img src="{{__ROOT__}}/{{$face}}" height="100" width="100">
{{else}}
<img src="{{__PUBLIC__}}/Home/images/default_100x100.jpg" height="100" width="100">
{{endif}}

</div>

<!--用户名-->
{{nickname}}
<a href="H_U.html"><p class="mu_nav_info_uname">{{$nickname}}</p></a>
{{endnickname}}
<a style="width:45px;" class="mu_nav_info_ulot">
<span id="vip_level" class="vip_level0" style="float:left;width: 45px; display: inline-block; height: 14px; margin-top: 3px;"></span>
</a>
</div>

<!--我的订单-->
<dl class="mu-nav">
<dt>我的订单</dt>
<dd {{if value="$status eq 0 && 'ACTION' eq 'myIndent' "}}class="cur"{{endif}}>
<a href="H_U_mt_0.html" {{if value="$status eq 0 && 'ACTION' eq 'myIndent' "}}class="red"{{endif}}>全部订单{{if value="$status eq 0 && 'ACTION' eq 'myIndent' "}}<span style="color: #ff5896;padding:0px 3px;font-weight: 700;">{{$tatol}}</span>{{endif}}</a>
</dd>
<dd {{if value="$status eq 1"}}class="cur"{{endif}}>
<a href="H_U_mt_1.html" {{if value="$status eq 1"}}class="red"{{endif}}>待付款 {{if value="$status eq 1"}}<span style="color: #ff5896;padding:0px 3px;font-weight: 700;">{{$tatol}}</span>{{endif}}</a>
</dd>
<dd {{if value="$status eq 2"}}class="cur"{{endif}}>
<a href="H_U_mt_2.html" {{if value="$status eq 2"}}class="red"{{endif}}>待发货{{if value="$status eq 2"}}<span style="color: #ff5896;padding:0px 3px;font-weight: 700;">{{$tatol}}</span>{{endif}} </a>
</dd>
<dd {{if value="$status eq 3"}}class="cur"{{endif}}>
<a href="H_U_mt_3.html" {{if value="$status eq 3"}}class="red"{{endif}}>待收货{{if value="$status eq 3"}}<span style="color: #ff5896;padding:0px 3px;font-weight: 700;">{{$tatol}}</span>{{endif}} </a>
</dd>
<dd {{if value="$status eq 4"}}class="cur"{{endif}}>
<a href="H_U_mt_4.html" {{if value="$status eq 4"}}class="red"{{endif}}>已完成{{if value="$status eq 4"}}<span style="color: #ff5896;padding:0px 3px;font-weight: 700;">{{$tatol}}</span>{{endif}} </a>
</dd>

</dl>
<!--地址管理-->
<dl class="mu-nav">
<dt><a href="H_U_site_0.html">地址管理</a></dt>
</dl>

<dl class="mu-nav">
<dt><a href="javascript:;" class="hd-success-area">我的钱包</a></dt>
</dl>
<!--账号设置-->
<dl class="mu-nav">
<dt>帐号设置</dt>
<dd {{if value=" 'CONTROLLER' eq 'Userinfo' && 'ACTION' eq 'userinfo' "}}class="cur"{{endif}}> <a href="H_U.html" {{if value=" 'CONTROLLER' eq 'Userinfo' && 'ACTION' eq 'userinfo' "}}class="red"{{endif}}>基本信息</a> </dd>
<dd {{if value=" 'CONTROLLER' eq 'Userinfo' && 'ACTION' eq 'editFace' "}}class="cur"{{endif}}> <a href="H_U_face.html" {{if value=" 'CONTROLLER' eq 'Userinfo' && 'ACTION' eq 'editFace' "}}class="red"{{endif}}>修改头像</a> </dd>
</dl>
</div>

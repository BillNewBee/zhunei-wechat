<?php
require_once("../include/define.php");
if(is_weixin())
{
	echo('<html><head>
	<title>天主教小助手淘宝店</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<meta name="viewport" content="user-scalable=no, width=device-width" />
	<style type="text/css">
	h4{color:rgb(222,0,0);}
	p{font-size:21px;color:rgb(33,33,33);}
	span.key{color:rgb(222,0,0);}
	p.tips{font-size:15px;color:rgb(128,0,0);}
	</style></head><body><h1>天主教小助手淘宝店</h1><h4>由于淘宝屏蔽了微信，所以需要通过以下几种方式查找我们的淘宝店：</h4>
	<p>1、在淘宝App或网页中搜索“<span class="key">天主教小助手</span>”，即可查看小助手的所有商品</p>
	<p>2、点击右上角的跳转按钮，选择『<span class="key">在Safari中打开</span>』（iOS）或『<span class="key">在浏览器中打开</span>』（Android），即可正常跳转到我们的淘宝店。</p>
	<br/><br/><br/><p class="tips">感谢大家一致以来的支持，我们会为大家带来更多精美的商品。主佑平安！</p></body><script type="text/javascript" language="javascript" src="http://www.cathassist.org/include/googleanalysis.js"></script></html>');
}
else
{
	header("Location: http://shop114244839.taobao.com/");
}
?>
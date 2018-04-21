<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
	<html>
	<head>
		<title><?php echo ($site_seo_title); ?> <?php echo ($site_name); ?></title>
		<meta name="keywords" content="<?php echo ($site_seo_keywords); ?>" />
		<meta name="description" content="<?php echo ($site_seo_description); ?>">
		<link rel="stylesheet" href="/themes/dongxingxijian/Public/assets/css/swiper.min.css">
			<?php  function _sp_helloworld(){ echo "hello ThinkCMF!"; } function _sp_helloworld2(){ echo "hello ThinkCMF2!"; } function _sp_helloworld3(){ echo "hello ThinkCMF3!"; } ?>
	<?php $portal_index_lastnews="1,2"; $portal_hot_articles="1,2"; $portal_last_post="1,2"; $tmpl=sp_get_theme_path(); $default_home_slides=array( array( "slide_name"=>"ThinkCMFX2.2.0发布啦！", "slide_pic"=>$tmpl."Public/assets/images/demo/1.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX2.2.0发布啦！", "slide_pic"=>$tmpl."Public/assets/images/demo/2.jpg", "slide_url"=>"", ), array( "slide_name"=>"ThinkCMFX2.2.0发布啦！", "slide_pic"=>$tmpl."Public/assets/images/demo/3.jpg", "slide_url"=>"", ), ); ?>
<meta name="author" content="hujianying(604749526@qq.com)">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">
   	<!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
		<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta content="telephone=no" name="format-detection" />

    <!-- HTML5 shim for IE8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->
	<link rel="icon" href="/themes/dongxingxijian/Public/assets/images/favicon.ico" type="image/x-icon">
	<link rel="shortcut icon" href="/themes/dongxingxijian/Public/assets/images/favicon.ico" type="image/x-icon">
	<link href="/themes/dongxingxijian/Public/assets/css/bootstrap.css" rel="stylesheet">
  <link href="/themes/dongxingxijian/Public/assets/css/base.css" rel="stylesheet">
	<link href="/themes/dongxingxijian/Public/assets/css/style.css" rel="stylesheet">

        <script src="http://api.map.baidu.com/api?v=1.3"></script>
        <style>
img {
	max-width: none;
}
		.main-box{padding: 0 1rem;}
        .contact-wrap{padding: 1rem 0;background-color: #fff;}
		.s-header{display:flex; flex-direction:column;text-align: center;margin-bottom: 20px;}
		.s-header .h{display:block;width: 1.5rem;height: 1.5rem;text-align: center;line-height: 1.5rem;font-size: 20px;font-weight: bold;background-color: #000;border-radius:1.5rem;margin: 10px auto;color:#ffffff;}
		.s-header span{line-height: 30px;font-size: 16px;font-weight: bold;}
		.main-box h1{font-size: 20px;text-align: center;line-height: 50px;font-weight: bold; letter-spacing:5px;}
</style>
	</head>
<body>
<?php echo hook('body_start');?>
<!-- 头部公共部分 -->
<header id="header">
	<div class="h-head">
    	<p><a href="/">EAST TO WEST DESIGN</a></p>
        <p>東形西見</p>
    </div>
	<div class="menubox">
    	<a href="javascript:void(0);" class="menus"></a>
  	</div>
    <nav class="navlist">
    	<ul>
        	<li><a href="<?php echo leuu('Portal/page/index',array('id'=>23));?>">ABOUT /关于</a></li>
            <li><a href="<?php echo leuu('Portal/list/index',array('id'=>2));?>">PROJECT /案例</a></li>
            <li><a href="<?php echo leuu('Portal/page/index',array('id'=>4));?>">SERVICE /服务</a></li>
            <li><a href="<?php echo leuu('Portal/list/index',array('id'=>1));?>">NEWS /动态</a></li>
            <li><a href="<?php echo leuu('Portal/page/index',array('id'=>5));?>">CONTACT /联络</a></li>
            <li><a href="/">EAST TO WEST DESIGN /東形西見</a></li>
        </ul>
        <div class="close">&times;</div>
    </nav>
</header>

<section class="wrapper">
	<div class="contact-wrap">
    	<div class="s-header">
        	<span class="h">联</span>
            <span>CONNECTION</span>
            <span>&times;</span>
            <p>服务咨询 | 媒体联络 | 学术活动 | 展览邀请 | 参观交流</p>
        </div>
        
        <?php $contact_slides=sp_getslide("contact_ads"); ?>
    
        <div class="contact-ads">
            <?php if(!empty($contact_slides)): if(is_array($contact_slides)): foreach($contact_slides as $k=>$vo): if($k==0): ?><div class="main-img-box">
                            <img src="<?php echo sp_get_asset_upload_path($vo['slide_pic']);?>"/>
                        </div><?php endif; endforeach; endif; endif; ?>
        </div>
        
         <div class="main-box">
        	<div class="box">
            	<h2>登门垂询敬请提前预约</h2>
                <p>0591 - 86396800</p>
            </div>
            
            <div class="box">
            	<h2>东形西见机构地址</h2>
                <p>福州市仓山区金达路大榕树创意园<br/>2号楼1008-1010</p>
            </div>
            
            <div class="box">
            	<h2>官方网站</h2>
                <p>www.dongxingxijian.com</p>
            </div>
            
            <div class="box">
            	<h2>官方邮箱</h2>
                <p>dxsj2017@qq.com</p>
            </div>
            
            <div style="margin-top:20px"></div>
         </div>
        <div class="map-wrapper">
			<a href="<?php echo leuu('Portal/page/index',array('id'=>24));?>">
            	<img src="/themes/dongxingxijian/Public/assets/images/daohang.png" alt="">
            </a>
        </div>
        
        <div class="main-box">
        	<div class="box">
            	<h2>扫描二维码更多关于东形西见</h2>
                <p style="width:220px;text-align:center;margin:0 auto;"><img src="/themes/dongxingxijian/Public/assets/images/erweima.png" alt=""></p>
            </div>
         </div>
    </div>
</section>

<script type="text/javascript">
//全局变量
var GV = {
    ROOT: "/",
    WEB_ROOT: "/",
    JS_ROOT: "public/js/"
};
</script>
 <script src="/themes/dongxingxijian/Public/assets/js/jquery.min.js"></script>
 <script src="/themes/dongxingxijian/Public/assets/js/flexible.js"></script>
 <script src="/themes/dongxingxijian/Public/assets/js/swiper.jquery.min.js"></script>
 <script src="/themes/dongxingxijian/Public/assets/js/common.js"></script>

<script src="/themes/dongxingxijian/Public/assets/js/swiper.jquery.min.js"></script>
<script>
  var mySwiper = new Swiper ('.swiper-container', {
    loop: true,
    slidesPerView: 3,
    paginationClickable: true,
    spaceBetween: 10
  })
</script>
<?php echo hook('footer_end');?>
</body>
</html>
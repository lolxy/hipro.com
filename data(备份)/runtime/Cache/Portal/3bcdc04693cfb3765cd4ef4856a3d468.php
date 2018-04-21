<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<title>404 Not Found!</title>
	<meta name="keywords" content="404 Not Found!" />
	<meta name="description" content="404 Not Found!">
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
	<div class="error-container"><p>404 Not Found!</p></div>
</section>

<?php echo hook('footer');?>
<!-- 底部 -->
<footer id="footer">
  <div class="f-container">
    <!--<nav>
      <ul>
        <li><a href="#">订阅资讯</a></li>
        <li><a href="#">联系东西</a></li>
      </ul>
    </nav>-->
    <?php $menu_root_ul_id="foot_nav"; $filetpl="<a href='\$href' target='\$target'>\$label</a>"; $foldertpl="<a class='dropdown-toggle' href='\$href' target='\$target'>\$label</a>"; $ul_class="dropdown-menu"; $li_class="" ; $menu_root_ul_class=""; $showlevel=1; $dropdown='dropdown'; ?>
	<nav>
	<?php echo sp_get_menu(2,$menu_root_ul_id,$filetpl,$foldertpl,$ul_class,$li_class,$menu_root_ul_class,$showlevel,$dropdown);?>
    </nav>
    <div class="contact">
      <p>关注我们</p>
      <div class="c-box">
        <a href="mqqwpa://im/chat?chat_type=wpa&uin=<?php echo ($qq); ?>&version=1&src_type=web&web_src=lvlingseeds.com" target="_blank">
          <img src="/themes/dongxingxijian/Public/assets/images/qq_icon.png" alt="" class="img-responsive"/>
        </a>
        <a href="http://mp.weixin.qq.com/s/WN0UMkyl5ti3BdWV_fiuJw">
          <img src="/themes/dongxingxijian/Public/assets/images/wechat_icon.png" alt="" class="img-responsive"/>
        </a>
      </div>
    </div>
  </div>
  <div class="copyright">
    <p><?php echo ($site_icp); ?></p>
    <p><?php echo ($site_copyright); ?></p>
  </div>
</footer>
<?php echo ($site_tongji); ?>

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

<?php echo hook('footer_end');?>
</body>
</html>
<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
	<html>
	<head>
		<title><?php echo ($site_seo_title); ?> <?php echo ($site_name); ?></title>
		<meta name="keywords" content="<?php echo ($site_seo_keywords); ?>" />
		<meta name="description" content="<?php echo ($site_seo_description); ?>">
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
  <div class="newslist-container">

		<?php
 $cid = $cat_id; $tag = "order:listorder asc,post_modified desc;"; $pagesize = '5'; $content=sp_sql_posts_paged_bycatid($cid,$tag,$pagesize); $lists = $content['posts']; $pager=$content['page']; ?>

		<?php if(!empty($lists)): ?><div class="news-list">
      <ul id="newsullist">
      <?php if(is_array($lists)): $i = 0; $__LIST__ = $lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vos): $mod = ($i % 2 );++$i; $smeta=json_decode($vos['smeta'], true); ?>
        <li>
          <a href="<?php echo leuu('Portal/article/index',array('id'=>$vos['object_id'],'cid'=>$vos['term_id']));?>">
          	<div class="content">
            	<h2 class="text-ellipsis"><?php echo ($vos["post_title"]); ?></h2>
           		<p class="text-ellipsis3"><?php echo ($vos["post_excerpt"]); ?></p>
            </div>
          	<?php if(empty($smeta['thumb'])): ?><img src="/themes/dongxingxijian/Public/assets/images/default_tupian1.png" alt="">
            <?php else: ?>
                <img src="<?php echo sp_get_asset_upload_path($smeta['thumb']);?>" alt=""><?php endif; ?>
          </a>
        </li><?php endforeach; endif; else: echo "" ;endif; ?>
      </ul>
      <div class="more">查看更多</div>
    </div>
		<?php else: ?>
			<div class="nomore">-- 没有更多数据 --</div><?php endif; ?>
  </div>
  <div class="nomore" style="display:none;">-- 没有更多数据 --</div>
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

<script>
$(function () {
	page = '1';
$(".more").click(function(){
	page++;
			var id = "<?php echo ($cat_id); ?>";
			var pages = "<?php echo ($content["total_pages"]); ?>";//获取页面总页数
			if ( page <= pages){
				var url ='index.php?m=list&a=index&id='+id+'&p='+page;
				$.get(url,function (msg) {
					$("#newsullist").append(
						$(msg).find("#newsullist")
				);
			})//get结束
		}else{
			$(".nomore").show();
			$(".more").hide();
		}
	});
})
</script>
<?php echo hook('footer_end');?>
</body>
</html>
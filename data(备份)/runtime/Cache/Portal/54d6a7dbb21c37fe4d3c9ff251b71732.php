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

        <style>
        html>body{background-color: #fff;}
		.main-box .box>p{text-indent:2em;text-align:left;}
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
	<div class="service-wrap">
    	<div class="about-photo">
            <img src="/themes/dongxingxijian/Public/assets/images/about001.png" alt="">
            <img src="/themes/dongxingxijian/Public/assets/images/about002.png" alt="">
            <img src="/themes/dongxingxijian/Public/assets/images/about003.png" alt="">
            <img src="/themes/dongxingxijian/Public/assets/images/about004.png" alt="">
            <img src="/themes/dongxingxijian/Public/assets/images/about005.png" alt="">
            <img src="/themes/dongxingxijian/Public/assets/images/about006.png" alt="">
            <img src="/themes/dongxingxijian/Public/assets/images/about007.png" alt="">
            <img src="/themes/dongxingxijian/Public/assets/images/about008.png" alt="">
            <b>左陈志曙、右李超</b>
        </div>
        
        <div class="main-box">
        	<div class="mt40">
                <p>热衷于设计，透过对生活的理解去理解人与空间的关系，去探索生活美学的新的可能性。</p>
                <p>如是如是的生活态度，倡导一种内在的宁静。</p>
            </div>
        	<div class="box">
            	<h2>我们的理念</h2>
                <p>设计是人与环境之间的一个桥梁，一个媒介。去风格化的设计，我们不在形式上和审美情趣上作事先设定，
我们喜欢探讨，这样接触沟通和碰撞的过程中会产生更多有意思的故事。我们执行过的大部分空间设计，想法都来自于日常的生活，从细微处入手，当你开始感受我与物，我和自身所处空间的关系，开始思考一花一草一物对于自己生活方式的影响时，便拥有了理解设计的力量。</p>
            </div>
            
            <div class="box">
            	<h2>我们的定位</h2>
                <p>我们希望东形西见是一家具有人文性探索的设计公司，就像舒马赫在（小的是美好的）一书中所阐述的一样，所以在机构的运行上我们遵循小而美的原则，用我们对生活的理解，赋予空间以温度，具有人文关怀的环境。</p>
            </div>
            
            <div class="box">
            	<h2>我们在做的事情</h2>
                <p>东形西见 + 美凯创意。设计资源的整合，集空间，品牌，建筑，园林，陈设，产品等领域共同发展的新平台，透过不同领域的互相碰撞学习交流，更好服务于客户服务于设计。</p>
            </div>
        </div>
        
        <div class="about-jieshao">
        	<div class="js-box">
                <div class="a-header">
                    <div class="a-top">
                        <p>东形西见创始人</p>
                        <div class="name">
                            <h2>李超</h2>
                            <h3>CHAO LEE</h3>
                        </div>
                    </div>
                    <div class="a-bottom">
                        <p>中国高级住宅室内设计师</p>
                        <p>中国建筑学会室内设计分会会员</p>
                    </div>
                </div>
                <div class="a-photo">
                    <img src="/themes/dongxingxijian/Public/assets/images/photo2.png" alt="">
                </div>
            </div>
            
            <div class="js-content">
            	<div class="p1">
                	<p>从业十余年</p>
                    <p>荣获全国多项空间设计赛事大奖，</p>
                    <p>坚信“一个好的室内空间设计，</p>
                    <p>在很大程度上能让人们品味空间文化的内涵”。</p>
                </div>
                <div class="p2">
                	<p>职业生涯期间，荣获</p>
                    <p>2017年 CIID二十届中国室内设计大赛 金奖</p>
                    <p>2017年 APDC亚太室内设计精英邀请赛住宅空间 大奖</p>
                    <p>2017年 广州设计周中国福建设计 杰出青年</p>
                    <p>2017年 为中国设计发声 精英人物</p>
                    <p>2017年 福建省室内设计大赛 公共空间类 金奖、住宅空间类 金奖</p>
                    <p>2016年 CIID十九届中国室内设计大赛 银奖</p>
                    <p>2016年 APDC亚太室内设计精英邀请赛年度人物 杰出设计奖</p>
                    <p>2016年 APDC亚太室内设计精英邀请赛住宅空间 铜奖</p>
                    <p>2016年 第七届筑巢办公空间 提名奖</p>
                    <p>2016年 红棉中国设计讲最美雅奢空间 设计奖</p>
                    <p>2016年 中国人文设计大奖赛、最佳商业空间设计奖、</p>
                    <p>最佳住宅空间设计奖、最佳设计创意奖</p>
                    <p>2016年 国际空间设计 艾特奖</p>
                    <p>2015年 CIID十八届中国室内设计大赛 铜奖</p>
                    <p>2015年 第六届筑巢设计奖 金奖</p>
                    <p>2015年 国际生态设计最佳生态展示厅 设计奖</p>
                    <p>2015年 国际生态设计最佳展示区设计讲最佳办公 设计奖</p>
                    <p>2015年 国际空间设计 艾特奖</p>
                </div>
            </div>
        </div>
        
        <div class="about-jieshao">
        	<div class="js-box">
                <div class="a-header">
                    <div class="a-top">
                        <p>东形西见创始人</p>
                        <div class="name">
                            <h2>陈志曙</h2>
                            <h3>ZHISHU CHEN</h3>
                        </div>
                    </div>
                    <div class="a-bottom">
                        <p>中国室内建筑师</p>
                        <p>中国陈设艺术设计师</p>
                        <p>中国高级室内住宅设计师</p>
                    </div>
                </div>
                <div class="a-photo">
                    <img src="/themes/dongxingxijian/Public/assets/images/photo1.png" alt="">
                </div>
            </div>
            
            <div class="js-content">
            	<div class="p1">
                	<p>对生活，对设计有着自己的理解</p>
                    <p>物象内外，观己修身</p>
                    <p>皮相之外，亲疏有度</p>
                    <p>皮相之内，刚柔犹在</p>
                </div>
                <div class="p2">
                    <p>职业生涯期间，荣获</p>
                    <p>中国国际空间环境艺术设计大赛筑巢奖优秀奖</p>
                    <p>中国照明周刊杯照明应用设计大赛佳作奖</p>
                    <p>中国第八届国际建筑装饰及设计博览会最具创新人物
                    <p>中国室内设计双年展设计大赛铜奖</p>
                    <p>中国室内设计大赛居然杯CIDA居住空间·住宅设计奖</p>
                    <p>中国家居营造空间设计大赛优秀作品奖银奖</p>
                    <p>中国家居装饰届营造空间设计大赛十佳全案设计师</p>
                    <p>中国建筑装饰设计艺术作品展CBDA金奖</p>
                    <p>国际空间设计大奖艾特奖最佳公寓入围奖</p>
                    <p>中国照明应用设计大赛祝融杯优胜奖</p>
                    <p>中国设计总评榜喜舍杯年度优秀住宅公寓设计奖</p>
                    <p>APDC亚太室内设计精英邀请赛佳作奖</p>
                    <p>AIDIA亚洲室内设计竞赛入围奖</p>
                    <p>金外滩室内设计大奖赛入围奖</p>
                    <p>第二十届CIID室内设计大赛入选奖</p>
                </div>
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

<?php echo hook('footer_end');?>
</body>
</html>
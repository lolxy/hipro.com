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
		.main-box{padding: 0 1rem;}
        .service-wrap{padding: 1rem 0;background-color: #fff;}
		.s-header{display:flex; flex-direction:column;text-align: center;}
		.s-header .h{display:block;width: 1.5rem;height: 1.5rem;text-align: center;line-height: 1.5rem;font-size: 20px;font-weight: bold;background-color: #000;border-radius:1.5rem;margin: 10px auto;color:#ffffff;}
		.s-header span{line-height: 30px;font-size: 16px;font-weight: bold;}
		.main-box h1{font-size: 20px;text-align: center;line-height: 50px;font-weight: bold; letter-spacing:5px;}
		.plist h3{font-family: myFirstFont;font-size: 14px;line-height: 30px;color: #666666;font-weight: 500;margin:20px auto;text-align: center;}
		.ul-list{display:flex;}
		.ul-list ul{flex:1;margin-left: 20px;}
		.ul-list ul li{font-family: myFirstFont;font-size: 14px;line-height: 30px;color: #666666;font-weight: 500;}
		.ul-list ul li i{margin-right: 5px;width:20px;margin-top: 5px;height: 20px;display:inline-block;vertical-align: top;line-height: 20px;text-align: center;border-radius:14px;text-align: center;border: 1px solid #666666;font-style: normal;font-size: 10px;}
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
		<div class="s-header">
        	<span class="h">谨</span>
            <span>RIGOROUS</span>
            <span>&times;</span>
            <span>用心，才有每处的细节</span>
        </div>

        <div class="main-box">
        	<div class="mt40">
                <h1>东形西见服务流程</h1>
            </div>
        	<div class="box">
            	<h2>初步接洽</h2>
                <p>1、客户咨询接洽，<br/>双方达成意向后签订设计协议。</p>
                <p>2、客户提出设计要求。</p>
                <p>3、客户提供项目资料。</p>
            </div>

            <div class="box">
            	<h2>现场勘测</h2>
                <p>设计师进行现场勘测，<br/>测绘原建筑结构图。</p>
            </div>

            <div class="box">
            	<h2>设计概念提案</h2>
                <p>设计师出设计概念提案，<br/>双方就概念提案交换意见并确认后，<br/>双方签字备案。</p>
            </div>

            <div class="box">
            	<h2>平面布置图阶段</h2>
                <p>1、设计师以现场勘测及原建筑结构图纸为依据确定平面方案，向客户提供平面布置图。</p>
                <p>2、设计师与客户沟通确定平面方案后，<br/>双方签字备案，进入效果图阶段。</p>
                <p>3、平面方案签字确认后不得修改，<br/>如需修改，按原总设计费30%-50%收费。</p>
            </div>

            <div class="box">
            	<h2>效果图阶段</h2>
                <p>1、客户沟通确认效果图风格，<br/>完善效果图制作。</p>
                <p>2、提供A3效果图，效果图具体内容参照合同<br/>约定，超出约定部分，按2000元/张<br/>收取设计费用。</p>
                <p>3、完成效果图制作后，再次交换意见，<br/>并签字确认，进入施工图阶段。</p>
                <p>4、效果图方案签字确认后不得修改，<br/>如需修改，按原总设计费30%-50%收费。</p>
            </div>

            <div class="box">
            	<h2>施工图阶段</h2>
                <div class="plist">
                	<h3>1、施工图含配套</h3>
                    <div class="ul-list">
                    	<ul>
                            <li><i>1</i>原始结构图</li>
                            <li><i>2</i>拆除尺寸图</li>
                            <li><i>3</i>平面图</li>
                            <li><i>4</i>墙体定位图</li>
                            <li><i>5</i>地面铺贴图</li>
                            <li><i>6</i>吊顶天花图</li>
                            <li><i>7</i>立面图（立面展开图）</li>
                    	</ul>
                        <ul>
                            <li><i>8</i>强电布置图</li>
                            <li><i>9</i>弱电布置图</li>
                            <li><i>10</i>开关布置图</li>
                            <li><i>11</i>灯光设计图</li>
                            <li><i>12</i>冷热水点位图</li>
                            <li><i>13</i>家具尺寸图</li>
                            <li><i>14</i>节点大样详图</li>
                    	</ul>
                    </div>
                    <h3>2、交付整套施工图晒图A3一式两份。</h3>
                </div>
            </div>

            <div class="box">
            	<h2>施工阶段</h2>
                <p>1、开工时进行技术交底。</p>
                <p>2、施工阶段提供6次施工现场免费指导<br/>（含技术交底及施工验收）。</p>
                <p>3、超过指导次数部分加收1000元/次。<br/>异地交通与住宿费用由甲方承担。</p>
            </div>

            <div class="box">
            	<h2>设计约定</h2>
                <p>1、双方未结清设计费用，<br/>与项目相关资料不得带走。</p>
                <p>2、若客户需要设计师全程跟踪及施工<br/>监督服务，则须协商洽谈另行收费。</p>
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
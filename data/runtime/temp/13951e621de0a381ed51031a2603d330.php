<?php /*a:5:{s:81:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/portal\\product.html";i:1730880352;s:77:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\head.html";i:1730857752;s:76:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\nav.html";i:1730946251;s:79:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\banner.html";i:1730878845;s:77:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\foot.html";i:1730944460;}*/ ?>
<!DOCTYPE html>
<!-- saved from url=(0032)https://www.hnks.com/product/22/ -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title><?php echo $category['name']; ?>_<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?></title>
    <meta name="keywords" content="<?php echo $category['name']; ?>,<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
    <meta name="description" content="<?php echo $category['name']; ?>-<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
    <meta name="viewport" content="width=1440">
    <meta name="viewport" content="width=1440">
<link href="/themes/simpleboot3/public/assets/css/animate.css,iconfont.css,bootstrap.min.css,response.min.css" rel="stylesheet"
      type="text/css">
<link href="/themes/simpleboot3/public/assets/css/site_impt_r.css" rel="stylesheet" type="text/css">
<link href="/themes/simpleboot3/public/assets/css/ftmpl_impt_87b39d0f-a99c-4a72-9ee6-4af7c0f251ef.css" rel="stylesheet"
      type="text/css">

<link rel="shortcut icon" href="/themes/simpleboot3/public/assets/images/favicon.ico" type="image/x-icon">

<meta name="viewport" content="width=1440">
<meta http-equiv="Cache-Control" content="no-transform">
<script type="text/javascript">
    window.siteIsPc = true;
    window.foreignList = [];
    window.tenant = {
        "cdnFlag": "2",
        "createTime": null,
        "domain": "www.hnks.com",
        "domainInfo": null,
        "foreign": true,
        "id": 232120,
        "language": "zh_CN",
        "mobileDomain": "m.hnks.com",
        "mobileStatus": 6,
        "status": 6,
        "templateCode": "global_site_advanced",
        "tenantCode": "100001_2103125189",
        "unittype": "100001",
        "verify": "7a52e6a19bd14db672746aa54a8b03cd",
        "mverify": "af40213718a6b1ce0054bd753d8b4657"
    };
    window.commonShortUrl = ("http://www.ceurl.cn" == "") ? "" : "http://www.ceurl.cn" + "/";
    window.upgradeVersion = "fc5a109c2111dd301ab975aebf688cc5";
    var isxinnet = "false";
    window.noredirectCookieName = "_noredirect";
    var visittrack_siteId = "100001_2103125189";
    var visittrack_url = "";
    var gatherScripts = "";
    var unittype = window.tenant.unittype;
    window.globalObj = {};
    window.globalObj.isOpenSSL = false;

    if (!(unittype == '100009' || unittype == '100084' || unittype == '100007')) {
        window.intelligetJump = {"identification": "false"};//智能跳转
    }
    if (unittype == '100001') {
        window.getMultilingual = {
            "website": "{\"en\":\"en.hnks.com\",\"zh_CN\":\"www.hnks.com\"}",
            "switcher": "off"
        };//多语言和获取网站url对象
    }

    try {
        var setDomain = window.location.hostname.replace("http://", "").replace("https://", "");
        if (setDomain.match(/[a-z]+/) != null) {
            var domainArr = setDomain.split(".");
            var preDomain = domainArr[domainArr.length - 2] + "."
                + domainArr[domainArr.length - 1];
            if (/(com|cn|org|net|xin|edu|ac)\..*/.test(preDomain)) {
                preDomain = domainArr[domainArr.length - 3] + "." + domainArr[domainArr.length - 2] + "."
                    + domainArr[domainArr.length - 1];
            }
            document.domain = preDomain;
        }
    } catch (e) {
        console.log(e);
    }

</script>
<script type="text/javascript" src="/themes/simpleboot3/public/assets/js/interwords_zh_CN.min.js,libs.min.js"></script>
<script>
    $(function () {
        // 灰色主题
        if (!(unittype == '100009' || unittype == '100084' || unittype == '100007')) {
            var qxurl = location.href.replace(location.origin, '')
            if (qxurl == '/' || qxurl == '') {
                var grayStatus = {"greySwitchStatus": "false"};
                var greySwitchStatusData = {};
                if (typeof (grayStatus) == 'string' && /^{/.test(grayStatus)) {
                    greySwitchStatusData = JSON.parse(grayStatus);
                } else if (typeof (grayStatus) == 'object') {
                    greySwitchStatusData = grayStatus;
                }
                if (greySwitchStatusData && greySwitchStatusData.greySwitchStatus == 'true') {
                    $("html").css("cssText", "filter: progid:DXImageTransform.Microsoft.BasicImage(grayscale=1) !important");
                    $("html").css("cssText", "-webkit-filter: grayscale(100%) !important");
                }
            }
            // 飘窗
            require(['/themes/simpleboot3/public/assets/js/common.js'], function () {
            })
        }
    });
    if (!(window.tenant.unittype == '100084' || window.tenant.unittype == '100009') && isFrontEnv() && !window.noAuth) {
        var qxurl = location.href.replace(location.origin, '')
        if (qxurl != '/') {
            $.ajax({
                url: '/comp/authtion.do',
                method: 'get',
                data: {
                    url: qxurl
                },
                success: function (res) {
                    if (res.status == 300 && res.data != '') {
                        window.location.href = res.data
                    }
                },
                error: function (err) {
                    console.log(err);
                }
            });
        }
    }
</script>
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<meta name="applicable-device" content="pc,mobile">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />-->

<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="utils"
        src="/themes/simpleboot3/public/assets/js/utils.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
        data-requiremodule="/public/cjgj/common.js" src="/themes/simpleboot3/public/assets/js/common.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="wgt_util"
        src="/themes/simpleboot3/public/assets/js/wgt_util.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="wgt_readyload"
        src="/themes/simpleboot3/public/assets/js/wgt_readyload.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
        data-requiremodule="jquery.mediaQuery"
        src="/themes/simpleboot3/public/assets/js/jquery.mediaQuery.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="swiper4.4.2"
        src="/themes/simpleboot3/public/assets/js/swiper4.4.2.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
        data-requiremodule="js/portalSearch/portalResSearch_total-02"
        src="/themes/simpleboot3/public/assets/js/portalResSearch_total-02.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
        data-requiremodule="js/portalNews/portalResNews_list-01"
        src="/themes/simpleboot3/public/assets/js/portalResNews_list-01.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
        data-requiremodule="js/portalPublic/portalResPublic_codeContainer-01"
        src="/themes/simpleboot3/public/assets/js/portalResPublic_codeContainer-01.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
        data-requiremodule="/public/cjgj/restival.js"
        src="/themes/simpleboot3/public/assets/js/restival.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
        data-requiremodule="js/pagination/initPagination"
        src="/themes/simpleboot3/public/assets/js/initPagination.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="afterLoad"
        src="/themes/simpleboot3/public/assets/js/afterLoad.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
        data-requiremodule="sdkStatisticsNew"
        src="/themes/simpleboot3/public/assets/js/sdkStatisticsNew.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"
        data-requiremodule="js/pagination/pagination"
        src="/themes/simpleboot3/public/assets/js/pagination.min.js"></script>
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="sensorsdataNew"
        src="/themes/simpleboot3/public/assets/js/sensorsdataNew.min.js"></script>


    <link href="/themes/simpleboot3/public/assets/css/page_impt_products.css" rel="stylesheet" type="text/css">
</head>
<body data-pageid="819bfeda-86ec-4ccb-98a2-77278885987f" data-layout="flow"
      data-tmplid="87b39d0f-a99c-4a72-9ee6-4af7c0f251ef">
<div class="main pagebox">
    <div id="w_grid-1631860362098" class="w_grid-000">
    <div class="w_grid signal">
        <div class="e_box e_box-000 p_gridbox">
            <div id="content_box-1631860362098-0" class="e_box e_box-000 d_gridCell_0 p_gridCell">
                <div id="w_grid-1631862361403" class="w_grid-001">
                    <div class="w_grid ">
                        <div class="e_box e_box-000 p_gridbox">
                            <div id="content_box-1631862361403-0" class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                <div id="c_portalResnav_main-16168274662348169" class="c_portalResnav_main-01001002"
                                     loaded="true" style="overflow: visible;">
                                    <!--<script type="text/javascript" src="//dfs.yun300.cn/group1/M00/16/A8/rBQBG1zaKjeEZqnoAAAAAIaDhfQ3178.js"></script>
                                    <script type="text/javascript" src="//dfs.yun300.cn/group1/M00/16/5A/rBQBG1zEYY2ENWyFAAAAAMkBaKg1347.js"></script>-->


                                    <!-- PC导航 -->
                                    <div class="pc_nav">

                                        <header class="header1 f-cb">
                                            <div class="header-left f-cb">
                                                <h1 class="fl">
                                                    <a href="/">
                                                        <img class="img1" src="/themes/simpleboot3/public/assets/images/logo2.jpg"
                                                             alt="<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>"
                                                             title="<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">

                                                    </a>
                                                </h1>
                                                <nav class="fr">
                                                    <ul class="f-cb">
                                                        <li class="hvr-left subnav2 js-m js-m-2">
                                                            <a class="home-dec" href="/">Home</a>
                                                        </li>
                                                        <li class="hvr-left subnav2 js-m js-m-2">
                                                            <a class="home-dec" href="/intro/4.html">AboutUs</a>
                                                            <div class="nav-sub">
                                                                <div class="n-nav-sub">
                                                                    <a href="/intro/4.html">CompanyProfile
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/intro/7.html">LeadershipSpeech
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/honor/7.html">EnterpriseHonor
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/honor/9.html">EnterpriseStyle
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/intro/8.html">AdvancedEquipment
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="hvr-left subnav2 js-m js-m-2">
                                                            <a class="home-dec"
                                                               href="/product/<?php echo $category_list[0]['id']; ?>">ProductCenter</a>
                                                            <div class="nav-sub">
                                                                <div class="n-nav-sub">
                                                                    <?php if(is_array($category_list) || $category_list instanceof \think\Collection || $category_list instanceof \think\Paginator): if( count($category_list)==0 ) : echo "" ;else: foreach($category_list as $key=>$vo): ?>
                                                                    <a href="/product/<?php echo $vo['id']; ?>"><?php echo $vo['name']; ?>
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="hvr-left subnav2 js-m js-m-2">
                                                            <a class="home-dec"
                                                               href="/culture/11.html">CorporateCulture</a>
                                                            <div class="nav-sub">
                                                                <div class="n-nav-sub">
                                                                    <a href="/culture/11.html">FilialPietyCultur
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/activity/10.html">ActivityRecord
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="hvr-left subnav2 js-m js-m-2">
                                                            <a class="home-dec"
                                                               href="/responsibility/<?php echo $responsibility_category_list[0]['id']; ?>">SocialResponsibility</a>
                                                            <div class="nav-sub">
                                                                <div class="n-nav-sub">
                                                                    <?php if(is_array($responsibility_category_list) || $responsibility_category_list instanceof \think\Collection || $responsibility_category_list instanceof \think\Paginator): if( count($responsibility_category_list)==0 ) : echo "" ;else: foreach($responsibility_category_list as $key=>$vo): ?>
                                                                        <a href="/responsibility/<?php echo $vo['id']; ?>"><?php echo $vo['name']; ?>
                                                                            <div class="nav-arrow icon-up iconfont"></div>
                                                                        </a>
                                                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="hvr-left subnav2 js-m js-m-2">
                                                            <a class="home-dec"
                                                               href="/intro/16.html">ServiceCenter</a>
                                                            <div class="nav-sub">
                                                                <div class="n-nav-sub">
                                                                    <a href="/intro/16.html">ContactUs
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/intro/17.html">JoinUs
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </header>
                                    </div>
                                    <!--PC导航结束-->


                                    <!--MO导航-->
                                    <div class="header2">
                                        <div class="main-wrap f-cb">
                                            <h1 class="logo fl">
                                                <a href="/">
                                                    <img src="/themes/simpleboot3/public/assets/images/logox.jpg"
                                                         alt="<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>"
                                                         title="<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
                                                </a>
                                            </h1>
                                            <div class="nav-btn fr">
                                                <span class="line line1"></span>
                                                <span class="line line2"></span>
                                                <span class="line line3"></span>
                                            </div>
                                        </div>
                                        <div class="sub-menu">
                                            <ul>
                                                <li class="js-m-3 delay01">
                                                    <a class="tit sub-tit" href="/">首页</a>
                                                </li>
                                                <li class="js-m-3 delay02">
                                                    <a class="tit sub-tit" href="/intro/4.html">About us</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <p>
                                                            <a href="/intro/4.html">CompanyProfile</a>
                                                        </p>
                                                        <p>
                                                            <a href="/intro/7.html">LeadershipSpeech</a>
                                                        </p>
                                                        <p>
                                                            <a href="honor/7.html">EnterpriseHonor</a>
                                                        </p>
                                                        <p>
                                                            <a href="honor/9.html">EnterpriseStyle</a>
                                                        </p>
                                                        <p>
                                                            <a href="/intro/8.html">AdvancedEquipment</a>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="js-m-3 delay04">
                                                    <a class="tit sub-tit" href="/product/1.html">ProductCenter</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <?php if(is_array($category_list) || $category_list instanceof \think\Collection || $category_list instanceof \think\Paginator): if( count($category_list)==0 ) : echo "" ;else: foreach($category_list as $key=>$vo): ?>
                                                        <p>
                                                            <a href="/product/<?php echo $vo['id']; ?>"><?php echo $vo['name']; ?></a>
                                                        </p>
                                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                                    </div>
                                                </li>
                                                <li class="js-m-3 delay05">
                                                    <a class="tit sub-tit"
                                                       href="/culture/11.html">CorporateCulture</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <p>
                                                            <a href="/culture/11.html">FilialPietyCultur</a>
                                                        </p>
                                                        <p>
                                                            <a href="/activity/10.html">ActivityRecord</a>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="js-m-3 delay06">
                                                    <a class="tit sub-tit"
                                                       href="/responsibility/<?php echo $responsibility_category_list[0]['id']; ?>">SocialResponsibility</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <?php if(is_array($responsibility_category_list) || $responsibility_category_list instanceof \think\Collection || $responsibility_category_list instanceof \think\Paginator): if( count($responsibility_category_list)==0 ) : echo "" ;else: foreach($responsibility_category_list as $key=>$vo): ?>
                                                        <p>
                                                            <a href="/responsibility/<?php echo $vo['id']; ?>"><?php echo $vo['name']; ?></a>
                                                        </p>
                                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                                    </div>
                                                </li>
                                                <li class="js-m-3 delay07">
                                                    <a class="tit sub-tit"
                                                       href="/intro/16.html">ServiceCenter</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <p>
                                                            <a href="/intro/16.html">ContactUs</a>
                                                        </p>
                                                        <p>
                                                            <a href="/intro/17.html">JoinUs</a>
                                                        </p>
                                                    </div>
                                                </li>
                                                <!--<li class="js-m-3 animate">
                               <div class="mo_tel"><a href="http://en.gdzyzbzy.com/">English</a></div>
                                </li>-->
                                                <li class="js-m-3 animate delay08">

                                                    <div class="mo_tel"><i class="iconfont"></i>National free sales service hotline:<?php echo $site_info['sale_tel']; ?>
                                                    </div>
                                                </li>

                                            </ul>

                                        </div>
                                    </div>
                                    <div class="search-bg"></div>
                                    <!--MO导航结束-->

                                    <!--SEARCH 弹出层-->
                                    <!--<div class="c-mask-overlay"></div>
                                    <div class="search-alert">
                                        <span class="close iconfont icon-close"></span>
                                        <div class="cent-form iconfont icon-search1">
                                            <form action="/sousuo.html"" method="GET" id="pro-ser-frm">
                                                <input class="fl tex" type="text" id="news_search_word" name="keyword" value="" placeholder="请输入搜索内容"
                                                    onblur="if(!value){value=defaultValue;}" onfocus="if(value==defaultValue){value='';}">
                                                <input class="fr sub-butn" type="submit" id="lv_search" value="ENTER">
                                            </form>
                                        </div>
                                    </div>-->
                                    <!--SEARCH 弹出层结束-->


                                    <script>
                                        // $(function () {

                                            var _li = $('.header2 .sub-menu ul').children('.js-m-3');
                                            _li.each(function (i, e) {
                                                $(this).addClass('delay0' + (i + 1));
                                            });


                                            $(".mobile-nav-click a").on("click", function () {
                                                $(".header2 .nav-btn").removeClass('hover');
                                                $(".header2 .nav-btn").removeClass('active');
                                                $(".header2 .nav-btn").children('.line1').stop(true, true).transition({rotate: 0}, 300);
                                                $(".header2 .nav-btn").children('.line2').stop(true, true).fadeIn(300);
                                                $(".header2 .nav-btn").children('.line3').stop(true, true).transition({rotate: 0}, 300);
                                                $(".header2 .nav-btn").parent(".main-wrap").siblings('.sub-menu').stop().fadeOut();
                                                $("header .list-cont").removeClass('active');
                                                $("body,html").stop(true, true).removeClass('ovh-f');
                                                $(".search-bg").stop(true, true).fadeOut();
                                                $(".header2").removeClass('active');
                                                $(".sub-menu li").removeClass("animate");

                                                var target = $(this).attr('href');
                                                var target_top = $(target).offset().top;
                                                $('html,body').animate({
                                                    scrollTop: target_top
                                                }, 600, 'easeInOutQuad');
                                                return false;
                                            })


                                            $(window).scroll(function () {
                                                if ($(window).scrollTop() > 0) {
                                                    $(".header1").addClass("active");
                                                } else {
                                                    $(".header1").removeClass("active");
                                                }
                                            })

                                            $(".header2 .sub-menu .js-m-3").click(function () {
                                                $(this).children("div.sec-list").slideToggle('slow').end().find('.jt')
                                                    .toggleClass('jtRote');
                                                $(this).siblings('li').children('.sec-list').slideUp('slow').end().find('.jt')
                                                    .removeClass('jtRote');
                                            });
                                            $(".search-btn").on('click', function () {
                                                $(".search-alert").addClass("active");
                                            });
                                            $(".search-alert .close").on('click', function () {
                                                $(".search-alert").removeClass("active");
                                            });
                                            indexnav();

                                            function indexnav() {
                                                $(".header1 .subnav").hover(function () {
                                                    $(".nav").addClass("on");
                                                    var k = $(this).index();
                                                }, function () {
                                                    $(".pc-sub-nav").stop(true, false).slideUp(300);
                                                    var k = $(this).index();
                                                    $(".pc-sub-nav").hover(function () {
                                                        $(".pc-sub-nav").stop(true, false).slideDown(300);
                                                        $(".subnav").eq(k).addClass("cur").siblings(".subnav").removeClass("cur");
                                                    }, function () {
                                                        $(".subnav").removeClass("cur");
                                                        $(".pc-sub-nav").stop(true, false).slideUp(300);
                                                    });
                                                })
                                                $(".header1 .subnav2").hover(function () {
                                                    $(this).find(".nav-sub").addClass("active").parents(".subnav2").siblings().find(".nav-sub").removeClass("active");
                                                }, function () {
                                                    $(this).find(".nav-sub").removeClass("active");
                                                })
                                            }
                                        // })
                                    </script>

                                    <input type="hidden" class="nav_main_navId"
                                           value="&amp;navId=1&amp;compId=portalResnav_main-16168274662348169">
                                    <script>$("div[id^='c_']").attr("loaded", "true")</script>
                                </div>
                            </div>
                            <div id="content_box-1631862361403-1" class="e_box e_box-000 d_gridCell_1 p_gridCell">
                                <div id="c_portalResSearch_total-16318624742069041"
                                     class="c_portalResSearch_total-02001002" loaded="true"
                                     style="overflow: visible;">
                                    <div class="e_box p_contentBox">
                                        <div class="e_box p_searchBtnBox">
                                            <div class="e_btn p_searchBtnA" data-ename="搜索按钮">
                                                <div class="font">
                                                    <i class="iconfont"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="e_box p_headbox active">
                                            <div class="e_box p_searchBox">
                                                <div class="e_input p_input">

                                                    <input id="search_keyword" name="search_keyword"
                                                           class="InputText" type="text" value="<?php echo (isset($keyword) && ($keyword !== '')?$keyword:''); ?>"
                                                           placeholder="Please enter your search term">
                                                    <i class="iconfont last"></i>
                                                </div>
                                            </div>

                                            <div class="e_btn p_searchBtn">
                                                <div class="font"><i class="iconfont"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <script type="text/javascript">
                                        $('.p_searchBtn').click(function (){
                                            var keyword = $("#search_keyword").val();
                                            if (!keyword){
                                                console.log("请输入关键字")
                                                return
                                            }
                                            window.location.href = "/search.html?keyword=" + keyword;
                                        })

                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <div id="w_grid-1573265972119" class="w_grid-000">
        <div class="w_grid signal">
            <div class="e_box e_box-000 p_gridbox">
                <div id="content_box-1573265972119-0" class="e_box e_box-000 d_gridCell_0 p_gridCell">
                    <div id="w_grid-1585814936008" class="w_grid-000" data-tmpleditable="editable">
                        <div class="w_grid signal">
                            <div class="e_box e_box-000 p_gridbox">
                                <div id="content_box-1585814936008-0"
                                     class="e_box e_box-000 d_gridCell_0 p_gridCell ND_empty"
                                     data-editablecontent="1585814936008">
                                    <div id="c_portalResEbizads_banner-1614397060581"
     class="c_portalResEbizads_banner-01001005" data-vhide768="true" loaded="true"
     style="overflow: visible;">
    <!-- banner 大盒子开始 -->
    <div class="bannerBox">
        <div class="swiper-container portalResEbizads_banner-1614397060581_swiperContainer swiper-container-horizontal">
            <div class="swiper-wrapper">
                <?php
     $__SLIDE_ITEMS__ = \app\admin\service\ApiService::slides(2);
if(is_array($__SLIDE_ITEMS__) || $__SLIDE_ITEMS__ instanceof \think\Collection || $__SLIDE_ITEMS__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__SLIDE_ITEMS__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

                    <!-- 单个 盒子循环开始 -->
                    <div class="swiper-slide swiper-slide-active"
                         style="width: 1920px;">
                        <div class="content">
                            <!-- 图片开始 -->
                            <div class="picB" data-ename="Banner大图">
                                <img src="<?php echo cmf_get_image_url($vo['image']); ?>"
                                     alt="<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>" class="bannerPic"
                                     title="<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
                            </div>
                            <!-- 图片结束 -->
                            <!-- 内容开始 -->

                            <!-- 内容结束 -->
                        </div>
                    </div>
                    <!-- 单个 盒子循环结束 -->
                
<?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <!-- banner 按钮开始 -->
            <!-- banner 按钮结束 -->
        </div>
    </div>
    <!-- banner 大盒子结束 -->
    <script>
        require(['swiper'], function () {
            var mySwiper = new Swiper('.portalResEbizads_banner-1614397060581_swiperContainer', {
                //可选选项，自动滑动
                autoplay: 2000,
                //操作后继续轮播
                autoplayDisableOnInteraction: false,
                // 循环播放
                loop: false,
                // 滑出效果
                //effect: 'fade',
                // 前按钮
                prevButton: '#c_portalResEbizads_banner-1614397060581 .swiper-button-prev',
                // 后按钮
                nextButton: '#c_portalResEbizads_banner-1614397060581 .swiper-button-next',
                // slid开始滑动到结束的时间
                speed: 1200,
                // 视差效果
                parallax: true,
            })
        });
        $("div[id^='c_portalResEbizads_banner']").attr("loaded", "true");

    </script>
    <input class="requsetParam" type="hidden" value="">

</div>
                                    <div id="w_grid-1617010462445" class="w_grid-000">
                                        <div class="w_grid signal">
                                            <div class="e_box e_box-000 p_gridbox">
                                                <div id="content_box-1617010462445-0"
                                                     class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                    <div id="w_grid-1617010462455" class="w_grid-001">
                                                        <div class="w_grid ">
                                                            <div class="e_box e_box-000 p_gridbox">
                                                                <div id="content_box-1617010462455-0"
                                                                     class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                                    <div id="c_portalResProduct_category-16170106165287235"
                                                                         class="c_portalResProduct_category-01001004"
                                                                         loaded="true" style="overflow: visible;">
                                                                        <script type="text/javascript"
                                                                                src="/themes/simpleboot3/public/assets/images/rBQBHVzP2YGEOOgyAAAAAJLRU3c3828.js"></script>
                                                                        <script type="text/javascript">
                                                                            $(function () {
                                                                                $('.NavList_a1').attr('id', 'NavList_a1').menu({
                                                                                    a_type: 'slide',
                                                                                    p_type: false,
                                                                                    f_type: 'mob_js'
                                                                                });
                                                                            });
                                                                        </script>
                                                                        <div class="NavList_a1 default-style slide-menu swiper-container swiper-container-horizontal swiper-container-free-mode"
                                                                             id="NavList_a1">
                                                                            <ul class="clearfix swiper-wrapper">
                                                                                <?php if(is_array($category_list) || $category_list instanceof \think\Collection || $category_list instanceof \think\Paginator): if( count($category_list)==0 ) : echo "" ;else: foreach($category_list as $key=>$vo): ?>
                                                                                    <li class="swiper-slide swiper-no-swiping swiper-slide-active">
                                                                                        <a href="/product/<?php echo $vo['id']; ?>"
                                                                                           title="<?php echo $vo['name']; ?>"
                                                                                           class="more"><?php echo $vo['name']; ?></a>
                                                                                    </li>
                                                                                <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                            </ul>
                                                                            <div id="NavList_a1_menu-slide"
                                                                                 class="menu-slide"
                                                                                 style="width: 60px; height: 84px; left: 413px; top: 0px;">
                                                                                <i></i></div>
                                                                            <span class="swiper-notification"
                                                                                  aria-live="assertive"
                                                                                  aria-atomic="true"></span></div>
                                                                        <script>$("div[id^='c_']").attr("loaded", "true")</script>
                                                                        <script>
                                                                            var urlName = window.location.pathname;  //获取地址栏中文件名或路径。
                                                                            $('.NavList_a1 li a').each(function () {        //遍历当前网页导航或分类
                                                                                var urlHref = $(this).attr('href');  //获取导航链接地址href值
                                                                                if (urlName.indexOf(urlHref) >= 0) {   //检测文件名或路径中是否包含当前链接值
                                                                                    $(this).addClass('active');
                                                                                }
                                                                            });
                                                                        </script>
                                                                    </div>
                                                                </div>
                                                                <div id="content_box-1617010462455-1"
                                                                     class="e_box e_box-000 d_gridCell_1 p_gridCell">
                                                                    <div id="c_portalResBreadcrumb_nav-1617010462485"
                                                                         class="c_portalResBreadcrumb_nav-01001003"
                                                                         loaded="true" style="overflow: visible;">
                                                                        <!--homePage  首页-->
                                                                        <div class="e_box e_box-000 p_breadcrumbList"
                                                                             data-ename="面包屑导航">

                                                                            <div class="e_breadcrumb e_breadcrumb-001 p_breadcrumbFirst">
                                                                                <span class="weizhi"><i
                                                                                        class="iconfont"></i>Your Location:</span>

                                                                            </div>
                                                                            <div class="e_breadcrumb e_breadcrumb-001 p_breadcrumb contentBox">
                                                                                <a href="<?php echo $category_list[0]['id']; ?>">
                                                                                    <div class="font">
                                                                                        <span>Product Center</span>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                            <div class="e_title e_GuideLabel-001 p_end">
                                                                                <div class="font"><span
                                                                                        class="i_separator">/</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="e_breadcrumb e_breadcrumb-000 p_breadcrumbCurrent">
                                                                                <div class="font">
                                                                                    <span><?php echo $category['name']; ?></span>
                                                                                </div>
                                                                            </div>

                                                                        </div>

                                                                        <script type="text/javascript">
                                                                            $comp({
                                                                                breadcrumbType: false,
                                                                                contentFlag: "true",
                                                                                contentWidth: "350",
                                                                                ctx: "",
                                                                                appId: "",
                                                                                id: "portalResBreadcrumb_nav-1617010462485",
                                                                                lib: ["js/portalResBreadcrumb/portalResBreadcrumb_nav"]
                                                                            });


                                                                        </script>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="w_grid-1617010462465" class="w_grid-000">
                                        <div class="w_grid signal">
                                            <div class="e_box e_box-000 p_gridbox">
                                                <div id="content_box-1617010462465-0"
                                                     class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                    <div id="c_portalResProduct_list-16170107375803035"
                                                         class="c_portalResProduct_list-01001001" loaded="true"
                                                         style="overflow: visible;">
                                                        <div class="e_stylebox e_ContentOrdinaryStyleBox-001 p_stylebox"
                                                             id="">
                                                            <div class="stylebox_top">
                                                                <div class="stylebox_title">
                                                                    <i class="title_icon"></i>
                                                                    <h2 class="title_main"><?php echo $category['name']; ?></h2>
                                                                </div>
                                                            </div>
                                                            <div class="stylebox_top_line"></div>
                                                            <div class="stylebox_content">

                                                                <input type="hidden" class="listAddUrl"
                                                                       value="&amp;gototype=add&amp;productType=0&amp;backType=picview&amp;proshowcaseId=&amp;proparentId=&amp;appId=">
                                                                <input type="hidden" class="listModifyUrl"
                                                                       value="&amp;proparentId=&amp;appId=">
                                                                <div class="e_box p_ProductList" data-ename="产品列表">
                                                                    <!--
                                                                        -->
                                                                    <div class="proBox" data-ename="产品列表">
                                                                        <div class="e_box p_products proLists p_productsSet"
                                                                             data-ename="产品列表框架区"
                                                                             isserverpaging="true">
                                                                            <?php 
                                                                                $where= function($query){
                                                                                $query->where('post.post_type','=',3);
                                                                                };
                                                                                $page=[
                                                                                'list_rows'=>12,
                                                                                'next'=>'>',
                                                                                'prev'=>'<'
                                                                                ];
                                                                             $articles_data = \app\portal\service\ApiService::articles([
    'field'   => '',
    'where'   => $where,
    'limit'   => '',
    'order'   => 'post.recommended DESC,post.create_time DESC',
    'page'    => $page,
    'relation'=> 'categories',
    'category_ids'=>$category['id']
]);

$__PAGE_VAR_NAME__ = isset($articles_data['page'])?$articles_data['page']:'';

 if(is_array($articles_data['articles']) || $articles_data['articles'] instanceof \think\Collection || $articles_data['articles'] instanceof \think\Paginator): $i = 0; $__LIST__ = $articles_data['articles'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>


                                                                                <div class="e_box p_Product proList"
                                                                                     dataid="<?php echo $vo['id']; ?>"
                                                                                     data-dismoveable=""
                                                                                     data-foreachitem="">
                                                                                    <!-- 图片区开始 -->
                                                                                    <div class="imgBox">
                                                                                        <img class="img"
                                                                                             src="<?php echo cmf_get_image_url($vo['thumbnail']); ?>"
                                                                                             alt="<?php echo $vo['post_title']; ?>"
                                                                                             title="<?php echo $vo['post_title']; ?>">
                                                                                    </div>
                                                                                    <!-- 图片区结束 -->

                                                                                    <!-- 标题开始 -->
                                                                                    <h3 class="titleBox">
                                                                                        <?php echo $vo['post_title']; ?>

                                                                                    </h3>
                                                                                    <!-- 标题结束 -->

                                                                                    <!-- 关键字开始 -->
                                                                                    <div class="e_box d_SummaryBox p_SummaryBox_1"
                                                                                         data-ename="概要描述容器">
                                                                                        <div class="e_article description d_summary p_summary_1">
                                                                                            <?php echo $vo['post_excerpt']; ?>
                                                                                        </div>
                                                                                    </div>
                                                                                    <!-- 关键字结束 -->

                                                                                    <!-- 链接开始 -->
                                                                                    <a class="link"
                                                                                       href="/product_info/<?php echo $category['id']; ?>/<?php echo $vo['id']; ?>"></a>
                                                                                    <!-- 链接结束 -->
                                                                                </div>
                                                                            
<?php endforeach; endif; else: echo "" ;endif; ?>
                                                                        </div>
                                                                    </div>
                                                                    <div class="e_box e_OccupyBox-001 p_OccupyBox">
                                                                        <ul class="pagination">
                                                                            <?php
     echo empty($__PAGE_VAR_NAME__)?'':$__PAGE_VAR_NAME__;
 ?>
                                                                        </ul>
                                                                    </div>
                                                                </div>

                                                                <script>$("div[id^='c_']").attr("loaded", "true")</script>
                                                                <script type="text/javascript">
                                                                    $comp({
                                                                        textParams: {
                                                                            isCutOfName: true, //标题是否自动截取超长显示内容
                                                                            linesOfCutOfName: 2, //标题超出隐藏的行数设置
                                                                            isCutOfSummary: true, //概述是否自动截取超长显示内容
                                                                            linesOfCutOfSummary: 3, //概述超出隐藏的行数设置
                                                                            categorySummary: true, //分类概述是否自动截取超长显示内容
                                                                            categorySummaryMaxLen: 2 //分类概述超出隐藏的行数设置
                                                                        },
                                                                        picParams: {
                                                                            isOpenCutMode: true, //是否开启裁剪 不开启false
                                                                            isRate: true, //是否按比例裁剪
                                                                            widthOfRate: 1, //宽度的比率
                                                                            heightOfRate: 1, //高度的比率
                                                                            definedDefaultImage: false, //是否设置默认图片
                                                                            defaultImage: "", //设置默认图片的值
                                                                            appId: 2
                                                                        },
                                                                        ctx: "",
                                                                        appId: "2",
                                                                        productMode: "",
                                                                        requestParam: {
                                                                            "orderType": "",
                                                                            "xibcommonId": "22",
                                                                            "appType": "productCateId",
                                                                            "orderColumn": "",
                                                                            "productCateId": "22"
                                                                        },
                                                                        pageParam: {
                                                                            url: "/comp/portalResProduct/list.do?compId=portalResProduct_list-16170107375803035",
                                                                            appId: "2",
                                                                            turnPageType: "turnPage"
                                                                        },
                                                                        id: "portalResProduct_list-16170107375803035",
                                                                        lib: ["js/portalProduct/portalResProduct_list-01"],
                                                                        imageOpts: {
                                                                            "comp_w_size": "", //容器宽
                                                                            /*大图*/
                                                                            //列表类传值为空，避免图片外层盒子创建2次
                                                                            "box_img_style_0": null,
                                                                            "box_img_style_1": null,
                                                                            "box_img_style_2": null,

                                                                            "e_img_style_0": "e_image",
                                                                            "e_img_style_1": "e_image-000",
                                                                            "e_img_style_2": "p_image",
                                                                            "e_a_img_style_0": "e_link",
                                                                            "e_a_img_style_1": "e_link-000",
                                                                            "e_a_img_style_2": "p_linkB",
                                                                            "e_a_txt_style_0": "e_link",
                                                                            "e_a_txt_style_1": "e_link-000",
                                                                            "e_a_txt_style_2": "p_linkA",

                                                                            //大图宽高比例
                                                                            "img_scale_x": "4", //宽
                                                                            "img_scale_y": "3", //高
                                                                            "img_transition": "fade", //图片动画效果
                                                                            "img_speed": 1000, //效果显示速度
                                                                            "img_easing": "easeOutQuart", //动画效果

                                                                            //大图高清裁剪, 普通：normal; 高清： hd; 裁剪: cut; 高清和裁剪： both;
                                                                            "img_display_type": "cut",
                                                                            "box_nav_style_1": "e_box-000",
                                                                            "box_nav_style_0": "e_box",
                                                                            "box_nav_style_2": "p_ThumbnailBox",
                                                                            "e_nav_img_style_1": "e_ProductRelationImg-001",
                                                                            "e_nav_img_style_0": "e_relationimg",
                                                                            "e_nav_img_style_2": "p_thumbnail",
                                                                            "nav_display_status": true, //规格图是否显示，true-显示，false-隐藏
                                                                            "nav_type": "block",
                                                                            "nav_img_display_type": "cut", // 显示状态， 普通：normal; 高清： hd; 裁剪: cut; 高清和裁剪： both;
                                                                            //规格图宽高比例
                                                                            "nav_scale_x": "4", //宽
                                                                            "nav_scale_y": "3", //高
                                                                            "nav_display_num": "6", //焦点图显示数量
                                                                            "nav_position": "center", //焦点小图位置
                                                                            "nav_display_padding": 10,
                                                                            "nav_step": 1, //切换个数
                                                                            "nav_hover": true,

                                                                            /*标记*/
                                                                            "box_tag_style_0": "e_box",
                                                                            "box_tag_style_1": "e_box-000",
                                                                            "box_tag_style_2": "p_TagBox",
                                                                            "e_img_tag_style_0": "e_image",
                                                                            "e_img_tag_style_2": "p_tag",
                                                                            "e_img_tag_style_1": "e_image-000",
                                                                            "img_tag_display": true, //true 显示标记，false 隐藏标记
                                                                            "shiftUpAnimSwitch": false, //是否显示轮播图dom true显示，false不显示
                                                                            "img_tag_display_type": "cut", //产品标记 显示状态， 普通：normal; 高清： hd; 裁剪: cut; 高清和裁剪： both;

                                                                            //移上动画的配置参数
                                                                            //图片遮罩层
                                                                            "box_shade_style_0": "e_MatteBox",
                                                                            "box_shade_style_1": "e_MatteBox-001",
                                                                            "box_shade_style_2": "p_matteA",
                                                                            //动画外层
                                                                            "box_animatOuter_style_0": "e_MatteBox",
                                                                            "box_animatOuter_style_1": "e_MatteBox-000",
                                                                            "box_animatOuter_style_2": "p_matte",

                                                                            //动画位置层
                                                                            "box_Position_style_0": "e_box",
                                                                            "box_Position_style_1": "e_PositionBox-001",
                                                                            "box_Position_style_2": "p_Position",

                                                                            "comp_type": "productList", //组件类型
                                                                        },
                                                                        sortParams: {
                                                                            "DEFAULT_SORT": {
                                                                                "v": "默认",
                                                                                "title": "默认",
                                                                                "style": ""
                                                                            },
                                                                            "PUBLISH_TIME": {
                                                                                "show": true,
                                                                                "v": "发布时间",
                                                                                "title": "按产品的发布时间进行排序",
                                                                                "style": ""
                                                                            },
                                                                            "PRODUCT_NAME": {
                                                                                "show": true,
                                                                                "v": " 产品名称",
                                                                                "title": "按照产品的名称进行排序",
                                                                                "style": ""
                                                                            },
                                                                            "PVS": {
                                                                                "show": false,
                                                                                "v": "浏览量",
                                                                                "title": "按产品的浏览量进行排序",
                                                                                "style": ""
                                                                            },
                                                                            "comment": {
                                                                                "show": false,
                                                                                "v": "评论数量",
                                                                                "title": "按照产品的评论数量进行排序",
                                                                                "style": ""
                                                                            },
                                                                            "PRODUCT_CODE": {
                                                                                "show": true,
                                                                                "v": "产品编号",
                                                                                "title": "按产品的编号进行排序",
                                                                                "style": ""
                                                                            }
                                                                        },
                                                                        styleId: "c_portalResProduct_list-01001001"
                                                                    });
                                                                </script>

                                                            </div>
                                                            <div class="stylebox_bottom_line"></div>
                                                            <div class="stylebox_bottom">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="w_grid-1593500490727" class="w_grid-000">
    <div class="w_grid signal">
        <div class="e_box e_box-000 p_gridbox">
            <div id="content_box-1593500490727-0" class="e_box e_box-000 d_gridCell_0 p_gridCell">
                <div id="w_common_text-1616831156169" class="reset_style" data-vhide100p="true">
                    <div>
                        <p style="text-align:center">
                            <span style="line-height:2">
                                <span style="font-family:微软雅黑">
                                    <span style="font-size:14px">
                                        <span style="color:#FFFFFF"><?php echo $site_info['copyright']; ?></span>
                                        <a href="https://beian.miit.gov.cn/" target="_blank">
                                            <span style="color:#FFFFFF"><?php echo $site_info['site_gwa']; ?></span>
                                        </a>
                                    </span>
                                </span>
                            </span>
                        </p>
                    </div>
                </div>
                <div id="w_grid-1614153078102" class="w_grid-001" data-vhide768="true"
                     data-vhide1024="true">
                    <div class="w_grid ">
                        <div class="e_box e_box-000 p_gridbox">
                            <div id="content_box-1614153078102-0"
                                 class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                <div id="c_portalResnav_main-16168298922036759"
                                     class="c_portalResnav_main-01001005" loaded="true"
                                     style="overflow: visible;">

                                    <nav class="bnav">
                                        <div class="box">
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="/"
                                                       class="botLink blink">Home</a>
                                                </dt>
                                            </dl>
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="/intro/4.html"
                                                       class="botLink blink">About us</a>
                                                </dt>
                                                <dd class="sbotDd">
                                                    <a href="/intro/4.html"
                                                       class="botLinkS blink">CompanyProfile</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="/intro/7.html"
                                                       class="botLinkS blink">LeadershipSpeech</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="honor/7.html"
                                                       class="botLinkS blink">EnterpriseHonor</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="honor/9.html"
                                                       class="botLinkS blink">EnterpriseStyle</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="/intro/8.html"
                                                       class="botLinkS blink">AdvancedEquipment</a>
                                                </dd>
                                            </dl>

                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="https://www.hnks.com/product/22/"
                                                       class="botLink blink">ProductCenter</a>
                                                </dt>
                                                <?php if(is_array($category_list) || $category_list instanceof \think\Collection || $category_list instanceof \think\Paginator): if( count($category_list)==0 ) : echo "" ;else: foreach($category_list as $key=>$vo): ?>
                                                <dd class="sbotDd">
                                                    <a href="/product/<?php echo $vo['id']; ?>"
                                                       class="botLinkS blink"><?php echo $vo['name']; ?></a>
                                                </dd>
                                                <?php endforeach; endif; else: echo "" ;endif; ?>
                                            </dl>
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="/culture/11.html"
                                                       class="botLink blink">CorporateCulture</a>
                                                </dt>
                                                <dd class="sbotDd">
                                                    <a href="/culture/11.html"
                                                       class="botLinkS blink">FilialPietyCultur</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="/activity/10.html"
                                                       class="botLinkS blink">ActivityRecord</a>
                                                </dd>
                                            </dl>
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="/responsibility/<?php echo $responsibility_category_list[0]['id']; ?>"
                                                       class="botLink blink">SocialResponsibility</a>
                                                </dt>
                                                <?php if(is_array($responsibility_category_list) || $responsibility_category_list instanceof \think\Collection || $responsibility_category_list instanceof \think\Paginator): if( count($responsibility_category_list)==0 ) : echo "" ;else: foreach($responsibility_category_list as $key=>$vo): ?>
                                                    <dd class="sbotDd">
                                                        <a href="/responsibility/<?php echo $vo['id']; ?>"
                                                           class="botLinkS blink"><?php echo $vo['name']; ?></a>
                                                    </dd>
                                                <?php endforeach; endif; else: echo "" ;endif; ?>
                                            </dl>
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="/intro/16.html"
                                                       class="botLink blink">ServiceCenter</a>
                                                </dt>
                                                <dd class="sbotDd">
                                                    <a href="/intro/16.html"
                                                       class="botLinkS blink">ContactUs</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="/intro/17.html"
                                                       class="botLinkS blink">JoinUs</a>
                                                </dd>
                                            </dl>
                                        </div>
                                    </nav>

                                    <script>
                                        $("div[id^='c_portalResnav_main']").attr("loaded", "true");
                                    </script>


                                </div>
                            </div>
                            <div id="content_box-1614153078102-1"
                                 class="e_box e_box-000 d_gridCell_1 p_gridCell">
                                <div id="w_common_text-1616830314198" class="reset_style">
                                    <div>
                                        <p><span style="color:#FFFFFF"><span style="font-size:14px"><span
                                                style="font-family:微软雅黑">National free sales service hotline</span></span></span>
                                        </p>

                                        <p><a href="tel:400-0373-818"><span
                                                style="font-size:26px"><span
                                                style="font-family:arial,helvetica,sans-serif"><span
                                                style="color:#FFFFFF"><?php echo $site_info['sale_tel']; ?></span></span></span></a>
                                        </p>
                                    </div>
                                </div>
                                <div id="w_common_text-1616830369921" class="reset_style">
                                    <div>
                                        <p><span style="color:#FFFFFF"><span style="font-size:14px"><span
                                                style="font-family:微软雅黑">National free after-sales service hotline</span></span></span>
                                        </p>

                                        <p><a href="tel:400-0373-919"><span
                                                style="font-size:26px"><span
                                                style="font-family:arial,helvetica,sans-serif"><span
                                                style="color:#FFFFFF"><?php echo $site_info['after_sale_tel']; ?></span></span></span></a>
                                        </p>
                                    </div>
                                </div>
                                <div id="w_common_text-1616830401781" class="reset_style">
                                    <div>
                                        <p>
                                            <span style="line-height:2">
                                                <span style="font-family:微软雅黑">
                                                    <span style="font-size:14px">
                                                        <a href="https://beian.miit.gov.cn/" target="_blank">
                                                            <span style="color:#d9d9d9"><?php echo $site_info['site_gwa']; ?></span>
                                                        </a>
                                                        <span style="color:#d9d9d9">&nbsp;&nbsp;</span>
                                                        <br>
                                                        <span style="color:#d9d9d9"><?php echo $site_info['copyright']; ?></span>
                                                    </span>
                                                </span>
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div id="content_box-1614153078102-2"
                                 class="e_box e_box-000 d_gridCell_2 p_gridCell">
                                <div id="w_common_text-1616830503151" class="reset_style">
                                    <div><p><strong><font color="#ffffff" face="微软雅黑"><span
                                            style="font-size:14px">Follow Us</span></font></strong>
                                    </p>
                                    </div>
                                </div>
                                <div id="w_grid-1616830617301" class="w_grid-001">
                                    <div class="w_grid ">
                                        <div class="e_box e_box-000 p_gridbox">
                                            <div id="content_box-1616830617301-0"
                                                 class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                <div id="w_fimg-1616830627861" class="w_fimg-001">
                                                    <div class="w_img animated  ">
                                                        <div class="e_box e_box-000 p_box">
                                                            <div class="e_image e_DImage-001 p_dimage">
                                                                <img src="/themes/simpleboot3/public/assets/images/1_29.jpg"
                                                                     alt="<?php echo $site_info['site_gwa']; ?>"
                                                                     title="<?php echo $site_info['site_gwa']; ?>"
                                                                     width="100%" height="100%">
                                                            </div>
                                                            <a class="e_link e_link-000 p_link002"
                                                               target="_blank">
                                                                <div class="e_title e_ImgTitle-001 p_title">
                                                                    <div class="font"><i
                                                                            class="iconfont"></i>微信公众号
                                                                    </div>
                                                                </div>
                                                            </a></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="content_box-1616830617301-1"
                                                 class="e_box e_box-000 d_gridCell_1 p_gridCell">
                                                <div id="w_fimg-1617159683507" class="w_fimg-001">
                                                    <div class="w_img animated  ">
                                                        <div class="e_box e_box-000 p_box">
                                                            <div class="e_image e_DImage-001 p_dimage">
                                                                <img src="/themes/simpleboot3/public/assets/images/dyn1.jpg"
                                                                     alt="<?php echo $site_info['site_gwa']; ?>"
                                                                     title="<?php echo $site_info['site_gwa']; ?>"
                                                                     width="100%" height="100%">
                                                            </div>
                                                            <a class="e_link e_link-000 p_link002"
                                                               target="_blank">
                                                                <div class="e_title e_ImgTitle-001 p_title">
                                                                    <div class="font"><i
                                                                            class="iconfont"></i>官方抖音
                                                                    </div>
                                                                </div>
                                                            </a></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="content_box-1616830617301-2"
                                                 class="e_box e_box-000 d_gridCell_2 p_gridCell">
                                                <div id="w_fimg-1616830641892" class="w_fimg-001">
                                                    <div class="w_img animated  ">
                                                        <div class="e_box e_box-000 p_box">
                                                            <div class="e_image e_DImage-001 p_dimage">
                                                                <img src="/themes/simpleboot3/public/assets/images/qK1wgsT6R_KRn1eO4yrBlg.jpg"
                                                                     alt="<?php echo $site_info['site_gwa']; ?>"
                                                                     title="<?php echo $site_info['site_gwa']; ?>"
                                                                     width="100%" height="100%">
                                                            </div>
                                                            <a class="e_link e_link-000 p_link002"
                                                               target="_blank">
                                                                <div class="e_title e_ImgTitle-001 p_title">
                                                                    <div class="font"><i
                                                                            class="iconfont"></i>官方手机站
                                                                    </div>
                                                                </div>
                                                            </a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/themes/simpleboot3/public/assets/js/response.js"></script>
</body>
</html>
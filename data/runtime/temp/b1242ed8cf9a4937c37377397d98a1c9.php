<?php /*a:7:{s:86:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/portal\\product-info.html";i:1731574396;s:77:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\head.html";i:1730952036;s:76:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\nav.html";i:1731576087;s:79:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\banner.html";i:1730878845;s:81:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\feedback.html";i:1731566933;s:80:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\scripts.html";i:1731315123;s:77:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\foot.html";i:1731576423;}*/ ?>
<!DOCTYPE html>
<!-- saved from url=(0037)https://www.hnks.com/product/110.html -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title><?php echo $product['title']; ?>_<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?></title>
    <meta name="keywords" content="<?php echo $product['title']; ?>,<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
    <meta name="description" content="<?php echo $product['title']; ?>-<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
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
        }
    });
</script>
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<meta name="applicable-device" content="pc,mobile">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!--<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />-->

<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="utils"
        src="/themes/simpleboot3/public/assets/js/utils.min.js"></script>
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


    <link href="/themes/simpleboot3/public/assets/css/page_impt_products_detail.css" rel="stylesheet" type="text/css">
</head>
<body data-pageid="10eee115-d4d8-47d3-8f41-63616c0843ee" data-layout="flow"
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
<!--                                                                    <a href="/intro/17.html">JoinUs-->
<!--                                                                        <div class="nav-arrow icon-up iconfont"></div>-->
<!--                                                                    </a>-->
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
                                    <div id="w_grid-1617010986065" class="w_grid-000">
                                        <div class="w_grid signal">
                                            <div class="e_box e_box-000 p_gridbox">
                                                <div id="content_box-1617010986065-0"
                                                     class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                    <div id="w_grid-1617010986075" class="w_grid-001">
                                                        <div class="w_grid ">
                                                            <div class="e_box e_box-000 p_gridbox">
                                                                <div id="content_box-1617010986075-0"
                                                                     class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                                    <div id="c_portalResProduct_category-1617010986100"
                                                                         class="c_portalResProduct_category-01001004"
                                                                         loaded="true" style="overflow: visible;">
                                                                        <script type="text/javascript"
                                                                                src="/themes/simpleboot3/public/assets/js/rBQBHVzP2YGEOOgyAAAAAJLRU3c3828.js"></script>
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
                                                                                <li class="swiper-slide swiper-no-swiping swiper-slide-active">
                                                                                    <a href="/product"
                                                                                       title=""
                                                                                       class="more">All Products</a>
                                                                                </li>
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
                                                                <div id="content_box-1617010986075-1"
                                                                     class="e_box e_box-000 d_gridCell_1 p_gridCell">
                                                                    <div id="c_portalResBreadcrumb_nav-1617010986105"
                                                                         class="c_portalResBreadcrumb_nav-01001003"
                                                                         loaded="true" style="overflow: visible;">
                                                                        <!--homePage  首页-->
                                                                        <div class="e_box e_box-000 p_breadcrumbList"
                                                                             data-ename="面包屑导航">

                                                                            <div class="e_breadcrumb e_breadcrumb-001 p_breadcrumbFirst">
                                                                                <span class="weizhi"><i
                                                                                        class="iconfont"></i>Home Page: &nbsp;&nbsp;</span>

                                                                            </div>
                                                                            <div class="e_breadcrumb e_breadcrumb-001 p_breadcrumb contentBox">
                                                                                <a href="/">
                                                                                    <div class="font">
                                                                                        <span>HomePage</span>
                                                                                    </div>
                                                                                </a>
                                                                            </div>
                                                                            <!--<div class="e_title e_GuideLabel-001 p_end">
                                                                            <div class="font"><span class="i_separator">/</span></div>
                                                                            </div>
                                                                            -->
                                                                            <div class="e_title e_GuideLabel-001 p_end">
                                                                                <div class="font"><span
                                                                                        class="i_separator">/</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="e_breadcrumb e_breadcrumb-001 p_breadcrumb contentBox">
                                                                                <a href="/product">
                                                                                    <div class="font">
                                                                                        <span>Products</span>
                                                                                    </div>
                                                                                </a>
                                                                            </div>

                                                                        </div>

                                                                        <script type="text/javascript">
                                                                            $comp({
                                                                                breadcrumbType: false,
                                                                                contentFlag: "true",
                                                                                contentWidth: "350",
                                                                                ctx: "",
                                                                                appId: "",
                                                                                id: "portalResBreadcrumb_nav-1617010986105",
                                                                                lib: ["js/portalResBreadcrumb/portalResBreadcrumb_nav"]
                                                                            });


                                                                        </script>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="c_portalResProduct_detail-16170120991416298"
                                                         class="c_portalResProduct_detail-01001001" loaded="true"
                                                         style="overflow: visible;">

                                                        <div class="e_stylebox e_ContentOrdinaryStyleBox-001 p_stylebox"
                                                             id="">

                                                            <div class="stylebox_content">

                                                                <!-- 商品名称属性项 -->
                                                                <div class="e_box d_ProductDetail p_Pr oductDetail"
                                                                     data-ename="产品详情框架">

                                                                    <div class="product_info">
                                                                        <!--左边结构-->

                                                                        <div class="info_left_box">
                                                                            <div class="info_left_title">
                                                                                <h2><?php echo $product['title']; ?></h2>
                                                                            </div>
                                                                            <div class="info_left_photos">
                                                                                <div class="main-image">
                                                                                    <img id="main-img" src="<?php echo cmf_get_image_url($product['photos'][0]['url']); ?>" alt="$product.photos[0]['name']">
                                                                                </div>
                                                                                <div class="thumbnail-gallery">
                                                                                    <ul class="thumbnail-gallery-list">
                                                                                        <?php if(is_array($product['photos']) || $product['photos'] instanceof \think\Collection || $product['photos'] instanceof \think\Paginator): if( count($product['photos'])==0 ) : echo "" ;else: foreach($product['photos'] as $key=>$vo): ?>
                                                                                            <li class="thumbnail-gallery-item <?php echo $key==0 ? 'active'  :  ''; ?>" data-main-src="<?php echo cmf_get_image_url($vo['url']); ?>">
                                                                                                <img src="<?php echo cmf_get_image_url($vo['url']); ?>" alt="<?php echo $vo['name']; ?>">
                                                                                            </li>
                                                                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                                    </ul>
                                                                                    <div class="proto-btn prev-btn">
                                                                                        <img class="prev-img" src="/themes/simpleboot3/public/assets/images/prev.png" alt="prev">
                                                                                        <img class="prev-img-active" style="display: none" src="/themes/simpleboot3/public/assets/images/prev-active.png" alt="prev">
                                                                                    </div>
                                                                                    <div class="proto-btn next-btn">
                                                                                        <img class="next-img" src="/themes/simpleboot3/public/assets/images/next.png" alt="next">
                                                                                        <img class="next-img-active" style="display: none" src="/themes/simpleboot3/public/assets/images/next-active.png" alt="next">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <!--右边结构-->
                                                                        <div class="info_right_box">
                                                                            <div class="info_right_mark">
                                                                                <span class="info_right_mark_title">
                                                                                    Authentication mark:
                                                                                </span>
                                                                                <?php if(is_array($product['authentication_mark']) || $product['authentication_mark'] instanceof \think\Collection || $product['authentication_mark'] instanceof \think\Paginator): if( count($product['authentication_mark'])==0 ) : echo "" ;else: foreach($product['authentication_mark'] as $key=>$vo): ?>
                                                                                <div class="info_right_mark_img">
                                                                                    <img src="<?php echo cmf_get_image_url($vo['url']); ?>" alt="<?php echo $vo['name']; ?>">
                                                                                </div>
                                                                                <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                            </div>
                                                                            <div class="info_right_apply">
                                                                                <span class="info_right_apply_title">Apply: </span>
                                                                                <?php echo $product['industry']; ?>
                                                                            </div>
                                                                            <div class="info_right_tips">
                                                                                The following options can be selected:
                                                                            </div>
                                                                            <div class="info_right_capacity">
                                                                                <div class="info_right_capacity_title">
                                                                                    Lifting capacity:
                                                                                </div>
                                                                                <ul class="info_right_capacity_list">
                                                                                    <?php if(is_array($product['lifting_capacity']) || $product['lifting_capacity'] instanceof \think\Collection || $product['lifting_capacity'] instanceof \think\Paginator): if( count($product['lifting_capacity'])==0 ) : echo "" ;else: foreach($product['lifting_capacity'] as $key=>$vo): ?>
                                                                                        <li class="info_right_capacity_list_item <?php echo $key==0 ? 'active'  :  ''; ?>" data-key="<?php echo $key; ?>">
                                                                                            <?php echo $vo; ?>
                                                                                        </li>
                                                                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                                </ul>
                                                                                <div class="clear_both"></div>


                                                                                <div class="info_right_height">
                                                                                    <div class="info_right_height_title">
                                                                                        Lifting height:
                                                                                    </div>
                                                                                    <div class="slider-container">
                                                                                        <div class="dual-range-slider">
                                                                                            <div id="minHandle" class="handle">
                                                                                                <div class="handle_text minHandle_text">
                                                                                                    <span id="minValue"><?php echo $product['min_lifting_height']; ?></span>m<div class="handle_text_arrow"></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div id="maxHandle" class="handle">
                                                                                                <div class="handle_text maxHandle_text">
                                                                                                    <span id="maxValue"><?php echo $product['max_lifting_height']; ?></span>m<div class="handle_text_arrow"></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="range-bar"></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="clear_both"></div>

                                                                                <?php if($product['min_span']!=0 && $product['max_span']!=0): ?>
                                                                                <div class="info_right_span">
                                                                                    <div class="info_right_span_title">
                                                                                        Span:
                                                                                    </div>
                                                                                    <div class="slider-container_span">
                                                                                        <div class="dual-range-slider_span">
                                                                                            <div id="minSpanHandle" class="handle_span">
                                                                                                <div class="handle_span_text minHandle_span_text">
                                                                                                    <span id="minSpanValue"><?php echo $product['min_span']; ?></span>m<div class="handle_span_text_arrow"></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div id="maxSpanHandle" class="handle_span">
                                                                                                <div class="handle_span_text maxHandle_span_text">
                                                                                                    <span id="maxSpanValue"><?php echo $product['max_span']; ?></span>m<div class="handle_span_text_arrow"></div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="range-bar_span"></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="clear_both"></div>
                                                                                <?php endif; ?>

                                                                                <div class="info_voltage">
                                                                                    <div class="info_voltage_title">
                                                                                        Voltage:
                                                                                    </div>
                                                                                    <div class="info_voltage_content">
                                                                                        <select class="info_select info_voltage_select">
                                                                                            <?php if(is_array($product_setting['operating_voltage']) || $product_setting['operating_voltage'] instanceof \think\Collection || $product_setting['operating_voltage'] instanceof \think\Paginator): if( count($product_setting['operating_voltage'])==0 ) : echo "" ;else: foreach($product_setting['operating_voltage'] as $key=>$vo): ?>
                                                                                                <option value="<?php echo $vo; ?>"><?php echo $vo; ?></option>
                                                                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="clear_both"></div>
                                                                                <div class="info_voltage">
                                                                                    <div class="info_voltage_title">
                                                                                        Hertz:
                                                                                    </div>
                                                                                    <div class="info_voltage_content">
                                                                                        <select class="info_select info_hertz_select">
                                                                                            <?php if(is_array($product_setting['operating_hertz']) || $product_setting['operating_hertz'] instanceof \think\Collection || $product_setting['operating_hertz'] instanceof \think\Paginator): if( count($product_setting['operating_hertz'])==0 ) : echo "" ;else: foreach($product_setting['operating_hertz'] as $key=>$vo): ?>
                                                                                                <option value="<?php echo $vo; ?>"><?php echo $vo; ?></option>
                                                                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="clear_both"></div>

                                                                                <div class="info_right_job">
                                                                                    <div class="info_right_job_title">
                                                                                        Job level:
                                                                                    </div>
                                                                                    <ul class="info_right_job_list">
                                                                                        <?php if(is_array($product['job_level']) || $product['job_level'] instanceof \think\Collection || $product['job_level'] instanceof \think\Paginator): if( count($product['job_level'])==0 ) : echo "" ;else: foreach($product['job_level'] as $key=>$vo): ?>
                                                                                            <li class="info_right_job_list_item <?php echo $key==0 ? 'active'  :  ''; ?>" data-key="<?php echo $key; ?>">
                                                                                                <?php echo $vo; ?>
                                                                                            </li>
                                                                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                                    </ul>
                                                                                </div>
                                                                                <div class="clear_both"></div>

                                                                                <div class="info_available">
                                                                                    <div class="info_available_title">
                                                                                        Sling available:
                                                                                    </div>
                                                                                    <ul class="info_available_list">
                                                                                        <?php if(is_array($product['sling_available']) || $product['sling_available'] instanceof \think\Collection || $product['sling_available'] instanceof \think\Paginator): if( count($product['sling_available'])==0 ) : echo "" ;else: foreach($product['sling_available'] as $key=>$vo): ?>
                                                                                            <li class="info_available_list_item" data-key="<?php echo $key; ?>">
                                                                                                <img src="<?php echo cmf_get_image_url($vo['url']); ?>" class="available_img" alt="">
                                                                                                <img src="<?php echo cmf_get_image_url($vo['active_url']); ?>" class="available_img_active" alt="">
                                                                                                <span class="info_available_list_item_title">
                                                                                                    <?php echo $vo['name']; ?>
                                                                                                </span>
                                                                                            </li>
                                                                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                                    </ul>
                                                                                </div>
                                                                                <div class="clear_both"></div>


                                                                                <div class="info_btn_wrap">
                                                                                    <div class="info_btn" id="inquiry">
                                                                                        INQUIRY
                                                                                    </div>
                                                                                    <div class="info_btn" onclick="window.location.href='/intro/16.html'">
                                                                                        CONTACT US
                                                                                    </div>
                                                                                    <div class="info_btn" onclick="window.location.href='<?php echo cmf_get_file_download_url($product['file']['url']); ?>'">
                                                                                        DOWNLOAD
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <!--推荐产品-->
                                                                        <div class="related_products">
                                                                            <div class="related_products_title">
                                                                                Related Products
                                                                            </div>
                                                                            <ul class="related_products_list">
                                                                                <?php if(is_array($recommended_list) || $recommended_list instanceof \think\Collection || $recommended_list instanceof \think\Paginator): if( count($recommended_list)==0 ) : echo "" ;else: foreach($recommended_list as $key=>$vo): ?>
                                                                                    <li class="related_products_list_item" onclick="location.href='/product_info/<?php echo $vo['id']; ?>.html'">
                                                                                        <div class="related_products_img_wrap"><img src="<?php echo cmf_get_image_url($vo['thumbnail']); ?>"></div>
                                                                                        <div class="related_products_list_item_title"><?php echo $vo['title']; ?></div>
                                                                                    </li>
                                                                                <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                            </ul>
                                                                        </div>

                                                                        <div class="info_content">
                                                                            <ul class="info_content_title">
                                                                                <li class="info_content_item active">
                                                                                    Product overview
                                                                                </li>
                                                                                <li class="info_content_item">
                                                                                    Application scenario
                                                                                </li>
                                                                                <li class="info_content_item">
                                                                                    certificate
                                                                                </li>
                                                                                <li class="info_content_item">
                                                                                    case
                                                                                </li>
                                                                            </ul>
                                                                            <div class="info_content_content">
                                                                                <div class="info_content_content_item">
                                                                                    <?php echo $product['overview']; ?>
                                                                                </div>
                                                                                <div class="info_content_content_item" style="display: none;">
                                                                                    <?php echo $product['scenario']; ?>
                                                                                </div>
                                                                                <div class="info_content_content_item" style="display: none;">
                                                                                    <ul class="info_content_content_certificate">
                                                                                        <?php if(is_array($product['certificate']) || $product['certificate'] instanceof \think\Collection || $product['certificate'] instanceof \think\Paginator): if( count($product['certificate'])==0 ) : echo "" ;else: foreach($product['certificate'] as $key=>$vo): ?>
                                                                                        <li class="info_content_content_certificate_item">
                                                                                            <div class="certificate_wrap"><img src="<?php echo cmf_get_image_url($vo['url']); ?>" alt=""></div>
                                                                                            <div class="info_content_content_certificate_item_title"><?php echo $vo['name']; ?></div>
                                                                                        </li>
                                                                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                                        <div class="clear_both"></div>
                                                                                    </ul>
                                                                                </div>
                                                                                <div class="info_content_content_item" style="display: none;">
                                                                                    <ul class="info_content_content_case">
                                                                                        <?php if(is_array($product['certificate']) || $product['certificate'] instanceof \think\Collection || $product['certificate'] instanceof \think\Paginator): if( count($product['certificate'])==0 ) : echo "" ;else: foreach($product['certificate'] as $key=>$vo): ?>
                                                                                            <li class="info_content_content_case_item">
                                                                                                <div class="case_wrap"><img src="<?php echo cmf_get_image_url($vo['url']); ?>" alt=""></div>
                                                                                                <div class="info_content_content_case_item_title"><?php echo $vo['name']; ?></div>
                                                                                            </li>
                                                                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                                                                        <div class="clear_both"></div>
                                                                                    </ul>
                                                                                </div>
                                                                            </div>
                                                                        </div>


                                                                    </div>
                                                                    <script type="text/javascript"
                                                                            src="/themes/simpleboot3/public/assets/js/KeyShotVR.js"></script>
                                                                    <script>$("div[id^='c_']").attr("loaded", "true")</script>
                                                                    <script>window._bd_share_config = {
                                                                        "common": {
                                                                            "bdSnsKey": {},
                                                                            "bdText": "",
                                                                            "bdMini": "2",
                                                                            "bdMiniList": false,
                                                                            "bdPic": "",
                                                                            "bdStyle": "0",
                                                                            "bdSize": "16"
                                                                        }, "share": {}
                                                                    };
                                                                    with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>


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
                                        <div id="w_grid-1617010986085" class="w_grid-000">
                                            <div class="w_grid signal">
                                                <div class="e_box e_box-000 p_gridbox">
                                                    <div id="content_box-1617010986085-0"
                                                         class="e_box e_box-000 d_gridCell_0 p_gridCell"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="feedback_wrap">
    <div class="feedback_container">
        <div class="feedback_content">
            <div class="feedback_title">
                <h2>Develop your lifting solution</h2>
                <p class="feedback_title_description">Contact us today by email at :<a href="javascript:"><?php echo $site_info['email']; ?></a>, or fill out the form below.</p>
            </div>
            <div class="feedback_form">
                <form action="" method="post">
                    <div class="feedback_form_name">
                        <input type="text" id="feedback-name" name="name" placeholder="Name:" >
                    </div>
                    <div class="feedback_form_phone">
                      <input type="text" id="feedback-phone" name="phone" placeholder="Phone / WhatsApp:" >
                    </div>
                    <div class="feedback_form_email">
                      <input type="text" id="feedback-email" name="email" placeholder="E-mail:" >
                    </div>
                    <div class="feedback_form_content">
                      <textarea name="content" id="feedback-content" placeholder="Message:" ></textarea>
                    </div>
                    <div class="feedback_form_submit">
                        <button id="feedback-submit" type="button">SUBMIT</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    //全局变量
    var GV = {
        ROOT: "/",
        WEB_ROOT: "/",
        JS_ROOT: "static/js/",
    };
</script>
<script src="/static/js/wind.js"></script>
<!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/themes/simpleboot3/public/assets/js/bootstrap.min.js"></script>
    <script src="/static/js/frontend.js"></script>
    <script src="/static/js/wind.js"></script>
	<script>
	$(function(){
        ;(function () {
            //全局ajax处理
            $.ajaxSetup({
                complete: function (jqXHR) {
                },
                data: {},
                error: function (jqXHR, textStatus, errorThrown) {
                    //请求失败处理
                }
            });

            if ($.browser && $.browser.msie) {
                //ie 都不缓存
                $.ajaxSetup({
                    cache: false
                });
            }

            //不支持placeholder浏览器下对placeholder进行处理
            if (document.createElement('input').placeholder !== '') {
                $('[placeholder]').focus(function () {
                    var input = $(this);
                    if (input.val() == input.attr('placeholder')) {
                        input.val('');
                        input.removeClass('placeholder');
                    }
                }).blur(function () {
                    var input = $(this);
                    if (input.val() == '' || input.val() == input.attr('placeholder')) {
                        input.addClass('placeholder');
                        input.val(input.attr('placeholder'));
                    }
                }).blur().parents('form').submit(function () {
                    $(this).find('[placeholder]').each(function () {
                        var input = $(this);
                        if (input.val() == input.attr('placeholder')) {
                            input.val('');
                        }
                    });
                });
            }

            // 所有加了dialog类名的a链接，自动弹出它的href
            if ($('a.js-dialog').length) {
                Wind.css('artDialog');
                Wind.use('artDialog', 'iframeTools', function () {
                    $('.js-dialog').on('click', function (e) {
                        e.preventDefault();
                        var $this = $(this);
                        art.dialog.open($(this).prop('href'), {
                            close: function () {
                                $this.focus(); // 关闭时让触发弹窗的元素获取焦点
                                return true;
                            },
                            title: $this.prop('title')
                        });
                    }).attr('role', 'button');

                });
            }

            // 所有的ajax form提交,由于大多业务逻辑都是一样的，故统一处理
            var ajaxForm_list = $('form.js-ajax-form');
            if (ajaxForm_list.length) {
                Wind.css('artDialog');
                Wind.use('ajaxForm', 'artDialog', 'noty', 'validate', function () {
                    var $btn;
                    $('button.js-ajax-submit').on('click', function (e) {
                        var btn = $(this), form = btn.parents('form.js-ajax-form');
                        $btn = btn;
                        if (btn.data("loading")) {
                            return;
                        }
                        //批量操作 判断选项
                        if (btn.data('subcheck')) {
                            btn.parent().find('span').remove();
                            if (form.find('input.js-check:checked').length) {
                                btn.data('subcheck', false);
                            } else {
                                $('<span class="tips_error">请至少选择一项</span>').appendTo(btn.parent()).fadeIn('fast');
                                return false;
                            }
                        }


                        var msg = btn.data('msg');
                        if (msg) {
                            art.dialog({
                                id: 'warning',
                                icon: 'warning',
                                content: msg,
                                cancelVal: '关闭',
                                cancel: function () {
                                    //btn.data('subcheck', false);
                                    //btn.click();
                                },
                                ok: function () {
                                    btn.data('msg', false);
                                    btn.click();
                                    btn.data('msg', msg);
                                }
                            });

                            return false;
                        }

                        //ie处理placeholder提交问题
                        if ($.browser && $.browser.msie) {
                            form.find('[placeholder]').each(function () {
                                var input = $(this);
                                if (input.val() == input.attr('placeholder')) {
                                    input.val('');
                                }
                            });
                        }
                    });

                    ajaxForm_list.each(function () {
                        $(this).validate({
                            //是否在获取焦点时验证
                            //onfocusout : false,
                            //是否在敲击键盘时验证
                            //onkeyup : false,
                            //当鼠标点击时验证
                            //onclick : false,
                            //给未通过验证的元素加效果,闪烁等
                            highlight: function (element, errorClass, validClass) {
                                if (element.type === "radio") {
                                    this.findByName(element.name).addClass(errorClass).removeClass(validClass);
                                } else {
                                    var $element = $(element);
                                    $element.addClass(errorClass).removeClass(validClass);
                                    $element.parent().addClass("has-error");//bootstrap3表单
                                    $element.parents('.control-group').addClass("error");//bootstrap2表单

                                }
                            },
                            unhighlight: function (element, errorClass, validClass) {
                                if (element.type === "radio") {
                                    this.findByName(element.name).removeClass(errorClass).addClass(validClass);
                                } else {
                                    var $element = $(element);
                                    $element.removeClass(errorClass).addClass(validClass);
                                    $element.parent().removeClass("has-error");//bootstrap3表单
                                    $element.parents('.control-group').removeClass("error");//bootstrap2表单
                                }
                            },
                            showErrors: function (errorMap, errorArr) {
                                var i, elements, error;
                                for (i = 0; this.errorList[i]; i++) {
                                    error = this.errorList[i];
                                    if (this.settings.highlight) {
                                        this.settings.highlight.call(this, error.element, this.settings.errorClass, this.settings.validClass);
                                    }
                                    //this.showLabel( error.element, error.message );
                                }
                                if (this.errorList.length) {
                                    //this.toShow = this.toShow.add( this.containers );
                                }
                                if (this.settings.success) {
                                    for (i = 0; this.successList[i]; i++) {
                                        //this.showLabel( this.successList[ i ] );
                                    }
                                }
                                if (this.settings.unhighlight) {
                                    for (i = 0, elements = this.validElements(); elements[i]; i++) {
                                        this.settings.unhighlight.call(this, elements[i], this.settings.errorClass, this.settings.validClass);
                                    }
                                }
                                this.toHide = this.toHide.not(this.toShow);
                                this.hideErrors();
                                this.addWrapper(this.toShow).show();
                            },
                            submitHandler: function (form) {
                                var $form = $(form);
                                $form.ajaxSubmit({
                                    url: $btn.data('action') ? $btn.data('action') : $form.attr('action'), //按钮上是否自定义提交地址(多按钮情况)
                                    dataType: 'json',
                                    beforeSubmit: function (arr, $form, options) {

                                        $btn.data("loading", true);
                                        var text = $btn.text();

                                        //按钮文案、状态修改
                                        $btn.text(text + '...').prop('disabled', true).addClass('disabled');
                                    },
                                    success: function (data, statusText, xhr, $form) {

                                        function _refresh() {
                                            if (data.url) {
                                                //返回带跳转地址
                                                window.location.href = data.url;
                                            } else {
                                                if (data.code == 1) {
                                                    //刷新当前页
                                                    reloadPage(window);
                                                }
                                            }
                                        }

                                        var text = $btn.text();

                                        //按钮文案、状态修改
                                        $btn.removeClass('disabled').prop('disabled', false).text(text.replace('...', '')).parent().find('span').remove();
                                        if (data.code == 1) {
                                            if ($btn.data('success')) {
                                                var successCallback = $btn.data('success');
                                                window[successCallback](data, statusText, xhr, $form);
                                                return;
                                            }
                                            noty({
                                                text: data.msg,
                                                type: 'success',
                                                layout: 'topCenter',
                                                modal: true,
                                                // animation: {
                                                //     open: 'animated bounceInDown', // Animate.css class names
                                                //     close: 'animated bounceOutUp', // Animate.css class names
                                                // },
                                                timeout: 800,
                                                callback: {
                                                    afterClose: function () {
                                                        if ($btn.data('refresh') == undefined || $btn.data('refresh')) {

                                                            if ($btn.data('success_refresh')) {
                                                                var successRefreshCallback = $btn.data('success_refresh');
                                                                window[successRefreshCallback](data, statusText, xhr, $form);
                                                                return;
                                                            } else {
                                                                _refresh();
                                                            }

                                                        }
                                                    }
                                                }
                                            }).show();
                                            $(window).focus();
                                        } else if (data.code == 0) {
                                            var $verify_img = $form.find(".verify_img");
                                            if ($verify_img.length) {
                                                $verify_img.attr("src", $verify_img.attr("src") + "&refresh=" + Math.random());
                                            }

                                            var $verify_input = $form.find("[name='verify']");
                                            $verify_input.val("");

                                            //$('<span class="tips_error">' + data.msg + '</span>').appendTo($btn.parent()).fadeIn('fast');
                                            $btn.removeProp('disabled').removeClass('disabled');

                                            noty({
                                                text: data.msg,
                                                type: 'error',
                                                layout: 'topCenter',
                                                modal: true,
                                                // animation: {
                                                //     open: 'animated bounceInDown', // Animate.css class names
                                                //     close: 'animated bounceOutUp', // Animate.css class names
                                                // },
                                                timeout: 800,
                                                callback: {
                                                    afterClose: function () {
                                                        _refresh();
                                                    }
                                                }
                                            }).show();
                                            $(window).focus();
                                        }


                                    },
                                    error: function (xhr, e, statusText) {
                                        art.dialog({
                                            id: 'warning',
                                            icon: 'warning',
                                            content: statusText,
                                            cancelVal: '关闭',
                                            cancel: function () {
                                                reloadPage(window);
                                            },
                                            ok: function () {
                                                reloadPage(window);
                                            }
                                        });

                                    },
                                    complete: function () {
                                        $btn.data("loading", false);
                                    }
                                });
                            }
                        });
                    });

                });
            }

            //dialog弹窗内的关闭方法
            $('#js-dialog-close').on('click', function (e) {
                e.preventDefault();
                try {
                    art.dialog.close();
                } catch (err) {
                    Wind.css('artDialog');
                    Wind.use('artDialog', 'iframeTools', function () {
                        art.dialog.close();
                    });
                }
                ;
            });

            //所有的删除操作，删除数据后刷新页面
            if ($('a.js-ajax-delete').length) {
                Wind.css('artDialog');
                Wind.use('artDialog', 'noty', function () {
                    $('body').on('click', '.js-ajax-delete', function (e) {
                        e.preventDefault();
                        var $_this = this,
                            $this = $($_this),
                            href = $this.data('href'),
                            refresh = $this.data('refresh'),
                            msg = $this.data('msg');
                        href = href ? href : $this.attr('href');

                        art.dialog({
                            title: false,
                            icon: 'question',
                            content: msg ? msg : '确定要删除吗？',
                            follow: $_this,
                            close: function () {
                                $_this.focus(); //关闭时让触发弹窗的元素获取焦点
                                return true;
                            },
                            okVal: "确定",
                            ok: function () {
                                $.ajax({
                                    url: href,
                                    type: 'post',
                                    dataType: 'JSON',
                                    success: function (data) {
                                        if (data.code == '1') {
                                            noty({
                                                text: data.msg,
                                                type: 'success',
                                                layout: 'topCenter',
                                                modal: true,
                                                // animation: {
                                                //     open: 'animated bounceInDown', // Animate.css class names
                                                //     close: 'animated bounceOutUp', // Animate.css class names
                                                // },
                                                timeout: 800,
                                                callback: {
                                                    afterClose: function () {
                                                        if (refresh == undefined || refresh) {
                                                            if (data.url) {
                                                                //返回带跳转地址
                                                                window.location.href = data.url;
                                                            } else {
                                                                //刷新当前页
                                                                reloadPage(window);
                                                            }
                                                        }
                                                    }
                                                }
                                            }).show();

                                        } else if (data.code == '0') {
                                            //art.dialog.alert(data.info);
                                            //alert(data.info);//暂时处理方案
                                            art.dialog({
                                                content: data.msg,
                                                icon: 'warning',
                                                ok: function () {
                                                    this.title(data.msg);
                                                    return true;
                                                }
                                            });
                                        }
                                    }
                                })
                            },
                            cancelVal: '关闭',
                            cancel: true
                        });
                    });

                });
            }


            Wind.use('artDialog', 'noty', function () {
                $('body').on('click', '.js-ajax-dialog-btn', function (e) {
                    e.preventDefault();
                    var $_this = this,
                        $this = $($_this),
                        href = $this.data('href'),
                        refresh = $this.data('refresh'),
                        msg = $this.data('msg'),
                        waitMsg = $this.data('wait-msg');
                    href = href ? href : $this.attr('href');
                    if (!msg) {
                        msg = "您确定要进行此操作吗？";
                    }
                    art.dialog({
                        title: false,
                        icon: 'question',
                        content: msg,
                        follow: $_this,
                        close: function () {
                            $_this.focus(); //关闭时让触发弹窗的元素获取焦点
                            return true;
                        },
                        ok: function () {
                            var waitNoty;
                            if (waitMsg) {
                                waitNoty = noty({
                                    text: waitMsg,
                                    type: 'information',
                                    layout: 'topCenter',
                                    modal: true,
                                    // animation: {
                                    //     open: 'animated bounceInDown', // Animate.css class names
                                    //     close: 'animated bounceOutUp', // Animate.css class names
                                    // },
                                    timeout: false
                                });
                            }
                            $.ajax({
                                url: href,
                                type: 'post',
                                dataType: 'JSON',
                                success: function (data) {
                                    if (waitNoty) {
                                        waitNoty.close();
                                    }
                                    if (data.code == 1) {
                                        noty({
                                            text: data.msg,
                                            type: 'success',
                                            layout: 'topCenter',
                                            modal: true,
                                            // animation: {
                                            //     open: 'animated bounceInDown', // Animate.css class names
                                            //     close: 'animated bounceOutUp', // Animate.css class names
                                            // },
                                            timeout: 800,
                                            callback: {
                                                afterClose: function () {
                                                    if (refresh == undefined || refresh) {
                                                        if (data.url) {
                                                            //返回带跳转地址
                                                            window.location.href = data.url;
                                                        } else {
                                                            //刷新当前页
                                                            reloadPage(window);
                                                        }
                                                    }
                                                }
                                            }
                                        });

                                    } else if (data.code == 0) {
                                        //art.dialog.alert(data.info);
                                        art.dialog({
                                            content: data.msg,
                                            icon: 'warning',
                                            ok: function () {
                                                this.title(data.msg);
                                                return true;
                                            }
                                        });
                                    }
                                },
                                error: function () {
                                    if (waitNoty) {
                                        waitNoty.close();
                                    }
                                }

                            })
                        },
                        cancelVal: '关闭',
                        cancel: true
                    });
                });

            });

            if ($('a.js-ajax-btn').length) {
                Wind.use('noty', function () {
                    $('.js-ajax-btn').on('click', function (e) {
                        e.preventDefault();
                        var $_this = this,
                            $this = $($_this),
                            href = $this.data('href'),
                            msg = $this.data('msg');
                        refresh = $this.data('refresh');
                        href = href ? href : $this.attr('href');
                        refresh = refresh == undefined ? 1 : refresh;


                        $.ajax({
                            url: href,
                            type: 'post',
                            dataType: 'JSON',
                            success: function (data) {
                                if (data.code == 1) {
                                    noty({
                                        text: data.msg,
                                        type: 'success',
                                        layout: 'center',
                                        callback: {
                                            afterClose: function () {
                                                if (data.url) {
                                                    location.href = data.url;
                                                    return;
                                                }

                                                if (refresh || refresh == undefined) {
                                                    reloadPage(window);
                                                }
                                            }
                                        }
                                    });
                                } else if (data.code == 0) {
                                    noty({
                                        text: data.msg,
                                        type: 'error',
                                        layout: 'center',
                                        callback: {
                                            afterClose: function () {
                                                if (data.url) {
                                                    location.href = data.url;
                                                }
                                            }
                                        }
                                    });
                                }
                            }
                        });

                    });

                });
            }


            /*复选框全选(支持多个，纵横双控全选)。
             *实例：版块编辑-权限相关（双控），验证机制-验证策略（单控）
             *说明：
             *	"js-check"的"data-xid"对应其左侧"js-check-all"的"data-checklist"；
             *	"js-check"的"data-yid"对应其上方"js-check-all"的"data-checklist"；
             *	全选框的"data-direction"代表其控制的全选方向(x或y)；
             *	"js-check-wrap"同一块全选操作区域的父标签class，多个调用考虑
             */

            if ($('.js-check-wrap').length) {
                var total_check_all = $('input.js-check-all');

                //遍历所有全选框
                $.each(total_check_all, function () {
                    var check_all = $(this),
                        check_items;

                    //分组各纵横项
                    var check_all_direction = check_all.data('direction');
                    check_items = $('input.js-check[data-' + check_all_direction + 'id="' + check_all.data('checklist') + '"]').not(":disabled");
                    if ($('.js-check-all').is(':checked')) {
                        check_items.prop('checked', true);
                    }
                    //点击全选框
                    check_all.change(function (e) {
                        var check_wrap = check_all.parents('.js-check-wrap'); //当前操作区域所有复选框的父标签（重用考虑）

                        if ($(this).prop('checked')) {
                            //全选状态
                            check_items.prop('checked', true);

                            //所有项都被选中
                            if (check_wrap.find('input.js-check').length === check_wrap.find('input.js-check:checked').length) {
                                check_wrap.find(total_check_all).prop('checked', true);
                            }

                        } else {
                            //非全选状态
                            check_items.removeProp('checked');

                            check_wrap.find(total_check_all).removeProp('checked');

                            //另一方向的全选框取消全选状态
                            var direction_invert = check_all_direction === 'x' ? 'y' : 'x';
                            check_wrap.find($('input.js-check-all[data-direction="' + direction_invert + '"]')).removeProp('checked');
                        }

                    });

                    //点击非全选时判断是否全部勾选
                    check_items.change(function () {

                        if ($(this).prop('checked')) {

                            if (check_items.filter(':checked').length === check_items.length) {
                                //已选择和未选择的复选框数相等
                                check_all.prop('checked', true);
                            }

                        } else {
                            check_all.removeProp('checked');
                        }

                    });


                });

            }

            //日期选择器
            var dateInput = $("input.js-date");
            if (dateInput.length) {
                Wind.use('datePicker', function () {
                    dateInput.datePicker();
                });
            }

            //日期+时间选择器
            var dateTimeInput = $("input.js-datetime");
            if (dateTimeInput.length) {
                Wind.use('datePicker', function () {
                    dateTimeInput.datePicker({
                        time: true
                    });
                });
            }

            var yearInput = $("input.js-year");
            if (yearInput.length) {
                Wind.use('datePicker', function () {
                    yearInput.datePicker({
                        startView: 'decade',
                        minView: 'decade',
                        format: 'yyyy',
                        autoclose: true
                    });
                });
            }

            // bootstrap年选择器
            var bootstrapYearInput = $("input.js-bootstrap-year")
            if (bootstrapYearInput.length) {
                Wind.css('bootstrapDatetimePicker');
                Wind.use('bootstrapDatetimePicker', function () {
                    bootstrapYearInput.datetimepicker({
                        language: 'zh-CN',
                        format: 'yyyy',
                        minView: 'decade',
                        startView: 'decade',
                        todayBtn: 1,
                        autoclose: true
                    });
                });
            }

            // bootstrap日期选择器
            var bootstrapDateInput = $("input.js-bootstrap-date")
            if (bootstrapDateInput.length) {
                Wind.css('bootstrapDatetimePicker');
                Wind.use('bootstrapDatetimePicker', function () {
                    bootstrapDateInput.datetimepicker({
                        language: 'zh-CN',
                        format: 'yyyy-mm-dd',
                        minView: 'month',
                        todayBtn: 1,
                        autoclose: true
                    });
                });
            }

            // bootstrap年月份选择器
            var bootstrapYearMonthInput = $("input.js-bootstrap-year-month");
            if (bootstrapYearMonthInput.length) {
                Wind.css('bootstrapDatetimePicker');
                Wind.use('bootstrapDatetimePicker', function () {
                    bootstrapYearMonthInput.datetimepicker({
                        language: 'zh-CN',
                        format: 'yyyy-mm',
                        minView: 'year',
                        startView: 'decade',
                        todayBtn: 1,
                        autoclose: true
                    });
                });
            }

            // bootstrap日期选择器日期+时间选择器
            var bootstrapDateTimeInput = $("input.js-bootstrap-datetime");
            if (bootstrapDateTimeInput.length) {
                Wind.css('bootstrapDatetimePicker');
                Wind.use('bootstrapDatetimePicker', function () {
                    bootstrapDateTimeInput.datetimepicker({
                        language: 'zh-CN',
                        format: 'yyyy-mm-dd hh:ii',
                        todayBtn: 1,
                        autoclose: true
                    });
                });
            }

            //tab
            var tabs_nav = $('ul.js-tabs-nav');
            if (tabs_nav.length) {
                Wind.use('tabs', function () {
                    tabs_nav.tabs('.js-tabs-content > div');
                });
            }

            //地址联动
            var $js_address_select = $('.js-address-select');
            if ($js_address_select.length > 0) {
                $('.js-address-country-select,.js-address-province-select,.js-address-city-select,.js-address-district-select').change(function () {
                    var $this = $(this);
                    var id = $this.val();
                    var $child_area_select;
                    var $this_js_address_select = $this.parents('.js-address-select');
                    if ($this.is('.js-address-country-select')) {
                        $child_area_select = $this_js_address_select.find('.js-address-province-select');
                        $this_js_address_select.find('.js-address-city-select').hide();
                    } else if ($this.is('.js-address-province-select')) {
                        $child_area_select = $this_js_address_select.find('.js-address-city-select');
                        $this_js_address_select.find('.js-address-district-select').hide();
                    } else if ($this.is('.js-address-city-select')) {
                        $child_area_select = $this_js_address_select.find('.js-address-district-select');
                        $this_js_address_select.find('.js-address-town-select').hide();
                    } else {
                        $child_area_select = $this_js_address_select.find('.js-address-town-select');
                    }

                    var empty_option = '<option class="js-address-empty-option" value="">' + $child_area_select.find('.js-address-empty-option').text() + '</option>';
                    $child_area_select.html(empty_option);

                    var child_area_html = $this.data('childarea' + id);
                    if (child_area_html) {
                        $child_area_select.show();
                        $child_area_select.html(child_area_html);
                        return;
                    }

                    var isCountry = 0;
                    if ($this.is('.js-address-country-select')) {
                        isCountry = 1;
                    }

                    $.ajax({
                        url: $this_js_address_select.data('url'),
                        type: 'POST',
                        dataType: 'JSON',
                        data: {id: id, is_country: isCountry},
                        success: function (data) {
                            if (data.code == 1) {
                                if (data.data.areas.length > 0) {
                                    var html = [empty_option];

                                    $.each(data.data.areas, function (i, area) {
                                        var area_html = '<option value="[id]">[name]</option>';
                                        area_html     = area_html.replace('[name]', area.name);
                                        area_html     = area_html.replace('[id]', area.id);
                                        html.push(area_html);
                                    });
                                    html = html.join('', html);
                                    $this.data('childarea' + id, html);
                                    $child_area_select.html(html);
                                    $child_area_select.show();
                                } else {
                                    $child_area_select.hide();

                                }
                            }
                        },
                        error: function () {

                        },
                        complete: function () {

                        }
                    });
                });

            }
            //地址联动end
            Wind.css('artDialog');
            Wind.use('artDialog', 'noty', function () {
                $('body').on('click', '.js-click2call-btn', function (e) {
                    e.preventDefault();
                    var $_this = this,
                        $this = $($_this),
                        title = $this.data('title');
                    title = title ? title:'点击下面链接,直接拨打电话';
                    art.dialog({
                        title: title,
                        icon: 'question',
                        content: $this.next('.js-click2call-mobiles').html(),
                        follow: $_this,
                        close: function () {
                            $_this.focus(); //关闭时让触发弹窗的元素获取焦点
                            return true;
                        },
                        cancelVal: '关闭',
                        cancel: true
                    });
                });
            });

        })();

//重新刷新页面，使用location.reload()有可能导致重新提交
        function reloadPage(win) {
            var location = win.location;
            location.href = location.pathname + location.search;
        }

        /**
         * 页面跳转
         * @param url 要打开的页面地址
         */
        function redirect(url) {
            location.href = url;
        }



    });
	</script>


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
                                                style="font-family:微软雅黑">Hotline</span></span></span>
                                        </p>

                                        <p><a href="tel:<?php echo $site_info['sale_tel']; ?>"><span
                                                style="font-size:26px"><span
                                                style="font-family:arial,helvetica,sans-serif"><span
                                                style="color:#FFFFFF"><?php echo $site_info['sale_tel']; ?></span></span></span></a>
                                        </p>
                                    </div>
                                </div>
                                <div id="w_common_text-1616830369921" class="reset_style">
                                    <div>
                                        <p><span style="color:#FFFFFF"><span style="font-size:14px"><span
                                                style="font-family:微软雅黑">E-mail</span></span></span>
                                        </p>

                                        <p><a href="javascript:"><span
                                                style="font-size:26px"><span
                                                style="font-family:arial,helvetica,sans-serif"><span
                                                style="color:#FFFFFF"><?php echo $site_info['email']; ?></span></span></span></a>
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
                                                                <img src="/themes/simpleboot3/public/assets/images/ins.png"
                                                                     alt="<?php echo $site_info['site_gwa']; ?>"
                                                                     title="<?php echo $site_info['site_gwa']; ?>"
                                                                     width="40px" height="40px">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="content_box-1616830617301-1"
                                                 class="e_box e_box-000 d_gridCell_1 p_gridCell">
                                                <div id="w_fimg-1617159683507" class="w_fimg-001">
                                                    <div class="w_img animated  ">
                                                        <div class="e_box e_box-000 p_box">
                                                            <div class="e_image e_DImage-001 p_dimage">
                                                                <img src="/themes/simpleboot3/public/assets/images/facebook.png"
                                                                     alt="<?php echo $site_info['site_gwa']; ?>"
                                                                     title="<?php echo $site_info['site_gwa']; ?>"
                                                                     width="100%" height="100%">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="content_box-1616830617301-2"
                                                 class="e_box e_box-000 d_gridCell_2 p_gridCell">
                                                <div id="w_fimg-1616830641892" class="w_fimg-001">
                                                    <div class="w_img animated  ">
                                                        <div class="e_box e_box-000 p_box">
                                                            <div class="e_image e_DImage-001 p_dimage">
                                                                <img src="/themes/simpleboot3/public/assets/images/youtubi.png"
                                                                     alt="<?php echo $site_info['site_gwa']; ?>"
                                                                     title="<?php echo $site_info['site_gwa']; ?>"
                                                                     width="100%" height="100%">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="content_box-1616830617301-3"
                                                 class="e_box e_box-000 d_gridCell_2 p_gridCell">
                                                <div id="w_fimg-1616830641893" class="w_fimg-001">
                                                    <div class="w_img animated  ">
                                                        <div class="e_box e_box-000 p_box">
                                                            <div class="e_image e_DImage-001 p_dimage">
                                                                <img src="/themes/simpleboot3/public/assets/images/twitter.png"
                                                                     alt="<?php echo $site_info['site_gwa']; ?>"
                                                                     title="<?php echo $site_info['site_gwa']; ?>"
                                                                     width="100%" height="100%">
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
        </div>
    </div>
</div>

<!--弹窗-->
<div class="popover_wrap" style="display: none">
    <div class="popover_container">
        <div class = popover_close>
            <img src="/themes/simpleboot3/public/assets/images/close.png" alt="">
        </div>
        <div class="popover_content">
            <div class="popover_title">
                <h2>Develop your lifting solution</h2>
                <p class="popover_title_description">Contact us today by email at :<a href="javascript:">info@weihuaheavycrane.com</a>, or fill out the form below.</p>
            </div>
            <div class="popover_form">
                <form method="post">
                    <div class="popover_form_name">
                        <input id="popover-name" type="text" name="name" placeholder="Name:" >
                    </div>
                    <div class="popover_form_phone">
                        <input id="popover-phone" type="text" name="phone" placeholder="Phone / WhatsApp:" >
                    </div>
                    <div class="popover_form_email">
                        <input id="popover-email" type="text" name="email" placeholder="E-mail:" >
                    </div>
                    <div class="popover_form_content">
                        <textarea id="popover-content" name="content" placeholder="Message:" ></textarea>
                    </div>
                    <div class="popover_form_submit">
                        <input name="product_id" id="product-id" style="display: none" value="<?php echo $product['id']; ?>">
                        <button id="popover-submit" type="button">SUBMIT</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/themes/simpleboot3/public/assets/js/product_info.js"></script>
<script type="text/javascript" src="/themes/simpleboot3/public/assets/js/response.js"></script>
</body>
</html>
<?php /*a:4:{s:79:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/portal\\index.html";i:1731574677;s:77:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\head.html";i:1730952036;s:76:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\nav.html";i:1731576087;s:77:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\foot.html";i:1731576423;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title><?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?></title>
    <meta name="keywords" content="<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
    <meta name="description"
          content="<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
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


    <link href="/themes/simpleboot3/public/assets/css/page_impt_Home.css" rel="stylesheet" type="text/css">
</head>
<body data-pageid="80232ec1-fa9e-4bba-81eb-1c60052657e5" data-layout="flow"
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
                                    <div id="w_grid-1614152818809" class="w_grid-000">
                                        <div class="w_grid signal">
                                            <div class="e_box e_box-000 p_gridbox">
                                                <div id="content_box-1614152818809-0"
                                                     class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                    <div id="c_portalResEbizads_banner-16237175821954808"
                                                         class="c_portalResEbizads_banner-01001" loaded="true"
                                                         style="overflow: visible;">

                                                        <div class="bannerBox" style="height: 517px;">
                                                            <div class="swiper-container wyz-banner-container swiper-container-horizontal">
                                                                <div class="swiper-wrapper"
                                                                     style="transform: translate3d(-3822px, 0px, 0px); transition-duration: 0ms;">

                                                                    <?php
     $__SLIDE_ITEMS__ = \app\admin\service\ApiService::slides(1);
if(is_array($__SLIDE_ITEMS__) || $__SLIDE_ITEMS__ instanceof \think\Collection || $__SLIDE_ITEMS__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__SLIDE_ITEMS__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

                                                                        <div class="swiper-slide swiper-slide-active"
                                                                             data-swiper-slide-index="<?php echo $key; ?>"
                                                                             style="width: 1911px;">
                                                                            <div class="content">
                                                                                <img src="<?php echo cmf_get_image_url($vo['image']); ?>"
                                                                                     class="pc_pic scalePic"
                                                                                     title="<?php echo $vo['title']; ?>|default=''}"
                                                                                     alt="<?php echo $vo['title']; ?>|default=''}">
                                                                            </div>
                                                                        </div>
                                                                    
<?php endforeach; endif; else: echo "" ;endif; ?>
                                                                </div>
                                                        </div>

                                                        <script>

                                                            var mySwiper = new Swiper('.wyz-banner-container', {
                                                                direction: 'horizontal', // 垂直切换选项
                                                                autoplay: {
                                                                    delay: 8000,
                                                                    stopOnLastSlide: false,
                                                                    disableOnInteraction: false,
                                                                },
                                                                speed: 1000,
                                                                loop: true,
                                                                // 前进后退按钮
                                                                navigation: {
                                                                    nextEl: '.wyz-banner-container .btn-next',
                                                                    prevEl: '.wyz-banner-container .btn-prev',
                                                                },
                                                                // 分页
                                                                pagination: {
                                                                    el: '.wyz-banner-container .pagination',
                                                                    // 点击控制轮播
                                                                    clickable: true,
                                                                }
                                                            })
                                                            $("div[id^='c_portalResEbizads_banner']").attr("loaded", "true");
                                                                $(function () {
                                                                var id = "portalResEbizads_banner-16237175821954808"  // 组件ID
                                                                var scp = $compCl.getScope(id)  // 组件实例

                                                                require([
                                                                    "wgt_util",
                                                                    "wgt_readyload",
                                                                    "jquery.mediaQuery",
                                                                    "swiper4.4.2",
                                                                ], function (util, ready) {
                                                                    alert('112')
                                                                    // swiper
                                                                    new _Swiper4('#c_portalResEbizads_banner-16237175821954808 .wyz-banner-container', {
                                                                        autoplay: {
                                                                            delay: 8000,
                                                                            stopOnLastSlide: false,
                                                                            disableOnInteraction: false,
                                                                        },
                                                                        speed: 1000,
                                                                        loop: true,
                                                                        // 前进后退按钮
                                                                        navigation: {
                                                                            nextEl: '#c_portalResEbizads_banner-16237175821954808 .btn-next ',
                                                                            prevEl: '#c_portalResEbizads_banner-16237175821954808 .btn-prev ',
                                                                        },
                                                                        // 分页
                                                                        pagination: {
                                                                            el: '#c_portalResEbizads_banner-16237175821954808 .pagination',
                                                                            // 点击控制轮播
                                                                            clickable: true,
                                                                        },
                                                                        on: {
                                                                            init: change1,
                                                                            autoplay: change1,
                                                                            click: change1,
                                                                            resize: change1,
                                                                        }

                                                                    });

                                                                    function change1() {
                                                                        var idx = this.activeIndex,
                                                                            H;
                                                                        if (document.body.clientWidth > 768) {
                                                                            H = $('#c_portalResEbizads_banner-16237175821954808 .bannerBox').find('.swiper-slide').eq(idx).find(".pc_pic").height() - 20;
                                                                        } else {
                                                                            H = $('#c_portalResEbizads_banner-16237175821954808 .bannerBox').find('.swiper-slide').eq(idx).find(".mo_pic").height() - 20;
                                                                        }
                                                                        $('#c_portalResEbizads_banner-16237175821954808 .bannerBox').height(H);
                                                                    }


                                                                })

                                                            })
                                                        </script>
                                                        <input class="requsetParam" type="hidden" value="">
                                                        <input type="hidden" class="requsetID" data-ename="可视化配置"
                                                               value="&amp;columnId=1">
                                                    </div>
                                                    <div id="w_grid-1616831567970" class="w_grid-000">
                                                        <div class="w_grid signal">
                                                            <div class="e_box e_box-000 p_gridbox">
                                                                <div id="content_box-1616831567970-0"
                                                                     class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                                    <div id="w_grid-1616831570977" class="w_grid-003">
                                                                        <div class="w_grid ">
                                                                            <div class="e_box e_box-000 p_gridbox">
                                                                                <div class="index_content">
                                                                                    <ul class="index_content_ul">
                                                                                        <li class="index_content_li">
                                                                                            <a href="/intro/4.html">
                                                                                                <img class="index_content_img" src="/themes/simpleboot3/public/assets/images/about.png">
                                                                                                <img class="index_content_img_active" src="/themes/simpleboot3/public/assets/images/about-active.png">
                                                                                            </a>
                                                                                        </li>
                                                                                        <li class="index_content_li">
                                                                                            <a href="/intro/11.html">
                                                                                                <img class="index_content_img" src="/themes/simpleboot3/public/assets/images/culture.png">
                                                                                                <img class="index_content_img_active" src="/themes/simpleboot3/public/assets/images/culture-active.png">
                                                                                            </a>
                                                                                        </li>
                                                                                        <li class="index_content_li">
                                                                                            <a href="/product.html">
                                                                                                <img class="index_content_img" src="/themes/simpleboot3/public/assets/images/products.png">
                                                                                                <img class="index_content_img_active" src="/themes/simpleboot3/public/assets/images/products-active.png">
                                                                                            </a>
                                                                                        </li>
                                                                                        <li class="index_content_li">
                                                                                            <a href="/">
                                                                                                <img class="index_content_img" src="/themes/simpleboot3/public/assets/images/service.png">
                                                                                                <img class="index_content_img_active" src="/themes/simpleboot3/public/assets/images/service-active.png">
                                                                                            </a>
                                                                                        </li>
                                                                                    </ul>
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


<script type="text/javascript" src="/themes/simpleboot3/public/assets/js/response.js"></script>
</body>
</html>
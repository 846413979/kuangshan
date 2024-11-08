<?php /*a:5:{s:83:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/portal\\news-info.html";i:1730715948;s:77:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\head.html";i:1730708343;s:76:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\nav.html";i:1730767647;s:79:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\banner.html";i:1730714765;s:77:"E:\product\kuangshan\kuangshan-cmf\public/themes/simpleboot3/public\foot.html";i:1730445169;}*/ ?>
<!DOCTYPE html>
<!-- saved from url=(0034)https://www.hnks.com/news/991.html -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title><?php echo $article['post_title']; ?>_<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?></title>
    <meta name="keywords" content="<?php echo $article['post_title']; ?>,<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
    <meta name="description" content="<?php echo $article['post_title']; ?>-<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
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


    <link href="/themes/simpleboot3/public/assets/css/page_impt_newsx_detail.css" rel="stylesheet" type="text/css">
</head>
<body data-pageid="68acedec-cc04-46f0-af79-4cfa8a4575db" data-layout="flow"
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
                                                             alt="河南省矿山起重机有限公司"
                                                             title="河南省矿山起重机有限公司">

                                                    </a>
                                                </h1>
                                                <nav class="fr">
                                                    <ul class="f-cb">
                                                        <li class="hvr-left subnav2 js-m js-m-2">
                                                            <a class="home-dec" href="/">首页</a>
                                                        </li>
                                                        <li class="hvr-left subnav2 js-m js-m-2">
                                                            <a class="home-dec" href="/intro/4.html">关于我们</a>
                                                            <div class="nav-sub">
                                                                <div class="n-nav-sub">
                                                                    <a href="/intro/4.html">企业简介
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/intro/7.html">领导致辞
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/honor/7.html">企业荣誉
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/honor/9.html">企业风貌
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/intro/8.html">先进设备
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="hvr-left subnav2 js-m js-m-2">
                                                            <a class="home-dec"
                                                               href="/product/<?php echo $category_list[0]['id']; ?>">产品中心</a>
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
                                                               href="/culture/11.html">企业文化</a>
                                                            <div class="nav-sub">
                                                                <div class="n-nav-sub">
                                                                    <a href="/culture/11.html">孝善文化
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/activity/10.html">活动纪实
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="hvr-left subnav2 js-m js-m-2">
                                                            <a class="home-dec"
                                                               href="/responsibility/<?php echo $responsibility_category_list[0]['id']; ?>">社会责任</a>
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
                                                               href="/intro/16.html">服务中心</a>
                                                            <div class="nav-sub">
                                                                <div class="n-nav-sub">
                                                                    <a href="/intro/16.html">联系我们
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                    <a href="/intro/17.html">加入我们
                                                                        <div class="nav-arrow icon-up iconfont"></div>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </nav>
                                            </div>

                                            <div class="header-right f-cb">


                                                <div class="head_lan">
                                                    <div class="lan_cn lan"><a href="http://en.hnks.com/"
                                                                               target="_blank">EN</a></div>
                                                </div>
                                            </div>


                                        </header>
                                    </div>
                                    <!--PC导航结束-->


                                    <!--MO导航-->
                                    <div class="header2">
                                        <div class="main-wrap f-cb">
                                            <h1 class="logo fl">
                                                <a href="https://www.hnks.com/">
                                                    <img src="/themes/simpleboot3/public/assets/images/logox.jpg"
                                                         alt="河南省矿山起重机有限公司"
                                                         title="河南省矿山起重机有限公司">
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
                                                    <a class="tit sub-tit" href="https://www.hnks.com/">首页</a>
                                                </li>
                                                <li class="js-m-3 delay02">
                                                    <a class="tit sub-tit" href="https://www.hnks.com/intro/1.html">关于我们</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <p>
                                                            <a href="https://www.hnks.com/intro/1.html">企业简介</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/intro/2.html">领导致辞</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/zzry.html">企业荣誉</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/ksfm.html">企业风貌</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/intro/13.html">先进设备</a>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="js-m-3 delay03">
                                                    <a class="tit sub-tit"
                                                       href="https://www.hnks.com/news/2/">新闻中心</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <p>
                                                            <a href="https://www.hnks.com/news/2/">企业动态</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/news/14/">企业期刊</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/corpvideo/1/">企业宣传片</a>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="js-m-3 delay04">
                                                    <a class="tit sub-tit" href="https://www.hnks.com/product/22/">产品中心</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <p>
                                                            <a href="https://www.hnks.com/product/22/">桥式起重机</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/product/23/">门式起重机</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/product/24/">专用起重机</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/product/25/">电动葫芦</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/product/26/">典型案例</a>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="js-m-3 delay05">
                                                    <a class="tit sub-tit"
                                                       href="https://www.hnks.com/intro/21.html">企业文化</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <p>
                                                            <a href="https://www.hnks.com/intro/21.html">孝善文化</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/news/33/">活动纪实</a>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="js-m-3 delay06">
                                                    <a class="tit sub-tit"
                                                       href="https://www.hnks.com/news/10/">社会责任</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <p>
                                                            <a href="https://www.hnks.com/news/10/">助学兴教</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/news/25/">平安建设</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/news/26/">扶贫济困</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/news/27/">乡村振兴</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/news/28/">公共文化服务</a>
                                                        </p>
                                                    </div>
                                                </li>
                                                <li class="js-m-3 delay07">
                                                    <a class="tit sub-tit"
                                                       href="https://www.hnks.com/intro/20.html">服务中心</a>
                                                    <i class="jt"></i>
                                                    <div class="sec-list">
                                                        <p>
                                                            <a href="https://www.hnks.com/intro/20.html">联系我们</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/intro/16.html">加入我们</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnks.com/news/18/">信息公开</a>
                                                        </p>
                                                        <p>
                                                            <a href="https://www.hnksweb.com/hgz">防伪查询</a>
                                                        </p>
                                                    </div>
                                                </li>
                                                <!--<li class="js-m-3 animate">
                               <div class="mo_tel"><a href="http://en.gdzyzbzy.com/">English</a></div>
                                </li>-->
                                                <li class="js-m-3 animate delay08">

                                                    <div class="mo_tel"><i class="iconfont"></i>全国销售热线：400-0373-818
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
                                        $(function () {

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
                                        })
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
                                                           class="InputText" type="text" value=""
                                                           placeholder="请输入搜索内容">
                                                    <i class="iconfont last"></i>
                                                </div>
                                            </div>

                                            <div class="e_btn p_searchBtn">
                                                <div class="font"><i class="iconfont"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <script type="text/javascript">
                                        $comp({
                                            url: '/sousuo.html',
                                            target: '_self',
                                            appData: [{
                                                "isdef": true,
                                                "name": "totalSite",
                                                "id": 1,
                                                "value": "totalSite"
                                            }, {
                                                "isdef": false,
                                                "name": "product",
                                                "categoryList": [{
                                                    "id": 21,
                                                    "useViewType": false,
                                                    "parentId": 0,
                                                    "categoryName": "产品中心",
                                                    "categoryType": "0",
                                                    "proCount": 0,
                                                    "leafs": [{
                                                        "id": 22,
                                                        "useViewType": false,
                                                        "parentId": 21,
                                                        "categoryName": "桥式起重机",
                                                        "categoryType": "0",
                                                        "proCount": 0,
                                                        "leaf": false
                                                    }, {
                                                        "id": 23,
                                                        "useViewType": false,
                                                        "parentId": 21,
                                                        "categoryName": "门式起重机",
                                                        "categoryType": "0",
                                                        "proCount": 0,
                                                        "leaf": false
                                                    }, {
                                                        "id": 24,
                                                        "useViewType": false,
                                                        "parentId": 21,
                                                        "categoryName": "专用起重机",
                                                        "categoryType": "0",
                                                        "proCount": 0,
                                                        "leaf": false
                                                    }, {
                                                        "id": 25,
                                                        "useViewType": false,
                                                        "parentId": 21,
                                                        "categoryName": "电动葫芦",
                                                        "categoryType": "0",
                                                        "proCount": 0,
                                                        "leaf": false
                                                    }, {
                                                        "id": 26,
                                                        "useViewType": false,
                                                        "parentId": 21,
                                                        "categoryName": "典型案例",
                                                        "categoryType": "0",
                                                        "proCount": 0,
                                                        "leaf": false
                                                    }],
                                                    "leaf": false
                                                }],
                                                "id": 2,
                                                "value": "product"
                                            }, {
                                                "isdef": false, "name": "info", "categoryList": [{
                                                    "id": 1,
                                                    "appId": 3,
                                                    "useViewType": false,
                                                    "name": "新闻中心",
                                                    "des": "<div class=\"reset_style js-reset_style js-adapMobile \">\n<p>&nbsp;</p>\n\n<p>新闻资讯</p>\n</div>\n",
                                                    "summary": "新闻资讯",
                                                    "createDate": "2018-06-28 15:01:42",
                                                    "type": 1,
                                                    "showFlag": true,
                                                    "newOpen": false,
                                                    "showOrder": 1,
                                                    "children": [{
                                                        "id": 2,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 1,
                                                        "name": "企业动态",
                                                        "des": "<div class='reset_style js-reset_style js-adapMobile '><p>\r\n\t公司动态</p>\r\n</div>",
                                                        "summary": "公司动态",
                                                        "createDate": "2018-06-28 15:01:53",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": false,
                                                        "showOrder": 1,
                                                        "hasInfoCount": 531,
                                                        "mobileNewOpen": false,
                                                        "mobileShowFlag": true
                                                    }, {
                                                        "id": 14,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 1,
                                                        "name": "企业期刊",
                                                        "des": "<div class='reset_style js-reset_style js-adapMobile '><p>\r\n\t<span style=\"color: rgb(151, 152, 152); font-family: 微软雅黑; font-size: 13px; background-color: rgb(249, 249, 249);\">公司期刊</span></p>\r\n</div>",
                                                        "summary": "公司期刊",
                                                        "createDate": "2018-10-08 09:52:16",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": false,
                                                        "showOrder": 2,
                                                        "hasInfoCount": 81,
                                                        "mobileNewOpen": false,
                                                        "mobileShowFlag": true
                                                    }, {
                                                        "id": 13,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 1,
                                                        "name": "企业宣传片",
                                                        "des": "<p>\r\n\t企业宣传</p>\r\n",
                                                        "summary": "企业宣传",
                                                        "linkUrl": "{\"text\":\"企业宣传片\",\"id\":\"0eae146b-3f92-4fad-b84a-d665d6d97469\",\"entityTag\":\"page\"}",
                                                        "createDate": "2018-07-17 11:17:24",
                                                        "type": 2,
                                                        "showFlag": true,
                                                        "newOpen": false,
                                                        "showOrder": 5,
                                                        "hasInfoCount": 0,
                                                        "mobileDes": "\t\t\t\t\t\t\t                        \r\n\t\t\t\t\t\t\t                      ",
                                                        "mobileLinkUrl": "{\"param\":\"1\",\"text\":\"企业宣传片\",\"id\":\"81e32b0f-f512-4e63-9b70-d8aa0daa18f2\",\"entityTag\":\"page\",\"appTag\":\"22\"}",
                                                        "mobileNewOpen": false,
                                                        "mobileShowFlag": true
                                                    }],
                                                    "hasInfoCount": 613,
                                                    "mobileDes": "<div class=\"reset_style js-reset_style js-adapMobile \">\n<p>&nbsp;</p>\n\n<p>新闻资讯</p>\n</div>\n",
                                                    "mobileNewOpen": false,
                                                    "mobileShowFlag": true
                                                }, {
                                                    "id": 16,
                                                    "appId": 3,
                                                    "useViewType": false,
                                                    "name": "关于我们",
                                                    "des": "<div class='reset_style js-reset_style js-adapMobile '><p>\r\n\t关于我们</p>\r\n</div>",
                                                    "createDate": "2020-12-10 11:30:05",
                                                    "type": 1,
                                                    "showFlag": true,
                                                    "newOpen": false,
                                                    "showOrder": 2,
                                                    "children": [{
                                                        "id": 6,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 16,
                                                        "name": "企业荣誉",
                                                        "des": "<div class='reset_style js-reset_style js-adapMobile '><p>\r\n\t企业荣誉</p>\r\n</div>",
                                                        "summary": "企业荣誉",
                                                        "createDate": "2018-07-16 18:11:10",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": false,
                                                        "showOrder": 1,
                                                        "hasInfoCount": 24,
                                                        "mobileNewOpen": false,
                                                        "mobileShowFlag": true
                                                    }, {
                                                        "id": 7,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 16,
                                                        "name": "企业风貌",
                                                        "des": "<div class='reset_style js-reset_style js-adapMobile '><p>\r\n\t矿山风貌</p>\r\n</div>",
                                                        "summary": "图说矿山",
                                                        "createDate": "2018-07-16 18:18:59",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": false,
                                                        "showOrder": 3,
                                                        "hasInfoCount": 11,
                                                        "mobileNewOpen": false,
                                                        "mobileShowFlag": true
                                                    }],
                                                    "hasInfoCount": 35,
                                                    "mobileNewOpen": false,
                                                    "mobileShowFlag": true
                                                }, {
                                                    "id": 17,
                                                    "appId": 3,
                                                    "useViewType": false,
                                                    "name": "信息公开",
                                                    "createDate": "2021-04-13 10:55:14",
                                                    "type": 1,
                                                    "showFlag": true,
                                                    "newOpen": true,
                                                    "showOrder": 3,
                                                    "children": [{
                                                        "id": 18,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 17,
                                                        "name": "信息公开",
                                                        "createDate": "2021-04-13 10:55:26",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": true,
                                                        "showOrder": 1,
                                                        "hasInfoCount": 28,
                                                        "mobileNewOpen": true,
                                                        "mobileShowFlag": true
                                                    }],
                                                    "hasInfoCount": 28,
                                                    "mobileNewOpen": true,
                                                    "mobileShowFlag": true
                                                }, {
                                                    "id": 34,
                                                    "appId": 3,
                                                    "useViewType": false,
                                                    "name": "企业文化",
                                                    "des": "<p>企业文化</p>\n",
                                                    "createDate": "2023-02-07 08:44:35",
                                                    "type": 1,
                                                    "showFlag": true,
                                                    "newOpen": true,
                                                    "showOrder": 4,
                                                    "children": [{
                                                        "id": 33,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 34,
                                                        "name": "活动纪实",
                                                        "des": "<p>活动纪实</p>\n",
                                                        "createDate": "2023-02-06 17:08:48",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": true,
                                                        "showOrder": 1,
                                                        "hasInfoCount": 19,
                                                        "mobileDes": "<p>活动纪实</p>\n",
                                                        "mobileNewOpen": true,
                                                        "mobileShowFlag": true
                                                    }],
                                                    "hasInfoCount": 19,
                                                    "mobileDes": "<p>企业文化</p>\n",
                                                    "mobileNewOpen": true,
                                                    "mobileShowFlag": true
                                                }, {
                                                    "id": 8,
                                                    "appId": 3,
                                                    "useViewType": false,
                                                    "name": "社会责任",
                                                    "des": "<div class='reset_style js-reset_style js-adapMobile '><p>\r\n\t社会责任</p>\r\n</div>",
                                                    "summary": "社会责任",
                                                    "createDate": "2018-07-17 08:54:26",
                                                    "type": 1,
                                                    "showFlag": true,
                                                    "newOpen": false,
                                                    "showOrder": 9,
                                                    "children": [{
                                                        "id": 10,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 8,
                                                        "name": "助学兴教",
                                                        "des": "<div class=\"reset_style js-reset_style js-adapMobile \">\n<p>捐资助学</p>\n</div>\n",
                                                        "summary": "捐资助学",
                                                        "createDate": "2018-07-17 08:53:24",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": false,
                                                        "showOrder": 5,
                                                        "hasInfoCount": 23,
                                                        "mobileDes": "<div class=\"reset_style js-reset_style js-adapMobile \">\n<p>捐资助学</p>\n</div>\n",
                                                        "mobileNewOpen": false,
                                                        "mobileShowFlag": true
                                                    }, {
                                                        "id": 25,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 8,
                                                        "name": "平安建设",
                                                        "des": "<p>平安建设</p>\n",
                                                        "createDate": "2023-02-03 17:48:42",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": true,
                                                        "showOrder": 6,
                                                        "hasInfoCount": 2,
                                                        "mobileDes": "<p>平安建设</p>\n",
                                                        "mobileNewOpen": true,
                                                        "mobileShowFlag": true
                                                    }, {
                                                        "id": 26,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 8,
                                                        "name": "扶贫济困",
                                                        "des": "<p>扶贫济困</p>\n",
                                                        "createDate": "2023-02-03 17:48:54",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": true,
                                                        "showOrder": 7,
                                                        "hasInfoCount": 10,
                                                        "mobileDes": "<p>救灾解难</p>\n",
                                                        "mobileNewOpen": true,
                                                        "mobileShowFlag": true
                                                    }, {
                                                        "id": 27,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 8,
                                                        "name": "乡村振兴",
                                                        "des": "<p>乡村振兴</p>\n",
                                                        "createDate": "2023-02-03 17:49:09",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": true,
                                                        "showOrder": 8,
                                                        "hasInfoCount": 8,
                                                        "mobileDes": "<p>乡村振兴</p>\n",
                                                        "mobileNewOpen": true,
                                                        "mobileShowFlag": true
                                                    }, {
                                                        "id": 28,
                                                        "appId": 3,
                                                        "useViewType": false,
                                                        "parentId": 8,
                                                        "name": "公共文化服务",
                                                        "des": "<p>公共文化服务</p>\n",
                                                        "createDate": "2023-02-04 11:14:14",
                                                        "type": 1,
                                                        "showFlag": true,
                                                        "newOpen": true,
                                                        "showOrder": 9,
                                                        "hasInfoCount": 11,
                                                        "mobileDes": "<p>公共文化服务</p>\n",
                                                        "mobileNewOpen": true,
                                                        "mobileShowFlag": true
                                                    }],
                                                    "hasInfoCount": 54,
                                                    "mobileNewOpen": false,
                                                    "mobileShowFlag": true
                                                }], "id": 3, "value": "info"
                                            }, {
                                                "isdef": false,
                                                "name": "recruit",
                                                "categoryList": [{
                                                    "id": 2,
                                                    "useViewType": false,
                                                    "name": "技术部",
                                                    "showFlag": true,
                                                    "des": "<p>技术部</p>\n",
                                                    "mobileDes": "<p>技术部</p>\n",
                                                    "showOrder": 1,
                                                    "createTime": "2022-04-20 14:52:28",
                                                    "contentNum": 0
                                                }],
                                                "id": 4,
                                                "value": "recruit"
                                            }, {
                                                "isdef": false,
                                                "name": "atlas",
                                                "categoryList": [],
                                                "id": 5,
                                                "value": "atlas"
                                            }],
                                            id: "portalResSearch_total-16318624742069041",
                                            lib: ["js/portalSearch/portalResSearch_total-02"],
                                            totalSite: "全站",
                                            product: "商品",
                                            info: "资讯",
                                            companyfile: "下载",
                                            recruit: "招聘",
                                            productMachine: "机械",
                                            productParts: "配件",
                                            course: "课程",
                                            teacher: "教师",
                                            atlas: "企业图册"
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
                                <img src="/themes/simpleboot3/public/assets/images/glRpwCw7RDGQOfx33vCXSg.jpg"
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
                                    <div id="w_grid-1616997316578" class="w_grid-000">
                                        <div class="w_grid signal">
                                            <div class="e_box e_box-000 p_gridbox">
                                                <div id="content_box-1616997316578-0"
                                                     class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                    <div id="w_grid-1616997316588" class="w_grid-001">
                                                        <div class="w_grid ">
                                                            <div class="e_box e_box-000 p_gridbox">
                                                                <div id="content_box-1616997316588-0"
                                                                     class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                                    <div id="c_portalResNews_category-1616997316613"
                                                                         class="c_portalResNews_category-01001002"
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

                                                                            <div id="NavList_a1_menu-slide"
                                                                                 class="menu-slide"
                                                                                 style="width: 75px; height: 84px; left: 184px; top: 0px;">
                                                                                <i></i></div>
                                                                            <span class="swiper-notification"
                                                                                  aria-live="assertive"
                                                                                  aria-atomic="true"></span></div>
                                                                        <script>$("div[id^='c_']").attr("loaded", "true")</script>
                                                                        <script>
                                                                            $(function () {
                                                                                var urlName = window.location.pathname;  //获取地址栏中文件名或路径。
                                                                                $('.NavList_a1 li a').each(function () {        //遍历当前网页导航或分类
                                                                                    var urlHref = $(this).attr('href');  //获取导航链接地址href值
                                                                                    if (urlName.indexOf(urlHref) >= 0) {   //检测文件名或路径中是否包含当前链接值
                                                                                        $(this).addClass('active');
                                                                                    }
                                                                                });
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
                                    <div id="w_grid-1616997316598" class="w_grid-000">
                                        <div class="w_grid signal">
                                            <div class="e_box e_box-000 p_gridbox">
                                                <div id="content_box-1616997316598-0"
                                                     class="e_box e_box-000 d_gridCell_0 p_gridCell">
                                                    <div id="c_portalResNews_detail-16169974308795941"
                                                         class="c_portalResNews_detail-01001" loaded="true"
                                                         style="overflow: visible;">
                                                        <div class="e_stylebox e_ContentOrdinaryStyleBox-001 p_stylebox"
                                                             id="">
                                                            <div class="stylebox_top">
                                                                <div class="stylebox_title">
                                                                    <h2 class="title_main">资讯详细</h2>
                                                                </div>
                                                            </div>
                                                            <div class="stylebox_top_line"></div>
                                                            <div class="stylebox_content">

                                                                <div class="e_box p_NewsDetail" data-ename="资讯详情"
                                                                     data-infoid="991">
                                                                    <!-- 移动端焦点图 -->
                                                                    <!-- 移动端焦点图 结束 -->
                                                                    <!--这是标题区topFlag recommandFlag-->
                                                                    <div class="e_box p_topBox">
                                                                        <div class="e_box p_header">
                                                                            <!--置顶  图标-->
                                                                            <!--推荐  图标-->
                                                                            <div class="e_box p_TitleBoxA">
                                                                                <h1 class="e_title h1 p_headA">
                                                                                    <div class="font">
                                                                                        <?php echo $article['post_title']; ?>
                                                                                    </div>
                                                                                </h1>
                                                                            </div>
                                                                        </div>
                                                                        <ul class="e_box p_dataSource borderT_default"
                                                                            data-ename="资讯信息">
                                                                            <li class="auth"><span
                                                                                    class="i_auth">作者：</span></li>
                                                                            <li class="source"><span class="i_source">来源：</span>
                                                                            </li>
                                                                            <!--YYYY-MM-DD hh:mm:ss时间格式根据情况自定义-->
                                                                            <li class="date"><span class="i_pubDate">发布时间：</span><?php echo date('Y-m-d',$article['create_time']); ?>
                                                                            </li>
                                                                        </ul>
                                                                        <!--概要信息-->
                                                                        <p class="e_article p_summary background_info"
                                                                           data-ename="资讯概要信息">

                                                                        </p>
                                                                        <!--概要信息结束-->
                                                                    </div>
                                                                    <!--新闻图集-->
                                                                    <div class="e_box p_infoBox">
                                                                        <!--这是标题区topFlag recommandFlag-->
                                                                        <div class="e_box p_header">
                                                                            <!--置顶  图标-->
                                                                            <!--推荐  图标-->
                                                                            <div class="e_box p_TitleBoxA">
                                                                                <h1 class="e_title p_headA h3 font_thick">
                                                                                    <div class="font">
                                                                                        <i class="iconfont"></i>
                                                                                        <?php echo $article['post_title']; ?>
                                                                                    </div>
                                                                                </h1>
                                                                            </div>
                                                                        </div>
                                                                        <!--概要信息-->
                                                                        <p class="e_article p_summary"
                                                                           data-ename="资讯概要信息">
                                                                            <span><span
                                                                                    class="i_SummaryBox">【概要描述】</span></span>
                                                                        </p>
                                                                        <ul class="e_box p_dataSource e_box p_dataSource borderB_default"
                                                                            data-ename="资讯信息">
                                                                            <li class="sort"><span
                                                                                    class="i_sort">分类：</span><a
                                                                                    href="https://www.hnks.com/news/2/">企业动态</a>
                                                                            </li>
                                                                            <li class="auth"><span
                                                                                    class="i_auth">作者：</span></li>
                                                                            <li class="source"><span class="i_source">来源：</span>
                                                                            </li>
                                                                            <!-- <li><span class="i_pubDate">发布时间：</span></li> -->
                                                                            <!--YYYY-MM-DD hh:mm:ss时间格式根据情况自定义-->
                                                                            <li class="date"><span class="i_pubDate">发布时间：</span><?php echo date('Y-m-d',$article['create_time']); ?>
                                                                            </li>
                                                                            <li class="view"><span
                                                                                    class="i_pvs">访问量：</span><span
                                                                                    class="p_viewCount">144</span></li>
                                                                        </ul>
                                                                        <!--概要信息结束-->
                                                                    </div>
                                                                    <!--正文内容-->
                                                                    <div class="e_title p_articlesTitle"
                                                                         data-ename="描述标题">
                                                                        <div class="font">详情</div>
                                                                    </div>
                                                                    <div class="e_box p_articles"
                                                                         data-ename="资讯详细描述">
                                                                        <?php echo $article['post_content']; ?>
                                                                    </div>
                                                                    <!--正文内容 结束-->
                                                                    <div class="e_box p_QRCode borderT_default"
                                                                         data-ename="打开手机查看">
                                                                        <p class="e_title p_SaveText"
                                                                           data-ename="二维码引导信息"
                                                                           style="display: none;"><span
                                                                                class="i_qrcode">扫二维码用手机看</span>
                                                                        </p>
                                                                        <p class="e_image js_qrcode"
                                                                           data-ename="二维码"></p>
                                                                    </div>
                                                                    <!--分页-->
                                                                    <div class="e_box d_pcDom p_PrevAndNext borderB_default"
                                                                         data-ename="上一篇、下一篇信息区">

                                                                        <div class="e_box p_previewBox">
                                                                            <span class="i_title"><span
                                                                                    class="i_pageUpTitle">上一个</span><span
                                                                                    class="clons">:</span></span>
                                                                            <?php if(!(empty($prev_article) || (($prev_article instanceof \think\Collection || $prev_article instanceof \think\Paginator ) && $prev_article->isEmpty()))): ?>
                                                                                <a href="/activity_info/<?php echo $category['id']; ?>/<?php echo $prev_article['id']; ?>"
                                                                                   data-ename="下一篇标题">
                                                                                    <span class="p_PreviewTitle"><?php echo $prev_article['post_title']; ?></span>
                                                                                </a>
                                                                                <?php else: ?>
                                                                                <span class="p_PreviewTitle"><span
                                                                                        class="i_non">无</span></span>
                                                                            <?php endif; ?>


                                                                        </div>
                                                                        <!-- 下一篇 -->
                                                                        <div class="e_box p_nextBox">
                                                                            <span class="i_title"><span
                                                                                    class="i_pageDownTitle">下一个</span><span
                                                                                    class="clons">:</span></span>

                                                                            <?php if(!(empty($next_article) || (($next_article instanceof \think\Collection || $next_article instanceof \think\Paginator ) && $next_article->isEmpty()))): ?>
                                                                                <a href="/activity_info/<?php echo $category['id']; ?>/<?php echo $next_article['id']; ?>"
                                                                                   data-ename="下一篇标题">
                                                                                    <span class="p_PreviewTitle"><?php echo $next_article['post_title']; ?></span>
                                                                                </a>
                                                                                <?php else: ?>
                                                                                <span class="p_PreviewTitle"><span
                                                                                        class="i_non">无</span></span>
                                                                            <?php endif; ?>

                                                                        </div>
                                                                    </div>
                                                                    <!--分页end-->
                                                                    <!--分页-->
                                                                    <div class="e_box p_PrevAndNextMo p_PrevAndNext borderB_default"
                                                                         data-ename="上一篇、下一篇信息区">
                                                                        <div class="e_box p_previewBox">
                                                                            <span class="i_title"><span
                                                                                    class="i_pageUpTitle">上一个</span><span
                                                                                    class="clons">:</span></span>
                                                                            <span class="p_PreviewTitle"><span
                                                                                    class="i_non">无</span></span>

                                                                        </div>
                                                                        <!-- 下一篇 -->
                                                                        <div class="e_box p_nextBox">
                                                                            <span class="i_title"><span
                                                                                    class="i_pageDownTitle">下一个</span><span
                                                                                    class="clons">:</span></span>
                                                                            <a href="https://www.hnks.com/news/990.html"
                                                                               data-ename="下一篇标题">
                                                                                <span class="p_PreviewTitle">一场慈善接力，延续到了江西革命老区~</span>
                                                                            </a>

                                                                        </div>
                                                                    </div>
                                                                    <!--分页end-->
                                                                </div>
                                                                <script type="text/javascript">
                                                                    $comp({
                                                                        params: {
                                                                            imgRelativeData: {
                                                                                params: {
                                                                                    bigPicBox: 'p_img',//大图片盒子
                                                                                    nextPicBtn: 'p_SwitchBtnB',//大图片右按钮
                                                                                    prePicBtn: 'p_SwitchBtnA',//大图片左按钮
                                                                                    describeBox: 'p_SummaryBox',//图片说明盒子
                                                                                    curNum: 'p_curNum',//描述图片中当前是第几个
                                                                                    bigPicList: 'p_imgLink',//图片链接到
                                                                                    describeTitle: 'p_ImgHead',//图片说明文字标题
                                                                                    describeText: 'p_ImgSummary',//图片说明文字描述
                                                                                    nextPageBtn: 'p_SwitchBtnD',//小图列表右按钮
                                                                                    prePageBtn: 'p_SwitchBtnC',//小图列表左按钮
                                                                                    picList: 'p_thumbnail',//小图列表图片
                                                                                    isCarousel: true,//是否循环显示
                                                                                    picNum: 4,//缩略图一屏显示个数，
                                                                                    //大图显示比例
                                                                                    imageWidth: 4,
                                                                                    imageHeight: 3,
                                                                                    //小图图显示比例
                                                                                    sImageWidth: 4,
                                                                                    sImageHeight: 3
                                                                                }
                                                                            },
                                                                            "c_qrcode": "", //二维码地址
                                                                            "qrcodeWidth": "100", //二维码宽高
                                                                            "qrcodeHeight": "100",
                                                                            "isCheckedCustom": true, //true 检查错误图片 ，false不检查
                                                                            "defaultNoPicture": "/public/img/no-img.svg",  //错误图片时显示的图片
                                                                            "isOpenBigCutMode": true, //大图 true是裁剪 ，false是留白
                                                                            "isOpenSmallCutMode": true, //缩略图 true是裁剪 ，false是留白
                                                                            "autoPlay": false,
                                                                        }, //el等参数
                                                                        id: "portalResNews_detail-16169974308795941",//实例id 服务器传
                                                                        lib: ["js/portalNews/portalResNews_detail-01"], //组件js
                                                                        noDataFlag: ""
                                                                    });
                                                                </script>
                                                                <script>$("div[id^='c_']").attr("loaded", "true")</script>
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
                                        <span style="color:#FFFFFF">版权所有©河南省矿山起重机有限公司&nbsp;&nbsp;</span>
                                        <a href="https://beian.miit.gov.cn/" target="_blank">
                                            <span style="color:#FFFFFF">豫ICP备16003949号-1&nbsp;&nbsp;&nbsp;</span>
                                        </a>
                                        <br>
                                        <a href="http://www.300.cn/" target="_blank">
                                            <span style="color:#FFFFFF">网站建设：中企动力</span>
                                        </a>
                                        <span style="color:#FFFFFF">&nbsp;</span>
                                        <a href="http://zhengzhou.300.cn/" target="_blank">
                                            <span style="color:#FFFFFF">郑州</span>
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
                                                    <a href="https://www.hnks.com/"
                                                       class="botLink blink">首页</a>
                                                </dt>
                                            </dl>
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="https://www.hnks.com/intro/1.html"
                                                       class="botLink blink">关于我们</a>
                                                </dt>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/intro/1.html"
                                                       class="botLinkS blink">企业简介</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/intro/2.html"
                                                       class="botLinkS blink">领导致辞</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/zzry.html"
                                                       class="botLinkS blink">企业荣誉</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/ksfm.html"
                                                       class="botLinkS blink">企业风貌</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/intro/13.html"
                                                       class="botLinkS blink">先进设备</a>
                                                </dd>
                                            </dl>
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="https://www.hnks.com/news/2/"
                                                       class="botLink blink">新闻中心</a>
                                                </dt>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/news/2/"
                                                       class="botLinkS blink">企业动态</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/news/14/"
                                                       class="botLinkS blink">企业期刊</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/corpvideo/1/"
                                                       class="botLinkS blink">企业宣传片</a>
                                                </dd>
                                            </dl>
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="https://www.hnks.com/product/22/"
                                                       class="botLink blink">产品中心</a>
                                                </dt>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/product/22/"
                                                       class="botLinkS blink">桥式起重机</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/product/23/"
                                                       class="botLinkS blink">门式起重机</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/product/24/"
                                                       class="botLinkS blink">专用起重机</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/product/25/"
                                                       class="botLinkS blink">电动葫芦</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/product/26/"
                                                       class="botLinkS blink">典型案例</a>
                                                </dd>
                                            </dl>
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="https://www.hnks.com/intro/21.html"
                                                       class="botLink blink">企业文化</a>
                                                </dt>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/intro/21.html"
                                                       class="botLinkS blink">孝善文化</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/news/33/"
                                                       class="botLinkS blink">活动纪实</a>
                                                </dd>
                                            </dl>
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="https://www.hnks.com/news/10/"
                                                       class="botLink blink">社会责任</a>
                                                </dt>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/news/10/"
                                                       class="botLinkS blink">助学兴教</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/news/25/"
                                                       class="botLinkS blink">平安建设</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/news/26/"
                                                       class="botLinkS blink">扶贫济困</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/news/27/"
                                                       class="botLinkS blink">乡村振兴</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/news/28/"
                                                       class="botLinkS blink">公共文化服务</a>
                                                </dd>
                                            </dl>
                                            <dl class="botUl">
                                                <dt class="botDt">
                                                    <a href="https://www.hnks.com/intro/20.html"
                                                       class="botLink blink">服务中心</a>
                                                </dt>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/intro/20.html"
                                                       class="botLinkS blink">联系我们</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/intro/16.html"
                                                       class="botLinkS blink">加入我们</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnks.com/news/18/"
                                                       class="botLinkS blink">信息公开</a>
                                                </dd>
                                                <dd class="sbotDd">
                                                    <a href="https://www.hnksweb.com/hgz"
                                                       class="botLinkS blink">防伪查询</a>
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
                                                style="font-family:微软雅黑">全国免费销售服务热线</span></span></span>
                                        </p>

                                        <p><a href="tel:400-0373-818"><span
                                                style="font-size:26px"><span
                                                style="font-family:arial,helvetica,sans-serif"><span
                                                style="color:#FFFFFF">400-0373-818</span></span></span></a>
                                        </p>
                                    </div>
                                </div>
                                <div id="w_common_text-1616830369921" class="reset_style">
                                    <div>
                                        <p><span style="color:#FFFFFF"><span style="font-size:14px"><span
                                                style="font-family:微软雅黑">全国免费售后服务热线</span></span></span>
                                        </p>

                                        <p><a href="tel:400-0373-919"><span
                                                style="font-size:26px"><span
                                                style="font-family:arial,helvetica,sans-serif"><span
                                                style="color:#FFFFFF">400-0373-919</span></span></span></a>
                                        </p>
                                    </div>
                                </div>
                                <div id="w_common_text-1616830401781" class="reset_style">
                                    <div>
                                        <p><span style="line-height:2"><span
                                                style="font-family:微软雅黑"><span
                                                style="font-size:14px"><a
                                                href="https://beian.miit.gov.cn/"
                                                target="_blank"><span
                                                style="color:#d9d9d9">豫ICP备16003949号-1&nbsp;</span></a><span
                                                style="color:#d9d9d9">&nbsp;&nbsp;</span><br>
<a href="http://www.300.cn/" target="_blank"><span style="color:#d9d9d9">网站建设：中企动力</span></a><span
                                                    style="color:#d9d9d9">&nbsp;</span><a
                                                    href="http://zhengzhou.300.cn/" target="_blank"><span
                                                    style="color:#d9d9d9">郑州</span></a><br>
<span style="color:#d9d9d9">版权所有©河南省矿山起重机有限公司&nbsp;&nbsp;</span></span></span></span></p>
                                    </div>
                                </div>
                            </div>
                            <div id="content_box-1614153078102-2"
                                 class="e_box e_box-000 d_gridCell_2 p_gridCell">
                                <div id="w_common_text-1616830503151" class="reset_style">
                                    <div><p><strong><font color="#ffffff" face="微软雅黑"><span
                                            style="font-size:14px">关注我们</span></font></strong>
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
                                                                     alt="河南省矿山起重机有限公司"
                                                                     title="河南省矿山起重机有限公司"
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
                                                                     alt="河南省矿山起重机有限公司"
                                                                     title="河南省矿山起重机有限公司"
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
                                                                     alt="河南省矿山起重机有限公司"
                                                                     title="河南省矿山起重机有限公司"
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


<script>
    $(document).ready(function () {
        $("* img").attr({alt: "河南省矿山起重机有限公司", title: "河南省矿山起重机有限公司"});
        setTimeout("dongtaitianjia()", 1000)
    });

</script>


<script type="text/javascript" src="/themes/simpleboot3/public/assets/js/response.js"></script>
</body>
</html>
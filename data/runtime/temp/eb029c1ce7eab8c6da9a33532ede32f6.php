<?php /*a:2:{s:88:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/admin\main\index.html";i:1730268637;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
<?php 
    if (!function_exists('_get_system_widget')) {
    function _get_system_widget($name){
 switch($name): case "CmfHub": ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">交流方式</h3>
            </div>
            <div class="panel-body home-info">
                <ul class="list-unstyled">
                    <li>
                        <em>官网</em> <span><a href="http://www.thinkcmf.com"
                                               target="_blank">www.thinkcmf.com</a></span>
                    </li>
                    <li><em>QQ 群</em> <span>100828313,316669417</span></li>
                    <li><em>联系邮箱</em> <span>catman@thinkcmf.com</span></li>
                </ul>
            </div>
        </div>
    <?php break; case "CmfDocuments": ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">开发手册</h3>
            </div>
            <div class="panel-body home-info">
                <ul class="list-unstyled">
                    <li>
                        <em>完全开发手册</em>
                        <span>
                            <a class="label label-success" href="https://www.thinkcmf.com/docs/cmf6/"
                               target="_blank">立即阅读</a>
                        </span>
                    </li>
                    <li>
                        <em>常见问题手册</em>
                        <span>
                            <a class="label label-success" href="http://www.thinkcmf.com/faq.html"
                               target="_blank">立即阅读</a>
                        </span>
                    </li>
                    <li>
                        <em>模板开发教程</em>
                        <span>
                            <a class="label label-success" href="http://www.thinkcmf.com/theme_tutorial.html"
                               target="_blank">立即阅读</a>
                        </span>
                    </li>
                    <li>
                        <em>API开发手册</em>
                        <span>
                            <a class="label label-success" href="https://www.thinkcmf.com/docs/cmf6/#/API"
                               target="_blank">立即阅读</a>
                        </span>
                    </li>
                </ul>
            </div>
        </div>
    <?php break; case "MainContributors": ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">主要贡献者</h3>
            </div>
            <div class="panel-body home-info main_contributors">
                <ul class="list-inline">
                    <li>加载中...</li>
                </ul>
            </div>
        </div>
    <?php break; case "Contributors": ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">贡献者</h3>
            </div>
            <div class="panel-body home-info contributors">
                <ul class="list-inline">
                    <li>加载中...</li>
                </ul>
            </div>
        </div>
    <?php break; ?>
<?php endswitch; 
    }
    }
 ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- HTML5 shim for IE8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <![endif]-->


    <link href="/themes/admin_simpleboot3/public/assets/themes/<?php echo cmf_get_admin_style(); ?>/bootstrap.min.css" rel="stylesheet">
    <link href="/themes/admin_simpleboot3/public/assets/simpleboot3/css/simplebootadmin.css" rel="stylesheet">
    <link href="/static/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        form .input-order {
            margin-bottom: 0px;
            padding: 0 2px;
            width: 42px;
            font-size: 12px;
        }

        form .input-order:focus {
            outline: none;
        }

        .table-actions {
            margin-top: 5px;
            margin-bottom: 5px;
            padding: 0px;
        }

        .table-list {
            margin-bottom: 0px;
        }

        .form-required {
            color: red;
        }

        .td-actions .btn {
            margin-bottom: 2px;
            min-width: 96px;
            text-align: center;
        }

        .td-actions .btn:last-child {
            margin-bottom: 0;
        }
        a:hover, a:focus{
            text-decoration: none;
        }
    </style>
    <?php 
		$is_mobile=cmf_is_mobile();
        $_static_version='1.0.4';
        $cmf_version=cmf_version();
        if (strpos(cmf_version(), '6.') === 0) {
            $_app=app()->http->getName();
        }else{
            $_app=request()->module();
        }
     ?>
    <script type="text/javascript">
        //全局变量
        var GV = {
            ROOT: "/",
            WEB_ROOT: "/",
            JS_ROOT: "static/js/",
            APP: '<?php echo $_app; ?>'/*当前应用名*/,
            IS_MOBILE: <?php echo !empty($is_mobile) ? 'true'  :  'false'; ?>
        };
    </script>
    <script src="/themes/admin_simpleboot3/public/assets/js/jquery-1.12.4.min.js"></script>
    <script src="/themes/admin_simpleboot3/public/assets/js/jquery-migrate-1.4.1.min.js"></script>
<!--    <script src="/themes/admin_simpleboot3/public/assets/js/jquery-3.6.0.min.js"></script>-->
    <script src="/static/js/wind.js"></script>
    <script src="/themes/admin_simpleboot3/public/assets/js/bootstrap.min.js"></script>
    <script>
        Wind.css('artDialog');
        Wind.css('layer');
        $(function () {
            $("[data-toggle='tooltip']").tooltip({
                container: 'body',
                html: true,
            });
            $("li.dropdown").hover(function () {
                $(this).addClass("open");
            }, function () {
                $(this).removeClass("open");
            });
        });
    </script>
    <?php if(APP_DEBUG): ?>
        <style>
            #think_page_trace_open {
                z-index: 9999;
            }
        </style>
    <?php endif; ?>

<style>
    .home-info li em {
        float: left;
        width: 120px;
        font-style: normal;
        font-weight: bold;
    }

    .home-info ul {
        padding: 0;
        margin: 0;
    }

    .panel {
        margin-bottom: 0;
    }

    .grid-sizer {
        width: 10%;
    }

    .grid-item {
        margin-bottom: 6px;
        padding: 5px;
    }

    .home-grid .dashboard-box .panel-title {
        cursor: move;
    }

    .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
        padding-left: 8px;
        padding-right: 8px;
        float: none;
    }

</style>
<?php 
    hook('admin_before_head_end',null,false);
 ?>
</head>
<body>
<div class="wrap">
    <?php if(empty($has_smtp_setting) || (($has_smtp_setting instanceof \think\Collection || $has_smtp_setting instanceof \think\Paginator ) && $has_smtp_setting->isEmpty())): ?>
        <div class="grid-item col-md-12">
            <div class="alert alert-danger alert-dismissible fade in" role="alert" style="margin-bottom: 0;">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <strong>提示!</strong> 邮箱配置未完成,无法进行邮件发送!
                <a href="#" data-dismiss="alert" aria-label="Close"
                   onclick="parent.openapp('<?php echo url('Mailer/index'); ?>','admin_mailer_index','邮箱配置');">现在设置</a>
            </div>
        </div>
    <?php endif; if(!function_exists('finfo_open')): ?>
        <div class="grid-item col-md-12">
            <div class="alert alert-danger alert-dismissible fade in" role="alert" style="margin-bottom: 0;">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <strong>提示!</strong> php_fileinfo扩展没有开启，无法正常上传文件！
            </div>
        </div>
    <?php endif; ?>

    <div class="grid-item col-md-12" id="thinkcmf-notices-grid" style="display:none;">
        <div class="dashboard-box">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><?php echo lang('SYSTEM_NOTIFICATIONS'); ?></h3>
                </div>
                <div class="panel-body home-info">
                    <ul id="thinkcmf-notices" class="list-unstyled">
                        <li>
                            <img src="/themes/admin_simpleboot3/public/assets/images/loading.gif" style="vertical-align: middle;"/>
                            <span style="display: inline-block; vertical-align: middle;">加载中...</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="home-grid">
        <!-- width of .grid-sizer used for columnWidth -->
        <div class="grid-sizer"></div>
        <?php if(is_array($dashboard_widgets) || $dashboard_widgets instanceof \think\Collection || $dashboard_widgets instanceof \think\Paginator): if( count($dashboard_widgets)==0 ) : echo "" ;else: foreach($dashboard_widgets as $key=>$vo): if($vo['is_system']): ?>
                <div class="grid-item col-md-6" data-system="1" data-widget="<?php echo $vo['name']; ?>" data-width="6">
                    <div class="dashboard-box"><?php echo _get_system_widget($vo['name']); ?></div>
                </div>
                <?php else: if(isset($dashboard_widget_plugins[$vo['name']])): ?>
                    <div class="grid-item col-md-<?php echo $dashboard_widget_plugins[$vo['name']]['width']; ?>" data-system="0"
                         data-widget="<?php echo $vo['name']; ?>" data-width="<?php echo $dashboard_widget_plugins[$vo['name']]['width']; ?>">
                        <div class="dashboard-box"><?php echo $dashboard_widget_plugins[$vo['name']]['view']; ?></div>
                    </div>
                <?php endif; ?>
            <?php endif; ?>

        <?php endforeach; endif; else: echo "" ;endif; ?>
    </div>
</div>
<script src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>
<?php 
    $lang_set=cmf_current_lang();
    $thinkcmf_version=cmf_version();
 ?>
<script>

    $('.dashboard-box').each(function () {
        var $this = $(this);
        if ($(this).children().length === 0) {
            $this.parents('.grid-item').remove();
        }
    });
    var $homeGrid = null;
    Wind.css('dragula');
    Wind.use('masonry', 'imagesloaded', 'dragula', function () {
        $homeGrid = $('.home-grid').masonry({
            // gutter: 10,
            // fitWidth:true,
            // set itemSelector so .grid-sizer is not used in layout
            itemSelector: '.grid-item',
            // use element for option
            columnWidth: '.grid-sizer',
            percentPosition: true,
            horizontalOrder: false,
            transitionDuration: 0
        });

        $homeGrid.masonry('on', 'layoutComplete', function (event, laidOutItems) {
        });

        $.ajax({
            url: "//www.thinkcmf.com/service/team.php?lang=<?php echo $lang_set; ?>&v=<?php echo $thinkcmf_version; ?>",
            type: 'get',
            dataType: 'json',
            success: function (data) {
                if (data.code == 1) {
                    var $wrap = $('<ul class="list-inline"></ul>')
                    $.each(data.data.main_contributors, function (i, item) {
                        if (item.url) {
                            $wrap.append('<li><a href="' + item.url + '" target="_blank">' + item.name + '</a></li>')
                        } else {
                            $wrap.append('<li>' + item.name + '</li>')
                        }
                    });
                    $('.main_contributors').html($wrap);

                    $wrap = $('<ul class="list-inline"></ul>');
                    $.each(data.data.contributors, function (i, item) {
                        if (item.url) {
                            $wrap.append('<li><a href="' + item.url + '" target="_blank">' + item.name + '</a></li>')
                        } else {
                            $wrap.append('<li>' + item.name + '</li>')
                        }
                    });
                    $('.contributors').html($wrap);
                    $homeGrid.masonry();
                }
            },
            error: function () {

            },
            complete: function () {

            }
        });

        $homeGrid.masonry();

        var containers = [];
        $('.home-grid .grid-item').each(function () {
            containers.push(this);
        });
        dragula(containers, {
            isContainer: function (el) {
                return false; // only elements in drake.containers will be taken into account
            },
            moves: function (el, source, handle, sibling) {
                if ($(handle).is('.panel-title')) {
                    return true;
                }
                return false; // elements are always draggable by default
            },
            accepts: function (el, target, source, sibling) {
                return true; // elements can be dropped in any of the `containers` by default
            },
            invalid: function (el, handle) {
                return false; // don't prevent any drags from initiating by default
            },
            direction: 'vertical',             // Y axis is considered when determining where an element would be dropped
            copy: false,                       // elements are moved by default, not copied
            copySortSource: false,             // elements in copy-source containers can be reordered
            revertOnSpill: false,              // spilling will put the element back where it was dragged from, if this is true
            removeOnSpill: false,              // spilling will `.remove` the element, if this is true
            mirrorContainer: document.body,    // set the element that gets mirror elements appended
            ignoreInputTextSelection: true     // allows users to select input text, see details below
        }).on('drop', function (el, target, source, sibling) {
            var $target = $(target);
            var targetClasses = $target.attr('class');
            var targetDataWidget = $target.data('widget');
            var targetDataSystem = $target.data('system');
            var $source = $(source);
            var sourceClasses = $source.attr('class');
            var sourceDataWidget = $source.data('widget');
            var sourceDataSystem = $source.data('system');
            $(source).append($(target).find('.dashboard-box').not('.gu-transit'));
            $(target).append(el);
            $target.attr('class', sourceClasses);
            $target.data('widget', sourceDataWidget);
            $target.data('system', sourceDataSystem);

            $source.attr('class', targetClasses);
            $source.data('widget', targetDataWidget);
            $source.data('system', targetDataSystem);
            $homeGrid.masonry();

            _widgetSort();
        }).on('shadow', function (el, container, source) {
            $homeGrid.masonry();
        });


    });

    function _widgetSort() {

        var widgets = [];
        $('.home-grid .grid-item').each(function () {
            var $this = $(this);

            widgets.push({
                name: $this.data('widget'),
                is_system: $this.data('system')
            });
        });

        $.ajax({
            url: "<?php echo url('Main/dashboardWidget'); ?>",
            type: 'post',
            dataType: 'json',
            data: {widgets: widgets},
            success: function (data) {

            },
            error: function () {

            },
            complete: function () {

            }
        });
    }

    //获取官方通知
    $.getJSON("//www.thinkcmf.com/service/sms_jsonp.php?lang=<?php echo $lang_set; ?>&v=<?php echo $thinkcmf_version; ?>&callback=?",
        function (data) {
            var tpl = '<li><em class="title"></em><span class="content"></span></li>';
            var $notices = $("#thinkcmf-notices");
            $notices.empty();
            if (data.length > 0) {
                $('#thinkcmf-notices-grid').show();
                $.each(data, function (i, n) {
                    var $tpl = $(tpl);
                    $(".title", $tpl).html(n.title);
                    $(".content", $tpl).html(n.content);
                    $notices.append($tpl);
                });
            } else {
                $notices.append("<li>^_^,<?php echo lang('NO_NOTICE'); ?>~~</li>");
            }

        });
</script>
<?php 
    hook('admin_before_body_end',null,false);
 ?>
</body>
</html>

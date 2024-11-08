<?php /*a:2:{s:95:"E:\product\kuangshan\kuangshan-cmf\vendor\thinkcmf\cmf-appstore\src\view\app_store\plugins.html";i:1730268644;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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

</head>
<body>
<div class="wrap js-check-wrap">
    <ul class="nav nav-tabs">
        <li><a href="<?php echo url('AppStore/apps'); ?>"><?php echo lang('ADMIN_APPSTORE_APPS'); ?></a></li>
        <li class="active"><a href="<?php echo url('AppStore/plugins'); ?>"><?php echo lang('ADMIN_APPSTORE_PLUGINS'); ?></a></li>
        <li><a href="<?php echo url('AppStore/themes'); ?>"><?php echo lang('ADMIN_APPSTORE_THEMES'); ?></a></li>
    </ul>
    <form method="post" class="js-ajax-form margin-top-20">
        <?php 
            $status=array("1"=>'开启',"0"=>'禁用',"3"=>'未安装');
         ?>
        <table class="table table-hover table-bordered">
            <thead>
            <tr>
                <th>插件名称</th>
                <th>插件标识</th>
                <th>描述</th>
                <th>版本</th>
                <!--                <th width="60">状态</th>-->
                <th width="220">操作</th>
            </tr>
            </thead>
            <tbody>
            <?php if(is_array($plugins) || $plugins instanceof \think\Collection || $plugins instanceof \think\Paginator): if( count($plugins)==0 ) : echo "" ;else: foreach($plugins as $key=>$vo): ?>
                <tr>
                    <td>
                        <a href="https://www.thinkcmf.com/appstore/plugin/<?php echo $vo['id']; ?>.html" target="_blank"><?php echo $vo['title']; ?></a>
                    </td>
                    <td><span class="label label-info"><?php echo $vo['name']; ?></span></td>
                    <td><?php echo $vo['description']; ?></td>
                    <td><span class="label label-success"><?php echo $vo['version']; ?></span></td>

                    <!--                    <td><?php echo $status[$vo['status']]; ?></td>-->
                    <td>
                        <?php if(empty($vo['installed']) || (($vo['installed'] instanceof \think\Collection || $vo['installed'] instanceof \think\Paginator ) && $vo['installed']->isEmpty())): if(empty($appstore_settings['access_token']) || (($appstore_settings['access_token'] instanceof \think\Collection || $appstore_settings['access_token'] instanceof \think\Paginator ) && $appstore_settings['access_token']->isEmpty())): ?>
                                <a class="btn btn-primary btn-xs js-install-plugin-btn"
                                   data-href="<?php echo url('AppStore/installPlugin',['id'=>$vo['id']]); ?>">安装</a>
                                <?php else: if(empty($vo['has_bought']) || (($vo['has_bought'] instanceof \think\Collection || $vo['has_bought'] instanceof \think\Paginator ) && $vo['has_bought']->isEmpty())): ?>
                                    <a class="btn btn-info btn-xs"
                                       href="javascript:;" onclick="doBuyPlugin('<?php echo $vo['buy_url']; ?>')">购买</a>
                                    <?php else: ?>
                                    <a class="btn btn-primary btn-xs js-ajax-dialog-btn"
                                       data-href="<?php echo url('AppStore/installPlugin',['id'=>$vo['id']]); ?>"
                                       data-wait-msg="正在安装...">安装</a>
                                <?php endif; ?>
                            <?php endif; else: if(!(empty($vo['need_update']) || (($vo['need_update'] instanceof \think\Collection || $vo['need_update'] instanceof \think\Paginator ) && $vo['need_update']->isEmpty()))): ?>
                                <a class="btn btn-success btn-xs js-ajax-dialog-btn"
                                   data-href="<?php echo url('AppStore/installPlugin',['id'=>$vo['id'],'version'=>$vo['installed_plugin']['version']]); ?>">升级</a>
                            <?php endif; ?>
                            <a class="btn btn-xs btn-danger js-ajax-dialog-btn"
                               href="<?php echo url('Plugin/uninstall',array('id'=>$vo['installed_plugin']['id'])); ?>"
                               data-msg="确定卸载该插件吗？">卸载</a>
                        <?php endif; ?>
                        <!--<a target="_blank" href2="https://www.thinkcmf.com/appstore/login/index" class="btn btn-primary btn-xs js-install-plugin-btn" data-href="<?php echo url('AppStore/installPlugin',['id'=>$vo['id']]); ?>">安装</a>-->
                    </td>
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
            </tbody>
        </table>
        <ul class="pagination"><?php echo $page; ?></ul>
    </form>
</div>
<script src="/static/js/admin.js"></script>
<script>
    $('.js-install-plugin-btn').click(function () {
        parent.openIframeLayer("<?php echo url('admin/AppStore/login'); ?>", '登录应用市场', {
            area: ['600px', '450px'],
            end: function () {
                window.location.reload()
            }
        });
    });

    var buyPluginLayerIndex = '';

    function doBuyPlugin(buyUrl) {
        buyUrl = buyUrl + "?app_store_token=<?php echo (isset($appstore_settings['access_token']) && ($appstore_settings['access_token'] !== '')?$appstore_settings['access_token']:''); ?>"
        parent.openIframeLayer(buyUrl, '购买插件', {
            area: ['95%', '90%'],
            end: function () {
            },
            success: function (layero, index) {
                buyPluginLayerIndex = index
            }
        });
    }


    window.parent.addEventListener('message', e => {
        // e.data为子页面发送的数据
        if (e.origin.match(/https?:\/\/www\.thinkcmf\.c(om|n)/)) {
            console.log(e)
            console.log(e.data)

            switch (e.data.action) {
                case "appstore/pay/complete":
                    window.location.reload()
                    parent.layer.close(buyPluginLayerIndex);
                    break;
            }
        }


    })
</script>
</body>
</html>

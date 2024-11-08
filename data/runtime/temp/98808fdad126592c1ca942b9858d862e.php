<?php /*a:2:{s:87:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/admin\dev\index.html";i:1730268636;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
    .dev-menu-wrap{
        margin-bottom: 15px;
    }
</style>
</head>
<body>
<div class="wrap js-check-wrap">
    <ul class="nav nav-tabs">
        <li class="active"><a href="<?php echo url('Dev/index'); ?>">开发面板</a></li>
    </ul>

    <div class="margin-top-20">
        <div class="row">
            <div class="col-md-3 dev-menu-wrap">
                <a href="javascript:parent.openapp('<?php echo url('Menu/index'); ?>','dev_menu_index','后台菜单')" class="btn btn-primary btn-block"><?php echo lang('ADMIN_MENU_INDEX'); ?></a>
            </div>
            <div class="col-md-3 dev-menu-wrap">
                <a href="<?php echo url('user/AdminUserAction/sync'); ?>" class="btn btn-success btn-block"><?php echo lang('USER_ADMINUSERACTION_SYNC'); ?></a>
            </div>
            <div class="col-md-3 dev-menu-wrap">
                <a href="javascript:parent.openapp('<?php echo url('admin/Hook/index'); ?>','dev_hook_index','<?php echo lang('ADMIN_HOOK_INDEX'); ?>')" class="btn btn-info btn-block"><?php echo lang('ADMIN_HOOK_INDEX'); ?></a>
            </div>
            <div class="col-md-3 dev-menu-wrap">
                <a href="<?php echo url('admin/Hook/sync'); ?>" class="btn btn-default btn-block"><?php echo lang('ADMIN_HOOK_SYNC'); ?></a>
            </div>

            <?php 
                $sub_menus=\app\admin\service\DevService::devMenus();
                $default_menus = [
                'admin/Menu/index'          => ['app' => 'admin', 'controller' => 'Menu', 'action' => 'index'],
                'user/AdminUserAction/sync' => ['app' => 'user', 'controller' => 'AdminUserAction', 'action' => 'sync'],
                'admin/Hook/index'          => ['app' => 'admin', 'controller' => 'Hook', 'action' => 'index'],
                'admin/Hook/sync'           => ['app' => 'admin', 'controller' => 'Hook', 'action' => 'sync'],
                ];
             if(is_array($sub_menus) || $sub_menus instanceof \think\Collection || $sub_menus instanceof \think\Paginator): if( count($sub_menus)==0 ) : echo "" ;else: foreach($sub_menus as $key=>$sub_menu): 
                    $url=$sub_menu['app'].'/'.$sub_menu['controller'].'/'.$sub_menu['action'];
                    if(isset($default_menus[$url])){continue;}
                 ?>
                <div class="col-md-3 dev-menu-wrap">
                    <?php 
                        if (strpos($sub_menu['app'], 'plugin/') === 0) {
                            $pluginName = str_replace('plugin/', '', $sub_menu['app']);
                            $url        = cmf_plugin_url($pluginName . "://".$sub_menu['controller'].'/'.$sub_menu['action']);
                        }else{
                            $url=url($url);
                        }

                        $lang_key=strtoupper($sub_menu['app']).'_'.strtoupper($sub_menu['controller']).'_'.strtoupper($sub_menu['action']);
                        $menu_lang_name=lang($lang_key);
                        $menu_name=$menu_lang_name===$lang_key?$sub_menu['name']:$menu_lang_name;
                     ?>
                    <a href="javascript:parent.openapp('<?php echo $url; ?>','<?php echo $sub_menu['id']; ?>admin','<?php echo $menu_name; ?>')" class="btn btn-default btn-block"><?php echo $menu_name; ?></a>
                </div>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </div>


    </div>

</div>
<script src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>
</body>
</html>

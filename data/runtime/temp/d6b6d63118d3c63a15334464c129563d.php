<?php /*a:2:{s:88:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/admin\menu\index.html";i:1730268637;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
        <li class="active"><a href="<?php echo url('Menu/index'); ?>"><?php echo lang('ADMIN_MENU_INDEX'); ?></a></li>
        <li><a href="<?php echo url('Menu/add'); ?>"><?php echo lang('ADMIN_MENU_ADD'); ?></a></li>
        <li><a href="<?php echo url('Menu/lists'); ?>"><?php echo lang('ADMIN_MENU_LISTS'); ?></a></li>
    </ul>
    <form class="js-ajax-form" action="<?php echo url('Menu/listOrder'); ?>" method="post">
        <div class="table-actions">
            <button class="btn btn-primary btn-sm js-ajax-submit" type="submit"><?php echo lang('SORT'); ?></button>
        </div>
        <table class="table table-hover table-bordered table-list" id="menus-table">
            <thead>
            <tr>
                <th width="80"><?php echo lang('SORT'); ?></th>
                <th width="50">ID</th>
                <th><?php echo lang('NAME'); ?></th>
                <th><?php echo lang('APP_CONTROLLER_ACTION'); ?></th>
                <th width="80"><?php echo lang('STATUS'); ?></th>
                <th width="180"><?php echo lang('ACTIONS'); ?></th>
            </tr>
            </thead>
            <tbody>
            <?php 
$___tree= new \tree\Tree();
$___tree->init($menus);
$menus=$___tree->createTree();
foreach ($menus as $___node) {
    $___stack           = [];
    $___node['_level']  = 1;
    $___node['_spacer'] = '';
    array_push($___stack, $___node);
    $menu = [];
    while (count($___stack) > 0) {
        $menu = array_pop($___stack);
        if (!$menu) return;
 ?>

                <tr id="node-<?php echo $menu['id']; ?>" class="<?php echo !empty($menu['parent_id']) ? 'child-of-node-'.$menu['parent_id'] : ''; ?>" style="<?php echo !empty($menu['parent_id']) ? 'display : none;':''; ?>">
                    <td style="padding-left:20px;">
                        <input name="list_orders[<?php echo $menu['id']; ?>]" type="text" size="3" value="<?php echo $menu['list_order']; ?>"
                               class="input input-order">
                    </td>
                    <td><?php echo $menu['id']; ?></td>
                    <td><?php echo $menu['_spacer']; ?><?php echo $menu['name']; ?></td>
                    <td><?php echo $menu['app']; ?>/<?php echo $menu['controller']; ?>/<?php echo $menu['action']; ?></td>
                    <td>
                        <?php if(empty($menu['status']) || (($menu['status'] instanceof \think\Collection || $menu['status'] instanceof \think\Paginator ) && $menu['status']->isEmpty())): ?>
                            <span class="label label-warning"><?php echo lang('HIDDEN'); ?></span>
                            <?php else: ?>
                            <span class="label label-success"><?php echo lang('DISPLAY'); ?></span>
                        <?php endif; ?>
                    </td>
                    <td>
                        <a class="btn btn-xs btn-primary"
                           href="<?php echo url('Menu/add', ['parent_id' =>$menu['id']]); ?>"><?php echo lang('ADD_SUB_MENU'); ?></a>
                        <a class="btn btn-xs btn-success"
                           href="<?php echo url('Menu/edit', ['id' =>$menu['id']]); ?>"><?php echo lang('EDIT'); ?></a>
                        <a class="btn btn-xs btn-danger js-ajax-delete"
                           href="<?php echo url('Menu/delete', ['id' =>$menu['id']]); ?>"><?php echo lang('DELETE'); ?></a>
                    </td>
                </tr>
            
<?php 
        if (!empty($menu['children'])) {
            $___childrenCount = count($menu['children']);
            for ($i = $___childrenCount - 1; $i >= 0; $i--) {
                $menu['children'][$i]['_level'] = $menu['_level'] + 1;
                if ($i == $___childrenCount - 1) {
                    $menu['children'][$i]['_is_last'] = 1;
                    $menu['children'][$i]['_spacer'] = str_repeat($___tree->nbsp, $menu['children'][$i]['_level'] - 1). $___tree->icon[2] . ' ';
                } else {
                    $menu['children'][$i]['_is_last'] = 0;
                    $menu['children'][$i]['_spacer'] = str_repeat($___tree->nbsp, $menu['children'][$i]['_level'] - 1). $___tree->icon[1] . ' ';
                }
                array_push($___stack, $menu['children'][$i]);
            }
        }
    }
}
 ?>
            </tbody>
            <tfoot>
            <tr>
                <th width="80"><?php echo lang('SORT'); ?></th>
                <th width="50">ID</th>
                <th><?php echo lang('NAME'); ?></th>
                <th><?php echo lang('APP_CONTROLLER_ACTION'); ?></th>
                <th width="80"><?php echo lang('STATUS'); ?></th>
                <th width="180"><?php echo lang('ACTIONS'); ?></th>
            </tr>
            </tfoot>
        </table>
        <div class="table-actions">
            <button class="btn btn-primary btn-sm js-ajax-submit" type="submit"><?php echo lang('SORT'); ?></button>
        </div>
    </form>
</div>
<script src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>
<script>
    $(document).ready(function () {
        Wind.css('treeTable');
        Wind.use('treeTable', function () {
            $("#menus-table").treeTable({
                indent: 20
            });
        });
    });
</script>
</body>
</html>

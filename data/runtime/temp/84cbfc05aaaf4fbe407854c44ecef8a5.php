<?php /*a:2:{s:89:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/admin\route\index.html";i:1730268637;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
        <li class="active"><a href="<?php echo url('Route/index'); ?>"><?php echo lang('ADMIN_ROUTE_INDEX'); ?></a></li>
        <li><a href="<?php echo url('Route/add'); ?>"><?php echo lang('ADMIN_ROUTE_ADD'); ?></a></li>
    </ul>
    <form class="js-ajax-form" action="<?php echo url('Route/listOrder'); ?>" method="post">
        <div class="table-actions">
            <button type="submit" class="btn btn-primary btn-sm js-ajax-submit"><?php echo lang('Sort'); ?></button>
        </div>
        <table class="table table-hover table-bordered table-list">
            <thead>
            <tr>
                <th width="50"><?php echo lang('Sort'); ?></th>
                <th width="50">ID</th>
                <th><?php echo lang('Full Url'); ?></th>
                <th><?php echo lang('Short Url'); ?></th>
                <th><?php echo lang('Type'); ?></th>
                <th><?php echo lang('Status'); ?></th>
                <th width="110"><?php echo lang('ACTIONS'); ?></th>
            </tr>
            </thead>
            <tbody>
            <?php 
                $statuses=array('0'=>lang('Disabled'),"1"=>lang('Enabled'));
                $types=array('1'=>"自定义","2"=>"别名定义");
             if(is_array($routes) || $routes instanceof \think\Collection || $routes instanceof \think\Paginator): if( count($routes)==0 ) : echo "" ;else: foreach($routes as $key=>$vo): ?>
                <tr>
                    <td>
                        <input name="list_orders[<?php echo $vo['id']; ?>]" class="input-order" type="text"
                               value="<?php echo $vo['list_order']; ?>">
                    </td>
                    <td><?php echo $vo['id']; ?></td>
                    <td><?php echo $vo['full_url']; ?></td>
                    <td><?php echo $vo['url']; ?></td>
                    <td>
                        <?php if($vo['type'] == '2'): ?>
                            <span class="label label-danger" data-toggle="tooltip" title="别名定义规则,无法编辑,排序"><?php echo $types[$vo['type']]; ?></span>
                            <?php else: ?>
                            <span class="label label-success" data-toggle="tooltip" title="自定义规则,可以编辑,排序"><?php echo $types[$vo['type']]; ?></span>
                        <?php endif; ?>
                    </td>
                    <td>
                        <?php if(empty($vo['status']) || (($vo['status'] instanceof \think\Collection || $vo['status'] instanceof \think\Paginator ) && $vo['status']->isEmpty())): ?>
                            <span class="label label-default"><?php echo $statuses[$vo['status']]; ?></span>
                            <?php else: ?>
                            <span class="label label-success"><?php echo $statuses[$vo['status']]; ?></span>
                        <?php endif; ?>
                    </td>
                    <td>
                        <?php if($vo['type'] == '2'): ?>
                            <span class="btn btn-xs btn-primary disabled" title="<?php echo lang('EDIT'); ?>" data-toggle="tooltip">
                                <i class="fa fa-edit fa-fw"></i></span>
                            <span class="btn btn-xs btn-warning disabled" title="<?php echo lang('Disable'); ?>"
                                  data-toggle="tooltip"><i class="fa fa-toggle-off fa-fw"></i></span>
                            <span class="btn btn-xs btn-danger disabled" title="<?php echo lang('DELETE'); ?>"
                                  data-toggle="tooltip"><i class="fa fa-trash fa-fw"></i></span>
                            <?php else: ?>
                            <a class="btn btn-xs btn-primary" href="<?php echo url('Route/edit',array('id'=>$vo['id'])); ?>"
                               data-toggle="tooltip"
                               title="<?php echo lang('EDIT'); ?>"><i class="fa fa-edit fa-fw"></i></a>
                            <?php if($vo['status'] == '1'): ?>
                                <a class="btn btn-xs btn-warning js-ajax-dialog-btn"
                                   href="<?php echo url('Route/ban',array('id'=>$vo['id'])); ?>"
                                   data-toggle="tooltip"
                                   data-msg="确定禁用吗？" title="<?php echo lang('Disable'); ?>">
                                    <i class="fa fa-toggle-off fa-fw"></i>
                                </a>
                                <?php else: ?>
                                <a class="btn btn-xs btn-success js-ajax-dialog-btn"
                                   href="<?php echo url('Route/open',array('id'=>$vo['id'])); ?>"
                                   data-toggle="tooltip"
                                   data-msg="确定启用吗？"
                                   title="<?php echo lang('Enable'); ?>">
                                    <i class="fa fa-toggle-on fa-fw"></i>
                                </a>
                            <?php endif; ?>
                            <a class="btn btn-xs btn-danger js-ajax-delete"
                               data-href="<?php echo url('Route/delete',array('id'=>$vo['id'])); ?>"
                               href="javascript:;"
                               title="<?php echo lang('DELETE'); ?>"
                               data-toggle="tooltip">
                                <i class="fa fa-trash fa-fw"></i>
                            </a>
                        <?php endif; ?>
                    </td>
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
            </tbody>
            <tfoot>
            <tr>
                <th width="50"><?php echo lang('Sort'); ?></th>
                <th width="50">ID</th>
                <th><?php echo lang('Full Url'); ?></th>
                <th><?php echo lang('Short Url'); ?></th>
                <th><?php echo lang('Type'); ?></th>
                <th><?php echo lang('Status'); ?></th>
                <th width="110"><?php echo lang('ACTIONS'); ?></th>
            </tr>
            </tfoot>
        </table>
        <div class="table-actions">
            <button type="submit" class="btn btn-primary btn-sm js-ajax-submit"><?php echo lang('Sort'); ?></button>
        </div>
    </form>
</div>
<script type="text/javascript" src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>
</body>
</html>

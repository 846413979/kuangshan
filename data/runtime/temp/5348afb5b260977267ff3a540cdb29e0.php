<?php /*a:2:{s:95:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/admin\recycle_bin\index.html";i:1730268637;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
        <li class="active"><a href="javascript:void(0)"><?php echo lang('ADMIN_RECYCLEBIN_INDEX'); ?></a></li>
    </ul>
    <form class="js-ajax-form" method="post">
        <div class="table-actions margin-top-20">
            <button class="btn btn-primary btn-sm js-ajax-submit" type="submit"
                    data-action="<?php echo url('RecycleBin/delete'); ?>" data-subcheck="true">全部删除
            </button>
            <button class="btn btn-success btn-sm js-ajax-submit" type="submit"
                    data-action="<?php echo url('RecycleBin/restore'); ?>" data-subcheck="true">全部还原
            </button>
            <a class="btn btn-danger btn-sm js-ajax-dialog-btn" href="<?php echo url('RecycleBin/clear'); ?>"
               data-msg="该操作不可恢复，确认要清空全部文件吗？">清空回收站 </a>
        </div>
        <table class="table table-hover table-bordered table-list">
            <thead>
            <tr>
                <th style="width: 15px">
                    <label><input type="checkbox" class="js-check-all" data-direction="x" data-checklist="js-check-x"> </label>
                </th>
                <th style="width: 50px">ID</th>
                <th>内容名称</th>
                <th>内容类型</th>
                <th>删除时间</th>
                <th>操作人</th>
                <th width="130"><?php echo lang('ACTIONS'); ?></th>
            </tr>
            </thead>
            <tbody>
            <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): if( count($list)==0 ) : echo "" ;else: foreach($list as $key=>$vo): ?>
                <tr>
                    <td>
                        <input type="checkbox" class="js-check" data-yid="js-check-y" data-xid="js-check-x" name="ids[]" value="<?php echo $vo['id']; ?>"
                               title="ID:<?php echo $vo['id']; ?>">
                    </td>
                    <td><?php echo $vo['id']; ?></td>
                    <td><?php echo $vo['name']; ?></td>
                    <td>
                        <?php echo lang('TABLE_'.strtoupper($vo['table_name'])); ?>
                    </td>
                    <td> <?php echo date('Y-m-d H:i:s',$vo['create_time']); ?></td>

                    <td> <?php echo (isset($vo['user']['user_login']) && ($vo['user']['user_login'] !== '')?$vo['user']['user_login']:''); ?></td>
                    <td>
                        <a href="<?php echo url('RecycleBin/restore', ['ids'=>$vo['id']]); ?>" class="btn btn-xs btn-success js-ajax-dialog-btn"
                           data-msg="确定要还原吗？">还原</a>
                        <a href="<?php echo url('RecycleBin/delete', ['ids'=>$vo['id']]); ?>" class="btn btn-xs btn-danger js-ajax-delete"><?php echo lang('DELETE'); ?></a>
                    </td>
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
            </tbody>
        </table>
        <div class="table-actions">
            <button class="btn btn-primary btn-sm js-ajax-submit" type="submit"
                    data-action="<?php echo url('RecycleBin/delete'); ?>" data-subcheck="true">全部删除
            </button>
            <button class="btn btn-success btn-sm js-ajax-submit" type="submit"
                    data-action="<?php echo url('RecycleBin/restore'); ?>" data-subcheck="true">全部还原
            </button>
            <a class="btn btn-danger btn-sm js-ajax-dialog-btn" href="<?php echo url('RecycleBin/clear'); ?>"
               data-msg="该操作不可恢复，确认要清空全部文件吗？">清空回收站 </a>
        </div>
        <div class="pagination"><?php echo $page; ?></div>
    </form>
</div>
<script src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>
</body>
</html>

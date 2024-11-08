<?php /*a:2:{s:95:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/portal\admin_page\index.html";i:1730686187;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
        <li class="active"><a href="<?php echo url('AdminPage/index'); ?>">页面管理</a></li>
        <li><a href="<?php echo url('AdminPage/add'); ?>">添加页面</a></li>
    </ul>
    <form class="well form-inline margin-top-20" method="post" action="<?php echo url('AdminPage/index'); ?>">
        标题:
        <input type="text" class="form-control" name="keyword" style="width: 200px;"
               value="<?php echo (isset($keyword) && ($keyword !== '')?$keyword:''); ?>" placeholder="请输入关键字">
        <button class="btn btn-primary">搜索</button>
    </form>
    <form class="js-ajax-form" method="post">
        <div class="table-actions">
            <button class="btn btn-danger btn-sm js-ajax-submit" type="submit" data-action="<?php echo url('AdminPage/delete'); ?>"
                    data-subcheck="true" data-msg="<?php echo lang('DELETE_CONFIRM_MESSAGE'); ?>"><?php echo lang('DELETE'); ?>
            </button>
        </div>
        <table class="table table-hover table-bordered table-list">
            <thead>
            <tr>
                <th width="16">
                    <input type="checkbox" class="js-check-all" data-direction="x" data-checklist="js-check-x">
                </th>
                <th>id</th>
                <th>标题</th>
                <th width="120">操作</th>
            </tr>
            </thead>
            <?php $status=array("1"=>'已发布',"0"=>'未发布'); if(is_array($pages) || $pages instanceof \think\Collection || $pages instanceof \think\Paginator): if( count($pages)==0 ) : echo "" ;else: foreach($pages as $key=>$vo): ?>
                <tr>
                    <td title="ID:<?php echo $vo['id']; ?>">
                        <input type="checkbox" class="js-check" data-yid="js-check-y" data-xid="js-check-x" name="ids[]"
                               value="<?php echo $vo['id']; ?>">
                    </td>
                    <td>
                        <?php echo $vo['id']; ?>
                    </td>
                    <td>
                        <?php echo $vo['post_title']; ?>
                    </td>
                    <td>
                        <a class="btn btn-xs btn-primary" href="javascript:;"
                           onclick="openPortalPageEditDialog(this)"
                           data-href="<?php echo url('AdminPage/edit',array('id'=>$vo['id'])); ?>"><?php echo lang('EDIT'); ?></a>
                        <a class="btn btn-xs btn-danger js-ajax-delete"
                           href="<?php echo url('AdminPage/delete',array('id'=>$vo['id'])); ?>"><?php echo lang('DELETE'); ?></a>
                    </td>
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </table>
        <div class="table-actions">
            <button class="btn btn-danger btn-sm js-ajax-submit" type="submit" data-action="<?php echo url('AdminPage/delete'); ?>"
                    data-subcheck="true" data-msg="你确定删除吗？"><?php echo lang('DELETE'); ?>
            </button>
        </div>
        <div class="pagination"><?php echo $page; ?></div>
    </form>
</div>
<script src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>

<script>
    function openPortalPageEditDialog(obj) {
        var $obj = $(obj);
        var href = $obj.data('href');
        parent.openIframeLayer(href, '编辑页面', {
            area: GV.IS_MOBILE ? ['100%', '100%'] : ['95%', '95%'],
            offset: GV.IS_MOBILE ? ['0px', '0px'] : 'auto',
            // btn: ['确定', '取消'],
            yes: function (index, layero) {
                console.log(layero);
                var iframeWin = parent.window[layero.find('iframe')[0]['name']];
                //iframeWin.confirm();
                parent.layer.close(index); //如果设定了yes回调，需进行手工关闭
            },
            end: function () {
            }
        });
    }
</script>
</body>
</html>

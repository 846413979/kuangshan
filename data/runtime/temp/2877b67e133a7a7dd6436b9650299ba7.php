<?php /*a:2:{s:90:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/admin\plugin\index.html";i:1730268637;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
        <li class="active"><a href="<?php echo url('Plugin/index'); ?>"><?php echo lang('ADMIN_PLUGIN_INDEX'); ?></a></li>
        <?php if(class_exists('\app\admin\controller\AppStoreController')): ?>
            <li><a href="<?php echo url('AppStore/plugins'); ?>"><?php echo lang('ADMIN_APPSTORE_PLUGINS'); ?></a></li>
        <?php endif; ?>
        <li>
            <a href="http://www.thinkcmf.com/faq.html?url=https://www.kancloud.cn/thinkcmf/faq/493510" target="_blank">插件离线安装<i
                    class="fa fa-question-circle"></i></a>
        </li>
        <li><a href="http://www.thinkcmf.com/topic/index/index/cat/9.html" target="_blank">插件交流</a></li>
        <li><a href="https://www.thinkcmf.com/docs/cmf6/#/%E6%8F%92%E4%BB%B6" target="_blank">插件文档</a></li>
    </ul>
    <form method="post" class="js-ajax-form margin-top-20">
        <?php 
            $status=array("1"=>'开启',"0"=>'禁用',"3"=>'未安装');
         ?>
        <table class="table table-hover table-bordered">
            <thead>
            <tr>
                <th><?php echo lang('Name'); ?></th>
                <th><?php echo lang('Key'); ?></th>
                <th><?php echo lang('Description'); ?></th>
                <th><?php echo lang('Author'); ?></th>
                <th><?php echo lang('Version'); ?></th>
                <th width="60"><?php echo lang('Status'); ?></th>
                <th width="225"><?php echo lang('ACTIONS'); ?></th>
            </tr>
            </thead>
            <tbody>
            <?php if(is_array($plugins) || $plugins instanceof \think\Collection || $plugins instanceof \think\Paginator): if( count($plugins)==0 ) : echo "" ;else: foreach($plugins as $key=>$vo): ?>
                <tr>
                    <td><?php echo $vo['title']; ?></td>
                    <td><span class="label label-info"><?php echo $vo['name']; ?></span></td>
                    <td><?php echo $vo['description']; ?></td>
                    <td><?php echo $vo['author']; ?></td>
                    <td><span class="label label-success"><?php echo $vo['version']; ?></span></td>
                    <td><?php echo $status[$vo['status']]; ?></td>
                    <td>
                        <?php if($vo['status']==3): ?>
                            <a class="btn btn-xs btn-primary js-ajax-dialog-btn"
                               href="<?php echo url('Plugin/install',array('name'=>$vo['name'])); ?>"
                               data-msg="确定安装该插件吗？"><?php echo lang('Install'); ?></a>
                            <?php else: $config=json_decode($vo['config'],true); ?>
                            <!-- Single button -->
                            <span class="dropdown">
                                <span class="btn btn-primary btn-xs dropdown-toggle" data-toggle="dropdown"
                                      aria-haspopup="true" aria-expanded="false">
                                    设置<span class="caret"></span>
                                </span>
                                <ul class="dropdown-menu">
                                    <?php if(!empty($config)): if(empty($config['custom_config']) || (($config['custom_config'] instanceof \think\Collection || $config['custom_config'] instanceof \think\Paginator ) && $config['custom_config']->isEmpty())): ?>
                                            <li>
                                                <a data-href="<?php echo url('Plugin/setting',array('id'=>$vo['id'])); ?>"
                                                   href="javascript:;" onclick="openPluginSettingDialog(this)"><i class="fa fa-cog fa-fw"></i> 插件设置</a>
                                            </li>
                                            <?php else: ?>
                                            <li>
                                                <a data-href="<?php echo cmf_plugin_url($vo['name'].'://AdminIndex/setting'); ?>"
                                                   href="javascript:;" onclick="openPluginSettingDialog(this)"><i class="fa fa-cog fa-fw"></i> 插件设置</a>
                                            </li>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                    <li>
                                        <a data-href="<?php echo url('admin/Plugin/hooks',['id'=>$vo['id']]); ?>"
                                           href="javascript:;" onclick="openPluginHooksDialog(this)"><i class="fa fa-list-ol fa-fw"></i> 执行顺序</a>
                                    </li>
                                </ul>
                            </span>

                            <?php if(!empty($vo['has_admin'])): ?>
                                <a class="btn btn-xs btn-info"
                                   href="javascript:parent.openapp('<?php echo cmf_plugin_url($vo['name'].'://AdminIndex/index'); ?>','plugin_<?php echo $vo['name']; ?>','<?php echo $vo['title']; ?>')">管理</a>
                                <?php else: ?>
                                <a class="btn btn-xs btn-info disabled" href="javascript:;">管理</a>
                            <?php endif; ?>

                            <a class="btn btn-xs btn-success js-ajax-dialog-btn"
                               href="<?php echo url('Plugin/update',array('name'=>$vo['name'])); ?>"
                               data-msg="确定更新该插件吗？"><?php echo lang('Update'); ?></a>

                            <?php if($vo['status']==0): ?>
                                <a class="btn btn-xs btn-success js-ajax-dialog-btn"
                                   href="<?php echo url('Plugin/toggle',array('id'=>$vo['id'],'enable'=>1)); ?>"
                                   data-msg="确定启用该插件吗？"><?php echo lang('Enable'); ?></a>
                                <?php else: ?>
                                <a class="btn btn-xs btn-warning js-ajax-dialog-btn"
                                   href="<?php echo url('Plugin/toggle',array('id'=>$vo['id'],'disable'=>1)); ?>"
                                   data-msg="确定禁用该插件吗？"><?php echo lang('Disable'); ?></a>
                            <?php endif; ?>

                            <a class="btn btn-xs btn-danger js-ajax-dialog-btn"
                               href="<?php echo url('Plugin/uninstall',array('id'=>$vo['id'])); ?>"
                               data-msg="确定卸载该插件吗？"><?php echo lang('Uninstall'); ?></a>
                        <?php endif; ?>
                    </td>
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
            </tbody>
        </table>
    </form>
</div>
<script src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>
<script>
    function openPluginSettingDialog(obj) {
        var $obj = $(obj);
        var href = $obj.data('href');
        parent.openIframeLayer(href, '插件设置', {
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

    function openPluginHooksDialog(obj) {
        var $obj = $(obj);
        var href = $obj.data('href');
        parent.openIframeLayer(href, '插件钩子', {
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

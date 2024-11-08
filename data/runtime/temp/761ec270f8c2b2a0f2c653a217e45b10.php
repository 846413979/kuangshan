<?php /*a:2:{s:90:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/admin\mailer\index.html";i:1730268637;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
<div class="wrap">
    <ul class="nav nav-tabs">
        <li class="active"><a href="<?php echo url('Mailer/index'); ?>"><?php echo lang('ADMIN_MAILER_INDEX'); ?></a></li>
        <li><a href="<?php echo url('Mailer/template'); ?>?template_key=verification_code"><?php echo lang('ADMIN_MAILER_TEMPLATE'); ?></a></li>
        <li><a href="<?php echo url('User/emailSetting'); ?>">我的邮箱配置</a></li>
    </ul>
    <form method="post" class="form-horizontal js-ajax-form margin-top-20" action="<?php echo url('Mailer/indexPost'); ?>">
        <div class="form-group">
            <label for="input-from_name" class="col-sm-2 control-label">
                <span class="form-required">*</span>
                <?php echo lang('SENDER_NAME'); ?>
                <a href="http://www.thinkcmf.com/faq.html?url=https://www.kancloud.cn/thinkcmf/faq/493502"
                   title="查看帮助手册"
                   data-toggle="tooltip"
                   target="_blank"><i class="fa fa-question-circle"></i></a>
            </label>
            <div class="col-md-6 col-sm-10">
                <input type="text" class="form-control" id="input-from_name" name="from_name"
                       value="<?php echo (isset($from_name) && ($from_name !== '')?$from_name:''); ?>">
            </div>
        </div>
        <div class="form-group">
            <label for="input-from" class="col-sm-2 control-label">
                <span class="form-required">*</span><?php echo lang('SENDER_EMAIL_ADDRESS'); ?>
            </label>
            <div class="col-md-6 col-sm-10">
                <input type="text" class="form-control" id="input-from" name="from" value="<?php echo (isset($from) && ($from !== '')?$from:''); ?>">
            </div>
        </div>
        <div class="form-group">
            <label for="input-host" class="col-sm-2 control-label">
                <span class="form-required">*</span><?php echo lang('SENDER_SMTP_SERVER'); ?>
            </label>
            <div class="col-md-6 col-sm-10">
                <input type="text" class="form-control" id="input-host" name="host" value="<?php echo (isset($host) && ($host !== '')?$host:''); ?>">
            </div>
        </div>
        <div class="form-group">
            <label for="js-smtpsecure" class="col-sm-2 control-label">
                <span class="form-required">*</span><?php echo lang('SMTP Secure Protocol'); ?>
            </label>
            <div class="col-md-6 col-sm-10">
                <select name="smtp_secure" id="js-smtpsecure" class="form-control">
                    <option value=""><?php echo lang('Default'); ?></option>
                    <option value="ssl">SSL</option>
                    <option value="tls">TLS</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="input-port" class="col-sm-2 control-label">
                <span class="form-required">*</span><?php echo lang('SMTP Server Port'); ?>
            </label>
            <div class="col-md-6 col-sm-10">
                <input type="text" class="form-control" id="input-port" name="port" value="<?php echo (isset($port) && ($port !== '')?$port:''); ?>"
                       placeholder="25">
            </div>
        </div>
        <div class="form-group">
            <label for="input-login_name" class="col-sm-2 control-label">
                <span class="form-required">*</span><?php echo lang('SMTP_MAIL_ADDRESS'); ?>
            </label>
            <div class="col-md-6 col-sm-10">
                <input type="text" class="form-control" id="input-login_name" name="username"
                       value="<?php echo (isset($username) && ($username !== '')?$username:''); ?>">
            </div>
        </div>
        <div class="form-group">
            <label for="input-password" class="col-sm-2 control-label">
                <span class="form-required">*</span><?php echo lang('SMTP_MAIL_PASSWORD'); ?>
            </label>
            <div class="col-md-6 col-sm-10">
                <input type="password" class="form-control" id="input-password" name="password"
                       value="<?php echo (isset($password) && ($password !== '')?$password:''); ?>">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary js-ajax-submit"><?php echo lang('SAVE'); ?></button>
                <a class="btn btn-warning"
                   href="javascript:parent.openIframeLayer('<?php echo url('Mailer/test'); ?>','<?php echo lang('Send Test Email'); ?>',{area:['600px','400px']});">
                    <?php echo lang('Send Test Email'); ?>
                </a>
            </div>
        </div>
    </form>
</div>
<script src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>
<script>
    $(function () {
        $('#js-smtpsecure').val("<?php echo (isset($smtp_secure) && ($smtp_secure !== '')?$smtp_secure:''); ?>");
    });
</script>
</body>
</html>

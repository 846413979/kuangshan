<?php /*a:2:{s:87:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/admin\menu\edit.html";i:1730268637;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
			<li><a href="<?php echo url('Menu/index'); ?>"><?php echo lang('ADMIN_MENU_INDEX'); ?></a></li>
			<li><a href="<?php echo url('Menu/add'); ?>"><?php echo lang('ADMIN_MENU_ADD'); ?></a></li>
			<li><a href="<?php echo url('Menu/lists'); ?>"><?php echo lang('ADMIN_MENU_LISTS'); ?></a></li>
			<li class="active"><a><?php echo lang('ADMIN_MENU_EDIT'); ?></a></li>
		</ul>
		<form method="post" class="form-horizontal js-ajax-form margin-top-20" action="<?php echo url('Menu/editPost'); ?>">
			<div class="form-group">
				<label for="input-parent_id" class="col-sm-2 control-label"><span class="form-required">*</span><?php echo lang('Parent'); ?></label>
				<div class="col-md-6 col-sm-10">
					<select class="form-control" name="parent_id" id="input-parent_id">
						<option value="0">作为一级菜单</option><?php echo $select_category; ?>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="input-name" class="col-sm-2 control-label"><span class="form-required">*</span><?php echo lang('Name'); ?></label>
				<div class="col-md-6 col-sm-10">
					<input type="text" class="form-control" id="input-name" name="name" value="<?php echo $data['name']; ?>">
				</div>
			</div>
			<div class="form-group">
				<label for="input-app" class="col-sm-2 control-label"><span class="form-required">*</span>应用</label>
				<div class="col-md-6 col-sm-10">
					<input type="text" class="form-control" id="input-app" name="app" value="<?php echo $data['app']; ?>">
				</div>
			</div>
			<div class="form-group">
				<label for="input-controller" class="col-sm-2 control-label"><span class="form-required">*</span>控制器</label>
				<div class="col-md-6 col-sm-10">
					<input type="text" class="form-control" id="input-controller" name="controller" value="<?php echo $data['controller']; ?>">
				</div>
			</div>
			<div class="form-group">
				<label for="input-action" class="col-sm-2 control-label"><span class="form-required">*</span>方法</label>
				<div class="col-md-6 col-sm-10">
					<input type="text" class="form-control" id="input-action" name="action" value="<?php echo $data['action']; ?>">
				</div>
			</div>
			<div class="form-group">
				<label for="input-param" class="col-sm-2 control-label">参数</label>
				<div class="col-md-6 col-sm-10">
					<input type="text" class="form-control" id="input-param" name="param" value="<?php echo $data['param']; ?>">
					<p class="help-block">例:id=3&amp;p=3</p>
				</div>
			</div>
			<div class="form-group">
				<label for="input-icon" class="col-sm-2 control-label"><?php echo lang('Icon'); ?></label>
				<div class="col-md-6 col-sm-10">
					<input type="text" class="form-control" id="input-icon" name="icon" value="<?php echo $data['icon']; ?>">
					<p class="help-block">
						<a href="http://www.thinkcmf.com/font/font_awesome/icons.html" target="_blank">选择图标</a> 不带前缀fa-，如fa-user => user
					</p>
				</div>
			</div>
			<div class="form-group">
				<label for="input-remark" class="col-sm-2 control-label"><?php echo lang('Remark'); ?></label>
				<div class="col-md-6 col-sm-10">
					<textarea class="form-control" id="input-remark" name="remark"><?php echo $data['remark']; ?></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="input-status" class="col-sm-2 control-label"><?php echo lang('Status'); ?></label>
				<div class="col-md-6 col-sm-10" id="input-status">
					<select class="form-control" name="status">
						<option value="1">在左侧菜单显示</option>
						<?php $status_selected=empty($data['status'])?"selected":""; ?>
						<option value="0" <?php echo $status_selected; ?>>在左侧菜单隐藏</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="input-type" class="col-sm-2 control-label"><?php echo lang('Type'); ?></label>
				<div class="col-md-6 col-sm-10">
					<select class="form-control" name="type" id="input-type">
						<option value="1">有界面可访问菜单</option>
						<?php $type2_selected=$data['type']==2?"selected":""; ?>
						<option value="2" <?php echo $type2_selected; ?>>无界面可访问菜单</option>
						<?php $type_selected=$data['type']==0?"selected":""; ?>
						<option value="0" <?php echo $type_selected; ?>>只作为菜单</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="hidden" name="id" value="<?php echo $data['id']; ?>" />
					<button type="submit" class="btn btn-primary js-ajax-submit"><?php echo lang('SAVE'); ?></button>
					<a class="btn btn-default" href="<?php echo url('Menu/index'); ?>"><?php echo lang('BACK'); ?></a>
				</div>
			</div>
		</form>
	</div>
	<script src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>
</body>
</html>

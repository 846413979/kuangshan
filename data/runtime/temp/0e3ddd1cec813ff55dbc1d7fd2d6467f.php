<?php /*a:2:{s:90:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/admin\setting\site.html";i:1730344901;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
        <li class="active"><a href="#A" data-toggle="tab"><?php echo lang('WEB_SITE_INFOS'); ?></a></li>
        <li><a href="#B" data-toggle="tab"><?php echo lang('SEO_SETTING'); ?></a></li>
        <!--<li><a href="#C" data-toggle="tab"><?php echo lang('URL_SETTING'); ?></a></li>-->
        <!--<li><a href="#E" data-toggle="tab"><?php echo lang('COMMENT_SETTING'); ?></a></li>-->
<!--        <li><a href="#F" data-toggle="tab"><?php echo lang('User Register Setting'); ?></a></li>-->
<!--        <li><a href="#G" data-toggle="tab"><?php echo lang('CDN Setting'); ?></a></li>-->
    </ul>
    <form class="form-horizontal js-ajax-form margin-top-20" role="form" action="<?php echo url('Setting/sitePost'); ?>"
          method="post">
        <fieldset>
            <div class="tabbable">
                <div class="tab-content">
                    <div class="tab-pane active" id="A">
                        <div class="form-group">
                            <label for="input-site-name" class="col-sm-2 control-label"><span
                                    class="form-required">*</span><?php echo lang('WEBSITE_NAME'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <input type="text" class="form-control" id="input-site-name" name="options[site_name]"
                                       value="<?php echo (isset($site_info['site_name']) && ($site_info['site_name'] !== '')?$site_info['site_name']:''); ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input-admin_url_password" class="col-sm-2 control-label">
                                <?php echo lang('Admin URL Password'); ?>
                                <a href="http://www.thinkcmf.com/faq.html?url=https://www.kancloud.cn/thinkcmf/faq/493509"
                                   title="查看帮助手册"
                                   data-toggle="tooltip"
                                   target="_blank"><i class="fa fa-question-circle"></i></a>
                            </label>
                            <div class="col-md-6 col-sm-10">
                                <input type="text" class="form-control" id="input-admin_url_password"
                                       name="admin_settings[admin_password]"
                                       value="<?php echo (isset($admin_settings['admin_password']) && ($admin_settings['admin_password'] !== '')?$admin_settings['admin_password']:''); ?>"
                                       id="js-site-admin-url-password">
                                <p class="help-block">英文字母数字，不能为纯数字</p>
                                <p class="help-block" style="color: red;">
                                    设置加密码后必须通过以下地址访问后台,请劳记此地址，为了安全，您也可以定期更换此加密码!</p>
                                <?php 
                                    $root=cmf_get_root();
                                    $root=empty($root)?'':'/'.$root;
                                    $site_domain = cmf_get_domain().$root;
                                 ?>
                                <p class="help-block">后台登录地址：<span id="js-site-admin-url"><?php echo $site_domain; ?>/<?php echo (isset($admin_settings['admin_password']) && ($admin_settings['admin_password'] !== '')?$admin_settings['admin_password']:'admin'); ?></span>
                                </p>
                            </div>
                        </div>
                        <!--
                        <div class="form-group">
                            <label for="input-mobile_tpl_enabled" class="col-sm-2 control-label"><?php echo lang('ENABLE_MOBILE_THEME'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <?php $mobile_tpl_enabled_checked=empty($mobile_tpl_enabled)?'':'checked'; ?>
                                <div class="checkbox">
                                    <label><input type="checkbox" name="options[mobile_tpl_enabled]" value="1" id="input-mobile_tpl_enabled" <?php echo $mobile_tpl_enabled_checked; ?>></label>
                                </div>
                            </div>
                        </div>
                        -->
                       <!-- <div class="form-group">
                            <label for="input-site_admin_theme" class="col-sm-2 control-label"><?php echo lang('WEBSITE_ADMIN_THEME'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <?php 
                                    $site_admin_theme=empty($admin_settings['admin_theme'])?'':$admin_settings['admin_theme'];
                                 ?>
                                <select class="form-control" name="admin_settings[admin_theme]"
                                        id="input-site_admin_theme">
                                    <?php if(is_array($admin_themes) || $admin_themes instanceof \think\Collection || $admin_themes instanceof \think\Paginator): if( count($admin_themes)==0 ) : echo "" ;else: foreach($admin_themes as $key=>$vo): $admin_theme_selected = $site_admin_theme == $vo ? "selected" : ""; ?>
                                        <option value="<?php echo $vo; ?>" <?php echo $admin_theme_selected; ?>><?php echo $vo; ?></option>
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input-site_adminstyle" class="col-sm-2 control-label"><?php echo lang('WEBSITE_ADMIN_THEME_STYLE'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <?php 
                                    $site_admin_style=empty($admin_settings['admin_style'])?cmf_get_admin_style():$admin_settings['admin_style'];
                                 ?>
                                <select class="form-control" name="admin_settings[admin_style]"
                                        id="input-site_adminstyle">
                                    <?php if(is_array($admin_styles) || $admin_styles instanceof \think\Collection || $admin_styles instanceof \think\Paginator): if( count($admin_styles)==0 ) : echo "" ;else: foreach($admin_styles as $key=>$vo): $admin_style_selected = $site_admin_style == $vo ? "selected" : ""; ?>
                                        <option value="<?php echo $vo; ?>" <?php echo $admin_style_selected; ?>><?php echo $vo; ?></option>
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                </select>
                            </div>
                        </div>-->
                        <!--<?php if(APP_DEBUG && false): ?>
                            <div class="form-group">
                                <label for="input-default_app" class="col-sm-2 control-label">默认应用</label>
                                <div class="col-md-6 col-sm-10">
                                    <?php 
                                        $site_default_app=empty($cmf_settings['default_app'])?'demo':$cmf_settings['default_app'];
                                     ?>
                                    <select class="form-control" name="cmf_settings[default_app]"
                                            id="input-default_app">
                                        <?php if(is_array($apps) || $apps instanceof \think\Collection || $apps instanceof \think\Paginator): if( count($apps)==0 ) : echo "" ;else: foreach($apps as $key=>$vo): $default_app_selected = $site_default_app == $vo ? "selected" : "";
                                             ?>
                                            <option value="<?php echo $vo; ?>" <?php echo $default_app_selected; ?>><?php echo $vo; ?></option>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                    </select>
                                </div>
                            </div>
                        <?php endif; ?>-->
                        <!--
                        <div class="form-group">
                            <label for="input-html_cache_on" class="col-sm-2 control-label"><?php echo lang('HTML_CACHE'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <?php $html_cache_on_checked=empty($html_cache_on)?'':'checked'; ?>
                                <div class="checkbox">
                                    <label><input type="checkbox" name="options[mobile_tpl_enabled]" value="1" id="input-html_cache_on" <?php echo $html_cache_on_checked; ?>></label>
                                </div>
                            </div>
                        </div>
                        -->
                        <div class="form-group">
                            <label for="input-sale_tel" class="col-sm-2 control-label">全国免费销售服务热线</label>
                            <div class="col-md-6 col-sm-10">
                                <input type="text" class="form-control" id="input-sale_tel" name="options[sale_tel]"
                                       value="<?php echo (isset($site_info['sale_tel']) && ($site_info['sale_tel'] !== '')?$site_info['sale_tel']:''); ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input-after_sale_tel" class="col-sm-2 control-label">全国免费售后服务热线</label>
                            <div class="col-md-6 col-sm-10">
                                <input type="text" class="form-control" id="input-after_sale_tel" name="options[after_sale_tel]"
                                       value="<?php echo (isset($site_info['after_sale_tel']) && ($site_info['after_sale_tel'] !== '')?$site_info['after_sale_tel']:''); ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input-site_gwa" class="col-sm-2 control-label"><?php echo lang('WEBSITE_GWA'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <input type="text" class="form-control" id="input-site_gwa" name="options[site_gwa]"
                                       value="<?php echo (isset($site_info['site_gwa']) && ($site_info['site_gwa'] !== '')?$site_info['site_gwa']:''); ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input-copyright" class="col-sm-2 control-label">版权</label>
                            <div class="col-md-6 col-sm-10">
                                <input type="text" class="form-control" id="input-copyright" name="options[copyright]"
                                       value="<?php echo (isset($site_info['copyright']) && ($site_info['copyright'] !== '')?$site_info['copyright']:''); ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input-weixin" class="col-sm-2 control-label">待定</label>
                            <div class="col-md-6 col-sm-10">
                                <input type="hidden" name="post[weixin]" id="weixin" value="<?php echo (isset($result['weixin']) && ($result['weixin'] !== '')?$result['weixin']:''); ?>">
                                <a href="javascript:uploadOneImage('图片上传','#thumb');">
                                    <?php if(empty($result['weixin'])): ?>
                                        <img src="/themes/admin_simpleboot3/public/assets/images/default-thumbnail.png"
                                             id="thumb-preview" width="135" style="cursor: hand"/>
                                        <?php else: ?>
                                        <img src="<?php echo cmf_get_image_preview_url($result['weixin']); ?>" id="thumb-preview"
                                             width="135" style="cursor: hand"/>
                                    <?php endif; ?>
                                </a>
                                <input type="button" class="btn btn-sm"
                                       onclick="$('#thumb-preview').attr('src','/themes/admin_simpleboot3/public/assets/images/default-thumbnail.png');$('#thumb').val('');return false;"
                                       value="取消图片">
                            </div>
                        </div>
                        <!--<div class="form-group">
                            <label for="input-site_admin_email" class="col-sm-2 control-label"><?php echo lang('WEBMASTER_EMAIL'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <input type="text" class="form-control" id="input-site_admin_email"
                                       name="options[site_admin_email]"
                                       value="<?php echo (isset($site_info['site_admin_email']) && ($site_info['site_admin_email'] !== '')?$site_info['site_admin_email']:''); ?>">
                            </div>
                        </div>-->
                        <div class="form-group">
                            <label for="input-site_analytics" class="col-sm-2 control-label"><?php echo lang('WEBSITE_STATISTICAL_CODE'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <textarea class="form-control" id="input-site_analytics" name="options[site_analytics]"><?php echo (isset($site_info['site_analytics']) && ($site_info['site_analytics'] !== '')?$site_info['site_analytics']:''); ?></textarea>
                            </div>
                        </div>
                        <!--<div class="form-group">-->
                        <!--<label for="input-site_copyright" class="col-sm-2 control-label"><?php echo lang('WEBSITE_COPYRIGHT_INFOMATION'); ?></label>-->
                        <!--<div class="col-md-6 col-sm-10">-->
                        <!--<input type="text" class="form-control" id="input-site_copyright" name="options[site_copyright]" value="<?php echo (isset($site_info['site_copyright']) && ($site_info['site_copyright'] !== '')?$site_info['site_copyright']:''); ?>">-->
                        <!--</div>-->
                        <!--</div>-->
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary js-ajax-submit" data-refresh="1">
                                    <?php echo lang('SAVE'); ?>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="B">
                        <div class="form-group">
                            <label for="input-site_seo_title" class="col-sm-2 control-label"><?php echo lang('WEBSITE_SEO_TITLE'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <input type="text" class="form-control" id="input-site_seo_title"
                                       name="options[site_seo_title]" value="<?php echo (isset($site_info['site_seo_title']) && ($site_info['site_seo_title'] !== '')?$site_info['site_seo_title']:''); ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input-site_seo_keywords" class="col-sm-2 control-label"><?php echo lang('WEBSITE_SEO_KEYWORDS'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <input type="text" class="form-control" id="input-site_seo_keywords"
                                       name="options[site_seo_keywords]"
                                       value="<?php echo (isset($site_info['site_seo_keywords']) && ($site_info['site_seo_keywords'] !== '')?$site_info['site_seo_keywords']:''); ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input-site_seo_description" class="col-sm-2 control-label"><?php echo lang('WEBSITE_SEO_DESCRIPTION'); ?></label>
                            <div class="col-md-6 col-sm-10">
                                <textarea class="form-control" id="input-site_seo_description"
                                          name="options[site_seo_description]"><?php echo (isset($site_info['site_seo_description']) && ($site_info['site_seo_description'] !== '')?$site_info['site_seo_description']:''); ?></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary js-ajax-submit" data-refresh="0">
                                    <?php echo lang('SAVE'); ?>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </fieldset>
    </form>

</div>
<script type="text/javascript" src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>
</body>
</html>

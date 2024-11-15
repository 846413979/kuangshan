<?php /*a:2:{s:90:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/admin\setting\site.html";i:1731566787;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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

<style type="text/css">
    .pic-list li {
        margin-bottom: 5px;
    }

    .btn-cancel-thumbnail {
        margin-top: 5px;
    }

    #photos, #files {
        margin-bottom: 0;
    }
</style>
<script type="text/html" id="authentication_mark-item-tpl">
    <li id="saved-authentication_mark{id}">
        <input id="authentication_mark-{id}" type="hidden" name="authentication_mark_urls[]" value="{filepath}">
        <input class="form-control" id="authentication_mark-{id}-name" type="text" name="authentication_mark_names[]" value=""
               style="width: 200px;" title="图片名称">
        <img id="authentication_mark-{id}-preview" src="{url}" style="height:34px;width: 44px;"
             onclick="imagePreviewDialog(this.src);">
        <a class="btn btn-default" href="javascript:uploadOneImage('图片上传','#authentication_mark-{id}');"><i class="fa fa-upload fa-fw"></i></a>
        <a class="btn btn-danger" href="javascript:(function(){$('#saved-authentication_mark{id}').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
        <a class="btn btn-success" href="javascript:(function(){$('#saved-authentication_mark{id}').before($('#saved-authentication_mark{id}').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
    </li>
</script>
<script type="text/html" id="sling_available-item-tpl">
    <li id="saved-sling_available{id}">
        <input id="sling_available-{id}" type="hidden" name="sling_available_urls[]" value="{filepath}">
        <input class="form-control" id="sling_available-{id}-name" type="text" name="sling_available_names[]" value=""
               style="width: 200px;" title="图片名称">
        <img id="sling_available-{id}-preview" src="{url}" style="height:34px;width: 44px;"
             onclick="imagePreviewDialog(this.src);">
        <a class="btn btn-default" href="javascript:uploadOneImage('图片上传','#sling_available-{id}');"><i class="fa fa-upload fa-fw"></i></a>
        <a class="btn btn-danger" href="javascript:(function(){$('#saved-sling_available{id}').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
        <a class="btn btn-success" href="javascript:(function(){$('#saved-sling_available{id}').before($('#saved-sling_available{id}').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
    </li>
</script>
<script type="text/html" id="sling_available_active-item-tpl">
    <li id="saved-sling_available_active{id}">
        <input id="sling_available_active-{id}" type="hidden" name="sling_available_active_urls[]" value="{filepath}">
        <input class="form-control" id="sling_available_active-{id}-name" type="text" name="sling_available_active_names[]" value=""
               style="width: 200px;" title="图片名称">
        <img id="sling_available_active-{id}-preview" src="{url}" style="height:34px;width: 44px;"
             onclick="imagePreviewDialog(this.src);">
        <a class="btn btn-default" href="javascript:uploadOneImage('图片上传','#sling_available_active-{id}');"><i class="fa fa-upload fa-fw"></i></a>
        <a class="btn btn-danger" href="javascript:(function(){$('#saved-sling_available_active{id}').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
        <a class="btn btn-success" href="javascript:(function(){$('#saved-sling_available_active{id}').before($('#saved-sling_available_active{id}').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
    </li>
</script>
</head>
<body>
<div class="wrap js-check-wrap">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#A" data-toggle="tab"><?php echo lang('WEB_SITE_INFOS'); ?></a></li>
        <li><a href="#B" data-toggle="tab"><?php echo lang('SEO_SETTING'); ?></a></li>
        <li><a href="#C" data-toggle="tab">产品设置</a></li>
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
                            <label for="input-email" class="col-sm-2 control-label">邮箱</label>
                            <div class="col-md-6 col-sm-10">
                                <input type="text" class="form-control" id="input-email" name="options[email]"
                                       value="<?php echo (isset($site_info['email']) && ($site_info['email'] !== '')?$site_info['email']:''); ?>">
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
                    <div class="tab-pane" id="C">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                认证证书
                            </label>
                            <div class="col-md-6 col-sm-10">
                                <ul id="authentication_mark" class="pic-list list-unstyled form-inline">
                                    <?php if(!(empty($product_setting['authentication_mark']) || (($product_setting['authentication_mark'] instanceof \think\Collection || $product_setting['authentication_mark'] instanceof \think\Paginator ) && $product_setting['authentication_mark']->isEmpty()))): if(is_array($product_setting['authentication_mark']) || $product_setting['authentication_mark'] instanceof \think\Collection || $product_setting['authentication_mark'] instanceof \think\Paginator): if( count($product_setting['authentication_mark'])==0 ) : echo "" ;else: foreach($product_setting['authentication_mark'] as $key=>$vo): 
                                                $img_url=cmf_get_image_preview_url($vo['url']); ?>
                                            <li id="saved-authentication_mark<?php echo $key; ?>">
                                                <input id="authentication_mark-<?php echo $key; ?>" type="hidden" name="authentication_mark_urls[]"
                                                       value="<?php echo $vo['url']; ?>">
                                                <input class="form-control" id="authentication_mark-<?php echo $key; ?>-name" type="text"
                                                       name="authentication_mark_names[]"
                                                       value="<?php echo (isset($vo['name']) && ($vo['name'] !== '')?$vo['name']:''); ?>" style="width: 200px;" title="图片名称">
                                                <img id="authentication_mark-<?php echo $key; ?>-preview"
                                                     src="<?php echo cmf_get_image_preview_url($vo['url']); ?>"
                                                     style="height:34px;width: 44px;"
                                                     onclick="parent.imagePreviewDialog(this.src);">
                                                <a class="btn btn-default"  href="javascript:uploadOneImage('图片上传','#authentication_mark-<?php echo $key; ?>');"><i class="fa fa-upload fa-fw"></i></a>
                                                <a class="btn btn-danger"  href="javascript:(function(){$('#saved-authentication_mark<?php echo $key; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                                <a class="btn btn-success"  href="javascript:(function(){$('#saved-authentication_mark<?php echo $key; ?>').before($('#saved-authentication_mark<?php echo $key; ?>').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
                                            </li>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                    <?php endif; ?>
                                </ul>
                                <a href="javascript:uploadMultiImage('图片上传','#authentication_mark','authentication_mark-item-tpl');"
                                   class="btn btn-default">选择图片</a>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                可配吊具(未选中)
                            </label>
                            <div class="col-md-6 col-sm-10">
                                <ul id="sling_available" class="pic-list list-unstyled form-inline">
                                    <?php if(!(empty($product_setting['sling_available']) || (($product_setting['sling_available'] instanceof \think\Collection || $product_setting['sling_available'] instanceof \think\Paginator ) && $product_setting['sling_available']->isEmpty()))): if(is_array($product_setting['sling_available']) || $product_setting['sling_available'] instanceof \think\Collection || $product_setting['sling_available'] instanceof \think\Paginator): if( count($product_setting['sling_available'])==0 ) : echo "" ;else: foreach($product_setting['sling_available'] as $key=>$vo): $img_url=cmf_get_image_preview_url($vo['url']); ?>
                                            <li id="saved-sling_available<?php echo $key; ?>">
                                                <input id="sling_available-<?php echo $key; ?>" type="hidden" name="sling_available_urls[]"
                                                       value="<?php echo $vo['url']; ?>">
                                                <input class="form-control" id="sling_available-<?php echo $key; ?>-name" type="text"
                                                       name="sling_available_names[]"
                                                       value="<?php echo (isset($vo['name']) && ($vo['name'] !== '')?$vo['name']:''); ?>" style="width: 200px;" title="图片名称">
                                                <img id="sling_available-<?php echo $key; ?>-preview"
                                                     src="<?php echo cmf_get_image_preview_url($vo['url']); ?>"
                                                     style="height:34px;width: 44px;"
                                                     onclick="parent.imagePreviewDialog(this.src);">
                                                <a class="btn btn-default"  href="javascript:uploadOneImage('图片上传','#sling_available-<?php echo $key; ?>');"><i class="fa fa-upload fa-fw"></i></a>
                                                <a class="btn btn-danger"  href="javascript:(function(){$('#saved-sling_available<?php echo $key; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                                <a class="btn btn-success"  href="javascript:(function(){$('#saved-sling_available<?php echo $key; ?>').before($('#saved-sling_available<?php echo $key; ?>').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
                                            </li>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                    <?php endif; ?>
                                </ul>
                                <a href="javascript:uploadMultiImage('图片上传','#sling_available','sling_available-item-tpl');"
                                   class="btn btn-default">选择图片</a>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                可配吊具(选中)
                            </label>
                            <div class="col-md-6 col-sm-10">
                                <ul id="sling_available_active" class="pic-list list-unstyled form-inline">
                                    <?php if(!(empty($product_setting['sling_available_active']) || (($product_setting['sling_available_active'] instanceof \think\Collection || $product_setting['sling_available_active'] instanceof \think\Paginator ) && $product_setting['sling_available_active']->isEmpty()))): if(is_array($product_setting['sling_available_active']) || $product_setting['sling_available_active'] instanceof \think\Collection || $product_setting['sling_available_active'] instanceof \think\Paginator): if( count($product_setting['sling_available_active'])==0 ) : echo "" ;else: foreach($product_setting['sling_available_active'] as $key=>$vo): $img_url=cmf_get_image_preview_url($vo['url']); ?>
                                            <li id="saved-sling_available_active<?php echo $key; ?>">
                                                <input id="sling_available_active-<?php echo $key; ?>" type="hidden" name="sling_available_active_urls[]"
                                                       value="<?php echo $vo['url']; ?>">
                                                <input class="form-control" id="sling_available_active-<?php echo $key; ?>-name" type="text"
                                                       name="sling_available_active_names[]"
                                                       value="<?php echo (isset($vo['name']) && ($vo['name'] !== '')?$vo['name']:''); ?>" style="width: 200px;" title="图片名称">
                                                <img id="sling_available_active-<?php echo $key; ?>-preview"
                                                     src="<?php echo cmf_get_image_preview_url($vo['url']); ?>"
                                                     style="height:34px;width: 44px;"
                                                     onclick="parent.imagePreviewDialog(this.src);">
                                                <a class="btn btn-default"  href="javascript:uploadOneImage('图片上传','#sling_available_active-<?php echo $key; ?>');"><i class="fa fa-upload fa-fw"></i></a>
                                                <a class="btn btn-danger"  href="javascript:(function(){$('#saved-sling_available_active<?php echo $key; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                                <a class="btn btn-success"  href="javascript:(function(){$('#saved-sling_available_active<?php echo $key; ?>').before($('#saved-sling_available_active<?php echo $key; ?>').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
                                            </li>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                    <?php endif; ?>
                                </ul>
                                <a href="javascript:uploadMultiImage('图片上传','#sling_available_active','sling_available_active-item-tpl');"
                                   class="btn btn-default">选择图片</a>
                                <p class="help-block" style="color: red;">需与未选中状态数量顺序保持一致</p>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                起重量
                            </label>
                            <div class="col-md-6 col-sm-10">
                                <ul id="lifting_capacity" class="pic-list list-unstyled form-inline">
                                    <?php if(!(empty($product_setting['lifting_capacity']) || (($product_setting['lifting_capacity'] instanceof \think\Collection || $product_setting['lifting_capacity'] instanceof \think\Paginator ) && $product_setting['lifting_capacity']->isEmpty()))): if(is_array($product_setting['lifting_capacity']) || $product_setting['lifting_capacity'] instanceof \think\Collection || $product_setting['lifting_capacity'] instanceof \think\Paginator): if( count($product_setting['lifting_capacity'])==0 ) : echo "" ;else: foreach($product_setting['lifting_capacity'] as $key=>$vo): ?>
                                            <li id="saved-lifting_capacity<?php echo $key; ?>">
                                                <input class="form-control" type="text"
                                                       name="lifting_capacity[]"
                                                       value="<?php echo (isset($vo) && ($vo !== '')?$vo:''); ?>" style="width: 200px;" title="图片名称">
                                                <a class="btn btn-danger" href="javascript:(function(){$('#saved-lifting_capacity<?php echo $key; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                            </li>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                    <?php endif; ?>
                                </ul>
                                <a href="javascript:lifting_capacity_add();" class="btn btn-default">添加起重量</a>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                工作电压
                            </label>
                            <div class="col-md-6 col-sm-10">
                                <ul id="operating_voltage" class="pic-list list-unstyled form-inline">
                                    <?php if(!(empty($product_setting['operating_voltage']) || (($product_setting['operating_voltage'] instanceof \think\Collection || $product_setting['operating_voltage'] instanceof \think\Paginator ) && $product_setting['operating_voltage']->isEmpty()))): if(is_array($product_setting['operating_voltage']) || $product_setting['operating_voltage'] instanceof \think\Collection || $product_setting['operating_voltage'] instanceof \think\Paginator): if( count($product_setting['operating_voltage'])==0 ) : echo "" ;else: foreach($product_setting['operating_voltage'] as $key=>$vo): ?>
                                            <li id="saved-operating_voltage<?php echo $key; ?>">
                                                <input class="form-control" type="text"
                                                       name="operating_voltage[]"
                                                       value="<?php echo (isset($vo) && ($vo !== '')?$vo:''); ?>" style="width: 200px;" >
                                                <a class="btn btn-danger" href="javascript:(function(){$('#saved-operating_voltage<?php echo $key; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                            </li>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                    <?php endif; ?>
                                </ul>
                                <a href="javascript:operating_voltage_add();" class="btn btn-default">添加工作电压</a>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                工作赫兹
                            </label>
                            <div class="col-md-6 col-sm-10">
                                <ul id="operating_hertz" class="pic-list list-unstyled form-inline">
                                    <?php if(!(empty($product_setting['operating_hertz']) || (($product_setting['operating_hertz'] instanceof \think\Collection || $product_setting['operating_hertz'] instanceof \think\Paginator ) && $product_setting['operating_hertz']->isEmpty()))): if(is_array($product_setting['operating_hertz']) || $product_setting['operating_hertz'] instanceof \think\Collection || $product_setting['operating_hertz'] instanceof \think\Paginator): if( count($product_setting['operating_hertz'])==0 ) : echo "" ;else: foreach($product_setting['operating_hertz'] as $key=>$vo): ?>
                                            <li id="saved-operating_hertz<?php echo $key; ?>">
                                                <input class="form-control" type="text"
                                                       name="operating_hertz[]"
                                                       value="<?php echo (isset($vo) && ($vo !== '')?$vo:''); ?>" style="width: 200px;" >
                                                <a class="btn btn-danger" href="javascript:(function(){$('#saved-operating_hertz<?php echo $key; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                            </li>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                    <?php endif; ?>
                                </ul>
                                <a href="javascript:operating_hertz_add();" class="btn btn-default">添加工作赫兹</a>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                工作等级
                            </label>
                            <div class="col-md-6 col-sm-10">
                                <ul id="job_level" class="pic-list list-unstyled form-inline">
                                    <?php if(!(empty($product_setting['job_level']) || (($product_setting['job_level'] instanceof \think\Collection || $product_setting['job_level'] instanceof \think\Paginator ) && $product_setting['job_level']->isEmpty()))): if(is_array($product_setting['job_level']) || $product_setting['job_level'] instanceof \think\Collection || $product_setting['job_level'] instanceof \think\Paginator): if( count($product_setting['job_level'])==0 ) : echo "" ;else: foreach($product_setting['job_level'] as $key=>$vo): ?>
                                            <li id="saved-job_level<?php echo $key; ?>">
                                                <input class="form-control" type="text"
                                                       name="job_level[]"
                                                       value="<?php echo (isset($vo) && ($vo !== '')?$vo:''); ?>" style="width: 200px;">
                                                <a class="btn btn-danger" href="javascript:(function(){$('#saved-job_level<?php echo $key; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                            </li>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                    <?php endif; ?>
                                </ul>
                                <a href="javascript:job_level_add();" class="btn btn-default">添加工作等级</a>
                            </div>
                        </div>

                        <script>
                            function lifting_capacity_add() {
                                var timestamp = new Date().getTime();
                                var randomNum = Math.random();
                                var scaledRandomNum = Math.floor(randomNum * 1000);
                                var id = timestamp.toString() + scaledRandomNum.toString();
                                $('#lifting_capacity').append('<li id="saved-lifting_capacity'+id+'"><input class="form-control" type="text" name="lifting_capacity[]" value="" style="width: 200px;"><a class="btn btn-danger" href="javascript:(function(){$(\'#saved-lifting_capacity'+id+'\').remove();})();"><i class="fa fa-trash fa-fw"></i></a></li>');
                            }
                            function operating_voltage_add() {
                                var timestamp = new Date().getTime();
                                var randomNum = Math.random();
                                var scaledRandomNum = Math.floor(randomNum * 1000);
                                var id = timestamp.toString() + scaledRandomNum.toString();
                                $('#operating_voltage').append('<li id="saved-operating_voltage'+id+'"><input class="form-control" type="text" name="operating_voltage[]" value="" style="width: 200px;"><a class="btn btn-danger" href="javascript:(function(){$(\'#saved-operating_voltage'+id+'\').remove();})();"><i class="fa fa-trash fa-fw"></i></a></li>');
                            }
                            function operating_hertz_add() {
                                var timestamp = new Date().getTime();
                                var randomNum = Math.random();
                                var scaledRandomNum = Math.floor(randomNum * 1000);
                                var id = timestamp.toString() + scaledRandomNum.toString();
                                $('#operating_hertz').append('<li id="saved-operating_hertz'+id+'"><input class="form-control" type="text" name="operating_hertz[]" value="" style="width: 200px;"><a class="btn btn-danger" href="javascript:(function(){$(\'#saved-operating_hertz'+id+'\').remove();})();"><i class="fa fa-trash fa-fw"></i></a></li>');
                            }
                            function job_level_add() {
                                var timestamp = new Date().getTime();
                                var randomNum = Math.random();
                                var scaledRandomNum = Math.floor(randomNum * 1000);
                                var id = timestamp.toString() + scaledRandomNum.toString();
                                $('#job_level').append('<li id="saved-job_level'+id+'"><input class="form-control" type="text" name="job_level[]" value="" style="width: 200px;"><a class="btn btn-danger" href="javascript:(function(){$(\'#saved-job_level'+id+'\').remove();})();"><i class="fa fa-trash fa-fw"></i></a></li>');
                            }
                        </script>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                产品附件
                            </label>
                            <div class="col-md-6 col-sm-10">
                                <input id="product_file" type="hidden" name="file_url" value="<?php echo isset($product_setting['product_file']['url']) ? $product_setting['product_file']['url'] : ''; ?>">
                                <input class="form-control" id="product_file-name" type="text" name="file_name" value="<?php echo isset($product_setting['product_file']['name']) ? $product_setting['product_file']['name'] : ''; ?>"
                                       style="width: 200px;display: inline-block" title="文件名称">
                                <?php if(!(empty($product_setting['product_file']['url']) || (($product_setting['product_file']['url'] instanceof \think\Collection || $product_setting['product_file']['url'] instanceof \think\Paginator ) && $product_setting['product_file']['url']->isEmpty()))): ?>
                                    <a class="btn btn-info" id="file-preview" href="<?php echo cmf_get_image_preview_url($product_setting['product_file']['url']); ?>" target="_blank"><i class="fa fa-download fa-fw"></i></a>
                                <?php endif; ?>
                                <a class="btn btn-default" href="javascript:uploadOne('文件上传','#product_file','file');"><i class="fa fa-upload fa-fw"></i></a>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary js-ajax-submit" data-refresh="0" data-action="<?php echo url('productSitePost'); ?>">
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

<?php /*a:2:{s:97:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/portal\admin_product\edit.html";i:1731576313;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
<script type="text/html" id="photos-item-tpl">
    <li id="saved-image{id}">
        <input id="photo-{id}" type="hidden" name="photo_urls[]" value="{filepath}">
        <input class="form-control" id="photo-{id}-name" type="text" name="photo_names[]" value="{name}"
               style="width: 200px;" title="图片名称">
        <img id="photo-{id}-preview" src="{url}" style="height:34px;width: 44px;"
             onclick="imagePreviewDialog(this.src);">
        <a class="btn btn-default" href="javascript:uploadOneImage('图片上传','#photo-{id}');"><i class="fa fa-upload fa-fw"></i></a>
        <a class="btn btn-danger" href="javascript:(function(){$('#saved-image{id}').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
        <a class="btn btn-success" href="javascript:(function(){$('#saved-image{id}').before($('#saved-image{id}').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
    </li>
</script>
<script type="text/html" id="files-item-tpl">
    <li id="saved-file{id}">
        <input id="file-{id}" type="hidden" name="file_urls[]" value="{filepath}">
        <input class="form-control" id="file-{id}-name" type="text" name="file_names[]" value="{name}"
               style="width: 200px;" title="文件名称">
        <a class="btn btn-info" id="file-{id}-preview" href="{preview_url}" target="_blank"><i class="fa fa-download fa-fw"></i></a>
        <a class="btn btn-default" href="javascript:uploadOne('文件上传','#file-{id}','file');"><i class="fa fa-upload fa-fw"></i></a>
        <a class="btn btn-danger" href="javascript:(function(){$('#saved-file{id}').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
        <a class="btn btn-success" href="javascript:(function(){$('#saved-file{id}').before($('#saved-file{id}').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
    </li>
</script>

<script type="text/html" id="case-item-tpl">
    <li id="saved-case{id}">
        <input id="case-{id}" type="hidden" name="case_urls[]" value="{filepath}">
        <input class="form-control" id="case-{id}-name" type="text" name="case_names[]" value=""
               style="width: 200px;" title="图片名称">
        <img id="case-{id}-preview" src="{url}" style="height:34px;width: 44px;"
             onclick="imagePreviewDialog(this.src);">
        <a class="btn btn-default" href="javascript:uploadOneImage('图片上传','#case-{id}');"><i class="fa fa-upload fa-fw"></i></a>
        <a class="btn btn-danger" href="javascript:(function(){$('#saved-case{id}').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
        <a class="btn btn-success" href="javascript:(function(){$('#saved-case{id}').before($('#saved-case{id}').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
    </li>
</script>

<script type="text/html" id="certificate-item-tpl">
    <li id="saved-certificate{id}">
        <input id="certificate-{id}" type="hidden" name="certificate_urls[]" value="{filepath}">
        <input class="form-control" id="certificate-{id}-name" type="text" name="certificate_names[]" value=""
               style="width: 200px;" title="图片名称">
        <img id="certificate-{id}-preview" src="{url}" style="height:34px;width: 44px;"
             onclick="imagePreviewDialog(this.src);">
        <a class="btn btn-default" href="javascript:uploadOneImage('图片上传','#certificate-{id}');"><i class="fa fa-upload fa-fw"></i></a>
        <a class="btn btn-danger" href="javascript:(function(){$('#saved-certificate{id}').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
        <a class="btn btn-success" href="javascript:(function(){$('#saved-certificate{id}').before($('#saved-certificate{id}').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
    </li>
</script>
</head>
<body>
<div class="wrap js-check-wrap">
    <ul class="nav nav-tabs">
        <li><a href="<?php echo url('AdminProduct/index'); ?>">产品列表</a></li>
        <li><a href="<?php echo url('AdminProduct/add'); ?>">添加产品</a></li>
        <li class="active"><a href="javascript:">编辑产品</a></li>
    </ul>
    <form action="<?php echo url('AdminProduct/editPost'); ?>" method="post" class="form-horizontal js-ajax-form margin-top-20">
        <div class="row">
            <div class="col-md-9">
                <table class="table table-bordered">
                    <tr>
                        <th width="100">分类<span class="form-required">*</span></th>
                        <td>
                            <select class="form-control" name="category_id" id="js-category-select" required>
                                <option value="0">请选择分类</option>
                                <?php echo $category_list; ?>
                            </select>
                            <!--<input class="form-control" type="text" style="width:400px;" required value=""
                                   placeholder="请选择分类" onclick="doSelectCategory();" id="js-categories-name-input"
                                   readonly/>
                            <input class="form-control" type="hidden" value="" name="post[categories]"
                                   id="js-categories-id-input"/>-->
                        </td>
                    </tr>
                    <tr>
                        <th>产品名称<span class="form-required">*</span></th>
                        <td>
                            <input class="form-control" type="text" name="title"
                                   id="title" required value="<?php echo $product['title']; ?>" placeholder="请输入产品名称"/>
                        </td>
                    </tr>
                    <tr>
                        <th>产品别名</th>
                        <td>
                            <input class="form-control" type="text" name="alias"
                                   id="alias" value="<?php echo $product['alias']; ?>" placeholder="请输入产品别名"/>
                            <p class="help-block">多个别名以英文逗号（,）分割</p>
                        </td>
                    </tr>
                    <tr>
                        <th>缩略图</th>
                        <td>
                            <div>
                                <input type="hidden" name="thumbnail" id="thumbnail"
                                       value="<?php echo (isset($product['thumbnail']) && ($product['thumbnail'] !== '')?$product['thumbnail']:''); ?>">
                                <a href="javascript:uploadOneImage('图片上传','#thumbnail');">
                                    <?php if(empty($product['thumbnail'])): ?>
                                        <img src="/themes/admin_simpleboot3/public/assets/images/default-thumbnail.png"
                                             id="thumbnail-preview"
                                             width="135" style="cursor: pointer"/>
                                        <?php else: ?>
                                        <img src="<?php echo cmf_get_image_preview_url($product['thumbnail']); ?>"
                                             id="thumbnail-preview"
                                             width="135" style="cursor: pointer"/>
                                    <?php endif; ?>
                                </a>
                                <br>
                                <input type="button" class="btn btn-sm btn-cancel-thumbnail" value="取消图片">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>相册</th>
                        <td>
                            <ul id="photos" class="pic-list list-unstyled form-inline">
                                <?php if(!(empty($product['photos']) || (($product['photos'] instanceof \think\Collection || $product['photos'] instanceof \think\Paginator ) && $product['photos']->isEmpty()))): if(is_array($product['photos']) || $product['photos'] instanceof \think\Collection || $product['photos'] instanceof \think\Paginator): if( count($product['photos'])==0 ) : echo "" ;else: foreach($product['photos'] as $key=>$vo): $img_url=cmf_get_image_preview_url($vo['url']); ?>
                                        <li id="saved-image<?php echo $key; ?>">
                                            <input id="photo-<?php echo $key; ?>" type="hidden" name="photo_urls[]"
                                                   value="<?php echo $vo['url']; ?>">
                                            <input class="form-control" id="photo-<?php echo $key; ?>-name" type="text"
                                                   name="photo_names[]"
                                                   value="<?php echo (isset($vo['name']) && ($vo['name'] !== '')?$vo['name']:''); ?>" style="width: 200px;" title="图片名称">
                                            <img id="photo-<?php echo $key; ?>-preview"
                                                 src="<?php echo cmf_get_image_preview_url($vo['url']); ?>"
                                                 style="height:34px;width: 44px;"
                                                 onclick="parent.imagePreviewDialog(this.src);">
                                            <a class="btn btn-default"  href="javascript:uploadOneImage('图片上传','#photo-<?php echo $key; ?>');"><i class="fa fa-upload fa-fw"></i></a>
                                            <a class="btn btn-danger"  href="javascript:(function(){$('#saved-image<?php echo $key; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                            <a class="btn btn-success"  href="javascript:(function(){$('#saved-image<?php echo $key; ?>').before($('#saved-image<?php echo $key; ?>').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
                                        </li>
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                <?php endif; ?>
                            </ul>
                            <a href="javascript:uploadMultiImage('图片上传','#photos','photos-item-tpl');"
                               class="btn btn-default">选择图片</a>
                        </td>
                    </tr>
                    <tr>
                        <th>认证证书</th>
                        <td>
                            <?php if(is_array($authentication_mark) || $authentication_mark instanceof \think\Collection || $authentication_mark instanceof \think\Paginator): if( count($authentication_mark)==0 ) : echo "" ;else: foreach($authentication_mark as $key=>$vo): 
                                    $checked = "";
                                    $product_mark = $product['authentication_mark'];
                                    if (!empty($product_mark)) {
                                        foreach ($product_mark as $key => $value) {
                                            if ($vo['name'] == $value['name']){
                                                $checked = "checked";
                                                break;
                                            }
                                        }
                                    }
                                 ?>
                                <input class="js-check" type="checkbox" name="authentication_mark[]" value="<?php echo $key; ?>" <?php echo $checked; ?>><?php echo $vo['name']; ?>
                                <img src="<?php echo cmf_get_image_url($vo['url']); ?>" width="18" height="18" onclick="imagePreviewDialog(this.src);">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                        </td>
                    </tr>
                    <tr>
                        <th>起重量<span class="form-required">*</span></th>
                        <td>
                            <ul id="lifting_capacity" class="pic-list list-unstyled form-inline">
                                <?php if(!(empty($product['lifting_capacity']) || (($product['lifting_capacity'] instanceof \think\Collection || $product['lifting_capacity'] instanceof \think\Paginator ) && $product['lifting_capacity']->isEmpty()))): if(is_array($product['lifting_capacity']) || $product['lifting_capacity'] instanceof \think\Collection || $product['lifting_capacity'] instanceof \think\Paginator): if( count($product['lifting_capacity'])==0 ) : echo "" ;else: foreach($product['lifting_capacity'] as $key=>$vo): 
                                            // 生成一个0到9999之间的随机数
                                            $randomNumber = mt_rand(0, 9999);
                                            // 获取当前时间戳
                                            $timestamp = time();
                                            // 将随机数和时间戳转换成字符串
                                            $randomNumberStr = strval($randomNumber);
                                            $timestampStr = strval($timestamp);
                                            $li_id = $randomNumberStr . $timestampStr;
                                            foreach ($lifting_capacity as $key => $value) {
                                                if ($vo == $value) {
                                                    $li_id = $key;
                                                    break;
                                                }
                                            }
                                         ?>
                                        <li id="saved-lifting_capacity<?php echo $li_id; ?>">
                                            <input class="form-control" type="text"
                                                   name="lifting_capacity[]"
                                                   value="<?php echo (isset($vo) && ($vo !== '')?$vo:''); ?>" style="width: 200px;">
                                            <a class="btn btn-danger" href="javascript:(function(){$('#saved-lifting_capacity<?php echo $li_id; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                        </li>
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                <?php endif; ?>
                            </ul>
                            <input class="form-control" type="text" style="width:400px;" value=""
                                   placeholder="请选择起重量" onclick="checkCapacity('lifting_capacity');" id="js-lifting_capacity-name-input"
                                   readonly/>
                            <input type="hidden" id="js-lifting_capacity-input">
                            <a href="javascript:input_add('lifting_capacity');" class="btn btn-default">添加起重量</a>
                        </td>
                    </tr>
                    <tr>
                        <th>起重高度<span class="form-required">*</span></th>
                        <td>
                            最小起重高度：<input class="form-control" type="text" name="min_lifting_height" style="width: 200px;display: inline-block"
                                   id="min_lifting_height" required value="<?php echo $product['min_lifting_height']; ?>" placeholder="请输入最小起重高度"/>米
                            <br>
                            最大起重高度：<input class="form-control" type="text" name="max_lifting_height" style="width: 200px;display: inline-block"
                                               id="max_lifting_height" required value="<?php echo $product['max_lifting_height']; ?>" placeholder="请输入最大起重高度"/>米
                            <br>
                            起重高度间隔：<input class="form-control" type="text" name="lifting_height_interval" style="width: 200px;display: inline-block"
                                                id="lifting_height_interval" required value="<?php echo $product['lifting_height_interval']; ?>" placeholder="请输入起重高度间隔"/>米
                        </td>
                    </tr>
                    <tr>
                        <th>跨度</th>
                        <td>
                            最小跨度：<input class="form-control" type="text" name="min_span" style="width: 200px;display: inline-block"
                                                id="min_span" required value="<?php echo $product['min_span']; ?>" placeholder="请输入最小跨度"/>米
                            <br>
                            最大跨度：<input class="form-control" type="text" name="max_span" style="width: 200px;display: inline-block"
                                                id="max_span" required value="<?php echo $product['max_span']; ?>" placeholder="请输入最大跨度"/>米
                            <br>
                            跨度间隔：<input class="form-control" type="text" name="span_interval" style="width: 200px;display: inline-block"
                                                id="span_interval" required value="<?php echo $product['span_interval']; ?>" placeholder="请输入跨度间隔"/>米
                        </td>
                    </tr>
                    <!--<tr>
                        <th>工作电压<span class="form-required">*</span></th>
                        <td>
                            <ul id="operating_voltage" class="pic-list list-unstyled form-inline">
                                <?php if(!(empty($product['operating_voltage']) || (($product['operating_voltage'] instanceof \think\Collection || $product['operating_voltage'] instanceof \think\Paginator ) && $product['operating_voltage']->isEmpty()))): if(is_array($product['operating_voltage']) || $product['operating_voltage'] instanceof \think\Collection || $product['operating_voltage'] instanceof \think\Paginator): if( count($product['operating_voltage'])==0 ) : echo "" ;else: foreach($product['operating_voltage'] as $key=>$vo): 
                                            // 生成一个0到9999之间的随机数
                                            $randomNumber = mt_rand(0, 9999);
                                            // 获取当前时间戳
                                            $timestamp = time();
                                            // 将随机数和时间戳转换成字符串
                                            $randomNumberStr = strval($randomNumber);
                                            $timestampStr = strval($timestamp);
                                            $li_id = $randomNumberStr . $timestampStr;
                                            foreach ($operating_voltage as $key => $value) {
                                            if ($vo == $value) {
                                            $li_id = $key;
                                            break;
                                            }
                                            }
                                         ?>
                                        <li id="saved-operating_voltage<?php echo $li_id; ?>">
                                            <input class="form-control" type="text"
                                                   name="operating_voltage[]"
                                                   value="<?php echo (isset($vo) && ($vo !== '')?$vo:''); ?>" style="width: 200px;">
                                            <a class="btn btn-danger" href="javascript:(function(){$('#saved-operating_voltage<?php echo $li_id; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                        </li>
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                <?php endif; ?>
                            </ul>
                            <input class="form-control" type="text" style="width:400px;" value=""
                                   placeholder="请选择工作电压" onclick="checkCapacity('operating_voltage');" id="js-operating_voltage-name-input"
                                   readonly/>
                            <input type="hidden" id="js-operating_voltage-input">
                            <a href="javascript:input_add('operating_voltage');" class="btn btn-default">添加工作电压</a>
                        </td>
                    </tr>-->
                    <tr>
                        <th>工作等级</th>
                        <td>
                            <ul id="job_level" class="pic-list list-unstyled form-inline">
                                <?php if(!(empty($product['job_level']) || (($product['job_level'] instanceof \think\Collection || $product['job_level'] instanceof \think\Paginator ) && $product['job_level']->isEmpty()))): if(is_array($product['job_level']) || $product['job_level'] instanceof \think\Collection || $product['job_level'] instanceof \think\Paginator): if( count($product['job_level'])==0 ) : echo "" ;else: foreach($product['job_level'] as $key=>$vo): 
                                            // 生成一个0到9999之间的随机数
                                            $randomNumber = mt_rand(0, 9999);
                                            // 获取当前时间戳
                                            $timestamp = time();
                                            // 将随机数和时间戳转换成字符串
                                            $randomNumberStr = strval($randomNumber);
                                            $timestampStr = strval($timestamp);
                                            $li_id = $randomNumberStr . $timestampStr;
                                            foreach ($job_level as $key => $value) {
                                            if ($vo == $value) {
                                            $li_id = $key;
                                            break;
                                            }
                                            }
                                         ?>
                                        <li id="saved-job_level<?php echo $li_id; ?>">
                                            <input class="form-control" type="text"
                                                   name="job_level[]"
                                                   value="<?php echo (isset($vo) && ($vo !== '')?$vo:''); ?>" style="width: 200px;">
                                            <a class="btn btn-danger" href="javascript:(function(){$('#saved-job_level<?php echo $li_id; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                        </li>
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                <?php endif; ?>
                            </ul>
                            <input class="form-control" type="text" style="width:400px;" value=""
                                   placeholder="请选择工作等级" onclick="checkCapacity('job_level');" id="js-job_level-name-input"
                                   readonly/>
                            <input type="hidden" id="js-job_level-input">
                            <a href="javascript:input_add('job_level');" class="btn btn-default">添加工作等级</a>
                        </td>
                    </tr>
                    <tr>
                        <th>可配吊具</th>
                        <td>
                            <?php if(is_array($sling_available) || $sling_available instanceof \think\Collection || $sling_available instanceof \think\Paginator): if( count($sling_available)==0 ) : echo "" ;else: foreach($sling_available as $key=>$vo): 
                                    $checked = "";
                                    $product_mark = $product['sling_available'];
                                    if (!empty($product_mark)) {
                                        foreach ($product_mark as $k => $value) {
                                            if ($vo['name'] == $value['name']){
                                                $checked = "checked";
                                                break;
                                            }
                                        }
                                    }
                                 ?>
                                <input class="js-check" type="checkbox" name="sling_available[]" value="<?php echo $key; ?>" <?php echo $checked; ?>><?php echo $vo['name']; ?>
                                <img src="<?php echo cmf_get_image_url($vo['url']); ?>" width="18" height="18" onclick="imagePreviewDialog(this.src);">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                        </td>
                    </tr>
                    <tr>
                        <th>工作环境温度</th>
                        <td>
                            <textarea class="form-control" name="temperature" style="height: 50px;"><?php echo $product['temperature']; ?></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>应用行业</th>
                        <td>
                            <textarea class="form-control" name="industry" style="height: 50px;"><?php echo $product['industry']; ?></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>附件</th>
                        <td>
                            <ul id="files" class="pic-list list-unstyled form-inline">
                                <?php 
                                    if(empty($product['file'])){
                                        $product['file'] = ['url'=>$product_file['url']??'','name'=>$product_file['name']??''];
                                    }
                                 ?>
                                <input id="product_file" type="hidden" name="file_url" value="<?php echo $product['file']['url']; ?>">
                                <input class="form-control" id="product_file-name" type="text" name="file_name" value="<?php echo $product['file']['name']; ?>"
                                       style="width: 200px;display: inline-block" title="文件名称">
                                <?php if(!(empty($product['file']['url']) || (($product['file']['url'] instanceof \think\Collection || $product['file']['url'] instanceof \think\Paginator ) && $product['file']['url']->isEmpty()))): ?>
                                    <a class="btn btn-info" id="file-preview" href="<?php echo cmf_get_image_preview_url($product['file']['url']); ?>" target="_blank"><i class="fa fa-download fa-fw"></i></a>
                                <?php endif; ?>
                                <a class="btn btn-default" href="javascript:uploadOne('文件上传','#product_file','file');"><i class="fa fa-upload fa-fw"></i></a>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th>产品概述</th>
                        <td>
                            <script type="text/plain" id="content" name="overview"><?php echo $product['overview']; ?></script>
                        </td>
                    </tr>
                    <tr>
                        <th>应用场景</th>
                        <td>
                            <script type="text/plain" id="scenario_content" name="scenario"><?php echo $product['scenario']; ?></script>
                        </td>
                    </tr>
                    <tr>
                        <th>证书</th>
                        <td>
                            <ul id="certificate" class="pic-list list-unstyled form-inline">
                                <?php if(!(empty($product['certificate']) || (($product['certificate'] instanceof \think\Collection || $product['certificate'] instanceof \think\Paginator ) && $product['certificate']->isEmpty()))): if(is_array($product['certificate']) || $product['certificate'] instanceof \think\Collection || $product['certificate'] instanceof \think\Paginator): if( count($product['certificate'])==0 ) : echo "" ;else: foreach($product['certificate'] as $key=>$vo): $img_url=cmf_get_image_preview_url($vo['url']); ?>
                                        <li id="saved-certificate<?php echo $key; ?>">
                                            <input id="certificate-<?php echo $key; ?>" type="hidden" name="certificate_urls[]"
                                                   value="<?php echo $vo['url']; ?>">
                                            <input class="form-control" id="certificate-<?php echo $key; ?>-name" type="text"
                                                   name="certificate_names[]"
                                                   value="<?php echo (isset($vo['name']) && ($vo['name'] !== '')?$vo['name']:''); ?>" style="width: 200px;" title="图片名称">
                                            <img id="certificate-<?php echo $key; ?>-preview"
                                                 src="<?php echo cmf_get_image_preview_url($vo['url']); ?>"
                                                 style="height:34px;width: 44px;"
                                                 onclick="parent.imagePreviewDialog(this.src);">
                                            <a class="btn btn-default"  href="javascript:uploadOneImage('图片上传','#certificate-<?php echo $key; ?>');"><i class="fa fa-upload fa-fw"></i></a>
                                            <a class="btn btn-danger"  href="javascript:(function(){$('#saved-certificate<?php echo $key; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                            <a class="btn btn-success"  href="javascript:(function(){$('#saved-certificate<?php echo $key; ?>').before($('#saved-certificate<?php echo $key; ?>').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
                                        </li>
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                <?php endif; ?>
                            </ul>
                            <a href="javascript:uploadMultiImage('图片上传','#certificate','certificate-item-tpl');"
                               class="btn btn-default">选择图片</a>
                        </td>
                    </tr>
                    <tr>
                        <th>案例</th>
                        <td>
                            <ul id="case" class="pic-list list-unstyled form-inline">
                                <?php if(!(empty($product['case']) || (($product['case'] instanceof \think\Collection || $product['case'] instanceof \think\Paginator ) && $product['case']->isEmpty()))): if(is_array($product['case']) || $product['case'] instanceof \think\Collection || $product['case'] instanceof \think\Paginator): if( count($product['case'])==0 ) : echo "" ;else: foreach($product['case'] as $key=>$vo): $img_url=cmf_get_image_preview_url($vo['url']); ?>
                                        <li id="saved-case<?php echo $key; ?>">
                                            <input id="case-<?php echo $key; ?>" type="hidden" name="case_urls[]"
                                                   value="<?php echo $vo['url']; ?>">
                                            <input class="form-control" id="case-<?php echo $key; ?>-name" type="text"
                                                   name="case_names[]"
                                                   value="<?php echo (isset($vo['name']) && ($vo['name'] !== '')?$vo['name']:''); ?>" style="width: 200px;" title="图片名称">
                                            <img id="case-<?php echo $key; ?>-preview"
                                                 src="<?php echo cmf_get_image_preview_url($vo['url']); ?>"
                                                 style="height:34px;width: 44px;"
                                                 onclick="parent.imagePreviewDialog(this.src);">
                                            <a class="btn btn-default"  href="javascript:uploadOneImage('图片上传','#case-<?php echo $key; ?>');"><i class="fa fa-upload fa-fw"></i></a>
                                            <a class="btn btn-danger"  href="javascript:(function(){$('#saved-case<?php echo $key; ?>').remove();})();"><i class="fa fa-trash fa-fw"></i></a>
                                            <a class="btn btn-success"  href="javascript:(function(){$('#saved-case<?php echo $key; ?>').before($('#saved-case<?php echo $key; ?>').next());})();"><i class="fa fa-arrow-down fa-fw"></i></a>
                                        </li>
                                    <?php endforeach; endif; else: echo "" ;endif; ?>
                                <?php endif; ?>
                            </ul>
                            <a href="javascript:uploadMultiImage('图片上传','#case','case-item-tpl');"
                               class="btn btn-default">选择图片</a>
                        </td>
                    </tr>
                    <tr>
                        <th>排序</th>
                        <td>
                            <input class="form-control" type="number" name="list_order"
                                   id="list_order" value="<?php echo $product['list_order']; ?>"/>
                        </td>
                    </tr>
                    <tr>
                        <th>推荐</th>
                        <td>
                            <input class="js-check" type="checkbox" name="is_recommended" value="1" <?php echo !empty($product['is_recommended']) ? 'checked'  :  ''; ?>/>推荐
                        </td>
                    </tr>
                </table>
                <div class="form-group">
                    <div class="col-sm-12 text-center">
                        <input name="id" type="hidden" value="<?php echo $product['id']; ?>"/>
                        <button type="submit" class="btn btn-primary js-ajax-submit"><?php echo lang('SAVE'); ?></button>
                        <a class="btn btn-default" href="<?php echo url('AdminProduct/index'); ?>"><?php echo lang('BACK'); ?></a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript" src="/static/js/admin.js?v=<?php echo $_static_version; ?>"></script>
<script type="text/javascript">
    //编辑器路径定义
    var editorURL = GV.WEB_ROOT;
</script>
<script type="text/javascript" src="/static/js/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="/static/js/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript">
    $(function () {

        editorcontent = new baidu.editor.ui.Editor();
        editorcontent.render('content');
        try {
            editorcontent.sync();
        } catch (err) {
        }

        scenariocontent = new baidu.editor.ui.Editor();
        scenariocontent.render('scenario_content');
        try {
            scenariocontent.sync();
        } catch (err) {
        }

        $('.btn-cancel-thumbnail').click(function () {
            $('#thumbnail-preview').attr('src', '/themes/admin_simpleboot3/public/assets/images/default-thumbnail.png');
            $('#thumbnail').val('');
        });

    });


    function checkCapacity(key) {
        openIframeLayer("<?php echo url('AdminProduct/select'); ?>?key="+key+"&ids=" + $('#js-'+key+'-input').val(), '请选择起重量', {
            area: ['700px', '400px'],
            btn: ['确定', '取消'],
            yes: function (index, layero) {
                var iframeWin = window[layero.find('iframe')[0]['name']];
                var selecteds = iframeWin.confirm();

                if (selecteds.selectedIds.length === 0) {
                    layer.msg('请选择分类');
                    return;
                }
                $('#js-'+key+'-input').val(selecteds.selectedIds.join(','));
                for (var i = 0; i < selecteds.selecteds.length; i++) {
                    if ($('#saved-'+key+selecteds.selecteds[i].id).length > 0){
                        continue;
                    }
                    $('#'+key).append('<li id="saved-'+key+selecteds.selecteds[i].id+'"><input class="form-control" type="text" name="'+key+'[]" value="'+selecteds.selecteds[i].name+'" style="width: 200px;"><a class="btn btn-danger" href="javascript:(function(){$(\'#saved-'+key+selecteds.selecteds[i].id+'\').remove();})();"><i class="fa fa-trash fa-fw"></i></a></li>');
                }
                layer.close(index); //如果设定了yes回调，需进行手工关闭
            }
        });
    }

    function input_add(domid) {
        var timestamp = new Date().getTime();
        var randomNum = Math.random();
        var scaledRandomNum = Math.floor(randomNum * 1000);
        var id = timestamp.toString() + scaledRandomNum.toString();
        $('#'+domid).append('<li id="saved-'+domid+id+'"><input class="form-control" type="text" name="'+domid+'[]" value="" style="width: 200px;"><a class="btn btn-danger" href="javascript:(function(){$(\'#saved-'+domid+id+'\').remove();})();"><i class="fa fa-trash fa-fw"></i></a></li>');
    }
                //do something
</script>
</body>
</html>

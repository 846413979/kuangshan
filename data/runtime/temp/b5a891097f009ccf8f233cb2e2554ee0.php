<?php /*a:2:{s:97:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/portal\admin_article\edit.html";i:1731462211;s:85:"E:\product\kuangshan\kuangshan-cmf\public/themes/admin_simpleboot3/public\header.html";i:1730268637;}*/ ?>
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
</head>
<body>
<div class="wrap js-check-wrap">
    <form action="<?php echo url('AdminArticle/editPost'); ?>" method="post" class="form-horizontal js-ajax-form">
        <div class="row">
            <div class="col-md-9">
                <table class="table table-bordered">
                    <tr>
                        <th width="100">分类<span class="form-required">*</span></th>
                        <td>
                            <input class="form-control" type="text" style="width:400px;" required
                                   value="<?php echo implode(' ',$post_categories); ?>"
                                   placeholder="请选择分类" onclick="doSelectCategory();" id="js-categories-name-input"
                                   readonly/>
                            <input class="form-control" type="hidden" value="<?php echo $post_category_ids; ?>"
                                   name="post[categories]"
                                   id="js-categories-id-input"/>
                        </td>
                    </tr>
                    <tr>
                        <th>标题<span class="form-required">*</span></th>
                        <td>
                            <input id="post-id" type="hidden" name="post[id]" value="<?php echo $post['id']; ?>">
                            <input class="form-control" type="text" name="post[post_title]"
                                   required value="<?php echo $post['post_title']; ?>" placeholder="请输入标题"/>
                        </td>
                    </tr>
                    <tr>
                        <th>摘要</th>
                        <td>
                            <textarea class="form-control" name="post[post_excerpt]" style="height: 50px;"
                                      placeholder="请填写摘要"><?php echo $post['post_excerpt']; ?></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>内容</th>
                        <td>
                            <script type="text/plain" id="content" name="post[post_content]"><?php echo $post['post_content']; ?></script>
                        </td>
                    </tr>
                    <tr>
                        <th>相册</th>
                        <td>
                            <ul id="photos" class="pic-list list-unstyled form-inline">
                                <?php if(!(empty($post['more']['photos']) || (($post['more']['photos'] instanceof \think\Collection || $post['more']['photos'] instanceof \think\Paginator ) && $post['more']['photos']->isEmpty()))): if(is_array($post['more']['photos']) || $post['more']['photos'] instanceof \think\Collection || $post['more']['photos'] instanceof \think\Paginator): if( count($post['more']['photos'])==0 ) : echo "" ;else: foreach($post['more']['photos'] as $key=>$vo): $img_url=cmf_get_image_preview_url($vo['url']); ?>
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
                        <th>视频</th>
                        <td class="form-inline">
                            <input id="file-video" class="form-control" type="text" name="post[more][video]"
                                   value="<?php echo (isset($post['more']['video']) && ($post['more']['video'] !== '')?$post['more']['video']:''); ?>" placeholder="请上传视频文件" style="width: 200px;">
                            <?php if(!(empty($post['more']['video']) || (($post['more']['video'] instanceof \think\Collection || $post['more']['video'] instanceof \think\Paginator ) && $post['more']['video']->isEmpty()))): ?>
                                <a class="btn btn-info" id="file-video-preview"
                                   href="<?php echo cmf_get_file_download_url($post['more']['video']); ?>"
                                   target="_blank"><i class="fa fa-play-circle fa-fw"></i></a>
                            <?php endif; ?>
                            <a class="btn btn-default" href="javascript:uploadOne('文件上传','#file-video','video');"><i class="fa fa-upload fa-fw"></i></a>
                            <a class="btn btn-danger" href="javascript:(function(){$('#file-video').val('');})();"><i class="fa fa-trash fa-fw"></i></a>
                        </td>
                    </tr>
                </table>

                <?php 
    hook('portal_admin_article_edit_view_main',null,false);
 ?>

                <div class="form-group">
                    <div class="col-sm-12 text-center">
                        <button type="submit" class="btn btn-primary js-ajax-submit"><?php echo lang('SAVE'); ?></button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <table class="table table-bordered">
                    <tr>
                        <th>缩略图</th>
                    </tr>
                    <tr>
                        <td>
                            <div style="text-align: center;">
                                <input type="hidden" name="post[more][thumbnail]" id="thumbnail"
                                       value="<?php echo (isset($post['more']['thumbnail']) && ($post['more']['thumbnail'] !== '')?$post['more']['thumbnail']:''); ?>">
                                <a href="javascript:uploadOneImage('图片上传','#thumbnail');">
                                    <?php if(empty($post['more']['thumbnail'])): ?>
                                        <img src="/themes/admin_simpleboot3/public/assets/images/default-thumbnail.png"
                                             id="thumbnail-preview"
                                             width="135" style="cursor: pointer"/>
                                        <?php else: ?>
                                        <img src="<?php echo cmf_get_image_preview_url($post['more']['thumbnail']); ?>"
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
                        <th>发布时间</th>
                    </tr>
                    <tr>
                        <td>
                            <input class="form-control js-bootstrap-datetime" type="text" name="post[published_time]"
                                   value="<?php echo date('Y-m-d H:i',$post['published_time']); ?>">
                        </td>
                    </tr>
                </table>

                <?php 
    hook('portal_admin_article_edit_view_right_sidebar',null,false);
 ?>
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

        $('.btn-cancel-thumbnail').click(function () {
            $('#thumbnail-preview').attr('src', '/themes/admin_simpleboot3/public/assets/images/default-thumbnail.png');
            $('#thumbnail').val('');
        });

        $('#more-template-select').val("<?php echo (isset($post['more']['template']) && ($post['more']['template'] !== '')?$post['more']['template']:''); ?>");
    });

    function doSelectCategory() {
        var selectedCategoriesId = $('#js-categories-id-input').val();
        openIframeLayer("<?php echo url('AdminCategory/select'); ?>?ids=" + selectedCategoriesId, '请选择分类', {
            area: ['700px', '400px'],
            btn: ['确定', '取消'],
            yes: function (index, layero) {
                //do something

                var iframeWin = window[layero.find('iframe')[0]['name']];
                var selectedCategories = iframeWin.confirm();
                if (selectedCategories.selectedCategoriesId.length == 0) {
                    layer.msg('请选择分类');
                    return;
                }
                $('#js-categories-id-input').val(selectedCategories.selectedCategoriesId.join(','));
                $('#js-categories-name-input').val(selectedCategories.selectedCategoriesName.join(' '));
                //console.log(layer.getFrameIndex(index));
                layer.close(index); //如果设定了yes回调，需进行手工关闭
            }
        });
    }
</script>

<script>

    var publishYesUrl = "<?php echo url('AdminArticle/publish',array('yes'=>1)); ?>";
    var publishNoUrl = "<?php echo url('AdminArticle/publish',array('no'=>1)); ?>";
    var topYesUrl = "<?php echo url('AdminArticle/top',array('yes'=>1)); ?>";
    var topNoUrl = "<?php echo url('AdminArticle/top',array('no'=>1)); ?>";
    var recommendYesUrl = "<?php echo url('AdminArticle/recommend',array('yes'=>1)); ?>";
    var recommendNoUrl = "<?php echo url('AdminArticle/recommend',array('no'=>1)); ?>";

    var postId = $('#post-id').val();

    //发布操作
    $("#post-status-checkbox").change(function () {
        if ($('#post-status-checkbox').is(':checked')) {
            //发布
            $.ajax({
                url: publishYesUrl, type: "post", dataType: "json", data: {ids: postId}, success: function (data) {
                    if (data.code != 1) {
                        $('#post-status-checkbox').removeAttr("checked");
                        $('#post-status-error').html(data.msg).show();

                    } else {
                        $('#post-status-error').hide();
                    }
                }
            });
        } else {
            //取消发布
            $.ajax({
                url: publishNoUrl, type: "post", dataType: "json", data: {ids: postId}, success: function (data) {
                    if (data.code != 1) {
                        $('#post-status-checkbox').prop("checked", 'true');
                        $('#post-status-error').html(data.msg).show();
                    } else {
                        $('#post-status-error').hide();
                    }
                }
            });
        }
    });

    //置顶操作
    $("#is-top-checkbox").change(function () {
        if ($('#is-top-checkbox').is(':checked')) {
            //置顶
            $.ajax({
                url: topYesUrl, type: "post", dataType: "json", data: {ids: postId}, success: function (data) {
                    if (data.code != 1) {
                        $('#is-top-checkbox').removeAttr("checked");
                        $('#is-top-error').html(data.msg).show();

                    } else {
                        $('#is-top-error').hide();
                    }
                }
            });
        } else {
            //取消置顶
            $.ajax({
                url: topNoUrl, type: "post", dataType: "json", data: {ids: postId}, success: function (data) {
                    if (data.code != 1) {
                        $('#is-top-checkbox').prop("checked", 'true');
                        $('#is-top-error').html(data.msg).show();
                    } else {
                        $('#is-top-error').hide();
                    }
                }
            });
        }
    });
    //推荐操作
    $("#recommended-checkbox").change(function () {
        if ($('#recommended-checkbox').is(':checked')) {
            //推荐
            $.ajax({
                url: recommendYesUrl, type: "post", dataType: "json", data: {ids: postId}, success: function (data) {
                    if (data.code != 1) {
                        $('#recommended-checkbox').removeAttr("checked");
                        $('#recommended-error').html(data.msg).show();

                    } else {
                        $('#recommended-error').hide();
                    }
                }
            });
        } else {
            //取消推荐
            $.ajax({
                url: recommendNoUrl, type: "post", dataType: "json", data: {ids: postId}, success: function (data) {
                    if (data.code != 1) {
                        $('#recommended-checkbox').prop("checked", 'true');
                        $('#recommended-error').html(data.msg).show();
                    } else {
                        $('#recommended-error').hide();
                    }
                }
            });
        }
    });


</script>


</body>
</html>

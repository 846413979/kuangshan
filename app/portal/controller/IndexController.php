<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2019 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\portal\controller;

use app\admin\model\MessageModel;
use app\admin\model\SlideItemModel;
use app\portal\model\PortalCategoryModel;
use app\portal\model\PortalPostModel;
use app\portal\model\ProductCategoryModel;
use app\portal\model\ProductModel;
use app\portal\model\ProfessionModel;
use app\portal\service\PostService;
use app\portal\validate\InquiryValidate;
use cmf\controller\HomeBaseController;

class IndexController extends HomeBaseController
{

    // 初始化
    protected function initialize()
    {
        // 产品分类
        $productCategoryModel = new ProductCategoryModel();
        $category_list = $productCategoryModel->order('list_order asc,create_time desc')->select();
        $this->assign('category_list', $category_list);

        // 案例分类
        $portalCategoryModel = new PortalCategoryModel();
        $case_category = $portalCategoryModel->where('type', 3)->order('list_order asc')->select();
        $this->assign('case_category', $case_category);

        // 关于我们分类
        $about_category = $portalCategoryModel->where('type', 7)->order('list_order asc')->select();
        $this->assign('about_category', $about_category);


        //社会责任
        $responsibility_category_list = $portalCategoryModel->where('status', 1)->where('type', 2)->where('parent_id', 11)->order('list_order asc')->select();
        $this->assign('responsibility_category_list', $responsibility_category_list);
        parent::initialize();
    }

    public function index()
    {
        // 首页轮播图
        $slide_id = 1;
        $SlideItemModel = new SlideItemModel();
        $slides = $SlideItemModel->where('slide_id', $slide_id)->order('list_order asc')->select();
        $this->assign('slides', $slides);

        // 热门产品
        $productModel = new ProductModel();
        $hot_products = $productModel->where('is_recommended', 1)->order('list_order asc')->limit(9)->select();
        $this->assign('hot_products', $hot_products);

        // 首页案例
        $portalPostModel = new PortalPostModel();
        $where = [['post_type','=',3]];
        $case_list = $portalPostModel->alias('p')->join('cmf_portal_category_post c','p.id=c.post_id','left')->where($where)->order('c.list_order asc,p.create_time desc')->field('p.id,p.post_title,p.thumbnail,p.more,c.category_id as cid')->limit(5)->select();
        $this->assign('case_list', $case_list);

        // 首页设置
        $index_setting = cmf_get_option('index_setting');
        $this->assign('index_setting', $index_setting);


        return $this->fetch(':index');
    }

    // 企业荣誉
    public function about()
    {
        $news_category_id = $this->request->param('id', 0, 'intval');
        $portalCategoryModel = new PortalCategoryModel();

        $category = $portalCategoryModel->where('id', $news_category_id)->where('status', 1)->find();
        $this->assign('category', $category);

        $portalPostModel = new PortalPostModel();
        $where = [['post_type','=',7]];
        if (!empty($news_category_id)) {
            $where[] = ['c.category_id', '=', $news_category_id];
        }
        $list = $portalPostModel->alias('p')->join('cmf_portal_category_post c','p.id=c.post_id','left')->where($where)->order('c.list_order asc,p.create_time desc')->field('p.id,p.post_title,p.thumbnail,p.more,c.category_id as cid')->paginate(12);
        $this->assign('list', $list);
        $this->assign('page', $list->render());

        return $this->fetch(':responsibility');
    }

    public function list()
    {
        $id = 8;
        $portalCategoryModel = new PortalCategoryModel();

        $category = $portalCategoryModel->where('id', $id)->where('status', 1)->find();

        $this->assign('category', $category);
        return $this->fetch("portalbak@:list");
    }

    // 关于我们
    public function intro()
    {
        $postService = new PostService();
        $pageId = $this->request->param('id', 0, 'intval');
        $page = $postService->publishedPage($pageId);
        if (empty($page)) {
            abort(404, ' 页面不存在!');
        }
        $this->assign('page', $page);
        return $this->fetch(':intro');
    }

    public function culture()
    {
        $postService = new PostService();
        $pageId = $this->request->param('id', 0, 'intval');
        $page = $postService->publishedPage($pageId);
        if (empty($page)) {
            abort(404, ' 页面不存在!');
        }
        $this->assign('page', $page);
        return $this->fetch(':culture');
    }

    public function news()
    {
        return $this->fetch(':news');
    }

    public function news_info()
    {
        return $this->fetch(':news-info');
    }

    // 活动纪实
    public function activity()
    {
        $id = $this->request->param('id', 0, 'intval');
        $portalCategoryModel = new PortalCategoryModel();

        $category = $portalCategoryModel->where('id', $id)->where('status', 1)->find();

        $this->assign('category', $category);
        return $this->fetch(':activity');
    }

    public function activity_info()
    {

        $portalPostModel = new PortalPostModel();

        $articleId = $this->request->param('id', 0, 'intval');
        $categoryId = $this->request->param('cid', 0, 'intval');
        $portalCategoryModel = new PortalCategoryModel();

        $category = $portalCategoryModel->where('id', $categoryId)->where('status', 1)->find();

        $this->assign('category', $category);

        $where = [
            'post.post_type' => 1,
            'post.delete_time' => 0,
            'relation.category_id' => $categoryId,
            'relation.post_id' => $articleId
        ];

        $article = $portalPostModel->alias('post')->field('post.*')
            ->join('portal_category_post relation', 'post.id = relation.post_id')
            ->where($where)
            ->find();
        $this->assign('article', $article);

        $where = [
            'post.post_type' => 1,
            'post.post_status' => 1,
            'post.delete_time' => 0,
            'relation.category_id' => $categoryId,
        ];

        $prevArticle = $portalPostModel
            ->alias('post')
            ->field('post.*')
            ->join('portal_category_post relation', 'post.id = relation.post_id')
            ->where($where)
            ->where('relation.post_id', '<', $articleId)
            ->order('id', 'DESC')
            ->find();
        $nextArticle = $portalPostModel
            ->alias('post')
            ->field('post.*')
            ->join('portal_category_post relation', 'post.id = relation.post_id')
            ->where($where)
            ->where('relation.post_id', '>', $articleId)
            ->order('id', 'DESC')
            ->find();
        $this->assign('prev_article', $prevArticle);
        $this->assign('next_article', $nextArticle);

        return $this->fetch(':news-info');
    }

    // 社会责任
    public function responsibility()
    {
        $id = $this->request->param('id', 0, 'intval');
        $portalCategoryModel = new PortalCategoryModel();

        $category = $portalCategoryModel->where('id', $id)->where('status', 1)->find();

        $this->assign('category', $category);
        return $this->fetch(':responsibility');
    }

    public function about_info()
    {
        $portalPostModel = new PortalPostModel();

        $articleId = $this->request->param('id', 0, 'intval');
        $categoryId = $this->request->param('cid', 0, 'intval');
        $portalCategoryModel = new PortalCategoryModel();

        $category = $portalCategoryModel->where('id', $categoryId)->where('status', 1)->find();

        $this->assign('category', $category);

        $where = [
            'post.post_type' => 7,
            'post.delete_time' => 0,
            'relation.category_id' => $categoryId,
            'relation.post_id' => $articleId
        ];

        $article = $portalPostModel->alias('post')->field('post.*')
            ->join('portal_category_post relation', 'post.id = relation.post_id')
            ->where($where)
            ->find();
        $this->assign('article', $article);

        $where = [
            'post.post_type' => 7,
            'post.post_status' => 1,
            'post.delete_time' => 0,
            'relation.category_id' => $categoryId,
        ];

        $prevArticle = $portalPostModel
            ->alias('post')
            ->field('post.*')
            ->join('portal_category_post relation', 'post.id = relation.post_id')
            ->where($where)
            ->where('relation.post_id', '<', $articleId)
            ->order('id', 'DESC')
            ->find();
        $nextArticle = $portalPostModel
            ->alias('post')
            ->field('post.*')
            ->join('portal_category_post relation', 'post.id = relation.post_id')
            ->where($where)
            ->where('relation.post_id', '>', $articleId)
            ->order('id', 'DESC')
            ->find();
        $this->assign('prev_article', $prevArticle);
        $this->assign('next_article', $nextArticle);

        return $this->fetch(':responsibility-info');
    }

    public function periodical()
    {
        return $this->fetch(':periodical');
    }

    // 产品列表
    public function product()
    {
        if ($this->request->isAjax()) {
            $category_id = $this->request->param('id', 0, 'intval');//分类id
            $weight = $this->request->param('weight', '', 'strval');//吨位
            $profession_ids = $this->request->param('profession_ids', '', 'strval');//行业标签

            $productModel = new ProductModel();
            $where = [];
            $whereRaw = '';
            if (!empty($category_id)) {
                $where[] = ['category_id', '=', $category_id];
            }
            if (!empty($weight)) {
                $whereRaw = 'JSON_CONTAINS(lifting_capacity, \'"' . $weight . '"\')';
            }
            if (!empty($profession_ids)) {
                $where[] = ['f.tag_id', 'IN', $profession_ids];
            }

            $list = $productModel->alias('p')->join('cmf_product_profession f', 'p.id=f.product_id', 'left')->field('p.id,title,thumbnail')->where($where)->where($whereRaw)->order('list_order asc,p.create_time desc')->group('p.id')->paginate(12)->each(function ($item, $key) {
                $item['thumbnail'] = cmf_get_image_url($item['thumbnail']);
                $item['url'] = cmf_url('portal/index/product_info', array('id' => $item['id']));
            });

            $this->success('success', '', ['list' => $list, 'page' => $list->render()]);
        }
        $id = $this->request->param('id', 0, 'intval');

        $where = [];
        // id为空 全部分类产品
        if (empty($id)) {
            $category = ['id' => 0, 'name' => 'All Products'];
        } else {
            $productCategoryModel = new ProductCategoryModel();
            $category = $productCategoryModel->where('id', $id)->find();
            if (empty($category)) {
                $this->error('category not exits');
            }
            $where[] = ['category_id', '=', $id];
        }

        $this->assign('category', $category);

        $productModel = new ProductModel();
        $list = $productModel->field('id,title,thumbnail')->where($where)->order('list_order asc,create_time desc')->paginate(12);

        $this->assign('list', $list);
        $this->assign('page', $list->render());

        // 行业标签
        $professionModel = new ProfessionModel();
        $profession_list = $professionModel->field('id,name')->where('status', 1)->select();
        $this->assign('profession_list', $profession_list);


        return $this->fetch(':product');
    }


    public function product_info()
    {
        $productModel = new ProductModel();
        $id = $this->request->param('id', 0, 'intval');
        if (empty($id)) {
            $this->error('product not exits');
        }
        $product = $productModel->where('id', $id)->find();
        if (empty($product)) {
            $this->error('product not exits');
        }

        $this->assign('product', $product);

        $productCategoryModel = new ProductCategoryModel();
        $category = $productCategoryModel->where('id', $product['category_id'])->find();
        $this->assign('category', $category);

        // 产品设置
        $product_setting = cmf_get_option('product_setting');
        $this->assign('product_setting', $product_setting);

        // 推荐产品
        $recommended_list = $productModel->field('id,title,thumbnail')->where([['id', '<>', $id], ['is_recommended', '=', 1]])->orderRaw('RAND()')->limit(4)->select();
        $this->assign('recommended_list', $recommended_list);

        return $this->fetch(':product-info');
    }

    public function propagate()
    {
        return $this->fetch(':propagate');
    }

    public function video()
    {
        //视频列表
        $portalPostModel = new PortalPostModel();
        $list = $portalPostModel->field('id,post_title,more')->where('post_type', 5)->order('create_time desc')->paginate(12);
        $this->assign('list', $list);
        $this->assign('page', $list->render());

        return $this->fetch(':video');
    }

    public function video_info()
    {
        //视频
        $id = $this->request->param('id', 0, 'intval');
        $portalPostModel = new PortalPostModel();
        $article = $portalPostModel->where('id', $id)->find();
        if (empty($article)) {
            $this->error('article not exits');
        }
        $this->assign('article', $article);

        $prevArticle = $portalPostModel->where('id', '<', $id)->where('post_type', 5)->order('create_time desc')->field('id,post_title')->find();
        $nextArticle = $portalPostModel->where('id', '>', $id)->where('post_type', 5)->order('create_time desc')->field('id,post_title')->find();

        $this->assign('prevArticle', $prevArticle);
        $this->assign('nextArticle', $nextArticle);

        return $this->fetch(':video-info');
    }

    // 询价
    public function quotation()
    {
        return $this->feedback();
    }

    // 预约申请
    public function reservation()
    {
        return $this->feedback(2);
    }

    /**
     * 反馈页面（询价、预约申请）
     * @param int $type 1:询价 2:预约申请
     *
     */
    public function feedback(int $type = 1)
    {
        $portalPostModel = new PortalPostModel();

        $articleId = $this->request->param('id', 0, 'intval');
        $categoryId = $this->request->param('cid', 0, 'intval');

        $portalCategoryModel = new PortalCategoryModel();
        $category = $portalCategoryModel->where('id', $categoryId)->where('status', 1)->find();
        $this->assign('category', $category);

        $where = [
            'post.post_type' => 3,
            'post.delete_time' => 0,
            'relation.category_id' => $categoryId,
            'relation.post_id' => $articleId
        ];

        $article = $portalPostModel->alias('post')->field('post.*')
            ->join('portal_category_post relation', 'post.id = relation.post_id')
            ->where($where)
            ->find();
        $this->assign('article', $article);
        $this->assign('type', $type);

        return $this->fetch(':feedback');
    }

    /**
     * 反馈提交
     * @param int $type 1:询价 2:预约申请
     * @param int $id 产品id
     * @param string $name 姓名
     * @param string $phone 电话
     * @param string $content 内容
     **/

    public function feedback_post()
    {

        if (!$this->request->isPost()) {
            $this->error('请求错误');
        }

        $param = $this->request->param();
        if (empty($param['product_id']) || empty($param['name']) || empty($param['mobile']) || empty($param['content'])) {
            $this->error('参数错误');
        }
        $portalPostModel = new PortalPostModel();
        $product = $portalPostModel->where('id', $param['product_id'])->find();

        $data = [
            'name' => $param['name'],
            'phone' => $param['mobile'],
            'content' => $param['content'],
            'product_id' => $param['product_id'],
            'type' => $param['type'],
            'create_time' => time(),
            'product_name' => $product['post_title'],
            'product_image' => $product['thumbnail'],
        ];
        $model = new MessageModel();
        $res = $model->save($data);
        if ($res) {
            $this->success('提交成功');
        } else {
            $this->error('提交失败');
        }

    }

    public function search()
    {
        $keyword = $this->request->param('keyword');
        $this->assign('keyword', $keyword);


        $productModel = new ProductModel();
        $list = $productModel->where('title|alias', 'like', "%{$keyword}%")->paginate(12);

        $this->assign('list', $list);
        $this->assign('page', $list->render());


        return $this->fetch(':search');
    }

    // 提交表单
    public function inquiry()
    {
        if (!$this->request->isPost()) {
            $this->error('Invalid request');
        }
        $data = $this->request->param();
        $InquiryValidate = new InquiryValidate();
        if (!$InquiryValidate->check($data)) {
            $this->error($InquiryValidate->getError());
        }
        $model = new MessageModel();
        $res = $model->saveMessage($data);
        if ($res === false) {
            $this->error('submit failed');
        }
        if ($data['type'] == 3) {
            session('user_download', 1);
        }
        $this->success('submit success', '', ['session' => session('user_download')]);

    }


    // 服务页面
    public function service()
    {
        return $this->fetch(':service');
    }

    // 附件下载页面
    public function download()
    {
        // 下载列表
        $portalPostModel = new PortalPostModel();
        $list = $portalPostModel->where('post_type', 6)->field('id,post_title,more')->select();
        $this->assign('list', $list);
        return $this->fetch(':download');
    }

    // 联系我们
    public function contact()
    {
        return $this->fetch(':contact');
    }


    // 案例
    public function case()
    {

        $id = $this->request->param('id', 0, 'intval');
        $categoryModel = new PortalCategoryModel();
        $category = $categoryModel->where('id', $id)->find();
        $this->assign('category', $category);

        $portalPostModel = new PortalPostModel();
        $where[] = ['post_type', '=', 3];
        if (!empty($id)) {
            $where[] = ['category_id', '=', $id];
        }
        $list = $portalPostModel->alias('post')->join('cmf_portal_category_post c', 'post.id=c.post_id')->where($where)->field('post.id,post_title,thumbnail')->order('create_time DESC')->paginate(12);
        $this->assign('list', $list);
        $this->assign('page', $list->render());

        return $this->fetch(':case');
    }
}

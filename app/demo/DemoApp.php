<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: Dean <zxxjjforever@163.com>
// +----------------------------------------------------------------------

namespace app\demo;

//Demo应用英文名，改成你的应用英文就行了
use think\facade\Config;
use think\facade\Db;

class DemoApp
{

    // 应用安装
    public function install()
    {
        return true; //安装成功返回true，失败false
    }

    // 应用卸载
    public function uninstall()
    {
        $database = Config::get('database.connections.' . Config::get('database.default'));
        $prefix   = $database['prefix'];
        Db::execute("drop table {$prefix}demo_user");

        return true; //卸载成功返回true，失败false
    }

}

<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
declare (strict_types=1);

namespace app\demo\command;

use think\console\Command;
use think\console\Input;
use think\console\Output;

class LangCompare extends Command
{
    protected function configure()
    {
        // 指令配置
        $this->setName('demo:lang_compare')
            ->setDescription('compare cmf lang');
    }

    protected function execute(Input $input, Output $output)
    {
        $cmfLangs   = include CMF_ROOT . 'vendor/thinkcmf/cmf/src/lang/zh-cn.php';
        $adminLangs = include CMF_ROOT . 'vendor/thinkcmf/cmf-app/src/admin/lang/zh-cn.php';
        foreach ($cmfLangs as $key => $value) {
            if (isset($adminLangs[$key])) {
                unset($adminLangs[$key]);
            }
        }

        print_r($adminLangs);
        $adminLangsStr = var_export($adminLangs, true);
        $content       = <<<hello
<?php
return $adminLangsStr;
hello;

        file_put_contents(CMF_DATA . 'lang_compare.php', $content);

    }

}

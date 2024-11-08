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

namespace cmf\console\command;

use think\console\Command;
use think\console\Input;
use think\console\Output;

class Version extends Command
{
    protected function configure()
    {
        // 指令配置
        $this->setName('version')
            ->setDescription('Show ThinkPHP & ThinkCMF version');
    }

    protected function execute(Input $input, Output $output)
    {
        $output->writeln('ThinkPHP v' . $this->app->version() . ' & ThinkCMF v' . cmf_version());
    }

}

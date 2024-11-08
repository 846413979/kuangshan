<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-present http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Released under the MIT License.
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------

namespace app\demo\command;

use think\console\Command;
use think\console\Input;
use think\console\input\Argument;
use think\console\input\Option;
use think\console\Output;

class Hello extends Command
{
    protected function configure()
    {
        $this->setName('demo:hello')
            ->addArgument('name', Argument::OPTIONAL, "your name")
            ->addOption('city', '-c', Option::VALUE_REQUIRED, 'city name')
            ->setDescription('Say App Hello');
    }

    protected function execute(Input $input, Output $output)
    {
        $name = $input->getArgument('name');
        $name = $name ? $name : 'ThinkCMF';
        $city = $input->getOption('city');
        $city = $city ? $city : '中国';
        $output->writeln("你好！我是{$name}！ 我来至{$city}！");
        $output->writeln('你好！我是<info>ThinkCMF</info>!');
        $output->writeln('你好！我是<error>错误</error>!');
        $output->writeln('你好！我是<comment>注释</comment>!');
        $output->writeln('你好！我是<question>疑问</question>!');
        $output->writeln('你好！我是<highlight>高亮</highlight>!');
        $output->writeln('你好！我是<warning>警告</warning>!');
    }


}

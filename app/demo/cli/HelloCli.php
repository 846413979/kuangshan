<?php

namespace app\demo\cli;

use cmf\console\Cli;
use think\console\Input;
use think\console\Output;

class HelloCli
{
    /**
     *
     * @param Input  $input
     * @param Output $output
     * @return void
     */
    #[Cli(
        'Hello',
        ['demo:hello:hello test'],
        [
            'php think cli demo:hello:hello test',
            'php think cli demo:hello:hello test2'
        ]
    )]
    public function hello(Input $input, Output $output)
    {
        $output->writeln("<error>hello</error>");
    }

    /**
     *
     * @param Input  $input
     * @param Output $output
     * @return void
     */
    #[Cli('Hello2')]
    public function hello2(Input $input, Output $output)
    {

    }
}

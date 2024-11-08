<?php

use think\migration\Migrator;

class MigrationAppDemoTest extends Migrator
{
    /**
     * Change Method.
     *
     * Write your reversible migrations using this method.
     *
     * More information on writing migrations is available here:
     * https://book.cakephp.org/phinx/0/en/migrations.html#the-change-method
     *
     * The following commands can be used in this method and Phinx will
     * automatically reverse them when rolling back:
     *
     *    createTable
     *    renameTable
     *    addColumn
     *    renameColumn
     *    addIndex
     *    addForeignKey
     *
     * Remember to call "create()" or "update()" and NOT "save()" when working
     * with the Table class.
     */
    public function change()
    {
        $table = $this->table('demo_user', ['comment' => "demo应用用户表，用于演示应用用户表扩展"]);
        $table
            ->addColumn('user_id', 'integer', [
                'default' => 0, // 默认值
                'null'    => false, // 不能为空
                'comment' => '用户ID' // 字段注释
            ])
            ->addColumn('name', 'string', [
                'default' => '',
                'null'    => false,
                'limit'   => 50,
                'comment' => '用户名称'
            ])
            ->addColumn('create_time', 'integer', [
                'default' => 0,
                'null'    => false,
                'comment' => '创建时间'
            ])
            ->addColumn('update_time', 'integer', [
                'default' => 0,
                'null'    => false,
                'comment' => '更新时间'
            ])
            ->addColumn('status', 'smallinteger', [
                'default' => 1,
                'null'    => false,
                'comment' => '状态;0:禁用;1:启用'
            ])
            ->addIndex('name', ['limit' => 50])
            ->addIndex('user_id')
            ->create();
    }
}

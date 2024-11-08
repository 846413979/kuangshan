<?php

namespace app\admin\model;

use think\Model;
use think\model\concern\SoftDelete;

class MessageModel extends Model
{
    protected $name = 'message';

    protected $autoWriteTimestamp = true;

    use SoftDelete;
    protected $deleteTime = 'delete_time';

    protected function getCreateTimeAttr($value)
    {
        return date('Y-m-d H:i:s', $value);
    }

    public function adminMessageList($where = array())
    {
        return $this -> where($where)->order('create_time desc')->paginate(10);
    }

    //已删除列表
    public function deletedMessageList($where = array()){
        return $this -> onlyTrashed() -> where($where) -> order('delete_time desc') -> paginate(10);
    }
}
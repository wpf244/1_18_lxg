<?php
namespace app\index\controller;

class Auditi extends BaseHome
{
    public function index()
    {
        $uid=\session("userid");
        $list=db("apply")->alias("a")->where("p_id=$uid")->join("user b","a.p_id=b.uid")->select();
        $this->assign("list",$list);
        
        return $this->fetch();
    }
}
<?php
namespace app\mobile\controller;

class Auditi extends BaseMobile
{
    public function index()
    {
        $uid=\session("userid");
        $list=db("apply")->alias("a")->where("p_id=$uid")->join("user b","a.p_id=b.uid")->select();
        $this->assign("list",$list);
        
        return $this->fetch();
    }
}
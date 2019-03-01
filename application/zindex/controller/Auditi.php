<?php
namespace app\zindex\controller;

class Auditi extends BaseHome
{
    public function index()
    {
        $uid=\session("userid");
        $list=db("apply")->alias("a")->where("p_id=$uid")->join("user b","a.p_id=b.uid")->select();
        $this->assign("list",$list);

        $main=db("apply")->alias("a")->where("u_id=$uid")->join("user b","a.u_id=b.uid")->select();
        $this->assign('main',$main);
        
        return $this->fetch();
    }
}
<?php
namespace app\index\controller;

class Problem extends BaseHome
{
    public function index()
    {
        $re=db("about")->where("id=2")->find();
        $this->assign("re",$re);
        return $this->fetch();
    }
}
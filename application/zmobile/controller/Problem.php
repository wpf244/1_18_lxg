<?php
namespace app\mobile\controller;

class Problem extends BaseMobile
{
    public function index()
    {
        $re=db("about")->where("id=2")->find();
        $this->assign("re",$re);
        return $this->fetch();
    }
}
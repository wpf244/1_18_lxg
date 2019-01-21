<?php
namespace app\mobile\controller;

class Game extends BaseMobile
{
    public function index()
    {
        $re=db("about")->where("id=1")->find();
        $this->assign("re",$re);
        return $this->fetch();
    }
}
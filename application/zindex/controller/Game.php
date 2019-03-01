<?php
namespace app\zindex\controller;

class Game extends BaseHome
{
    public function index()
    {
        $re=db("about")->where("id=1")->find();
        $this->assign("re",$re);
        return $this->fetch();
    }
}
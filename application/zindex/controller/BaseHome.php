<?php
namespace app\index\controller;

use think\Controller;



class BaseHome extends Controller
{
    function _initialize(){
      
        if(empty(session('userid'))){
            $this->redirect("login/index");
        }
        $sys=db('sys')->where("id=1")->find();
        $this->assign("sys",$sys);
       
        
    }
}
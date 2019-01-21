<?php
namespace app\zadmin\controller;

use think\Controller;
use app\zadmin\model\Sever;

class Common extends Controller{
    
    function _initialize(){
        $sys=db('sys')->where("id=1")->find();
        $this->assign("sys",$sys);
        
        $this->logs=new Sever();
    }
}

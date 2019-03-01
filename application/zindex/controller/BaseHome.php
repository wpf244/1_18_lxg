<?php
namespace app\zindex\controller;

use think\Controller;

// http://www.zlxg.com/index/index/initiUid/28.html

class BaseHome extends Controller
{
    function _initialize(){

        $uid = input('initiUid');
        if($uid) {
            $uRes = db('user')->where('uid',$uid)
            ->find();
            if($uRes) {
                if($uRes['u_status'] == 1){
                    session('userid',$uRes['uid']);
                    $this->redirect(url('index/pwd'));
                }else{
                 $this->error('此账号未激活，请联系上级激活',url('Login/index'));
                }
            }
        }
        
        if(empty(session('userid'))){
            $this->redirect("login/index");
        }
        
          
        

        $sys=db('sys')->where("id=1")->find();
        $this->assign("sys",$sys);
       
        
    }
}
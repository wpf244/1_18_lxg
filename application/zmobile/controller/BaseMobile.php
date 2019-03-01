<?php
namespace app\zmobile\controller;

use think\Controller;


class BaseMobile extends Controller
{
    function _initialize(){
      
        if (!defined('CONTROLLER_NAME')) {
            define('CONTROLLER_NAME', $this->request->controller());
        }
        if (!defined('ACTION_NAME')) {
            define('ACTION_NAME', $this->request->action());
        }

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
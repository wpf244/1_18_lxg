<?php
namespace app\zmobile\controller;

class Login extends Common
{
    public function index()
    {
        return $this->fetch();
    }
    public function check(){
        // $data = input('post.');
         if(!captcha_check(input('post.verify'))) {
             // 校验失败
             $this->error('验证码不正确');exit;
         }
         $u_name=input('post.u_name');
         $pwd=md5(input('post.u_pwd'));
         $re=db("user")->where(array('u_name|u_code|u_phone'=>$u_name,'u_pwd'=>$pwd))->find();
         if($re){
            if($re['is_status'] != 1){
                $this->error('此账号未激活，请联系上级激活',url('Login/index'));
            }else if($re['is_dell'] != 1) {
                $this->error('不可登陆,您不是直销用户',url('Login/index'));
            }else{
                session('userid',$re['uid']);
                $this->success('登陆成功 ^_^',url('Index/index'));
            }
             
         }else{
             $this->error('登录失败：用户名或密码错误。',url('Login/index'));
         }
     }

     public function out(){
        session("userid",null);
        session("pwd",null);
        $this->redirect('Login/index');
    }
    public function forget()
    {
        return $this->fetch();
    }
    public function checkphone()
    {
        $phone=input('phone');
        $code =mt_rand(100000,999999);       
        $data['phone']=$phone;
        $data['code']=$code;
        $data['time']=time();
        $re=\db("sms_code")->where("phone='$phone'")->find();
        if($re){
            $del=db("sms_code")->where("phone='$phone'")->delete();
        }
        $rea=db("sms_code")->insert($data);
 
        Post($phone,$code);

    }
    public function save()
    {
        $phone=input('u_phone');
        $code=input('yzm');
        $re=db("sms_code")->where(['phone'=>$phone,'code'=>$code])->find();
        if($re){
            $time=$re['time'];
            $times=time();
            $c_time=($times-$time);
            if($c_time < 300){
                $del=db("sms_code")->where("id={$re['id']}")->delete();
                $reu=db("user")->where("u_phone='$phone'")->find();
                if($reu){
                    $uid=$reu['uid'];
                    if(!empty(\input('u_pwd'))){
                        $data['u_pwd']=md5(\input('u_pwd'));
                    }
                    if(!empty(\input('u_pwds'))){
                        $data['u_pwds']=md5(\input('u_pwds'));
                    }
    
                    $res=db("user")->where("uid=$uid")->update($data);
                    if($res){
                        $this->success("修改成功",url('index'));
                    }else{
                        $this->success("修改失败",url('index'));
                    }
                }else{
                    $this->error("此手机号码未注册",url('forget'));
                }
                

            }else{
                $this->error("验证码已失效",url('forget'));
            }
        }else{
            $this->error("验证码错误",url('forget'));
        }
    }

}
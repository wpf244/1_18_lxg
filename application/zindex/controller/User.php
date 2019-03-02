<?php
namespace app\zindex\controller;

class User extends BaseHome
{
    public function index()
    {
        //用户信息
        $uid=session('userid');
        $re=db("user")->where("uid=$uid")->find();
        $this->assign("re",$re);

        return $this->fetch();
    }
    public function user(){
        $uid=session('userid');
        $re=db("user")->where("uid=$uid")->find();
        if($re['u_gender'] == 1){
            $re['sex']='男';
        }elseif($re['u_gender'] == 2){
            $re['sex']='女';
        }else{
            $re['sex']='保密';
        }
        // dump($re);die;
        $this->assign("re",$re);
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
        $uids=\session("userid");
        $uid=input('uid');
        if($uids == $uid){
            $reu=db("user")->where("uid=$uid")->find();
            if($reu){
                $phone=input('u_phone');
                // $code=input('yzm');
                // $re=db("sms_code")->where(['phone'=>$phone,'code'=>$code])->find();
                // if($re){
                    // $time=$re['time'];
                    // $times=time();
                    // $c_time=($times-$time);
                    // if($c_time < 300){
                        // $del=db("sms_code")->where("id={$re['id']}")->delete();
                        if(!empty(\input('u_pwd'))){
                            $data['u_pwd']=md5(\input('u_pwd'));
                        }
                        if(!empty(\input('u_pwds'))){
                            $data['u_pwds']=md5(\input('u_pwds'));
                        }
                       
                        
                        $data['u_idcode']=input('u_idcode');
                        $data['realname']=input('realname');
                        $data['u_phone']=input('u_phone');
                        

                        $res=db("user")->where("uid=$uid")->update($data);
                        if($res){
                            $this->success("保存成功",url('user'));
                        }else{
                            $this->success("保存失败",url('user'));
                        }
    
                    // }else{
                        // $this->error("验证码已失效",url('index'));
                    // }
                // }else{
                    // $this->error("验证码错误",url('index'));
                // }
            }else{
                $this->error("非法登录",url('Login/out'));
            }
            
        }else{
            $this->error("非法登录",url('Login/out'));
        }

        
    }
}
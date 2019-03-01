<?php
namespace app\zmobile\controller;

class Email extends BaseMobile
{
    public function _initialize()
    {
        parent::_initialize();
        $uid=session("userid");
        //收件箱有多少
        $cous=db("email")->where("pid=$uid and look=0 and p_status=0")->count();
        $this->assign("cous",$cous);
    }
    public function index()
    {
        $pwd=session("pwd");
        if(empty($pwd)){
            $this->redirect('pwd');
        }else{
            $uid=session('userid');
            $res=db("email")->where("pid=$uid and p_status=0")->order("time desc")->paginate(10);
            $this->assign("res",$res);
            $page=$res->render();
            $this->assign("page",$page);
            
            return $this->fetch();
        }
        
    }
    public function write_email()
    {
        

        return $this->fetch();
    }
    public function save()
    {
        $uid=session("userid");
        $p_name=input('p_name');
        $re=db("user")->where(array("u_code|u_name|u_phone"=>$p_name))->find();
        $reu=db("user")->where("uid=$uid")->find();
        if($re){
             $pid=$re['uid'];
             if($uid != $pid){
                 $data=input('post.');
                 $data['pid']=$pid;
                 $data['u_id']=$uid;
                 $data['u_name']=$reu['u_name'];
                 $data['time']=time();
                $rea=db("email")->insert($data);
                if($rea){
                    $this->success("发送成功",url('write_email'));
                }else{
                    $this->error("发送失败，请稍后再试",url('write_email'));
                }
                 

             }else{
                $this->error("收件人不能是自己",url('write_email'));
             }
        }else{
            $this->error("此收件人不存在",url('write_email'));
        }
    }
    public function pwd()
    {
        return $this->fetch();
    }
    public function check()
    {
        $uid=\session("userid");
        $re=db("user")->where("uid=$uid")->find();
        if($re){
            $u_pwds=\md5(\input('u_pwds'));
            $pwds=$re['u_pwds'];
            if($u_pwds == $pwds){
                \session("pwd",$pwds);
                $this->success("认证成功",url('index'));
            }else{
                $this->error("密码错误",url('index'));
            }
        }else{
            return array('code'=>2,'url'=>url('Index/Login/out'));
        }
    }
    //删除收件箱邮件
    public function delete()
    {
        $id=\input('id');
        $arr=explode(",",$id);
     //  \var_dump($id);exit;
        foreach ($arr as $v){
            $re=db('email')->where("id=$v")->find();
            if($re){ 
                $del=db('email')->where("id=$v")->setField("p_status",1); 
            }else{
                return false;
            }
        }
        $this->redirect("Email/index");
    }
    //邮件详情
    public function detail()
    {
        $id=\input('id');
        $re=db("email")->where("id=$id")->find();
        if($re){
            $res=db("email")->where("id=$id")->setField("look",1);
            $this->assign("re",$re);
            return $this->fetch();
        }else{
            $this->redirect("index");
        }
        
    }
    //回复邮件
    public function reply()
    {
       $id=\input('id');
       $re=db("email")->where("id=$id")->find();
       if($re){
           $this->assign("re",$re);
           return $this->fetch();
       }else{
           $this->redirect('index');
       }
       
    }
    //发件箱
    public function send_email()
    {
        $uid=session('userid');
        $res=db("email")->where("u_id=$uid and u_status=0")->order("time desc")->paginate(10);
        $this->assign("res",$res);
        $page=$res->render();
        $this->assign("page",$page);
        return $this->fetch();
    }
    public function deletes()
    {
        $id=\input('id');
        $arr=explode(",",$id);
     //  \var_dump($id);exit;
        foreach ($arr as $v){
            $re=db('email')->where("id=$v")->find();
            if($re){ 
                $del=db('email')->where("id=$v")->setField("u_status",1); 
            }else{
                return false;
            }
        }
        $this->redirect("Email/send_email");
    }
    public function details()
    {
        $id=\input('id');
        $re=db("email")->where("id=$id")->find();
        if($re){
            
            $this->assign("re",$re);
            return $this->fetch();
        }else{
            $this->redirect("index");
        }
        
    }


}
<?php
namespace app\zmobile\controller;

class Member extends BaseMobile
{
    public function index()
    {
        $uid=session("userid");
        $res=db("user")->where("pid=$uid")->select();
        $this->assign("res",$res);
        return $this->fetch();
    }
    public function change()
    {
        $id=input('id');
        $uid=session("userid");
        $reu=db("user")->where("uid=$uid")->find();
        $gold=$reu['gold'];
        $re=db("user")->where("uid=$id")->find();
        if($re){
        
            $data['u_jtime']=\time();
            $data['u_status']=1;
            $res=db("user")->where("uid=$id")->update($data);

            $datas['u_id']=session("userid");
            $datas['p_id']=$id;
            $datas['time']=time();
            db("user_log")->insert($datas);

         

            echo '2';
        
           
        }else{
            echo '0';
        }
    }

    public function notes()
    {
        $pwd=session("pwd");
        if(empty($pwd)){
            $this->redirect('pwd');
        }else{

          $uid=session("userid");
          $list=db("apply")->alias("a")->where("p_id=$uid")->join("user b","a.u_id=b.uid")->select();
          $this->assign("list",$list);
          return $this->fetch();
        }
    }
    public function changes()
    {
        $id=input('id');
        $re=db("apply")->where("id=$id")->find();
        $money=input('money');
        $uids=session("userid");
        $reus=db("user")->where("uid=$uids")->find();
        $gold=$reus['gold'];
       
            if($re){
                $data['status']=1;
                $data['q_time']=time();
                $res=db("apply")->where("id=$id")->update($data);
    
                $uid=$re['u_id'];
                $level=$re['levels'];
                $reu=db("user")->where("uid=$uid")->setField("level",$level);

                if($res && $reu){
                    echo '0';
                }else{
                    echo '2';
                }
            }else{
                echo '1';
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
                $this->success("认证成功",url('notes'));
            }else{
                $this->error("密码错误",url('notes'));
            }
        }else{
            return array('code'=>2,'url'=>url('Index/Login/out'));
        }
    }

}
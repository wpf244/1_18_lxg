<?php
namespace app\zindex\controller;

class Apply extends BaseHome
{
    public function index()
    {
        $pwd=session("pwd");
        if(empty($pwd)){
           
            $this->redirect('pwd');
        }else{
            $uid=session("userid");
            $reu=db("user")->where("uid=$uid")->find();
            $this->assign("reu",$reu);
            if($reu['level'] < 6){
                $les=$reu['level']+1;
            }else{
                $les='';
            }
            
            $this->assign("les",$les);
          return $this->fetch();
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
        // dump($re);die;
        if($re){
            $u_pwds=\md5(\input('u_pwds'));
            // dump($u_pwds);die;
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
    public function change()
    {
        $uid=session("userid");
        $reu=db("user")->where("uid=$uid")->find();
        
        if($reu['level'] < 6){
            echo '1';
        }else{
            echo '0';
        }
    }
    public function user_apply()
    {
        // echo 123;return ;
        $uid=session("userid");
        $user=db('user')->where("uid=$uid")->find();
        if(input('post.')){
            $level=input('level');
            $res1=db('level')->where("level={$user['level']}")->find();
            $res2=db('level')->where("level=$level")->find();
            $data['money']=$res2['money']-$res1['money'];
            $data['u_id']=$uid;
            $data['p_id']=$user['pid'];
            $data['level']=$user['level'];
            $data['levels']=$level;
            $data['time']=time();
            $last=db('apply')->where("u_id=$uid and status=0")->select();
            if($last){
                db('apply')->where("u_id=$uid and status=0")->delete();
            }
            $re=db('apply')->insert($data);
            if($re){
                $this->success('申请成功,请耐心等待审核!',url('index'));
            }else{
                $this->error('申请失败,请重新提交!',url('index'));
            }
        }
        $this->assign('user',$user);
        $this->assign('levels',($user['level']+1));
        return $this->fetch();
    }

    public function getMoney(){
        $level=input('level');
        $levels=input('levels');
        $money=db('level')->where("level=$level")->find()['money'];
        $moneys=db('level')->where("level=$levels")->find()['money'];
        $res=$moneys-$money;
        if($res>0){
            echo $res;
        }else{
            echo 0;
        }
    }

    public function save()
    {
        $pid=\input('pid');
        $uid=session('userid');
        $reu=db("user")->where("uid=$uid")->find();

        $les=$reu['level']+1;
       
        $level=db("level")->where("level=$les")->find();

        $re=db("apply")->where("u_id=$uid and levels=$les and status=0")->find();
        if($re){
            db("apply")->where("u_id=$uid and levels=$les and status=0")->delete();
        }

        $data['u_id']=$uid;
        $data['p_id']=$pid;
        $data['level']=$reu['level'];
        $data['levels']=$les;
        $data['money']=$level['money'];
        $data['time']=time();

        $rea=db("apply")->insert($data);

        $id=db("apply")->getLastInsID();

        $this->redirect("apply_success",array('id'=>$id));


    }
    public function apply_success()
    {
       $re=db("lb")->where("fid=4")->find();
       $this->assign("re",$re);

       $id=\input('id');
       $rea=db("apply")->alias('a')->where("id=$id")->join("user b","a.p_id=b.uid")->find();
       
       $this->assign("rea",$rea);
       return $this->fetch();
    }


















}
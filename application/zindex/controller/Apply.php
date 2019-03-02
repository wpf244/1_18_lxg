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
            $apply=db("apply")->where(["u_id"=>$uid,"status"=>0])->find();
            if(empty($apply)){
                $reu=db("user")->where("uid=$uid")->find();
                $re=db("zx_league")->where("lid",$reu['level'])->find();
    
                $this->assign("re",$re);
                
                $les=$reu['level']+1;
                $res=db("zx_league")->where("lid",$les)->find();
                
                
                $this->assign("res",$res);
              return $this->fetch();
            }else{
                $this->redirect('Member/notes');
            }
           
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
        
        $les=$reu['level']+1;
        $res=db("zx_league")->where("lid",$les)->find();

        if($res){
            echo '1';
        }else{
            echo '0';
        }
    }
    public function user_apply()
    {
       
        $uid=session("userid");
        $user=db('user')->where("uid=$uid")->find();

        $re=db("zx_league")->where("lid",$user['level'])->find();
        $this->assign("re",$re);

        $res=db("zx_league")->where("lid",">",$user['level'])->select();
        $this->assign("res",$res);
     
        
        return $this->fetch();
    }

    public function getMoney(){
        $level=input('level');
        $levels=input('levels');
        $money=db('zx_league')->where("lid=$level")->find()['lprice'];
        $moneys=db('zx_league')->where("lid=$levels")->find()['lprice'];
        $res=$moneys-$money;
        if($res>0){
            echo $res;
        }else{
            echo 0;
        }
    }

    public function save()
    {
        $uid=session("userid");
        $user=db('user')->where("uid=$uid")->find();

        $level=input('level');
        $res1=db('zx_league')->where("lid",$user['level'])->find();
        $res2=db('zx_league')->where("lid",$level)->find();

        $money=$res2['lprice']-$res1['lprice'];
        $gold=$user['gold'];
        if($gold >= $money){

            $data['money']=$res2['lprice']-$res1['lprice'];
            $data['u_id']=$uid;
            $data['level']=$user['level'];
            $data['levels']=$level;
            $data['time']=time();
            $last=db('apply')->where("u_id=$uid and status=0")->select();
            if($last){
                db('apply')->where("u_id=$uid and status=0")->delete();
            }
            $re=db('apply')->insert($data);
            db("user")->where("uid",$uid)->setDec("gold",$money);
            $arr['uid']=$uid;
            $arr['content']="升级减少";
            $arr['gold']=$money;
            $arr['time']=time();
            $arr['status']=0;
            db("zx_gold_log")->insert($arr);
            if($re){
                $this->success('申请成功,请耐心等待审核!',url('Member/notes'));
            }else{
                $this->error('申请失败,请重新提交!',url('index'));
            }
        }else{
            $this->error("注册币不足",url('index'));
        }

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
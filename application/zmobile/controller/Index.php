<?php
namespace app\zmobile\controller;


class Index extends BaseMobile{
    public function index()
    {
        $uid=session('userid');
        $re=db("user")->where("uid=$uid")->find();
        $this->assign("re",$re);

        //升级信息
        $apply=db("apply")->where(array('p_id'=>$uid))->paginate(3);
        $this->assign("apply",$apply);

        return $this->fetch();
    }
    public function gold()
    {
        $uid=session("userid");
        $res=db("zx_gold_log")->alias('a')->where("a.uid=$uid")->join("user b","a.uid=b.uid")->select();
//        $res=db('user')->where("uid=$uid")->find();
//        dump($res);die;
        $this->assign("res",$res);
        return $this->fetch();
    }
    //保存赠送的注册币
    public function save()
    {
        $uid=session("userid");
        $u_code=input('u_code');
        $re=db("user")->where(array('u_code|u_name'=>$u_code))->find();
        if($re){
            $u_id=$re['uid'];
            if($uid != $u_id){
                $gold=input('gold');
                if($gold >= 1){
                   $reu=db("user")->where("uid=$uid")->find();
                   $reu_gold=$reu['gold'];
                   if($reu_gold >= $gold){
                       //给被赠送人增加注册币
                     $res=db("user")->where("uid=$u_id")->setInc("gold",$gold);
                      //减少赠送人的注册币
                     $ress=db("user")->where("uid=$uid")->setDec("gold",$gold);

                     //增加注册币转赠记录
                     $data['u_id']=$uid;
                     $data['p_id']=$u_id;
                     $data['money']=$gold;
                     $data['time']=time();
                    db("gold")->insert($data);

                     $datas['u_id']=$u_id;
                     $datas['p_id']=$uid;
                     $datas['money']=$gold;
                     $datas['time']=time();
                     $datas['status']=1;
                    db("gold")->insert($datas);

                     if($res && $ress){
                         $this->success("赠送成功");
                     }else{
                         $this->error("赠送失败");
                     }
                   } else{
                    $this->error("注册币数量不足");
                   }
            
                }else{
                    $this->error("注册币数量最少为1");
                }
            }else{
                $this->error("不能赠送给自己");
            }
        }else{
            $this->error("此会员不存在");
        }

    }

    public function trans(){
        $uid=session('userid');
        $user=db('user')->where("uid=$uid")->find();
        $this->assign('user',$user);
        return $this->fetch();
    }

    public function save_trans(){
        $uid=session("userid");
        $money=input('money');
        $trans=input('trans');
        $pwds=input('pwds');
        $user=db('user')->where("uid=$uid")->find();
        if($user['u_pwds'] == md5($pwds)){
            if($money < $user['money']){
                db('user')->where("uid=$uid")->setDec('money',$money);
                db('user')->where("uid=$uid")->setInc('gold',$money);
                $data['uid']=$uid;
                $data['gold']=$money;
                $data['content']=$trans;
                $data['time']=time();
                $data['status']=0;
                db('zx_gold_log')->insert($data);
                $this->success('转换成功!',url('trans'));
            }else{
                $this->error('余额不足!',url('trans'));
            }
        }else{
            $this->error('密码输入错误!',url('trans'));
        }
        
    }

    public function pwd() {
        $uid = session('userid');
        $this->assign([
            'uid' => $uid
        ]);
        return $this->fetch();
    }

    public function check()
    {
        $uid = input('param.uid');
        
        $re=db("user")->where('uid',$uid)->find();

        // echo '<pre>';
        // print_r($re);
        // return ;

        if($re){
            $u_pwds=\md5(\input('u_pwds'));
            $pwds=$re['u_pwds'];
            
            if($u_pwds == $pwds){
                session('userid',$uid);
                \session("pwd",$pwds);
                $this->success("认证成功",url('index'));
            }else{
                $this->error("密码错误",url('pwd'));
            }
        }else{
            return array('code'=>2,'url'=>url('Login/out'));
        }
    }

    // ========================================
}
<?php
namespace app\zindex\controller;


use think\Request;

class Index  extends BaseHome
{
    public function index()
    {
       
        $uid=session('userid');
        $re=db("user")->where("uid=$uid")->find();
        $this->assign("re",$re);

        return $this->fetch();
           
    }
    public function hellow()
    {
        //友情链接
        $link=db("lb")->where("fid=18")->paginate(12);
        $this->assign("link",$link);

     
        //用户信息
        $uid=session('userid');
        $re=db("user")->where("uid=$uid")->find();
        $this->assign("re",$re);

        //联盟公告
        $news=db("news")->where("status=1 and groom=1")->order(['sort'=>'asc','id'=>'desc'])->paginate(3);
        $this->assign("news",$news);

        //游戏规则
        $game=db("about")->where("id=1")->find();
        $this->assign("game",$game);

        //级别详情
        $level=db("level")->order("level desc")->select();
        $this->assign("level",$level);

        $rea=db("about")->where("id=3")->find();
        $this->assign("rea",$rea);

        //会员信息
        $uid=session("userid");
        $reu=db("user")->where("uid=$uid")->find();
        $this->assign("reu",$reu);

        $le=$reu['level'];
        $les=($le+1);
        $rel=db("level")->where("level=$les")->find();
        $this->assign("rel",$rel);
        $this->assign("les",$les);

        //升级信息
        $apply=db("apply")->where(array('p_id'=>$uid))->paginate(3);
        $this->assign("apply",$apply);

        //奖金图表
        $arr=array();
        $arrs=array();
        $times=db("zx_money_log")->field("number")->group("number")->order("id desc")->limit("0,10")->select();
        foreach($times as $v){
           $arr[]=(string)$v['number'];
           $money=db("zx_money_log")->field("money")->where(["uid"=>$uid,"number"=>$v['number']])->find();
           if($money){
              $arrs[]=$money['money'];
           }else{
               $arrs[]=0;
           }
        }
        $times=array_values($arr);
        $this->assign("times",json_encode($times));

        $money=array_values($arrs);
        $this->assign("money",json_encode($arrs));
        
        return $this->fetch();
    }
    public function gold()
    {
        $uid=session("userid");
        $res=db("gold")->alias('a')->field("a.status,a.money,p_id,u_code,realname,a.time")->where(["u_id"=>$uid,"status"=>0])->join("user b","a.u_id=b.uid")->select();
        
        $this->assign("res",$res);

        $list=db("gold")->alias('a')->field("a.status,a.money,p_id,u_code,realname,a.time")->where(["u_id"=>$uid,"status"=>1])->join("user b","a.u_id=b.uid")->select();
        
        $this->assign("list",$list);

        return $this->fetch();
    }
    public function phone()
    {
        $uid=session('userid');
        $re=db("user")->where("uid=$uid")->find();
        $this->assign("re",$re);

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

                     $arr['uid']=$uid;
                     $arr['content']="转赠他人";
                     $arr['gold']=$gold;
                     $arr['time']=time();
                     $arr['status']=0;
                     db("zx_gold_log")->insert($arr);

                     $datas['u_id']=$u_id;
                     $datas['p_id']=$uid;
                     $datas['money']=$gold;
                     $datas['time']=time();
                     $datas['status']=1;
                     db("gold")->insert($datas);

                     $arrs['uid']=$u_id;
                     $arrs['content']="他人转赠";
                     $arrs['gold']=$gold;
                     $arrs['time']=time();
                     $arrs['status']=1;
                     db("zx_gold_log")->insert($arrs);

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
        $uid=session("userid");
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
                $data['content']="奖金转换";
                $data['time']=time();
                $data['status']=1;
                db('zx_gold_log')->insert($data);
                
                $datas['uid']=$uid;
                $datas['bonus']=$money;
                $datas['content']="转换注册币";
                $datas['time']=time();
                $datas['status']=0;
                db('zx_bonus_log')->insert($datas);

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
        // echo 123;
        return $this->fetch();
    }

    public function check()
    {
        $uid = input('param.uid');
        $re=db("user")->where('uid',$uid)->find();
        // echo '<pre>';
        // print_r($re);return ;
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
            // return $this->redirect(url('login/out'));
        }
    }


    // ==============================
}

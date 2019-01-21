<?php
namespace app\mobile\controller;


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
        $res=db("gold")->alias('a')->where("u_id=$uid")->join("user b","a.u_id=b.uid")->select();
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
}
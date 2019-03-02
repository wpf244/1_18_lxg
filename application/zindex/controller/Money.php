<?php
namespace app\zindex\controller;

class Money extends BaseHome
{
    public function index()
    {
        $uid=session("userid");
        $list=array();
        $times=db("zx_money_log")->field("number")->group("number")->order("id desc")->paginate(20);
        $page=$times->render();
        $this->assign("page",$page);
        foreach($times as $v){
           $res=db("zx_money_log")->where(["uid"=>$uid,"number"=>$v['number']])->find();
           if($res){
              $list[]=$res;
           }else{
               $arr=[
                   'tui_money'=>0,
                   'coupon'=>0,
                   'tax'=>0,
                   'guan_money'=>0,
                   'fu_money'=>0,
                   'money'=>0,
                   'number'=>$v['number']
               ];
               $list[]=$arr;
           }
        }
        $this->assign("list",$list);

        $user=db("user")->where("uid",$uid)->find();
        $this->assign("user",$user);

        return $this->fetch();
    }
    public function ti()
    {
        return $this->fetch();
    }
    public function save()
    {
        $money=input("money");
        $uid=session("userid");
        $reu=db("user")->where("uid",$uid)->find();
        $moneys=$reu['money'];
        if($moneys >= $money){
            $rate=db("zx_rate")->where("id",1)->find();
            $rates=$rate['rate'];

            $t_rate=$money*$rates/100;
            $t_moneys=$money-$t_rate;
            $data['u_id']=$uid;
            $data['t_money']=$money;
            $data['t_time']=time();
            $data['t_rate']=$t_rate;
            $data['t_moneys']=$t_moneys;
            $data['type']=input("type");
            $data['card']=input("card");

           $re=db("zx_ti_dd")->insert($data);

            db("user")->where("uid",$uid)->setDec("money",$money);

            $arr['uid']=$uid;
            $arr['content']="申请提现减少";
            $arr['bonus']=$money;
            $arr['time']=time();
            $arr['status']=0;
            db("zx_bonus_log")->insert($arr);

            if($re){
                $this->success("申请成功，请等待打款",url('index'));
            }else{
                $this->error("系统繁忙，请稍后再试");
            }


        }else{
            $this->error("奖金余额不足");
        }
    }
    public function mx()
    {
        $uid=session("userid");
        $list=db("zx_ti_dd")->where("u_id",$uid)->order("id desc")->paginate(20);
        $page=$list->render();
        $this->assign("list",$list);
        $this->assign("page",$page);
        return $this->fetch();
    }



}
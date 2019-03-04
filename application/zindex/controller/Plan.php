<?php
/**
 * Created by PhpStorm.
 * User: qe
 * Date: 2019/1/26
 * Time: 10:22
 */
namespace app\zindex\controller;

use think\Controller;



class Plan extends Controller
{
    public function plan(){
        $users=db('user')->where('is_dell=1 and is_status=1')->select();
        $all_money=db('user')->where('is_dell=1 and is_status=1')->sum('ach_money');
        foreach($users as $k=>$v){
            $re_money=0;
            $ach_money=$v['ach_money'];
            if($ach_money>500000 && $ach_money<3000000){
                $xuser=db("user")->where(["fid"=>$v['uid'],"ach_money"=>[">=",500000]])->find();
                if($xuser){
                    $re_money=($ach_money-500000)*0.01;
                }else{
                    $re_money=($ach_money-500000)*0.05;
                }
            }
            if($ach_money>=3000000 && $ach_money<10000000){
                $xuser=db("user")->where(["fid"=>$v['uid'],"ach_money"=>[">=",3000000]])->find();
                if($xuser){
                    $re_money=($ach_money-500000)*0.01;
                }else{
                    $re_money=($ach_money-500000)*0.09;
                }
            }
            if($ach_money>=10000000 && $ach_money<20000000){
                $xuser=db("user")->where(["fid"=>$v['uid'],"ach_money"=>[">=",10000000]])->find();
                if($xuser){
                    $re_money=($ach_money-500000)*0.01;
                }else{
                    $re_money=($ach_money-500000)*0.13;
                }
            }
            if($ach_money>=20000000) {
                $re_money1=($ach_money-10000000)*0.13;
                $re_money2=($all_money-20000000)*0.01;
                $re_money=$re_money1+$re_money2;
            }
            
            db('user')->where("uid={$v['uid']}")->setInc("money",$re_money);
            $datas['uid']=$v['uid'];
            $datas['content']='服务津贴';
            $datas['bonus']=$re_money;
            $datas['time']=time();
            $datas['status']=1;
            db('zx_bonus_log')->insert($datas);
        }
    }
}
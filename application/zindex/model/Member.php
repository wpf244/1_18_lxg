<?php
namespace app\zindex\model;

use think\Model;

class Member extends Model
{
    //上级增加奖金
    public function add_money($fid,$gold)
    {
        
        $add_money=$gold*0.2;

        //判断用户是否封顶
        $money=$this->judge($fid,$add_money);
        if($money != false){
           //查询用户今日已得奖金
            $money_log=$this->find_money_log($fid);
            //重复消费金额
            $add_coupon=($add_money*0.1);
            //管理费及个税
            $add_sui=($add_money*0.1);
            //用户的日封顶金额
            $user_money=$this->find_money($fid);
            if($money_log){
               //今日已发奖金
               $to_money=$money_log['money'];
               //今日剩余多少奖金封顶
               $s_money=$user_money-$to_money;
               if($s_money > 0){
                    //用户应发津贴
                    $ying_money=$add_money-$add_coupon-$add_sui;
                    if($ying_money > $s_money){
                        $ying_money=$s_money;
                    }
                    //用户增加奖金
                    $res=db("user")->where("uid=$fid")->setInc("money",$ying_money);
                    //增加用户奖金日志
                    $content="推荐津贴";
                    $this->add_money_log($ying_money,$fid,$content);
                    //增加重复消费日志
                    $this->add_copon($add_coupon,$fid);
                     //增加用户购物券
                     db("user")->where("uid=$fid")->setInc("coupon",$add_coupon);

                     //扣除管理及个税
                     $this->add_sui($add_sui,$fid);

                     //更新每期日志
                 
                    $data['tui_money']=($money_log['tui_money']+$add_money);
                    $data['coupon']=($money_log['coupon']+$add_coupon);
                    $data['tax']=($money_log['tax']+$add_sui);
                    $data['money']=($money_log['money']+$ying_money);
                    
                    db("zx_money_log")->where("id",$money_log['id'])->update($data);

                    //增加上级的管理津贴
                    $this->add_guan_money($fid,$add_money);
                    //增加上级业绩
                    $this->add_ach($fid,$gold);
               }else{
                   //增加上级的管理津贴
                    $this->add_guan_money($fid,$add_money);
                    //增加上级业绩
                    $this->add_ach($fid,$gold);
               }
              


            }else{
                
                if($user_money != false){
                    //用户应发津贴
                    $ying_money=$add_money-$add_coupon-$add_sui;
                    //判断应发津贴是否大于日薪封顶
                    if($ying_money > $user_money){
                        $ying_money=$user_money;
                    }
                    //用户增加奖金
                    $res=db("user")->where("uid=$fid")->setInc("money",$ying_money);
                    
                    //增加用户奖金日志
                    $content="推荐津贴";
                    $this->add_money_log($ying_money,$fid,$content);


                     //增加重复消费日志
                    $this->add_copon($add_coupon,$fid);
                    
                    //增加用户购物券
                    db("user")->where("uid=$fid")->setInc("coupon",$add_coupon);

                    //扣除管理及个税
                    $this->add_sui($add_sui,$fid);

                    //新增每期日志
                    $dataa['uid']=$fid;
                    $dataa['tui_money']=$add_money;
                    $dataa['coupon']=$add_coupon;
                    $dataa['tax']=$add_sui;
                    $dataa['money']=$ying_money;
                    $dataa['number']=date("Ymd");
                    $dataa['time']=time();
                 //   var_dump($dataa);exit;
                    db("zx_money_log")->insert($dataa);

                    //增加上级的管理津贴
                    $this->add_guan_money($fid,$add_money);

                    //增加上级业绩
                    $this->add_ach($fid,$gold);


                }
               
            }
            
        }

    }
    //增加上级业绩
    public function add_ach($fid,$gold)
    {
        $i=0;
        do{
            $rep=db("user")->where("uid=$fid")->find();
            if($rep){
                $res=db("user")->where("uid=$fid")->setInc("ach_money",$gold);
                $fid=$rep['fid'];
            }else{
                break;
            }
            $i++;
        }while($i > 0);
    }
    //增加上级管理津贴
    public function add_guan_money($fid,$add_money)
    {
       
        $reu=db("user")->where("uid=$fid")->find();
        $fid=$reu['fid'];
        $i=0;
        do{
        
                $rep=db("user")->where("uid=$fid")->find();
                
                if($rep){
                    if($i == 0){
                        $li=0.4;
                    }
                    if($i == 1){
                        $li=1;
                    }
                    if($i == 2){
                        $li=0.2;
                    }
                    if($i == 3){
                        $li=0.1;
                    }
                    if($i == 4){
                        $li=0.05;
                    }
                    if($i == 5 || $i == 6 || $i == 7 || $i == 8 || $i == 9){
                        $li=0.01;
                    }
                    
                    $add_moneys=$add_money*$li;
                    //判断用户是否封顶
                    $money=$this->judge($fid,$add_moneys);
                   
                    if($money != false){
                        //查询用户今日已得奖金
                         $money_log=$this->find_money_log($fid);
                         //重复消费金额
                         $add_coupon=($add_moneys*0.1);
                         //管理费及个税
                         $add_sui=($add_moneys*0.1);
                         //用户的日封顶金额
                         $user_money=$this->find_money($fid);
                         if($money_log){
                            //今日已发奖金
                            $to_money=$money_log['money'];
                            //今日剩余多少奖金封顶
                            $s_money=$user_money-$to_money;
                            if($s_money > 0){
                                 //用户应发津贴
                                 $ying_money=$add_moneys-$add_coupon-$add_sui;
                                 if($ying_money > $s_money){
                                     $ying_money=$s_money;
                                 }
                                 //用户增加奖金
                                 $res=db("user")->where("uid=$fid")->setInc("money",$ying_money);
                                 //增加用户奖金日志
                                 $content="推荐津贴";
                                 $this->add_money_log($ying_money,$fid,$content);
                                 //增加重复消费日志
                                 $this->add_copon($add_coupon,$fid);
                                  //增加用户购物券
                                  db("user")->where("uid=$fid")->setInc("coupon",$add_coupon);
             
                                  //扣除管理及个税
                                  $this->add_sui($add_sui,$fid);
             
                                  //更新每期日志
                              
                                 $data['tui_money']=($money_log['tui_money']+$add_moneys);
                                 $data['coupon']=($money_log['coupon']+$add_coupon);
                                 $data['tax']=($money_log['tax']+$add_sui);
                                 $data['money']=($money_log['money']+$ying_money);
                                 
                                 db("zx_money_log")->where("id",$money_log['id'])->update($data);   
                            }
                           
             
             
                         }else{
                             
                             if($user_money != false){
                                 //用户应发津贴
                                 $ying_money=$add_moneys-$add_coupon-$add_sui;
                                 //判断应发津贴是否大于日薪封顶
                                 if($ying_money > $user_money){
                                     $ying_money=$user_money;
                                 }
                                 //用户增加奖金
                                 $res=db("user")->where("uid=$fid")->setInc("money",$ying_money);
                                 
                                 //增加用户奖金日志
                                 $content="推荐津贴";
                                 $this->add_money_log($ying_money,$fid,$content);
             
             
                                  //增加重复消费日志
                                 $this->add_copon($add_coupon,$fid);
                                 
                                 //增加用户购物券
                                 db("user")->where("uid=$fid")->setInc("coupon",$add_coupon);
             
                                 //扣除管理及个税
                                 $this->add_sui($add_sui,$fid);
             
                                 //新增每期日志
                                 $data['uid']=$fid;
                                 $data['tui_money']=$add_moneys;
                                 $data['coupon']=$add_coupon;
                                 $data['tax']=$add_sui;
                                 $data['money']=$ying_money;
                                 $data['number']=date("Ymd");
                                 $data['time']=time();
                                 db("zx_money_log")->insert($data);
             
                                 
             
             
                             }
                            
                         }
                         
                     }
                     $fid=$rep['fid'];


                }else{
                    break;
                }
            
           $i++;
        }while($i <= 9);
        
        
    }
    //增加用户奖金日志
    public function add_money_log($add_money,$fid,$content)
    {
       $bonus['uid']=$fid;
       $bonus['content']=$content;
       $bonus['bonus']=$add_money;
       $bonus['time']=time();
       $bonus['status']=1;
       db("zx_bonus_log")->insert($bonus);
    }
    //增加重复消费日志
    public function add_copon($add_coupon,$fid)
    {
       //增加重复消费日志
       $coupon['uid']=$fid;
       $coupon['content']="重复消费";
       $coupon['coupon']=$add_coupon;
       $coupon['time']=time();
       $coupon['status']=1;
       db("zx_coupon_log")->insert($coupon);
    }
    //增加管理及个税日志
    public function add_sui($add_sui,$fid)
    {
        $sui['uid']=$fid;
        $sui['content']="管理费及个税";
        $sui['tax']=$add_sui;
        $sui['time']=time();

        db("zx_tax_log")->insert($sui);
    }
    public function judge($fid,$add_money)
    {
        //查询用户日薪封顶金额
        $zmoney=$this->find_money($fid);
        
        if($zmoney){
         //查询用户今日已得奖金
         $money_log=$this->find_money_log($fid);
        
         if($money_log){
              $shi_money=$money_log['money'];
            
              if($shi_money < $zmoney){
                   $zmoney=$zmoney-$shi_money;
                   
                   return $zmoney;
              }else{
                  return false;
              }
         }else{
             return $zmoney;
         }
        }else{
            return false;
        }
    }
    //查询用户今日已得奖金
    public function find_money_log($fid)
    {
        $money_log=db("zx_money_log")->where("uid=$fid")->whereTime("time","d")->find();
        return $money_log;
    }
    //查询用户日薪封顶金额
    public function find_money($fid)
    {
        $user=db("user")->where("uid=$fid")->find();
        if($user){
            if($user['is_status'] == 1){
               $zmoney=$user['most_money'];
               return $zmoney;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
}
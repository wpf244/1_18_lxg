<?php
namespace app\zindex\controller;

use app\zindex\model\Member;

class Team extends BaseHome
{
    public function index()
    {
        $u_name=input('u_name');
        
        if($u_name){
            $re=db("user")->where(array('u_name|uid'=>$u_name))->find();
            if($re){
               // echo '111';
                 $uid=$re['uid'];
            }else{
                $uid=session("userid");
            }
           // var_dump($uid);
        }else{
            $uid=session("userid");
            $re=db("user")->where("uid=$uid")->find();
        }
        
        $this->assign("re",$re);

        // $res1=db("user")->where("pid=$uid and u_status=1")->limit("0,2")->select();
        // $cou1=count($res1);
        // $this->assign("cou1",$cou1);
        // $cou2=0;
        // $cou3=0;
        // $cou4=0;
        // $cou5=0;

        // foreach($res1 as $c1){
        //     $res2=db("user")->where("pid={$c1['uid']} and u_status=1")->limit("0,2")->select();
        //     $cou2+=(count($res2));
        //     foreach($res2 as $c2){
        //         $res3=db("user")->where("pid={$c2['uid']} and u_status=1")->limit("0,2")->select();
        //         $cou3+=(count($res3));
        //         foreach($res3 as $c3){
        //             $res4=db("user")->where("pid={$c3['uid']} and u_status=1")->limit("0,2")->select();
        //             $cou4+=(count($res4));
        //             foreach($res4 as $c4){
        //                 $res5=db("user")->where("pid={$c4['uid']} and u_status=1")->limit("0,2")->select();
        //                 $cou5+=(count($res5));
        //             }
        //         }
        //     }
        // }
        // $this->assign("cou1",$cou1);
        // $this->assign("cou2",$cou2);
        // $this->assign("cou3",$cou3);
        // $this->assign("cou4",$cou4);
        // $this->assign("cou5",$cou5);
 
        // $arr=[];
        // $arrd=array(
        //     'text'=>'注册',
        //     'href'=>'#',          
        //     'uid'=>-1,
        //     'nodes'=>[],            
        // );
        // $arrs=[
        //     [
        //         'text'=>'注册',
        //         'href'=>'#',               
        //         'uid'=>-1,
        //         'nodes'=>[],
                
        //     ],
        //     [
        //         'text'=>'注册',
        //         'href'=>'#',               
        //         'uid'=>-1,
        //         'nodes'=>[],
                
        //     ]

        //     ];
        // $arrss=[
        //    [
        //         'text'=>'空位',
        //         'href'=>'#',               
        //         'uid'=>-1,
        //         'nodes'=>[],
                
        //     ],
        //    [
        //         'text'=>'空位',
        //         'href'=>'#',               
        //         'uid'=>-1,
        //         'nodes'=>[],
                
        //     ]

        //     ];
        //     $arrds=[
        //         'text'=>'空位',
        //         'href'=>'#',               
        //         'uid'=>-1,
        //         'nodes'=>[],
                
    
        //     ];

        // $list=db("user")->where("uid=$uid")->where("u_status=1")->find();
                 
        //     $arr=[
        //         'text'=>$list['u_name'],
        //         'href'=>'index/u_name/'.$list['uid'],
        //         'uid'=>$list['uid'],
        //         'nodes'=>[],
        //     ];
        //     $list2=db("user")->field("uid,u_name")->where("pid={$list['uid']} and u_status=1")->limit("0,2")->select();
        //     if(empty($list2)){
        //          $list2=$arrs;
        //     }
        //     if(count($list2) == 1){               
        //         $list2[]=$arrd;             
        //     }
        //     foreach($list2 as $kk => $vv){              
        //        if($vv['uid'] != -1){
        //             $arr2[]=[
        //                 'text'=>$vv['u_name'],
        //                 'href'=>'index/u_name/'.$vv['uid'],
        //                 'nodes'=>[],
        //                 'uid'=>$vv['uid'],
                        
        //             ];                    
        //        }else{
        //          $arr2[]=$arrd;
               
        //        }                              
        //     }
                              
        //     foreach($list2 as $k3 => $v3){
              
        //         if($v3['uid'] != -1){
        //             $list3=db("user")->where("pid={$v3['uid']} and u_status=1")->limit("0,2")->select();                    
        //             if(empty($list3)){                                                
        //              $list3=$arrs;    
                                                                
        //             }
        //             if(count($list3) == 1){
        //                 $list3[]=$arrd;                       
        //             }                     
        //             foreach($list3 as $k4 => $v4){  
        //                 if($v4['uid'] != -1){
        //                     $arr3[$k4]=[
        //                         'text'=>$v4['u_name'],
        //                         'href'=>'index/u_name/'.$v4['uid'],
        //                         'tages'=>['0'],
        //                         'nodes'=>[],
        //                         'uid'=>$v4['uid']
        //                     ];
                        
        //                 }else{
        //                     $arr3[$k4]=$arrd;
        //                 }                                               
        //               }
        //         }else{
        //             $arr3=$arrss;
        //         }

        //         foreach($arr3 as $k5 => $v5){
        //             if($v5['uid'] != -1){
        //                 $list4=db("user")->where("pid={$v5['uid']} and u_status=1")->limit("0,2")->select();
        //                 if(empty($list4)){                                                
        //                     $list4=$arrs;    
                                                                       
        //                    }
        //                    if(count($list4) == 1){
        //                        $list4[]=$arrd;                       
        //                    }   
        //                    foreach($list4 as $k6 => $v6){  
        //                     if($v6['uid'] != -1){
        //                         $arr4[$k6]=[
        //                             'text'=>$v6['u_name'],
        //                             'href'=>'index/u_name/'.$v6['uid'],
        //                             'tages'=>['0'],
        //                             'nodes'=>[],
        //                             'uid'=>$v6['uid']
        //                         ];
                            
        //                     }else{
        //                         $arr4[$k6]=$arrd;
        //                     }                                                                                 
        //                   }

        //             }else{
        //                 $arr4=$arrss;
        //             }

        //             foreach($arr4 as $k7 => $v7){
        //                 if($v7['uid'] != -1){
        //                     $list5=db("user")->where("pid={$v7['uid']} and u_status=1")->limit("0,2")->select();
        //                     if(empty($list5)){                                                
        //                         $list5=$arrs;    
                                                                           
        //                        }
        //                        if(count($list5) == 1){
        //                            $list5[]=$arrd;                       
        //                        }   
        //                        foreach($list5 as $k8 => $v8){  
        //                         if($v8['uid'] != -1){
        //                             $arr5[$k8]=[
        //                                 'text'=>$v8['u_name'],
        //                                 'href'=>'index/u_name/'.$v8['uid'],
        //                                 'tages'=>['0'],
        //                                 'nodes'=>[],
        //                                 'uid'=>$v8['uid']
        //                             ];
                                
        //                         }else{
        //                             $arr5[$k8]=$arrd;
        //                         }                                                                                 
        //                       }
    
        //                 }else{
        //                     $arr5=$arrss;
        //                 }
    
                        
    
        //                $arr4[$k7]['nodes']=array_values($arr5);
        //             }

        //            $arr3[$k5]['nodes']=array_values($arr4);
        //         }
                  
        //         $arr2[$k3]['nodes']=array_values($arr3);
        //     }
        //     $arr['nodes']=array_values($arr2);
       
       
      
   
        // $this->assign("arr",json_encode($arr,JSON_UNESCAPED_UNICODE));

            $number=input("number");
            if(empty($number)){
                $number=3;
            }
          //  var_dump($number);
            $this->assign("number",$number);
        
            $cou2=0;
            $cou3=0;
            $cou4=0;
            $arr=['uid'=>-1];
            $arrs=['uid'=>-1,'uid'=>-1];
            $list=db("user")->where("uid=$uid")->select();
            foreach($list as $k => $v){

            
            $list2=db("user")->where("pid={$v['uid']}")->limit("0,2")->select();
            $cou1=count($list2);
            if(empty($list2)){
                $list2[]=$arrs;
            }
            if(count($list2) ==1){
                $list2[]=$arr;
            }
            if(!empty($list2)){
                foreach ($list2 as $kk => $vv){
                    if($vv){
                        $list3=db("user")->where("pid={$vv['uid']}")->limit("0,2")->select();
                    }                    
                    $cou2+=count($list3);
                              
                     if(empty($list3)){
                         $list3[]=$arrs;
                     }
                     if(count($list3) ==1){
                        $list3[]=$arr;
                    }                
                    if(!empty($list3)){
                       foreach($list3 as $kkk => $vvv){
                        if($vvv){
                            $list4=db("user")->where("pid={$vvv['uid']}")->limit("0,2")->select();
                        }
                        
                        $cou3+=count($list4);
                            
                        if(empty($list4)){
                            $list4[]=$arrs;
                        }
                        if(count($list4) ==1){
                           $list4[]=$arr;
                       }
                         if(!empty($list4)){
                             foreach($list4 as $kkkk => $vvvv){
                                if($vvvv){
                                    $list5=db("user")->where("pid={$vvvv['uid']}")->limit("0,2")->select();
                                } 
                                $cou4+=count($list5);
                             
                                if(empty($list5)){
                                    $list5[]=$arrs;
                                }
                                if(count($list5) ==1){
                                   $list5[]=$arr;
                               } 
                               $list4[$kkkk]['list5']=$list5;
                              
                             }
                            
                         }
                         $list3[$kkk]['list4']=$list4;
                      
                       }                        
                    }
                    $list2[$kk]['list3']=$list3;
                 
                }
            }
            $list[$k]['list2']=$list2;
            $list[$k]['cou1']=$cou1;
            $list[$k]['cou2']=$cou2;
            $list[$k]['cou3']=$cou3;
            $list[$k]['cou4']=$cou4;
        }
      
     //var_dump($list);exit;
      $this->assign("list",$list);
        return $this->fetch();
    }
    public function regist()
    {
        $re=db("lb")->where("fid=19")->find();
        $this->assign("re",$re);
        $uid=session('userid');
        $this->assign("uid",$uid);
        return $this->fetch();
    }
    public function register()
    {   
        $uid=input('uid');
        $reu=db("user")->where("uid=$uid")->find();
        if($reu){
            $re=db("lb")->where("fid=3")->find();
            $this->assign("re",$re);
            $level=db('zx_league')->select();
            $this->assign('level',$level);
            // $code=time();
            // $u_code=mb_substr($code,-6,6);
            $time=time();
            $codes=mb_substr($time,-6,6);
            $str=chr(rand(65,90));
            $u_code=$str.$codes;
            $this->assign("u_code",$u_code);
            $this->assign("reu",$reu);
            return $this->fetch();

        }else{
            $this->redirect("index");
        }
        
    }
    public function find_user()
    {
        $fid=input('fid');
        $re=db("user")->where("u_code",$fid)->find();
        
        if($re){
            if($re['is_dell'] == 1){
                
                $realname=$re['realname'];
                echo json_encode($realname);
            }else{
                echo '1';
            }
        }else{
            echo '1';
        }
    }
    public function save()
    {   
        $uid=session("userid");
        $reus=db("user")->where("uid=$uid")->find();
        $gold=$reus['gold'];
        if($gold > 0){
            $fid=input('fid');
            $data=input('post.');      
            $u_code=input('u_code');
            $phone=input("u_phone");
            $reu=db("user")->where("u_code",$u_code)->find();
            $re_p=db("user")->where("u_phone",$phone)->find();
            if($reu || $re_p){
                $this->error("此会员编号或手机号码已存在");exit();
            }else{
                $level=\input("level");
                $league=db("zx_league")->where("lid",$level)->find();
                $lprice=$league['lprice'];
               if($gold >= $lprice){
                    if(empty($fid)){
                        $data['fid']=0;
                    }else{
                        $re=db("user")->where("u_code",$fid)->find();
                        if($re){               
                            $data['fid']=$re['uid'];
                            $data['f_name']=$re['realname'];
                            
                            //给上级增加推荐奖
                            $member=new Member();
                            $fid=$re['uid'];
                            //需要增加的金额          
                            $golds=$league['lprice'];
                            $member->add_money($fid,$golds);
                                    
                        }else{
                            $this->error("推荐人不存在",url('lister'));exit;
                        }
                    }
                  
                    $data['gold']=$league['lprice'];
                    $data['most_money']=$league['lprice']; 
                    $data['u_pwd']=md5(input('u_pwd'));
                    $data['u_pwds']=md5(\input('u_pwds'));
                    $data['u_ztime']=time();
                    $data['is_dell']=1;
                    $data['is_status']=1;
                    $province=\input("province");
                    $city=\input("city");
                    $area=\input("area");
                    $addr=input("addr");
                    $data['addr']=$province.$city.$area.$addr;
                
                    
                    $rea=db("user")->insert($data);
                    $id=db("user")->getLastInsID();

                    $datas['uid']=$id;
                    $datas['content']="注册所得";
                    $datas['gold']=$data['gold'];
                    $datas['time']=time();
                    $datas['status']=1;
                    db("zx_gold_log")->insert($datas);

                    //扣除用户注册币
                    db("user")->where("uid",$uid)->setDec("gold",$lprice);

                    $arr['uid']=$uid;
                    $arr['gold']=$lprice;
                    $arr['content']="注册会员减少";
                    $arr['time']=time();
                    $arr['status']=0;
                    db("zx_gold_log")->insert($arr);

                    $levelu=$reus['level'];
                    if($levelu == 5){
                        $moneys=$lprice*0.02;
                        db("user")->where("uid",$uid)->setInc("money",$moneys);
                        $arr5['uid']=$uid;
                        $arr5['content']="县级代理注册补贴";
                        $arr5['bonus']=$moneys;
                        $arr5['time']=time();
                        $arr5['status']=1;
                        db("zx_bonus_log")->insert($arr5);
                    }
                    if($levelu == 6){
                        $moneys=$lprice*0.03;
                        db("user")->where("uid",$uid)->setInc("money",$moneys);
                        $arr6['uid']=$uid;
                        $arr6['content']="市级代理注册补贴";
                        $arr6['bonus']=$moneys;
                        $arr6['time']=time();
                        $arr6['status']=1;
                        db("zx_bonus_log")->insert($arr6);
                    }
                    
                
    
                    if($rea){
                        $this->success("添加成功");
                    }else{
                        $this->error("系统繁忙，请稍后再试");
                    }
                }else{
                    $this->error("注册币不足，请先充值！");
                }
                
            }
        }else{
            $this->error("注册币不足，请先充值！");
        }

        
    }
    
    public function change()
    {
        $u_name=input('u_name');
        $reu=db("user")->where("realname",$u_name)->find();
        if($reu){
            echo '1';
        }else{
            echo '0';
        }
    }
    public function info()
    {
        $uid=input('id');
        $re=db("user")->where("uid=$uid")->find();
        if($re){
            $this->assign("re",$re);
            return $this->fetch();
        }else{
            $this->redirect("index");
        }
        
    }



}
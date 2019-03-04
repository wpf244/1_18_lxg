<?php
namespace app\zadmin\controller;

// use app\mobile\Member as Members;
use app\zadmin\model\Member as Members;


class Member extends BaseAdmin
{
    public function lister()
    {
        $keywords=input('key');
        
        $map['u_code|realname|u_phone']=array('like','%'.$keywords.'%');
        
        $this->assign("title",$keywords);

        // $list=db('user')->where($map)->order('uid desc')->paginate(10);
        // dump($list);die;

        $list=db("user")->alias("a")
        ->where($map)
        ->where("is_dell=1")
        ->join("zx_league b","a.level=b.lid")
        ->order(['u_sort'=>'asc','uid'=>'desc'])
        ->paginate(10);
        // foreach($list as $k=>$v){
        //     if($v['pid']){
        //         $pid=$v['pid'];
        //         $p_user=db('user')->where("uid=$pid")->find();
        //         $v['f_name']=$p_user['realname'];
        //     }else{
        //         $v['f_name']='无推荐人';
        //     }
        //     $list[$k]=$v;
        // }
        // dump($list);die;
        $this->assign("list",$list);
      
        $page=$list->render();
        $this->assign("page",$page);   

      

        return $this->fetch();
    }

    public function sort(){
        $data=input('post.');
        $lb=db('user');
        foreach ($data as $id => $sort){
            $lb->where(array('uid' => $id ))->setField('u_sort' , $sort);
        }
        $this->redirect('lister');
    }

    public function change()
    {
        $id=input('id');
        $re=db("user")->where("uid=$id")->find();
        // dump($re['is_status']);die;
        if($re){
           if($re['is_status'] == 0){
            $data['is_status']=1;
        
            $res=\db("user")->where("uid=$id")->update($data);

            $datas['u_id']=0;
            $datas['p_id']=$id;
            $datas['time']=time();
            db("user_log")->insert($datas);
            echo '1';
           }else{
            echo '2'; 
           } 
        }else{
            echo '0';
        }
    }
    public function changes()
    {
        $id=input('id');
        $re=db("user")->where("uid=$id")->find();
        if($re){
           if($re['is_status'] == 1){
            $data['is_status']=0;
        

            $res=\db("user")->where("uid=$id")->update($data);

            echo '1';
           }else{
            echo '2'; 
           } 
            
            
        }else{
            echo '0';
        }
    }
    public function changer()
    {
        $id=input('id');
        $re=db("user")->where("uid=$id")->find();
        // dump($re['is_dell']);
        // dump($re['uid']);
        // die;
        if($re){
           if($re['register'] == 0){
            $data['register']=1;
        
            $res=\db("user")->where("uid=$id")->update($data);

            echo '1';
           }else{
            echo '2'; 
           } 
            
            
        }else{
            echo '0';
        }
    }
    public function changers()
    {
        $id=input('id');
        $re=db("user")->where("uid=$id")->find();
        // dump($re['is_dell']);
        // dump($re['uid']);
        // die;
        if($re){
           if($re['register'] == 1){
            $data['register']=0;
         

            $res=\db("user")->where("uid=$id")->update($data);

            echo '1';
           }else{
            echo '2'; 
           } 
            
            
        }else{
            echo '0';
        }
    }
    public function delete()
    {
        $id=input('id');
        $re=db("user")->where("uid=$id")->find();
        if($re){
            $orderRes = db('order')->where('uid',$id)
            ->where('type','>',0)
            ->find();
            if($orderRes) {
                return 3;//此用户拥有已付款的订单,不可删除
            }

            $data['pid']=$re['pid'];
            $del=db("user")->where("uid=$id")->delete();
            if($del){
                db('order')->where('uid',$id)
                ->delete();
                db('addr')->where('uid',$id)
                ->delete();
                db('cart')->where('uid',$id)
                ->delete();
                db('comment')->where('uid',$id)
                ->delete();
                $res=db("user")->where("pid=$id")->select();
                if($res){
                    $resss=db("user")->where("pid=$id")->update($data);
                }
                echo '0';
            }else{
                echo '1';
            }
        }else{
            echo '2';
        }
    }
    public function modifys()
    {
        $data=db("user")->field("realname")->select();
        $arr=array();
        foreach($data as $v){
            $arr[]=$v['realname'];
        }
        $this->assign("data",json_encode($arr,JSON_UNESCAPED_UNICODE));
        
        $id=input('id');
        $re=db("user")->where("uid=$id")->find();
        if($re){
            $this->assign("re",$re);
            return $this->fetch();
        }else{
            $this->redirect('lister');
        }

    }
    public function add_integz()
    {
        $id=input('id');
        $re=db("user")->where("uid=$id")->find();
        if($re){
           $money=input('integz');
           $res=db("user")->where("uid=$id")->setInc("gold",$money);
           $data['uid']=$id;
           $data['content']="系统赠送";
           $data['gold']=$money;
           $data['time']=time();
           $data['status']=1;
           db("zx_gold_log")->insert($data);
           if($res){
               echo '1';
           }else{
               echo '2';
           }
        }else{
            echo '0';
        }
    }
    public function add()
    {
        $res=db("zx_league")->where("lstatus=1")->select();
        $this->assign("res",$res);
        $time=\time();
        $codes=mb_substr($time,-6,6);
        $str=chr(rand(65,90));
        $code=$str.$codes;
        $this->assign("code",$code);

        return $this->fetch();
    }
    public function save()
    {
        $fid=input('fid');
        $data=input('post.');      
        $u_code=input('u_code');
        $phone=input("u_phone");
        $reu=db("user")->where("u_code",$u_code)->find();
        $re_p=db("user")->where("u_phone",$phone)->find();
        if($reu || $re_p){
            $this->error("此会员编号或手机号码已存在");exit();
        }else{
            if(empty($fid)){
                $data['fid']=0;
            }else{
                $re=db("user")->where("u_code",$fid)->find();
                if($re){               
                    $data['fid']=$re['uid'];
                    $data['f_name']=$re['realname'];
                    if(empty(input("null_bit"))){
                        //给上级增加推荐奖
                        $member=new Members();
                        $levels=input("level");
                        $fid=$re['uid'];
                        //需要增加的金额          
                        $leagues=db("zx_league")->where("lid",$levels)->find();
                        $gold=$leagues['lprice'];
                        $member->add_money($fid,$gold);
                    }          
                }else{
                    $this->error("推荐人不存在",url('lister'));exit;
                }
            }
            $level=\input("level");
            $league=db("zx_league")->where("lid",$level)->find();
            if(\input('null_bit')){
                $data['null_bit']=1;
                $data['gold']=0;
                $data['most_money']=$league['lprice'];
            }else{
                //如果不是空点位增加注册币
                $data['gold']=$league['lprice'];
                $data['most_money']=$league['lprice'];
            }
            if(\input('register')){
                $data['register']=1;
            }

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
            if(empty(\input("null_bit"))){
                $datas['uid']=$id;
                $datas['content']="注册所得";
                $datas['gold']=$data['gold'];
                $datas['time']=time();
                $datas['status']=1;
                db("zx_gold_log")->insert($datas);
            }
           

            if($rea){
                $this->success("添加成功",url('lister'));
            }else{
                $this->error("系统繁忙，请稍后再试",url('lister'));
            }
        }
        
        
    }
    public function usave()
    {
        $uid=input('uid');
        $realname=input("realname");
        $re=db("user")->where("uid=$uid")->find();
        $reu=db("user")->where(["realname"=>$realname,"uid"=>["neq",$uid]])->find();
        if(empty($reu)){
            if($re){
                $data=input("post.");
                $res=db("user")->where("uid=$uid")->update($data);
                if($res){
                    $this->success("修改成功",url('lister'));
                }else{
                    $this->error("修改失败",url('lister'));
                }
    
            }else{
                $this->error("系统繁忙，请稍后再试",url('lister'));
            }
        }else{
            $this->error("此会员名已存在");
        }
        
    }
    public function league()
    {
        $list=db("zx_league")->select();
        $this->assign("list",$list); 
        return $this->fetch();
    }
    public function add_league()
    {
        return $this->fetch();
    }
    public function save_league()
    {
        $data=\input("post.");
        $re=db("zx_league")->insert($data);
        if($re){
            $this->success("添加成功",url("league"));
        }else{
            $this->error("添加失败",url("league"));
        }
    }
    public function change_league()
    {
        $id=input('id');
        $re=db("zx_league")->where("lid=$id")->find();
        if($re){
           if($re['lstatus'] == 0){
            $res=\db("zx_league")->where("lid=$id")->setField("lstatus",1);
            echo '1';
           }
           if($re['lstatus'] == 1){
            $res=\db("zx_league")->where("lid=$id")->setField("lstatus",0);
            echo '1';
           } 
            
        }else{
            echo '0';
        }
    }
    public function modifys_league()
    {
       
        $id=input('id');
        $re=db("zx_league")->where("lid=$id")->find();
        if($re){
            $this->assign("re",$re);
            return $this->fetch();
        }else{
            $this->redirect('league');
        }

    }
    public function usave_league()
    {
        $lid=input('lid');
        $re=db("zx_league")->where("lid=$lid")->find();
        if($re){      
            $data['lname']=input('lname');
            $data['lprice']=input('lprice');

            $res=db("zx_league")->where("lid=$lid")->update($data);
            if($res){
                $this->success("修改成功",url('league'));
            }else{
                $this->error("修改失败",url('league'));
            }

        }else{
            $this->error("系统繁忙，请稍后再试",url('league'));
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
    
    public function find_users()
    {
        $u_name=input('u_name');
        $re=db("user")->where("realname",$u_name)->find();
        if($re){
            if($re['is_dell'] == 1){
                echo '1';
            }
        }
    }
    public function finds_users()
    {
        $u_name=input('u_name');
        $uid = input("uid");
        $re=db("user")->where(["realname"=>$u_name,"uid"=>["neq",$uid]])->find();
        if($re){
            if($re['is_dell'] == 1){
                echo '1';
            }
        }
    }
    public function gold()
    {
        $id=input("uid");
        $list=db("zx_gold_log")->where("uid=$id")->paginate(20);
        $this->assign("list",$list);
        $page=$list->render();
        $this->assign("page",$page);
        return $this->fetch();
    }
    public function money()
    {
        $id=input("uid");
        $list=db("zx_bonus_log")->where("uid=$id")->paginate(20);
        $this->assign("list",$list);
        $page=$list->render();
        $this->assign("page",$page);
        return $this->fetch();
    }
    // public function ceshi()
    // {
    //     $member= new Members();
    //     $fid=4;
    //     $add_money=160;
    //     $member->add_ach($fid,$add_money);
    // }
    public function level()
    {
        $uid=input("uid");
        $re=db("user")->alias("a")->where("uid=$uid")->join("zx_league b","a.level=b.lid")->find();
        if($re){
            $level=$re['level'];
            $res=db("zx_league")->where("lid > $level")->select();
            $this->assign("re",$re);
            $this->assign("res",$res);
            return $this->fetch();
        }else{
            $this->redirect("lister");
        }
        
    }
    public function savel()
    {
        $uid=input("uid");
        $re=db("user")->where("uid=$uid")->find();
        if($re){
            $levels=$re['level'];
             $data['level']=input("level");
             $level=input("level");
             $new_league=db("zx_league")->where("lid=$level")->find();
             $data['most_money']=$new_league['lprice'];
             $res=db("user")->where("uid=$uid")->update($data);
             if($res){
                 //判断是否有上级进行返利
                 $fid=$re['fid'];
                 if($fid != 0){
                     $old_league=db("zx_league")->where("lid=$levels")->find();
                     $old_money=$old_league['lprice'];
                     
                     $new_money=$new_league['lprice'];
                     $gold=($new_money-$old_money);
                     
                     $member=new Members();
                     $member->add_money($fid,$gold);
                 }
                $this->success("升级成功",url('lister'));
             }else{
                 $this->error("系统繁忙请稍后再试",url('lister'));
             }
        }else{
            $this->error("非法操作",url('lister'));
        }
    }













 
}
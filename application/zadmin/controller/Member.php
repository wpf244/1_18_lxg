<?php
namespace app\zadmin\controller;

use app\mobile\Member as Members;


class Member extends BaseAdmin
{
    public function lister()
    {
        $keywords=input('key');
        
        $map['u_code|realname']=array('like','%'.$keywords.'%');
        
        $this->assign("title",$keywords);

        $list=db("user")->alias("a")->where($map)->where("is_dell=1")->join("zx_league b","a.level=b.lid")->order("uid desc")->paginate(10);
        $this->assign("list",$list);
      
        $page=$list->render();
        $this->assign("page",$page);   

      

        return $this->fetch();
    }
    public function change()
    {
        $id=input('id');
        $re=db("user")->where("uid=$id")->find();
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
    public function delete()
    {
        $id=input('id');
        $re=db("user")->where("uid=$id")->find();
        if($re){
            $data['pid']=$re['pid'];
            $del=db("user")->where("uid=$id")->delete();
            if($del){
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
        $data=db("user")->field("u_name")->select();
        $arr=array();
        foreach($data as $v){
            $arr[]=$v['u_name'];
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
    //    var_dump(\input('post.'));exit;
        $pid=input('pid');
        $data=input('post.');
       
        $u_code=input('u_code');
        $phone=input("u_phone");
        $reu=db("user")->where("u_code",$u_code)->find();
        $re_p=db("user")->where("u_phone",$phone)->find();
        if($reu || $re_p){
            $this->error("此会员编号或手机号码已存在");exit();
        }else{

            if(empty($pid)){
                $data['pid']=0;
            }else{
                $re=db("user")->where("u_code='$pid'")->find();
                if($re){               
                    $data['pid']=$re['uid'];
                    if(empty(input("null_bit"))){
                        //给上级增加推荐奖
                        $member=new Members();
                        $levels=input("level");
                        $pid=$re['uid'];
                        $member->add_money($pid,$levels);
                        
    
                    }
                  
                }else{
                    $this->error("推荐人不存在",url('lister'));exit;
                }
            }

            if(\input('null_bit')){
                $data['null_bit']=1;
            }
            if(\input('register')){
                $data['register']=1;
            }
            if(empty(input("null_bit"))){
                //如果不是空点位增加注册币
                $level=\input("level");
                $league=db("zx_league")->where("lid",$level)->find();
                if($league){
                    $data['gold']=$league['lprice'];
                    $data['most_money']=$league['lprice'];
                }

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
            $datas['uid']=$id;
            $datas['content']="注册所得";
            $datas['gold']=$data['gold'];
            $datas['time']=time();
            $datas['status']=1;
            db("zx_gold_log")->insert($datas);

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
        $re=db("user")->where("uid=$uid")->find();
        if($re){
            $pid=input('pid');
            if(empty($pid)){
                $data['pid']=0;
            }else{
                $re=db("user")->where("u_name='$pid'")->find();
                if($re){
                    $data['pid']=$re['uid'];  
                }else{
                    $this->error("推荐人不存在",url('lister'));exit;
                }
            }
            if(!empty('u_pwd')){
                $data['u_pwd']=md5(input('u_pwd'));
            }
            if(!empty('u_pwds')){
                $data['u_pwds']=md5(input('u_pwds'));
            }
            $data['u_name']=input('u_name');
            $data['level']=input('level');
            $data['u_phone']=input('u_phone');
            $data['u_wx']=input('u_wx');
            $data['u_alipay']=input('u_alipay');
            if(\input('u_status')){
                $data['u_status']=1;
            }else{
                $data['u_status']=$re['u_status'];
            }
            $res=db("user")->where("uid=$uid")->update($data);
            if($res){
                $this->success("修改成功",url('lister'));
            }else{
                $this->error("修改失败",url('lister'));
            }

        }else{
            $this->error("系统繁忙，请稍后再试",url('lister'));
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
    public function gold()
    {
        $id=input("uid");
        $list=db("zx_gold_log")->where("uid=$id")->paginate(20);
        $this->assign("list",$list);
        $page=$list->render();
        $this->assign("page",$page);
        return $this->fetch();
    }













 
}
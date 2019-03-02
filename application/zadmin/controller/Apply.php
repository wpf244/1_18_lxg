<?php
namespace app\zadmin\controller;

use app\zadmin\model\Member;


class Apply extends BaseAdmin
{
    public function lister()
    {
        $list = db("apply")->order("status asc")->paginate(20);
        $this->assign("list",$list);
        $page=$list->render();
        $this->assign("page",$page);
        return $this->fetch();
    }
    public function change()
    {
        $id=input('id');
        $re=db("apply")->where("id=$id")->find();
        if($re){
            $data['status']=1;
            $data['q_time']=time();
            
            $res=db("apply")->where("id=$id")->update($data);

            $uid=$re['u_id'];
            $level=$re['levels'];
            $arr['level']=$level;
            $league=db("zx_league")->where("lid",$level)->find();
            $arr['most_money']=$league['lprice'];
            $reu=db("user")->where("uid=$uid")->update($arr);
            $user=db("user")->where("uid",$uid)->find();
            $fid=$user['fid'];
            if($fid != 0){
                $member=new Member();
                $member->add_money($fid,$re['money']);
            }
            if($res && $reu){
                $this->redirect("lister");
            }else{
                $this->redirect("lister");
            }
        }else{
            $this->redirect("lister");
        }
    }
    public function changes()
    {
        $id=input('id');
        $re=db("apply")->where("id=$id")->find();
        if($re){
            $data['status']=2;
             
            $res=db("apply")->where("id=$id")->update($data);

            $uid=$re['u_id'];
            
            $reu=db("user")->where("uid=$uid")->setInc("gold",$re['money']);

            $arr['uid']=$uid;
            $arr['content']="升级驳回退还";
            $arr['gold']=$re['money'];
            $arr['time']=time();
            $arr['status']=1;
            db("zx_gold_log")->insert($arr);
          
            if($res && $reu){
                $this->redirect("lister");
            }else{
                $this->redirect("lister");
            }
        }else{
            $this->redirect("lister");
        }
    }
    public function delete()
    {
        $id=input('id');
        $re=db("apply")->where("id=$id")->find();
        if($re){
            $del=db("apply")->where("id=$id")->delete();
            $this->redirect("lister");
        }else{
            $this->redirect("lister");
        }
    }
}
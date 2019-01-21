<?php
namespace app\zadmin\controller;

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
            $reu=db("user")->where("uid=$uid")->setField("level",$level);
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
<?php
namespace app\zadmin\controller;

class Ti extends BaseAdmin
{
    public function rate()
    {
        $re=db("zx_rate")->where("id",1)->find();
        $this->assign("re",$re);
        return $this->fetch();
    }
    public function save()
    {
        $data=input("post.");
        $re=db("zx_rate")->where("id",1)->update($data);
        if($re){
            $this->success("修改成功");
        }else{
            $this->error("修改失败");
        }
    }
    public function lister()
    {
        $list=db("zx_ti_dd")->alias("a")->where("t_status",0)->join("user b","a.u_id=b.uid")->order("id desc")->paginate(20);
        $this->assign("list",$list);
        $page=$list->render();
        $this->assign("page",$page);
        return $this->fetch();
    }
    public function index()
    {
        $list=db("zx_ti_dd")->alias("a")->where("t_status",1)->join("user b","a.u_id=b.uid")->order("id desc")->paginate(20);
        $this->assign("list",$list);
        $page=$list->render();
        $this->assign("page",$page);
        return $this->fetch();
    }
    public function rebut()
    {
        $list=db("zx_ti_dd")->alias("a")->where("t_status",2)->join("user b","a.u_id=b.uid")->order("id desc")->paginate(20);
        $this->assign("list",$list);
        $page=$list->render();
        $this->assign("page",$page);
        return $this->fetch();
    }
    public function delete()
    {
        $id=input("id");
        $re=db("zx_ti_dd")->where("id",$id)->find();
        if($re){
           $res=db("zx_ti_dd")->where("id",$id)->delete();
           if($res){
               echo '0';
           }else{
               echo '2';
           }
        }else{
            echo '1';
        }
    }
    public function change()
    {
        $id=input("id");
        $re=db("zx_ti_dd")->where("id",$id)->find();
        if($re){
           $data['t_status']=1;
           $data['b_time']=time();
           $res=db("zx_ti_dd")->where("id",$id)->update($data);
           if($res){
               echo '0';
           }else{
               echo '2';
           }
        }else{
            echo '1';
        }
    }
    public function bo()
    {
        $id=input("id");
        $re=db("zx_ti_dd")->where("id",$id)->find();
        if($re){
           $data['t_status']=2;
           $data['b_time']=time();
           $res=db("zx_ti_dd")->where("id",$id)->update($data);

           $money=$re['t_money'];
           $uid=$re['u_id'];
           db("user")->where("uid",$uid)->setInc("money",$money);

           $arr['uid']=$uid;
           $arr['content']="提现驳回退还奖金";
           $arr['bonus']=$money;
           $arr['time']=time();
           $arr['status']=1;
           db("zx_bonus_log")->insert($arr);

           if($res){
               echo '0';
           }else{
               echo '2';
           }
        }else{
            echo '1';
        }
    }
}
<?php 
namespace app\zadmin\controller;

class Carte extends BaseAdmin
{
    public function lister()
    {
        $list=db('zx_carte')->where("pid=0")->order("c_sort asc")->select();
        foreach($list as $k => $v){
            $list[$k]['lists']=db("zx_carte")->where("pid={$v['cid']}")->order("c_sort asc")->select();
        }
        $this->assign("list",$list);
        return  $this->fetch();
    }
    public function add()
    {
        $res=\db("zx_carte")->where("pid=0")->order("c_sort asc")->select();
        $this->assign("res",$res);
        
        return $this->fetch();
    }
    public function save()
    {
        $data=input('post.');
        $re=db("zx_carte")->insert($data);
        if($re){
            $this->success("添加成功");
        }else{
            $this->error("添加失败");
        }
    }
    public function modifys()
    {
        $res=\db("zx_carte")->where("pid=0")->select();
        $this->assign("res",$res);

        $id=input('id');
        $re=db("zx_carte")->where("cid=$id")->find();
        $this->assign("re",$re);
        
        return $this->fetch();
    }
    public function usave()
    {
        $cid=input('cid');
        $data=input('post.');
        $re=\db("zx_carte")->where("cid=$cid")->find();
        if($re){
           $res=\db("zx_carte")->where("cid=$cid")->update($data);
           if($res){
               $this->success("修改成功",url('lister'));
           }else{
               $this->error("修改失败",url('lister'));
           }
        }else{
            $this->error("参数错误");
        }
    }
    public function change_sort()
    {
        $cid=input('fieldid');
        $val=input('fieldvalue');
        $re=db("zx_carte")->where("cid=$cid")->find();
        if($re){
            $res=db("zx_carte")->where("cid=$cid")->setField("c_sort",$val);
            if($res){
                echo '1';
            }else{
                echo '0';
            }
        }else{
            echo '0';
        }
    }
    public function delete()
    {
        $id=input('id');
        $re=\db("zx_carte")->where("cid=$id")->find();
        if($re){
            $del=db("zx_carte")->where("cid=$id")->delete();
            $res=db("zx_carte")->where("pid=$id")->select();
            if($res){
                $dels=db("zx_carte")->where("pid=$id")->delete();
            }
            echo '0';
        }else{
            echo '1';
        }
    }
    






















}
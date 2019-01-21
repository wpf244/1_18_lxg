<?php
namespace app\zadmin\controller;

class Level extends BaseAdmin
{
    public function lister()
    {
        $list=db("level")->order("level asc")->select();
        $this->assign("list",$list);
        return $this->fetch();
    }
    public function add()
    {
        return $this->fetch();
    }
    public function save()
    {
        $data=\input('post.');
        $re=db("level")->insert($data);
        if($re){
            $this->success("添加成功",url('lister'));
        }else{
            $this->error("添加失败");
        }
    }
    public function modifys()
    {
        $id=\input('id');
        $re=db("level")->where("id=$id")->find();
        $this->assign("re",$re);
        return $this->fetch();
    }
    public function usave()
    {
        $id=\input('id');
        $re=db("level")->where("id=$id")->find();
        if($re){
            $data=\input('post.');
            $res=db("level")->where("id=$id")->update($data);
            if($res){
                $this->success("修改成功",url('lister'));
            }else{
                $this->error("修改失败",url('lister'));
            }
        }else{
            $this->error("参数错误",url('lister'));
        }
    }
    public function index()
    {
        $re=db("about")->where("id=3")->find();
        $this->assign("re",$re);
        return $this->fetch();
    }
    public function saves()
    {
        $data=input('post.');
        $res=db("about")->where("id=3")->update($data);
        if($res){
            $this->success("修改成功");
        }else{
            $this->error("修改失败");
        }
    }
















}
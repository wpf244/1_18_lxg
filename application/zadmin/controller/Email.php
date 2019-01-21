<?php
namespace app\zadmin\controller;

class Email extends BaseAdmin
{
    public function lister()
    {
        $key=input('key');    
        // if(empty($key)){
        //     var_dump(11);
        // }
        $this->assign("title",$key);
        $map['title|u_name|p_name']=array('like',"%" . $key . "%");
        $list=db('email')->where($map)->order(['id'=>'desc'])->paginate(10,false,['query'=>request()->param()]);
        $this->assign("list",$list);
        $page=$list->render();
        $this->assign("page",$page);
        return $this->fetch();
    }
    public function delete_all()
    {
        $id=\input('id');
        $arr=explode(",",$id);
     //  \var_dump($id);exit;
        foreach ($arr as $v){
            $re=db('email')->where("id=$v")->find();
            if($re){ 
                $del=db('email')->where("id=$v")->delete(); 
            }else{
                return false;
            }
        }
        $this->redirect("lister");
    }
    public function delete()
    {
        $id=input('id');
        $re=db("email")->where("id=$id")->find();
        if($re){
          $del=db("email")->where("id=$id")->delete();
          $this->redirect('lister');
        }else{
            $this->redirect('lister');
        }
    }
    public function look()
    {
        $id=input('id');
        $re=db("email")->where("id=$id")->find();
        echo json_encode($re['content']);
    }
}
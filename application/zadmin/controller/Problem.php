<?php
namespace app\zadmin\controller;

class Problem extends BaseAdmin
{
    public function lister()
    {
      
        $re=db("about")->where("id=2")->find();
        $this->assign("re",$re);
        return $this->fetch();
    }
    public function save()
    {
        $data=input('post.');
        $res=db("about")->where("id=2")->update($data);
        if($res){
            $this->success("修改成功");
        }else{
            $this->error("修改失败");
        }
    }
}
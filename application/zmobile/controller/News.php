<?php
namespace app\zmobile\controller;

class News extends BaseMobile
{
    public function index()
    {
        $list=db("news")->where("status=1")->order(['sort'=>'asc','id'=>'desc'])->paginate(6);
        $this->assign("list",$list);

        $page=$list->render();
        $this->assign("page",$page);

        return $this->fetch();
    }
    public function detail()
    {
        $nid=input('nid');
        $re=db("news")->where("id=$nid")->find();
        $this->assign("re",$re);
        return $this->fetch();
    }
}
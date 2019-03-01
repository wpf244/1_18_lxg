<?php
namespace app\zadmin\controller;

use app\zadmin\model\News as NewsModel;

class News extends BaseAdmin{
    private $model = "";
    public function _initialize(){
        parent::_initialize();
        $this->model = new NewsModel;
    }
    public function lister(){
        $key=input('key');    
        // if(empty($key)){
        //     var_dump(11);
        // }
        $this->assign("title",$key);
        $map['title']=array('like',"%" . $key . "%");
        $list=db('news')->where($map)->order(['sort'=>'asc','id'=>'desc'])->paginate(10,false,['query'=>request()->param()]);
        $this->assign("list",$list);
        $page=$list->render();
        $this->assign("page",$page);
        return view('lister');
    }
    public function add(){
        
        return view('add');
    }
    public function save(){
        if(!is_string(input('image'))){
            $data['image']=uploads('image');
        }
        if(input('status')){
            $data['status']=1;
        }
        if(input('groom')){
            $data['groom']=1;
        }
        $data['time']=time();
        $data['title']=input('title');
        $data['source']=input('source');
        $data['writer']=input('writer');
        $data['sort']=input('sort');
        $data['marray']=input('marray');
        $data['content']=input('content');
        $re=$this->model->addNews($data);
        if($re){
            $this->success("添加成功！",url('lister'));
        }else{
            $this->error("添加失败！");
        }
    }
    public function change(){
        $id=$_POST['id'];
        $res=$this->model->updateStatus($id);
        if($res){
            echo '1';
        }else{
            echo '0';
        }
    }
    public function changes(){
        $id=$_POST['id'];
        $res=$this->model->updateGroom($id);
        if($res){
            echo '1';
        }else{
            echo '0';
        }
    }
    public function modifys(){
       
        $id=input('id');
        $re=db('news')->where("id=$id")->find();
        $this->assign("re",$re);
        return view('modifys');
    }
    public function usave(){
        $id=input('id');
        $re=db('news')->where("id=$id")->find();
        if(!is_string(input('image'))){
            $data['image']=uploads('image');
            
        }
        if(input('status')){
            $data['status']=1;
        }
        if(input('groom')){
            $data['groom']=1;
        }
        $data['title']=input('title');
        $data['source']=input('source');
        $data['writer']=input('writer');
        $data['sort']=input('sort');
        $data['marray']=input('marray');
        $data['content']=input('content');
        $res=$this->model->updateNews("id=$id", $data);
        if($res){
            $this->success("修改成功！",url('lister'));
        }else{
            $this->error("修改失败！");
        }
    }
    public function delete(){
        $id=input('id');
        $del=$this->model->deleteNews($id);
        $this->redirect('lister');
    }
    public function sort(){
        $data=input('post.');
      
        foreach ($data as $id => $sort){
            db('news')->where(array('id' => $id ))->setField('sort' , $sort);
        }
        $this->redirect('lister');
    }
    public function delete_all(){
        $id=input('id');
        $arr=explode(",", $id);
        $del=$this->model->deleteAll($arr);
        $this->redirect('lister');
    }
    
    
    
    
    
    
    
    
    
    
}
var countdown=60;
function settime(e){
    if(0==countdown)
    return e.removeAttribute("disabled"),
    e.value="获取验证码",
    void(countdown=60);
    e.setAttribute("disabled",!0),
    e.value="重新发送("+countdown+")",
    countdown--,
    setTimeout(function(){settime(e)},1e3)
}
function validatemobile(e){
    if(0==e.length)
    return alert("手机号码不能为空！"),!1;
    if(11!=e.length)
    return alert("请输入有效的手机号码，需是11位！"),!1;
    return/^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(e)?void 0:(alert("请输入有效的手机号码！"),!1)
}
var MyInput=function(e,t,i){
    this.inputObj=$(e),
    this.btnObj=$(t),
    this.money=i,
    this._init()};
MyInput.prototype._init=function(){
        var i=this;this.inputObj.on("input",function(e){
        var t=e.target.value;
        i.btnObj.prop("disabled",""==t||parseFloat(t)>i.money)
    }
)},
$(function(){
    $(".tab_cell").eq($(".tab_item.active").index()).addClass("active"),
    $(".tab_item").click(function(){
        var e=$(this).index();
        $(this).hasClass("active")||($(this).addClass("active").siblings().removeClass("active"),$(".tab_cell").eq(e).addClass("active").siblings().removeClass("active"))
    });
    var e=$(".member_invoice_dele"),
        t=$(".member_invoice_item"),
        i=$(".invoice_box_none"),
        n=$(".common_goods_item"),
        o=$(".common_dele_btn"),
        s=$(".common_goods_list"),
        a=$(".member_invoice");
        0===t.length&&0===n.length&&(a.hide(),o.hide(),i.show()),
        o.click(function(){
            var e=$(this);
            confirm("是否清空浏览足迹？")&&s.remove(),
            0===(n=$(".common_goods_item")).length?(a.hide(),
            i.show(),
            e.hide()):e.show()
        })
        // ,e.click(function(){
        //     var e=$(this);
        //     confirm("是否删除此条记录？")&&e.parents(".member_invoice_item").remove(),
        //     0===(t=$(".member_invoice_item")).length&&(a.hide(),i.show())
        //     var aid = $(this).children().val();
        //     $.ajax({
        //         type:'get',
        //         data:'aid='+aid,
        //         url:'{:url(\'addr/del\')}',
        //         success:function (res) {
        //             if(res == 1) {
        //                 layer.alert('默认地址不可删除', {icon: 2});
        //             }
        //         }
        //     });
        //     // history.go(0);
        // })
});

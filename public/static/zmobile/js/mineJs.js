//发送验证码倒计时
// var countdown = 60;

// function settime(obj) {
// 	if (countdown == 0) {
// 		obj.removeAttribute("disabled");
// 		obj.value = "获取验证码";
// 		countdown = 60;
// 		return;
// 	} else {
// 		obj.setAttribute("disabled", true);
// 		obj.value = "重新发送(" + countdown + ")";
// 		countdown--;
// 	}
// 	setTimeout(function () {
// 		settime(obj)
// 	}, 1000)
// }

// //验证手机号
// function validatemobile(mobile) {
// 	if (mobile.length == 0) {
// 		alert('手机号码不能为空！');
// 		return false;
// 	}
// 	if (mobile.length != 11) {
// 		alert('请输入有效的手机号码，需是11位！');
// 		return false;
// 	}

// 	var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
// 	if (!myreg.test(mobile)) {
// 		alert('请输入有效的手机号码！');
// 		return false;
// 	}
// }

$(function () {
	var lastYear = $('#lastYear'),
		now = new Date()
	lastYear.text(now.getFullYear())

	$('#nav_btn').click(function(){
		$('#common_bg').stop().fadeIn(700)
		$('#nav_box').stop().slideDown(600)
	})

	$('#common_bg').click(function(){
		$('#common_bg').stop().fadeOut(700)
		$('#nav_box').stop().slideUp(600)
	})

})
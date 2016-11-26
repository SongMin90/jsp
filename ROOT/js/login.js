//输入密码动画
$(function(){
	//得到焦点
	$("#password,#password1").focus(function(){
		$("#left_hand").animate({
			left: "160",
			top: " -38"
		},{step: function(){
			if(parseInt($("#left_hand").css("left"))>140){
				$("#left_hand").attr("class","left_hand");
			}
		}}, 2000);
		$("#right_hand").animate({
			right: "-74",
			top: "-38px"
		},{step: function(){
			if(parseInt($("#right_hand").css("right"))> -80){
				$("#right_hand").attr("class","right_hand");
			}
		}}, 2000);
	});
	//失去焦点
	$("#password,#password1").blur(function(){
		$("#left_hand").attr("class","initial_left_hand");
		$("#left_hand").attr("style","left:110px;top:-12px;");
		$("#right_hand").attr("class","initial_right_hand");
		$("#right_hand").attr("style","right:-122px;top:-12px");
	});
});
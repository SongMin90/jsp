//滚动通知(顶)
$(function() {
	var _scroll = {
		delay: 1000,
		easing: 'linear',
		items: 1,
		duration: 0.07,
		timeoutDuration: 0,
		pauseOnHover: 'immediate'
	};
	$('#ticker-1').carouFredSel({
		width: 960,
		align: false,
		items: {
			width: 'variable',
			height: 35,
			visible: 1
		},
		scroll: _scroll
	});
});
//滚动通知(底)
$(function() {
	var _scroll = {
		delay: 1000,
		easing: 'linear',
		items: 1,
		duration: 0.07,
		timeoutDuration: 0,
		
	};
	$('#ticker-11').carouFredSel({
		width: 1000,
		align: false,
		items: {
			width: 'variable',
			height: 35,
			visible: 1
		},
		scroll: _scroll
	});
});
//下拉修复隐藏滚动通知
$(function(){
	$(".dh,.register,.enter").mouseenter(function(){
		$("#ticker-1").hide();
	});
	$(".dh,.register,.enter").mouseleave(function(){
		$("#ticker-1").show();
	});
});
//滚动图片
$(function() {
	var speed=100; //数字越大速度越慢
	var tab=document.getElementById("demo");
	var tab1=document.getElementById("demo1");
	var tab2=document.getElementById("demo2");
	tab2.innerHTML=tab1.innerHTML; //克隆demo1为demo2
	tab.scrollTop=tab.scrollHeight
	function Marquee(){
		if(tab1.offsetTop-tab.scrollTop>=0)//当滚动至demo1与demo2交界时
			tab.scrollTop+=tab2.offsetHeight //demo跳到最顶端
		else{
			tab.scrollTop--
		}
	}
	var MyMar=setInterval(Marquee,speed);
	tab.onmouseover=function() {clearInterval(MyMar)};//鼠标移上时清除定时器达到滚动停止的目的
	tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};//鼠标移开时重设定时器
});
//button控件
$(function(){
	$("#bt1").click(function(){
		$("#bb").hide(500);
		$("#cc").hide(500);
		$("#dd").hide(500);
		$("#aa").show(500);		
	});
	$("#bt2").click(function(){
		$("#aa").hide(500);
		$("#cc").hide(500);
		$("#dd").hide(500);
		$("#bb").show(500);
	});
	$("#bt3").click(function(){
		$("#aa").hide(500);
		$("#bb").hide(500);
		$("#dd").hide(500);
		$("#cc").show(500);
	});
	$("#bt4").click(function(){
		$("#aa").hide(500);
		$("#cc").hide(500);
		$("#bb").hide(500);
		$("#dd").show(500);
	});	
});
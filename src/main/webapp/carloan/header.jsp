<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
	function startTime() { 
		var today = new Date()
		var week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
		var year = today.getYear()
		var month = today.getMonth() + 1
		var date = today.getDate()
		var day = today.getDay()
		var h = today.getHours()
		var m = today.getMinutes()
		var s = today.getSeconds()
		// add a zero in front of numbers<10
		h = checkTime(h)
		m = checkTime(m)
		s = checkTime(s)
		document.getElementById('time').innerHTML = " " + 2136 - year + "年"
				+ month + "月" + date + "日  " + week[day] + "  " + h + ":" + m
				+ ":" + s + " "
		t = setTimeout('startTime()', 500)
	}

	function checkTime(i) {
		if (i < 10) {
			i = "0" + i
		}
		return i
	}

	function time() {
		today = new Date();
		function initArray() {
			this.length = initArray.arguments.length
			for (var i = 0; i < this.length; i++)
				this[i + 1] = initArray.arguments[i];
		}
		var d = new initArray(" 星期日", " 星期一", " 星期二", " 星期三", " 星期四", " 星期五",
				" 星期六");
		var year = today.getFullYear();
		var month = today.getMonth() + 1;
		var day = today.getDate();
		var str = year + "年" + month + "月" + day + "日" + d[today.getDay() + 1];
		return str;
	}
</script>

<div data-options="region:'north'" style="height:52px;background-color:#95B8E7;">

			<span style="margin-left:1%;">  
                <font size="3" style="line-height: 50px" color="white" >  
                    橘子车贷-你我的身边贷！  
                </font>  
             </span> 
            <body onload="startTime()">
            <div id="time" style="color:white; font-size:18px; margin-left:55%; margin-top:15px; dipaly:inline-block;width:100%;height:100px;position: absolute;top:0;"></div>
            </body>
            
            <span style="margin-top:10px;margin-left: 73%;font-size: 18px; color: white;">  欢迎 :Admin  </span>    
            <a href="../login.html">
            	<span title="退出登陆" style="float:right;font-size:25px;margin-right:10px;margin-top:10px;" class="glyphicon glyphicon-log-out"></span>
            </a>  
             
		</div>
		
		<div data-options="region:'west',split:false" title="菜单栏" style="width:200px;">
			<div class="easyui-accordion" data-options="fit:false,border:false">
				<div title="信审业务管理" >
				
				<style>
				
				      .noRadius{
				              width: 100%;
				              height:30px;
				              line-height:30px;
                              border-radius: 0;
                              box-sizing: border-box;
                           }
				</style>
					<ul style="width:100%">
						<li class="easyui-linkbutton noRadius" id="head_company">总公司信审</li>
						<li class="easyui-linkbutton noRadius" id="re_check">车贷签约复核</li>
						<li class="easyui-linkbutton noRadius" id="loan_list">车贷放款列表</li>
						<li class="easyui-linkbutton noRadius" id="sub_menu">审核分单</li>
					</ul>
				</div>
				<div title="车贷管理">
					<style>
				
				      .noRadius{
				      
				              width: 100%;
				              height:30px;
				               line-height:30px;
				              box-sizing: border-box;
                              border-radius: 0;
                           }
				</style>
					<ul  style="width:100%;" >
						<li  class="easyui-linkbutton noRadius" id="read_idCard">车贷读取身份证</li>
						<li class="easyui-linkbutton noRadius" id="branch_company">分公司信审</li>
						<li class="easyui-linkbutton noRadius" id="signed">车贷签约</li>
						<li class="easyui-linkbutton noRadius" id="loan_check">车贷查看</li>
					</ul>
				</div>
				<div title="信息录入">
					<style>
				
				      .noRadius{
				      
				              width: 100%;
				              height:30px;
				               line-height:30px;
				              box-sizing: border-box;
                              border-radius: 0;
                           }
				</style>
					<ul  style="width:100%;" >
						<li  class="easyui-linkbutton noRadius" id="user">基本客户信息录入</li>
						<li class="easyui-linkbutton noRadius" id="car">车辆信息录入</li>
						<li class="easyui-linkbutton noRadius" id="credit">客户信用信息录入</li>
					</ul>
				</div>
				<div title="管理员">
					<style>
				
				      .noRadius{
				              width: 100%;
                              border-radius: 0;
                           }
				</style>
					<ul  style="width:100%">
						<li  class="easyui-linkbutton noRadius" id="manager">管理员操作</li>
					</ul>
				</div>
				<div title="天气预报" >
					<style>
				
				      .noRadius{
				              width: 100%;
                              border-radius: 0;
                           }
				</style>
					<ul  style="width:100%">
						<iframe src="//www.seniverse.com/weather/weather.aspx?uid=U1CA8560F3&cid=CHSC000000&l=zh-CHS&p=SMART&a=0&u=C&s=11&m=1&x=1&d=5&fc=&bgc=&bc=&ti=1&in=0&li=" frameborder="0" scrolling="no" width="198" height="300" allowTransparency="true"></iframe>
					
<!-- 						<li  class="easyui-linkbutton noRadius" id="manager">管理员操作</li> -->
					</ul>
				</div>
			</div>
			<br>
			<br>
<!-- 				<iframe src="//www.seniverse.com/weather/weather.aspx?uid=U1CA8560F3&cid=CHSC000000&l=zh-CHS&p=SMART&a=0&u=C&s=11&m=1&x=1&d=5&fc=&bgc=&bc=&ti=1&in=0&li=" frameborder="0" scrolling="no" width="198" height="300" allowTransparency="true"></iframe> -->
		</div>

<!-- <script>(function(T,h,i,n,k,P,a,g,e){g=function(){P=h.createElement(i);a=h.getElementsByTagName(i)[0];P.src=k;P.charset="utf-8";P.async=1;a.parentNode.insertBefore(P,a)};T["ThinkPageWeatherWidgetObject"]=n;T[n]||(T[n]=function(){(T[n].q=T[n].q||[]).push(arguments)});T[n].l=+new Date();if(T.attachEvent){T.attachEvent("onload",g)}else{T.addEventListener("load",g,false)}}(window,document,"script","tpwidget","//widget.seniverse.com/widget/chameleon.js"))</script>
<script>tpwidget("init", {
    "flavor": "bubble",
    "location": "WM6N2PM3WY2K",
    "geolocation": "enabled",
    "position": "top-left",
    "margin": "0px 300px",
    "language": "auto",
    "unit": "c",
    "theme": "chameleon",
    "uid": "U1CA8560F3",
    "hash": "719befe3f96d7b8480ce7448c91c080a"
});
tpwidget("show");</script> -->
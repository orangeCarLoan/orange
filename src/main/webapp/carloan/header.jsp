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
            <div id="time" style="color:white; font-size:18px; margin-left:800px; margin-top:15px; dipaly:inline-block;width:1000px;height:100px;position: absolute;top:0;"></div>
            </body>
            
            <span style="margin-top:10px;margin-left: 1180px;font-size: 18px; color: white;">  欢迎 :Admin  </span>    
            <a href="../login.html">
            	<span style="float:right;font-size:25px;margin-right:10px;margin-top:10px;" class="glyphicon glyphicon-log-out"></span>
            </a>  
             
		</div>
		<div data-options="region:'west',split:true" title="菜单栏" style="width:200px;">
			<div class="easyui-accordion" data-options="fit:true,border:false">
				<div title="信审业务管理" >
				
				<style>
				
				      .noRadius{
				              width: 100%;
				              height:30px;
				             padding-top:4px;
                              border-radius: 0;
                              box-sizing: border-box;
                           }
				</style>
					<ul style="width:100%">
						<li class="easyui-linkbutton noRadius"><a id="head_company">总公司信审</a></li>
						<li class="easyui-linkbutton noRadius"><a id="re_check">车贷签约复核</a></li>
						<li class="easyui-linkbutton noRadius"><a id="loan_list">车贷放款列表</a></li>
						<li class="easyui-linkbutton noRadius"><a id="sub_menu">审核分单</a></li>
					</ul>
				</div>
				<div title="车贷管理">
					<style>
				
				      .noRadius{
				              width: 100%;
                              border-radius: 0;
                           }
				</style>
					<ul  style="width:100%">
						<li  class="easyui-linkbutton noRadius"><a id="read_idCard">车贷读取身份证</a></li>
						<li class="easyui-linkbutton noRadius"><a id="loan_input">车贷录入</a></li>
						<li class="easyui-linkbutton noRadius"><a id="branch_company">分公司信审</a></li>
						<li class="easyui-linkbutton noRadius"><a id="signed">车贷签约</a></li>
						<li class="easyui-linkbutton noRadius"><a id="loan_check">车贷查看</a></li>
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
						<li  class="easyui-linkbutton noRadius"><a id="manager">管理员操作</a></li>
					</ul>
				</div>
			</div>
		</div>
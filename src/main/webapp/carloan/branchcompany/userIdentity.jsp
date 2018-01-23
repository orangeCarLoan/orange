<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增车辆贷款</title>
<style type="text/css">
	.table{
		text-align: center;
	}
</style>
</head>
<body>
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置:车贷读取身份证>新增客户身份证信息</font></div>
	<div style="margin-top: 10px;">
	    <form action="#" method="post">
	    <table id="tab1" class="table table-striped" style="width: 100%;">
	        <tbody>
	        <tr>
	            <td>姓名<font size="3" color="red">*</font></td><td><input type="text" id="userName" class="form-control"/></td>
	            <td>性别<font size="3" color="red">*</font></td>
	            <td style="text-align: left;"><input type="radio" name="gender" checked="checked" id="Radio1" value="1"> 男
	            	&nbsp;&nbsp;&nbsp;&nbsp;
	            	<input type="radio" name="gender" id="Radio2" value="0"> 女
				</td>
	        </tr>
	        <tr>
	            <td>名族<font size="3" color="red">*</font></td><td><input type="text" id="nation" class="form-control"/></td>
	            <td>出生年月<font size="3" color="red">*</font></td><td><input type="date" id="birthday" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>地址<font size="3" color="red">*</font></td><td><input type="text" id="address" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>身份证号<font size="3" color="red">*</font></td><td><input type="text" id="identity" class="form-control"/></td>
	            <td>发证机关<font size="3" color="red">*</font></td><td><input type="text" id="organ" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>有效期开始<font size="3" color="red">*</font></td><td><input type="date" id="stratDate" class="form-control"/></td>
	            <td>有效期结束<font size="3" color="red">*</font></td><td><input type="date" id="endDate" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>产品类型<font size="3" color="red">*</font></td><td>
	            	<select class="form-control" style="width: 100%" id="type">
						 <option style="display: none;">-请选择-</option>
						 <option>短期贷款</option>
						 <option>中期贷款</option>
						 <option>长期贷款</option>
					</select></td>
	            </td>
	        </tr>
	        </tbody>
	    </table>
	    <center>
    		<button id="submit" style="width: 120px;" type="button" class="btn btn-info">提交</button>
		    <button id="return" style="width: 120px;" type="button" class="btn btn-info">返回</button>
	    </center>
	</form>
	</div>
<script>
$(function(){
	$("#return").click(function() {
		$("#ifrom").load('branchcompany/carloanReadIDCard.jsp');
	})
});

$("#submit").click(function(){
	var datas = {userName:$("#userName").val(),gender:$("input[name='gender']:checked").val(),nation:$("#nation").val(),birthday:$("#birthday").val(),address:$("#address").val(), 
		identity:$("#identity").val(),organ:$("#organ").val(),stratDate:$("#stratDate").val(),endDate:$("#endDate").val(),type:$("#type").val()
	};
	$.ajax({
		   type: "POST",
		   url: "../userIdentity/-1",
		   async:true,
		   data: datas,
		   success: function(msg){
			  if(msg||msg=="true"){
				  alert("添加成功");
			   }else{
				   alert("系统繁忙，请稍后再试");
			   }
		     
		     $("#ifrom").load('branchcompany/carloanReadIDCard.jsp');
		   }
		});
});

</script>
</body>
</html>
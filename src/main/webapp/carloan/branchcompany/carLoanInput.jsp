<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$("#user").click(function() {
		$("#ifrom").load('branchcompany/userInfo.jsp');
	})
	$("#car").click(function() {
		$("#ifrom").load('branchcompany/carInfo.jsp');
	})
	$("#credit").click(function() {
		$("#ifrom").load('branchcompany/userCreditInfo.jsp');
	})
});
</script>
</head>
<body>
<center>
	<button id="user" class="btn btn-info">客户基本信息录入</button>
	<button id="car" class="btn btn-info">车辆信息录入</button>
	<button id="credit" class="btn btn-info">客户信用信息录入</button>
</center>
</body>
</html>
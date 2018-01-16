<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户信用信息录入</title>
<!--     <link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css"> -->
<!--     <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css"> -->
<!--     <script type="text/javascript" src="easyui/jquery.min.js"></script> -->
<!--     <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> -->
<!--     <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"> -->
<!--     <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script> -->
<script>
	$('input').addClass("form-control");
</script>
	<style type="text/css">
		
		.table{
			text-align: center;
		}
		
	</style>
</head>
<body>
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷管理>车贷申请信息录入>客户信用信用录入</font></div>
	
	<form action="#">
	
		<table id="tab" class="table table-striped" style="width: 100%;">
			<caption style="text-align: center;font-size: 15px;">资产信息</caption>
				<tr>
					<td>有无房产</td>
					<td><input type="text"/></td>
					<td>有无房贷</td>
					<td><input type="text"/></td>
				</tr>
				
				<tr>
					<td>有无车产</td>
					<td><input type="text"/></td>
					<td>æ有无车贷</td>
					<td><input type="text"/></td>
				</tr>
		</table>
		
		<table id="tab" class="table table-striped" style="width: 100%;">
			<caption style="text-align: center;font-size: 15px;">信用信息</caption>
				<tr>
					<td>信用卡、贷款最大逾期状况（24个月内）</td>
					<td><input type="text"/></td>
					<td>信用卡、贷款累计逾期次数（24个月内）</td>
					<td><input type="text"/></td>
				</tr>
				
				<tr>
					<td>信用卡额度使用率</td>
					<td><input type="text"/></td>
					<td>信用卡、贷款审批查询次数（6个月内）</td>
					<td><input type="text"/></td>
				</tr>
				
				<tr>
					<td>有无其他信用贷款</td>
					<td><input type="text"/></td>
					<td>有无信用卡</td>
					<td><input type="text"/></td>
				</tr>
		</table>
		<center>
			<button style="width: 120px;" id="" class="btn btn-info">保存</button>
			<button style="width: 120px;" id="" class="btn btn-info">提交</button>
			<button style="width: 120px;" id="" class="btn btn-info">返回</button>
		</center>
	</form>
	
</body>
</html>
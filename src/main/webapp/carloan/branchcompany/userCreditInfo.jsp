<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户信用信息录入</title>
	<style type="text/css">
		
		.table{
			text-align: center;
		}
	   input[type='radio']{
	   
	   display:inline-block!important;
	   margin-left:20px!important;
	   width:12px!important;
	   height:12px!important;
	   }
	</style>
</head>
<body>
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷管理>车贷申请信息录入>客户信用信用录入</font></div>
	
	<form action="#" id="myform">
		<input type="hidden" name="id" id="id" value="0"/>
		<table id="tab" class="table table-striped" style="width: 100%;">
			<caption style="text-align: center;font-size: 15px;">资产信息</caption>
				<tr>
					<td>有无房产</td>
					<td><label><input name="houseProperty" value="1" checked="checked" type="radio" id="input1"/>有</label><label><input name="houseProperty" type="radio" value="0" id="input2"/>无</label></td>
					<td>有无房贷</td>
					<td><input name="houseLoan" value="1" checked="checked" type="radio" id="input3"/>有<input name="houseLoan" type="radio" value="0" id="input4"/>无</td>
				</tr>
				
				<tr>
					<td>有无车产</td>
					<td><input name="carProperty" value="1" checked="checked" type="radio" id="input5"/>有<input name="carProperty" type="radio" value="0" id="input6"/>无</td>
					<td>有无车贷</td>
					<td><input name="carLoan" value="1" checked="checked" type="radio" id="input7"/>有<input name="carLoan" type="radio" value="0" id="input8"/>无</td>
				</tr>
		</table>
		
		<table id="tab" class="table table-striped" style="width: 100%;">
			<caption style="text-align: center;font-size: 15px;">信用信息</caption>
				<tr>
					<td>信用卡、贷款最大逾期状况（24个月内）</td>
					<td><input type="text" name="maxSituation" id="input9"/></td>
					<td>信用卡、贷款累计逾期次数（24个月内）</td>
					<td><input type="text" name="maxNumber" id="input10"/></td>
				</tr>
				
				<tr>
					<td>信用卡额度使用率</td>
					<td><input type="text" name="creditCardUsageRate" id="input11"/></td>
					<td>信用卡、贷款审批查询次数（6个月内）</td>
					<td><input type="text" name="noccLae" id="input12"/></td>
				</tr>
				
				<tr>
					<td>有无其他信用贷款</td>
					<td><input name="otherCreditLoans" value="1" checked="checked" type="radio" id="input13"/>有<input name="otherCreditLoans" type="radio" value="0" id="input14"/>无</td>
					<td>有无信用卡</td>
					<td><input name="creditCard" value="1" checked="checked" type="radio" id="input15"/>有<input name="creditCard" type="radio" value="0" id="input16"/>无</td>
				</tr>
		</table>
		</form>
		<center>
			<button style="width: 120px;" id="save" class="btn btn-info">保存</button>
			<button style="width: 120px;" id="submit" class="btn btn-info">提交</button>
			<a   style="width: 120px;" id="back_out" class="btn btn-info">返回</a>
		</center>
	<script type="text/javascript">
	$('input').addClass("form-control");
	$.ajax({
		   type: "get",
		   url: "../userCredit/"+<%=request.getParameter("contractId")%>,
		   async:true,
		   success: function(bean){
				console.info(bean);
				if(bean != null && bean != "null"){
					if(bean.houseProperty==0){
						$("#input2").attr("checked","checked");
					}
					if(bean.houseLoan==0){
						$("#input4").attr("checked","checked");
					}
					if(bean.carProperty==0){
						$("#input6").attr("checked","checked");
					}
					if(bean.carLoan==0){
						$("#input8").attr("checked","checked");
					}
					if(bean.otherCreditLoans==0){
						$("#input14").attr("checked","checked");
					}
					if(bean.creditCard==0){
						$("#input16").attr("checked","checked");
					}
					
					$("#input9").val(bean.maxSituation);
					$("#input10").val(bean.maxNumber);
					$("#input11").val(bean.creditCardUsageRate);
					$("#input12").val(bean.noccLae);
					$("#id").val(bean.id);
				}
				
		   }
		});
	
	
	$("#back_out").click(function() {
		$("#ifrom").load('branchcompany/creditInput.jsp');
	})
	$("#save").click(function(){
		add(0);
	});
	
	$("#submit").click(function(){
		add(1);
	});
	function add(isSubmit){
		var datas = $("#myform").serialize()+"&contractId="+<%=request.getParameter("contractId")%>;
			$.ajax({
				   type: "POST",
				   url: "../userCredit/save/"+isSubmit,
				   async:true,
				   data: datas,
				   success: function(msg){
						console.info(msg);
						$("#ifrom").load('branchcompany/creditInput.jsp');
				   }
				});
	}
	</script>
</body>
</html>
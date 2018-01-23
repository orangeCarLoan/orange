<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>签约信息</title>

<style type="text/css">
	.table{
		text-align: center;
	}
	.table th, .table td { 
		text-align: center; 
	}
	.table td button{
		margin-top: -6%;
	}
</style>
</head>
<body>
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置 : 车贷管理>车贷签约</font></div>
	<div style="margin-top: 10px;">
	    <form id="myform" method="post" enctype="multipart/form-data">
	    <input type="hidden" id="contractId" name="contractId" value="<%=request.getParameter("contractId")%>"/>
	    <input type="hidden" name="isSubmit" id="isSubmit" value="0"/>
	    <input type="hidden" id="signId" name="signId" value="0"/>
	    <input type="hidden" id="signAdjunctId" name="signAdjunctId" value="0"/>
	    <table id="tab1" class="table table-striped" style="width: 100%;">
	        <tbody>
	        <tr>
	            <td>借款合同编号</td><td><input id="contract" type="text" class="form-control"/></td>
	            <td>借款人</td><td><input type="text" id="userName" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>借款人手机</td><td><input id="userPhone" type="text" class="form-control"/></td>
	            <td>业务经理</td><td><input id="saleName" type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>借款合用途</td><td><input id="borrowPurpose" type="text" class="form-control"/></td>
	            <td>职务</td><td><input id="duty" type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>身份证</td><td><input id="identity" type="text" class="form-control"/></td>
	            <td>借款总额</td><td><input id="approvalQuota" type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>咨询服务费</td><td><input id="consulting" name="consulting" type="text" class="form-control"/></td>
	            <td>月还款额</td><td><input id="conApp" type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td><font color="red">额度上限</font></td><td><input id="creditLimit" name="creditLimit" type="text" class="form-control"/></td>
	            <td>产品名称</td><td><input type="text" id="type" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>贷款期数</td><td><input type="text" id="approvalPeriod" class="form-control"/></td>
	        </tr>
	         <tr>
	            <td>审批金额<font size="3" color="red">*</font></td><td><input id="quota" name="quota" type="text" class="form-control"/></td>
	            <td>约定放贷日<font size="3" color="red">*</font></td><td><input id="agreedLoanDate" name="agreedLoanDate" type="date" class="form-control"/></td>
	        </tr>
	         <tr>
	            <td>放款/还款银行<font size="3" color="red">*</font></td>
	            <td><select class="form-control" style="width: 100%" id="bank" name="bank" 
	            onfocus="this.defaultIndex=this.selectedIndex;" onchange="this.selectedIndex=this.defaultIndex;">
						 <option>中国银行</option>
						 <option>工商银行</option>
						 <option>农业银行</option>
						 <option>建设银行</option>
						 <option>农商银行</option>
					</select></td>
	            <td>放款/还款账号<font size="3" color="red">*</font></td><td><input id="account" name="account" type="text" class="form-control"/></td>
	        </tr>
	        <tr> 
	            <td>放款/还款开户银行（支行）<font size="3" color="red">*</font></td><td><input id="depositBank" name="depositBank" type="text" class="form-control"/></td>
	        </tr>
	        
	        </tbody>
	    </table>
	  
	    <table id="tab2" class="table table-striped" style="width: 100%;table-layout: fixed">
	    	<caption style="text-align: center;font-size: 15px;">签约附件列表</caption>
	        <tbody>
	        <tr>
	            <td>银行卡<font size="3" color="red">*</font></td>
	            <td><input type="file"  name="fileName" id="upload_file1" style="display: none;" onchange="change(1);">  
    				<input type="text"  name="bankCard" id="upload_file_tmp1"  readonly="readonly" onclick="upload_file1.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file1.click(); "/> </td>
	            <td></td><td></td>
	        </tr>
	        <tr>
	            <td>机打申请表片<font size="3" color="red">*</font></td>
	            <td><input type="file"  name="fileName" id="upload_file2" style="display: none;" onchange="change(2);">  
    				<input type="text"  name="applicationForm" id="upload_file_tmp2"  readonly="readonly" onclick="upload_file2.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file2.click(); "/> </td>
	            <td></td><td></td>
	        <tr>
	            <td>小额借款服务合同<font size="3" color="red">*</font></td>
	            <td><input type="file"  name="fileName" id="upload_file3" style="display: none;" onchange="change(3);">  
    				<input type="text"  name="loanContract" id="upload_file_tmp3"  readonly="readonly" onclick="upload_file3.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file3.click(); "/> </td>
	            <td></td><td></td>
	        </tr>
	        <tr>
	            <td>收款扣款委托书<font size="3" color="red">*</font></td> 
	            <td><input type="file"  name="fileName" id="upload_file4" style="display: none;" onchange="change(4);">  
    				<input type="text"  name="cutAuthorization" id="upload_file_tmp4"  readonly="readonly" onclick="upload_file4.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file4.click(); "/> </td>
	            <td></td><td></td>
	        <tr>
	            <td>授权委托书<font size="3" color="red">*</font></td> 
	            <td><input type="file"  name="fileName" id="upload_file5" style="display: none;" onchange="change(5);">  
    				<input type="text"  name="authorization" id="upload_file_tmp5"  readonly="readonly" onclick="upload_file5.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file5.click(); "/> </td>
	            <td></td><td></td>
	         <tr>
	            <td>还款计划表<font size="3" color="red">*</font></td>
	            <td><input type="file"  name="fileName" id="upload_file6" style="display: none;" onchange="change(6);">  
    				<input type="text"  name="refundList" id="upload_file_tmp6"  readonly="readonly" onclick="upload_file6.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file6.click(); "/> </td>
	            <td></td><td></td>
	         <tr>
	            <td>补充协议<font size="3" color="red">*</font></td> 
	           <td><input type="file"  name="fileName" id="upload_file7" style="display: none;" onchange="change(7);">  
    				<input type="text"  name="replenishDeal" id="upload_file_tmp7"  readonly="readonly" onclick="upload_file7.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file7.click(); "/> </td>
	            <td></td><td></td>
	         <tr>
	            <td>车辆买卖回购合同<font size="3" color="red">*</font></td> 
	           <td><input type="file"  name="fileName" id="upload_file8" style="display: none;" onchange="change(8);">  
    				<input type="text"  name="carContract" id="upload_file_tmp8"  readonly="readonly" onclick="upload_file8.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file8.click(); "/> </td>
	            <td></td><td></td>
	         <tr>
	            <td>授权委托书（车辆处理使用）<font size="3" color="red">*</font></td> 
	            <td><input type="file"  name="fileName" id="upload_file9" style="display: none;" onchange="change(9);">  
    				<input type="text"  name="carAuthorization" id="upload_file_tmp9"  readonly="readonly" onclick="upload_file9.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file9.click(); "/> </td>
	            <td></td><td></td>
	         <tr>
	            <td>车辆抵押照片<font size="3" color="red">*</font></td> 
	           <td><input type="file"  name="fileName" id="upload_file10" style="display: none;" onchange="change(10);">  
    				<input type="text"  name="carPhoto" id="upload_file_tmp10"  readonly="readonly" onclick="upload_file10.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file10.click(); "/> </td>
	            <td></td><td></td>
	         <tr>
	            <td>车辆入库照片</td> 
	            <td><input type="file"  name="fileName" id="upload_file11" style="display: none;" onchange="change(11);">  
    				<input type="text"  name="storagePhoto" id="upload_file_tmp11"  readonly="readonly" onclick="upload_file11.click(); "></td>
				<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file11.click(); "/> </td>
	            <td></td><td></td>
	        </tbody>
	     </table>
	    <center>
    		<button style="width: 120px;" type="button" class="btn btn-info">还款时算</button>
		    <button style="width: 120px;" type="button" class="btn btn-info">打印签约合同</button>
		    <button id="save" style="width: 120px;" type="button" class="btn btn-info">保存</button>
		    <button id="tijiao" style="width: 120px;" type="button" class="btn btn-info">提交</button>
		    <button id="return" style="width: 120px;" type="button" class="btn btn-info">返回</button>
		    <button style="width: 120px;" type="button" class="btn btn-info">回退</button>
	    </center>
	    </form>
	</div>
	<div style="margin-top: 20px;">
		<form action="#">
		<table id="tab3" class="table table-bordered" style="width: 100%;">
			<thead>
				<tr id="tr1">
					<th style="width: 80px;">序号</th><th>合同编号</th><th>借款人</th><th>期数</th>
					<th>期初本金</th><th>剩余本金</th><th>结清还服务费</th><th>提前结清金额</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td>
					<td>5</td><td>6</td><td>7</td><td>8</td>
				</tr>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td>
					<td>5</td><td>6</td><td>7</td><td>8</td>
				</tr>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td>
					<td>5</td><td>6</td><td>7</td><td>8</td>
				</tr>
			</tbody>
		</table>
		</form>
	</div>
<script type="text/javascript">

$("input").attr("readOnly",true);

function change(num){
	$("#upload_file_tmp"+num).val($("#upload_file"+num).val());
}
$("#save").click(function(){
	$("#isSubmit").val(0);
	funaaa();
});
$("#tijiao").click(function(){
	$("#isSubmit").val(1);
	funaaa();
});
$("#return").click(function(){
	$("#ifrom").load('branchcompany/carloanSign.jsp');
});
function funaaa(){
	$('#myform').form({   
	    url:"../sign/save",   
	    onSubmit: function(){   
			return true;
	    },   
	    success:function(data){
	    	var str="";
	    	if(data||data=="true"){
	    		str="操作成功！";
				$("#ifrom").load('branchcompany/carloanSign.jsp');
			}else{
				str="操作失败！系统繁忙！";
			}
	    	$.messager.show({
    		    title:'叮咚~',
    		    msg:str,
    		    timeout:3000,
    		    showType:'slide'
    		});
	    }   
	});   
	$('#myform').submit();  
}

var contractId = $("#contractId").val();
$.ajax({
    type:"get",//type请求方式
    url:"../sign/find",//url请求路径
    async:true,//async是否异步请求
    data:"contractId="+contractId,
    //success为得到响应该怎么操作。方法中mes为响应结果中的字符串，需根据自己的需求是否要转为json对象。
    success:function(mes){
    	console.info(mes);
		if(mes!=null&&mes!="null"){
			$("#contract").val(mes.contract);
			$("#borrowPurpose").val(mes.userMessageBean.borrowPurpose);
			$("#duty").val(mes.userMessageBean.duty);
			$("#saleName").val(mes.userMessageBean.saleName);
			$("#userPhone").val(mes.userMessageBean.userPhone);
			$("#approvalPeriod").val(mes.adviceBean.approvalPeriod);
			$("#conApp").val(mes.adviceBean.approvalQuota/mes.adviceBean.approvalPeriod);
			$("#approvalQuota").val(mes.adviceBean.approvalQuota);
			$("#identity").val(mes.userIdentityBean.identity);
			$("#type").val(mes.userIdentityBean.type);
			$("#userName").val(mes.userIdentityBean.userName);
			if(mes.signBean!=null && mes.signBean!="null"){
				$("#consulting").val(mes.signBean.consulting);
				$("#creditLimit").val(mes.signBean.creditLimit);
				$("#quota").val(mes.signBean.quota);
				$("#agreedLoanDate").val(funDate(mes.signBean.agreedLoanDate));
				$("#bank option").each(function(){
					if($(this).val()==mes.signBean.bank){
						$(this).attr("selected","selected");
					}
				});
				$("#account").val(mes.signBean.account);
				$("#depositBank").val(mes.signBean.depositBank);
				$("#signId").val(mes.signBean.id);
				if(mes.signBean.signAdjunctBean!=null&&mes.signBean.signAdjunctBean!="null"){
					var sss = mes.signBean.signAdjunctBean;
					$("#signAdjunctId").val(sss.id);
					$("#upload_file_tmp1").val(sss.bankCard);
					$("#upload_file_tmp2").val(sss.applicationForm);
					$("#upload_file_tmp3").val(sss.loanContract);
					$("#upload_file_tmp4").val(sss.cutAuthorization);
					$("#upload_file_tmp5").val(sss.authorization);
					$("#upload_file_tmp6").val(sss.refundList);
					$("#upload_file_tmp7").val(sss.replenishDeal);
					$("#upload_file_tmp8").val(sss.carContract);
					$("#upload_file_tmp9").val(sss.carAuthorization);
					$("#upload_file_tmp10").val(sss.carPhoto);
					$("#upload_file_tmp11").val(sss.storagePhoto);
				}
			}
		}    	
    }
});
function funDate(value){
	if(value!=null){
		var dates = new Date(value);
		var year=dates.getYear()+1900;     
	    var month=dates.getMonth()+1;
	    var date=dates.getDate();
	    if((month+"").length==1){
	    	month="0"+month;
	    }
	    if((date+"").length==1){
	    	date="0"+date;
	    }
		return year+"-"+month+"-"+date;		
	}
	return "-";
}
</script>
</body>
</html>
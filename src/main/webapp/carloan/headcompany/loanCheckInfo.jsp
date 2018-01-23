<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../commons.jsp"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷详细信息</title>
<!-- <script type="text/javascript" src="../static/easyui/jquery.min.js"></script> -->
<!-- <script type="text/javascript" src="../static/js/branchCredit.js"></script> -->
<!-- <script type="text/javascript" src="../static/js/jquery.json-2.4.js"></script>  -->
 <style type="text/css">
	 .table{
		text-align: center;
		} 
	.table th{
		text-align: center;
	}
	#tab7{
		text-align: left;
	}
	.caption{
		text-align: center; 
		font-size: 15px;
	}
 </style>
</head>
<body>
<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷查看>车贷详细信息</font></div>
<div>
     
     <div>
    <div>

        <div>
            
                <br/>
                <div style="float: right;">
					<input type="text" style="width: 300px;" placeholder="回退意见" id="backInfo" class="form-control">
				</div>
				<input type="hidden" name="contratId" value="<%=request.getParameter("contractId")%>" id="contratId">
                <table id="tab1" class="table table-striped" style="width: 100%">
                	<caption class="caption">个人基本信息</caption>
                    <tr>
                        <td>申请人姓名</td>
                        <td><input id="clientName" name="clientName"type="text"/></td>
                        <td>身份证号码</td>
                        <td><input id="idCardNum" type="text"/></td>
                    </tr>
                    <tr>
                        <td>最高学历</td>
                        <td><input id="education" type="text" /></td>
                        <td>申请人手机号码</td>
                        <td><input id="tel" type="text" /></td>
                    </tr>
                    <tr>
                        <td>户籍地址</td>
                        <td><input id="clientAddress" type="text" /></td>
                        <td>申请人电话号码</td>
                        <td><input id="phone" type="text" /></td>
                    </tr>
                    <tr>
                        <td>婚姻状况</td>
                        <td><input id="marry" type="text" /></td>
                        <td>有无子女</td>
                        <td><input id="hasChild" type="text" /></td>
                    </tr>
                    <tr>
                        <td>房产状况</td>
                        <td><input type="text" id="houseType" /></td>
                        <td>共有居住者</td>
                        <td><select class="form-control" id="partner">
								<option>配偶</option>
								<option>子女</option>
							</select></td>
                    </tr>
                    <tr>
                    	<td>现住址</td>
                        <td><input type="text" id="address" /></td>
                        <td>客户类型</td>
                        <td><input id="producType" type="text" /></td>
                    </tr>
                </table>
                <table id="tab2" class="table table-striped" style="width: 100%;">
                	<caption class="caption">工作信息</caption>
                	<tr>
                        <td>工作单位全称</td>
                        <td><input id="jobName" type="text" /></td>
                        <td>工作单位地址</td>
                        <td><input id="jobAddress" type="text" /></td>
                    </tr>
                    <tr>
                        <td>单位电话</td>
                        <td><input id="jobTel" type="text" /></td>
                        <td>邮政编码</td>
                        <td><input id="postCode" type="text" /></td>
                    </tr>
                    <tr>
                        <td>进入该单位时间</td>
                        <td><input id="joinTime" type="text" /></td>
                        <td>所在部门</td>
                        <td><input id="Department" type="text" /></td>
                    </tr>
                    <tr>
                        <td>担任职务</td>
                        <td><input id="fillPost" type="text" /></td>
                        <td>公司规模</td>
                        <td><input id="scaleCompany" type="text" /></td>
                    </tr>
                    <tr>
                        <td>行业类别</td>
                        <td><input id="industryCategory" type="text" /></td>
                        <td>单位性质</td>
                        <td>
                            <select class="info form-control" id="jobProperty" >
                                <option  value="私企">私企</option>
                                <option value="国企">国企</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <form id="myform1">
                <input type="hidden" name="credId" id="credId" value="0" />
                <table id="tab10" class="table table-striped">
                <caption class="caption">信用信息</caption>
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
                     <tr>
                        <td>信用卡、贷款最大逾期状况（24个月内）</td>
                        <td><input id="maxSituation" name="maxSituation" type="text" /></td>
                        <td>信用卡、贷款最大逾期次数*（24个月内）</td>
                        <td><input id="maxNumber" name="maxNumber" type="text" /></td>
                    </tr>
					<tr>
                        <td>信用卡额度使用率</td>
                        <td><input id="creditCardUsageRate" name="creditCardUsageRate" type="text" /></td>
                        <td>信用卡、审批查询次数（6个月内）</td>
                        <td><input id="noccLae" name="noccLae" type="text" /></td>
                    </tr>
                    <tr>
                        <td>有无其他信用贷款</td>
                        <td><input id="otherCreditLoans" name="otherCreditLoans" type="text" /></td>
                        <td>有无信用卡）</td>
                        <td><input id="creditCard" name="creditCard" type="text" /></td>
                    </tr>
                </table>
                </form>
                <form id="myform3">
                <div id="div2"><div class="div2">
                
                <table id="tab6" class="table table-striped">
                <caption class="caption">联系人信息（填写不能重复）</caption>
                    <tr>
                        <td>姓名</td>
                        <td><input id="contactName" type="text"/></td>
                        <td>联系人电话</td>
                        <td><input id="contactPhone" type="text"/></td>
                    </tr>
                    <tr>
                        <td>联系人类型</td>
                        <td><input id="contactType" type="text"/></td>
                        <td>和本人关系</td>
                        <td><input id="relation" type="text"/></td>
                    </tr>
                    <tr>
                        <td>单位名称</td>
                        <td><input id="contactCompany" type="text"/></td>
                        <td>家庭住址/单位地址</td>
                        <td><input id="contactAddress" type="text"/></td>
                    </tr>
                </table>
                
                </div></div>
                </form>
                <table id="tab3" class="table table-striped" style="width: 100%;">
                <caption class="caption">借款需求</caption>
                    <tr>
                        <td>贷款详细用途</td>
                        <td><input id="userFor" type="text" /></td>
                        <td>月收入</td>
                        <td><input id="income" type="text" ></td>
                    </tr>
                    <tr>
                        <td>可以承受的月还款额</td>
                        <td><input id="repayment" type="text" /></td>
                        <td>希望申请最长还款期限</td>
                        <td><input id="maxdeadline" type="text" /></td>
                    </tr>
                    <tr>
                        <td>希望申请借款额度(最低)</td>
                        <td><input id="minlimit" type="text" /></td>
                        <td>希望申请借款额度(最高)</td>
                        <td><input id="maxlimit" type="text" /></td>
                    </tr>
                    <tr>
                        <td>你从何处得知橘子车贷</td>
                        <td><input id="channel" type="text" /></td>
                        <td>申请日期</td>
                        <td><input id="applydate" type="text" /></td>
                    </tr>
                    <tr>
                        <td>业务员姓名</td>
                        <td><input id="Salename" type="text" /></td>
                        <td>贷款专员</td>
                        <td><input id="commissioner" type="text" /></td>
                    </tr>
                </table>
                <table class="table table-striped" style="width: 100%;">
   		<caption class="caption">签约信息</caption>
   			<tr>
   				<td>借款总额：</td>
   				<td><input id="creditLimit" type="text" class="form-control"/></td>
   				<td>咨询服务费：</td>
   				<td><input id="consulting" type="text" class="form-control"/></td>
   			</tr>
   			<tr>
   				<td>月还款额：</td>
   				<td><input id="month_repay" type="text" class="form-control" /></td>
   				<td>贷款期数：</td>
   				<td><input id="loan_num" type="text" class="form-control" /></td>
   			</tr>
   			<tr>
   				<td>产品名称：</td>
   				<td><input id="product_name" type="text" class="form-control" /></td>
   				<td>审批金额：</td>
   				<td><input id="quota" type="text" class="form-control" /></td>
   			</tr>
   			<tr>
   				<td>约定放款日：</td>
   				<td><input id="agreedLoanDate" type="text" class="form-control" /></td>
   				<td>放款、还款银行：</td>
   				<td><input id="bank" type="text" class="form-control" /></td>
   			</tr>
   			<tr>
   				<td>放款还款账号：</td>
   				<td><input id="account" type="text" class="form-control" /></td>
   				<td>放款/还款开户银行（支行）：</td>
   				<td><input id="depositBank" type="text" class="form-control" /></td>
   			</tr>
   		</table>
   		<form id="myform2">
                    <input type="hidden" id="adviceId" name="adviceId" value="0" />
                <table id="tab10" class="table table-striped" style="table-layout: fixed;">
                	<caption class="caption">综合意见</caption>
                    
                    <tr>
                        <td>产品类别<span style="color: red">*</span></td>
                        <td>
                            <select id="productCategory" name="productCategory" class="info form-control" id="productCategory">
                                <option  value="" style="display: none;">-请选择-</option>
                                <option  value="长期">长期</option>
                                <option  value="中期">中期</option>
                                <option  value="短期">段期</option>
                            </select>
                        </td>
                        <td>审批期数<span style="color: red">*</span></td>
                        <td>
                            <select id="approvalPeriod" name="approvalPeriod" class="info form-control" id="approvalPeriod">
                            	<option  value="" style="display: none;">-请选择-</option>
                            	<option  value="6">六期</option>
                            	<option  value="12">十二期</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>结论<span style="color: red">*</span></td>
                        <td>
                            <select id="conclusion" name="conclusion" class="info form-control" id="conclusion">
                                <option  value="" style="display: none;">-请选择-</option>
                                <option  value="待定">待定</option>
                                <option  value="通过">通过</option>
                            </select>
                        </td>
                        <td>审批额度<span style="color: red">*</span></td>
                        <td><input id="approvalQuota" name="approvalQuota" type="text" /></td>
                    </tr>
                    <tr>
                        <td style="line-height: normal;">分公司初审意见<span style="color: red">*</span></td>
                        <td colspan="3" style="text-align: center">
		                   <textarea id='branchOpinion' name="branchOpinion" style="width:100%;height: 50%">
		                   </textarea>
                        </td>
                    </tr>
                    </table>
                    </form>
               
       			<table id="tab8" class="table table-striped" style="table-layout: fixed;">
       			<caption class="caption">基本信息附件列表</caption>
                    <tr>
                        <td>身份证（原件）</td>
                        <td><span id="idcard"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td></td><td></td>
                    </tr>
                   <tr>
                        <td>信用卡额度使用率</td>
                        <td><span id="carLoanFrom"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td>有无其他信用贷款</td>
                        <td><span id="atherAdjunct"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td></td><td></td>
                    </tr>
                    </table>
     			    <table id="tab9" class="table table-striped" style="table-layout: fixed;">
     			    	<caption class="caption">车辆信息附件列表</caption>
	     			    <tbody id="carTbody">
		                    <tr>
		                        <td>抵押车辆评估表</td>
		                        <td><span class="carAssessList"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                    <tr>
		                    	<td>车辆照片</td>
		                        <td><span class="carPhoto"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                    <tr>
		                    	<td>车辆登记证书(原件)</td>
		                        <td><span class="carRegister"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                    <tr>
		                        <td>车辆行驶证正副本(原件)</td>
		                        <td><span class="carLicense"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                     <tr>
		                        <td>保单(交强险)</td>
		                        <td><span class="gutCompulsory"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                    <tr>
		                        <td>保单(商业险)</td>
		                        <td><span class="gutCommercial"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                    <tr>
		                        <td>其他车辆附件</td>
		                        <td><span class="otherAttachments"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
	                    </tbody>
                    </table>
<!--                      <div id="div"> -->
	                
	                <br/> <br/>
	                <table class="table" style="width: 100%;table-layout: fixed;">
				   		<caption class="caption">签约附件列表</caption>
				   			<tr class="warning">
				   				<td>银行卡<font size="3" color="red">*</font></td>
		                        <td><span id="bankCard"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
					        </tr>
				   			<tr class="warning">
				   				<td>机打申请表片<font size="3" color="red">*</font></td>
		                        <td><span id="applicationForm"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
					        </tr>
				   			<tr class="warning">
					            <td>小额借款服务合同<font size="3" color="red">*</font></td>
					            <td><span id="loanContract"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
					        </tr>
				   			<tr class="warning">
					            <td>收款扣款委托书<font size="3" color="red">*</font></td> 
					            <td><span id="cutAuthorization"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>授权委托书<font size="3" color="red">*</font></td> 
					            <td><span id="authorization"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>还款计划表<font size="3" color="red">*</font></td>
					            <td><span id="refundList"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>补充协议<font size="3" color="red">*</font></td> 
					            <td><span id="replenishDeal"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>车辆买卖回购合同<font size="3" color="red">*</font></td> 
					            <td><span id="carContract"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>授权委托书（车辆处理使用）<font size="3" color="red">*</font></td> 
					        	<td><span id="carAuthorization"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
					        </tr>
				   			<tr class="warning">
					            <td>车辆抵押照片<font size="3" color="red">*</font></td> 
					            <td><span id="carPhoto"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>车辆入库照片</td> 
					            <td><span id="storagePhoto"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   </table>
	               </div>
                </div>
                    <center>
		                <button id="outback" style="width: 150px;" id="fanhui" type="button" class="btn btn-info" >返回</button>
		            </center>
		        
            </div>
         </div>
<!--      </div> -->
<script>
$("input").addClass("form-control");
$(":radio").removeClass("form-control");
$(":radio").css("text-align","left");
$('#outback').click(function(){
	$("#ifrom").load('headcompany/loanCheck.jsp');
});
var conId="";
$(function(){
	function show(id) {
		var m={"id":id};
		var json = JSON.stringify(m);
		$.ajax({
			type:"GET",
			url:"../makeloan/check",
			data:"trId="+id,
// 			contentType:"application/json",
			async:true,
			success:function(data){
				data = JSON.parse(data);
				console.log(data);
				//基本信息表
				$('#clientName').val(data.userIdentityBean.userName)
				$('#idCardNum').val(data.userIdentityBean.identity)
				$('#education').val(data.userMessageBean.education)
				$('#tel').val(data.userMessageBean.userPhone)
				$('#clientAddress').val(data.userMessageBean.place)
				$('#phone').val(data.userMessageBean.telephone)
				$('#marry').val(data.userMessageBean.marry)
				$('#hasChild').val(data.userMessageBean.hasChild)
				$('#houseType').val(data.userMessageBean.houseType)
				$("#partner[value='"+data.userMessageBean.partner+"']").attr("selected","selected")
				$('#address').val(data.userMessageBean.address)
				$('#producType').val(data.userMessageBean.clientType)
				
				//工作信息表
				$('#jobName').val(data.userMessageBean.companyName)
				$('#jobAddress').val(data.userMessageBean.companyAddress)
				$('#jobTel').val(data.userMessageBean.companyPhone)
				$('#postCode').val(data.userMessageBean.zipCode)
				$('#joinTime').val(data.userMessageBean.happenTime)
				$('#Department').val(data.userMessageBean.dept)
				$('#fillPost').val(data.userMessageBean.duty)
				$('#scaleCompany').val(data.userMessageBean.companySize)
				$('#industryCategory').val(data.userMessageBean.employment)
				$("#jobProperty[value='"+data.userMessageBean.unitNature+"']").attr("selected","selected")
				
				//借款需求
				$('#userFor').val(data.userMessageBean.borrowPurpose)
				$('#income').val(data.userMessageBean.income)
				$('#repayment').val(data.userMessageBean.repayment)
				$('#maxdeadline').val(data.userMessageBean.maxdeadline)
				$('#minlimit').val(data.userMessageBean.minlimit)
				$('#maxlimit').val(data.userMessageBean.maxlimit)
				$('#channel').val(data.userMessageBean.channel)
				$('#applydate').val(funDate(data.userMessageBean.applyDate))
				$('#Salename').val(data.userMessageBean.saleName)
				$('#commissioner').val(data.userMessageBean.commissioner)
				
				//信用信息表
				$("#credId").val(data.userCreditBean.id);
				$("#tab10 [name=carLoan][value="+data.userCreditBean.carLoan+"]").attr("checked","checked");
				$("#tab10 [name=carProperty][value="+data.userCreditBean.carProperty+"]").attr("checked","checked");
				$("#tab10 [name=houseLoan][value="+data.userCreditBean.houseLoan+"]").attr("checked","checked");
				$("#tab10 [name=houseProperty][value="+data.userCreditBean.houseProperty+"]").attr("checked","checked");
				$('#maxSituation').val(data.userCreditBean.maxSituation)
				$('#maxNumber').val(data.userCreditBean.maxNumber)
				$('#creditCardUsageRate').val(data.userCreditBean.creditCardUsageRate)
				$('#noccLae').val(data.userCreditBean.noccLae)
				$('#otherCreditLoans').val(data.userCreditBean.otherCreditLoans)
				$('#creditCard').val(data.userCreditBean.creditCard)
				
				
				/*联系人信息*/
				console.info(data.userMessageBean.contactBean.length);
				for(var i=1; i<data.userMessageBean.contactBean.length;i++){
					$("#div2").after($("#div2").html());
					var ss = "<tr>"+$("#trClass").html()+"</tr>";
					var reg=/isLoan1/g;
					ss = ss.replace(reg,"isLoan"+(i+1));
					$("#tbody").append(ss);
				}
				i=0;
				$(".div2").each(function(){
					conId+="conId="+data.userMessageBean.contactBean[i].id+"&";
					$(this).find('#contactName').val(data.userMessageBean.contactBean[i].contactName)
					$(this).find('#contactPhone').val(data.userMessageBean.contactBean[i].contactPhone)
					$(this).find('#contactType').val(data.userMessageBean.contactBean[i].contactType)
					$(this).find("#relation").val(data.userMessageBean.contactBean[i].relation);
					$(this).find('#contactCompany').val(data.userMessageBean.contactBean[i].contactCompany)
					$(this).find('#contactAddress').val(data.userMessageBean.contactBean[i].contactAddress)
					i++;
				});
				
				//基本信息附件
				$("#atherAdjunct").html(data.userMessageBean.userAdjunctBean.atherAdjunct);
				$("#carLoanFrom").html(data.userMessageBean.userAdjunctBean.carLoanFrom);
				$("#idcard").html(data.userMessageBean.userAdjunctBean.idcard);
				
				//签约信息附件
				$('#bankCard').html(data.signBean.signAdjunctBean.bankCard)
				$('#applicationForm').html(data.signBean.signAdjunctBean.applicationForm)
				$('#loanContract').html(data.signBean.signAdjunctBean.loanContract)
				$('#cutAuthorization').html(data.signBean.signAdjunctBean.cutAuthorization)
				$('#authorization').html(data.signBean.signAdjunctBean.authorization)
				$('#refundList').html(data.signBean.signAdjunctBean.refundList)
				$('#replenishDeal').html(data.signBean.signAdjunctBean.replenishDeal)
				$('#carContract').html(data.signBean.signAdjunctBean.carContract)
				$('#carAuthorization').html(data.signBean.signAdjunctBean.carAuthorization)
				$('#carPhoto').html(data.signBean.signAdjunctBean.carPhoto)
				$('#storagePhoto').html(data.signBean.signAdjunctBean.storagePhoto)
				
				//综合意见
				$("#adviceId").val(data.adviceBean.id);
				$("#approvalPeriod [value='"+data.adviceBean.approvalPeriod+"']").attr("selected","selected");
				$("#conclusion [value='"+data.adviceBean.conclusion+"']").attr("selected","selected");
				$("#productCategory [value='"+data.adviceBean.productCategory+"']").attr("selected","selected");
				$("#approvalQuota").val(data.adviceBean.approvalQuota);
				$("#branchOpinion").val(data.adviceBean.branchOpinion);
				
				//签约信息
				$('#creditLimit').val(data.signBean.creditLimit)
				$('#consulting').val(data.signBean.consulting)
				$('#month_repay').val(data.signBean.creditLimit/data.adviceBean.approvalQuota)
				$('#quota').val(data.signBean.quota)
				$('#agreedLoanDate').val(data.signBean.agreedLoanDate)
				$('#bank').val(data.signBean.bank)
				$('#account').val(data.signBean.account)
				$('#depositBank').val(data.signBean.depositBank)
				$('#loan_num').val(data.signBean.creditLimit)
				$('#product_name').val(data.userIdentityBean.type)
				
// 				for(var i=1; i<data.carMessageBeans.length;i++){
// 					$("#div").after($("#div").html());
// 				}
// 				var i=0;
// 				$(".div").each(function(){
// 					$(this).find('#carplate').val(data.carMessageBeans[i].carPlate)
// 					$(this).find('#labeltype').val(data.carMessageBeans[i].labelType)
// 					$(this).find('#carEvaluate').val(data.carMessageBeans[i].engineno)
// 					$(this).find('#carColor').val(data.carMessageBeans[i].color)
// 					$(this).find('#firsttime').val(funDate(data.carMessageBeans[i].firstTime))
// 					$(this).find('#yearvalidity').val(data.carMessageBeans[i].yesrValidity)
					
// 					$(this).find('#chassisnum').val(data.carMessageBeans[i].chassisnum)
// 					$(this).find('#carPrice').val(data.carMessageBeans[i].carPrice)
// 					$(this).find('#currentTripNum').val(data.carMessageBeans[i].currentTripNum)
					
// 					$(this).find(":radio[name='idcard'][value='" + data.carMessageBeans[i].idcard + "']").prop("name", $(this).find(":radio[name='idcard'][value='" + data.carMessageBeans[i].idcard + "']").attr("name")+i)
// 					$(this).find(":radio[name='idcard"+i+"'][value='" + data.carMessageBeans[i].idcard + "']").prop("checked", "checked")
// 					$(this).find(":radio[name='carpurchase'][value='" + data.carMessageBeans[i].carPurchase + "']").prop("name",$(this).find(":radio[name='carpurchase'][value='" + data.carMessageBeans[i].carPurchase + "']").attr("name")+i)
// 					$(this).find(":radio[name='carpurchase"+i+"'][value='" + data.carMessageBeans[i].carPurchase + "']").prop("checked", "checked")
// 					$(this).find(":radio[name='insurance'][value='" + data.carMessageBeans[i].insurance + "']").prop("name", $(this).find(":radio[name='insurance'][value='" + data.carMessageBeans[i].insurance + "']").attr("name")+i)
// 					$(this).find(":radio[name='insurance"+i+"'][value='" + data.carMessageBeans[i].insurance + "']").prop("checked", "checked")
// 					$(this).find(":radio[name='carKey'][value='" + data.carMessageBeans[i].carKey + "']").prop("name", $(this).find(":radio[name='carKey'][value='" + data.carMessageBeans[i].carKey + "']").attr("name")+i)
// 					$(this).find(":radio[name='carKey"+i+"'][value='" + data.carMessageBeans[i].carKey + "']").prop("checked", "checked")
// 					$(this).find('#keyNum').html(data.carMessageBeans[i].carKeyNum+"把")
// 					$(this).find(":radio[name='carcertificate'][value='" + data.carMessageBeans[i].carCertificate + "']").prop("name", $(this).find(":radio[name='carcertificate'][value='" + data.carMessageBeans[i].carCertificate + "']").attr("name")+i)
// 					$(this).find(":radio[name='carcertificate"+i+"'][value='" + data.carMessageBeans[i].carCertificate + "']").prop("checked", "checked")
// 					$(this).find(":radio[name='commercial'][value='" + data.carMessageBeans[i].commercial + "']").prop("name", $(this).find(":radio[name='commercial'][value='" + data.carMessageBeans[i].commercial + "']").attr("name")+i)
// 					$(this).find(":radio[name='carlicense'][value='" + data.carMessageBeans[i].carLicense + "']").prop("name", $(this).find(":radio[name='carlicense'][value='" + data.carMessageBeans[i].carLicense + "']").attr("name")+i)
// 					$(this).find(":radio[name='carinvoice'][value='" + data.carMessageBeans[i].carInvoice + "']").prop("name", $(this).find(":radio[name='carinvoice'][value='" + data.carMessageBeans[i].carInvoice + "']").attr("name")+i)
// 					$(this).find(":radio[name='carpayment'][value='" + data.carMessageBeans[i].carPayment + "']").prop("name", $(this).find(":radio[name='carpayment'][value='" + data.carMessageBeans[i].carPayment + "']").attr("name")+i)
// 					$(this).find(":radio[name='carprove'][value='" + data.carMessageBeans[i].carProve + "']").prop("name",$(this).find(":radio[name='carprove'][value='" + data.carMessageBeans[i].carProve + "']").attr("name")+i)
					
// 					$(this).find(":radio[name='commercial"+i+"'][value='" + data.carMessageBeans[i].commercial + "']").prop("checked", "checked")
// 					$(this).find(":radio[name='carlicense"+i+"'][value='" + data.carMessageBeans[i].carLicense + "']").prop("checked", "checked")
// 					$(this).find(":radio[name='carinvoice"+i+"'][value='" + data.carMessageBeans[i].carInvoice + "']").prop("checked", "checked")
// 					$(this).find(":radio[name='carpayment"+i+"'][value='" + data.carMessageBeans[i].carPayment + "']").prop("checked", "checked")
// 					$(this).find(":radio[name='carprove"+i+"'][value='" + data.carMessageBeans[i].carProve + "']").prop("checked", "checked")
					
// 					var sss1 = $(this).find('.thingName');
// 					var sss2 = $(this).find('.thingNum');
// 					for(var j=0; j<data.carMessageBeans[i].carGoods.length; j++){
						
// 						sss1[j].value=data.carMessageBeans[i].carGoods[j].goodsName;
// 						sss2[j].value=data.carMessageBeans[i].carGoods[j].goodsNum;
// 					}
// 					i++;
// 				});
				
				//车辆信息附件
				for(var i=1; i<data.carMessageBeans.length;i++){
					$("#carTbody").after("<tbody>"+$("#carTbody").html()+"</tbody>");
				}
				i=0;
				$(".carAssessList").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.carAssessList);
					i++;
				});
				i=0;
				$(".carLicense").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.carLicense);
					i++;
				});
				i=0;
				$(".carPhoto").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.carPhoto);
					i++;
				});
				i=0;
				$(".carRegister").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.carRegister);
					i++;
				});
				i=0;
				$(".gutCommercial").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.gutCommercial);
					i++;
				});
				i=0;
				$(".gutCompulsory").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.gutCompulsory);
					i++;
				});
				i=0;
				$(".otherAttachments").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.otherAttachments);
					i++;
				});
				
			}
		})
		
	}
	show($("#contratId").val());
	function submit(isSubmit){
		
        console.info($(".isLoan :checked"));
        var knowLoan = "";
        $(".isLoan :checked").each(function(){
        	knowLoan+="knowLoan="+$(this).val()+"&";
        });
        console.info(knowLoan);
        console.info(conId);
        console.info($("#myform1").serialize());
        console.info($("#myform2").serialize());
        var data = knowLoan+conId+$("#myform1").serialize()+"&"+$("#myform2").serialize()+"&contractId="+1+"&isSubmit="+isSubmit;
        console.info(data);
		$.ajax({
        	type:"POST",
        	url:"../branch/saveBranch",
        	data:data,
        	async:true,
			success:function(meg){
				alert(meg);
			}
        }); 
	}
	
	$("#baocun").click(function(){
		submit(0);
	})
	$("#tijiao").click(function(){
		submit(1);
	})
	
	function show2(state){
		
		var backInfo = $("#backInfo").val();
		var map ={"backInfo":backInfo,"state":state,"contractId":1};
		console.info(map);
		
// 		var json = JSON.parse(map);
		$.ajax({
        	type:"POST",
        	url:"../branch/branchAudit",
        	data:map,
        	contentType:"application/json",
        	async:true,
			success:function(){
				
			}
				
        });
		
	}
	
	$("#getBackClientBase").click(function(){
		show2(0);
	})
	$("#getBackCarInfo").click(function(){
		show2(1);
	})
	
	
	/*function test(id) {
		alert(id)
		$(":radio[name='idcard'][value='" + '交付' + "']").prop("checked", "checked")
	}
	
	
	test(1);*/
	
	
	
	
})
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../commons.jsp"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>总公司信审</title>
 <style type="text/css">
	 .table{
		text-align: center;
		}
	.table th,table td{
		text-align: center;
	}
	.caption{
		text-align: center; 
		font-size: 15px;
	}
 </style>
</head>
<body>
<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：信审业务管理>总公司审核列表</font></div>
<div>
     
     <div>
    <div>

        <div>
            <input type="hidden" name="contractId" value="<%=request.getParameter("contractId")%>" id="contractId">
                <br/>
                <div style="float: right;">
					<input type="text" style="width: 300px;" placeholder="回退意见" id="backInfo" class="form-control">
				</div>
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
                        <td><select class="form-control" id="partner" onfocus="this.defaultIndex=this.selectedIndex;" onchange="this.selectedIndex=this.defaultIndex;">
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
                            <select class="info form-control" id="jobProperty" onfocus="this.defaultIndex=this.selectedIndex;" onchange="this.selectedIndex=this.defaultIndex;">
                                <option  value="私企">私企</option>
                                <option value="国企">国企</option>
                            </select>
                        </td>
                    </tr>
                </table>
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
                <div id="div">
                <div class="div">
	                <table id="tab4" class="table table-striped" >
	                <caption class="caption">车辆信息</caption>
	                    <tr>
	                        <td>机动车辆牌号</td>
	                        <td><input id="carplate" type="text"/></td>
	                        <td>厂牌型号</td>
	                        <td><input id="labeltype" type="text" /></td>
	                    </tr>
	                    <tr>
	                        <td>发动机号</td>
	                        <td><input id="carEvaluate" type="text" /></td>
	                        <td>颜色</td>
	                        <td><input id="carColor" type="text" /></td>
	                    </tr>
	                    <tr>
	                        <td>初次登记日期</td>
	                        <td><input id="firsttime" type="date" /></td>
	                        <td>年检有期限</td>
	                        <td><input id="yearvalidity" type="text" /></td>
	                    </tr>
	                     <tr>
	                        <td>车架号</td>
	                        <td><input type="text" id="chassisnum" /></td>
	                        <td>车辆评估价格</td>
	                        <td><input id="carPrice" type="text" /></td>
	                    </tr>
	                    <tr>
	                        <td>目前已行驶里程</td>
	                        <td><input id="currentTripNum" type="text" /></td>
	                        <td></td>
	                        <td></td>
	                    </tr>
	                    <tr>
	                        <td>身份证</td>
	                        <td>
			                    <input type="radio" name="idcard" value="0"/>未交付&nbsp;&nbsp;&nbsp;&nbsp;
			                    <input type="radio" name="idcard" value="1" />原件&nbsp;&nbsp;&nbsp;&nbsp;
			                    <input type="radio" name="idcard" value="2"/>复印件
	                        </td>
	                        <td>车辆购置证/发票</td>
	                        <td><input type="radio" name="carpurchase" value="1"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="carpurchase" value="0"/>未交付</td>
	                    </tr>
	                    <tr>
	                        <td>交强保险单</td>
	                        <td><input type="radio" name="insurance" value="1" />交付&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="insurance" value="0" />未交付</td>
	                        <td>车辆钥匙</td>
	                        <td><input type="radio" name="carKey" value="1"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="carKey" value="0"/>未交&nbsp;&nbsp;&nbsp;&nbsp;<label id="keyNum"></label>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>机动车登记证</td>
	                        <td><input type="radio" name="carcertificate" value="1"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="carcertificate" value="0"/>未交付</td>
	                        <td>商业保险单</td>
	                        <td><input type="radio" name="commercial" value="1" />交付&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="commercial" value="0" />未交付</td>
	                    </tr>
	                    <tr>
	                        <td>车辆行驶证</td>
	                        <td><input type="radio" name="carlicense" value="1" />交付&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="carlicense" value="0" >未交付</td>
	                        <td>车辆原始发票</td>
	                        <td><input type="radio" name="carinvoice" value="1"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="carinvoice" value="0" />未交付</td>
	                    </tr>
	                    <tr>
	                        <td>车辆完税证</td>
	                        <td><input type="radio" name="carpayment" value="1"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="carpayment" value="0"/>未交付</td>
	                        <td>进口车辆证明</td>
	                        <td><input type="radio" name="carprove" value="1"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
	                        <input type="radio" name="carprove" value="0"/>未交付</td>
	                    </tr>
	                </table>
	                <br/> <br/>
	                <table id="tab5" class="table table-striped">
	                <caption class="caption">车内物品清单</caption>
	                    <tr>
	                        <td>物品名称</td>
	                        <td><input id="thingName" class="thingName" style="width: 200px;"/></td>
	                        <td><input id="thingName1" class="thingName" style="width: 200px;"/></td>
	                        <td><input id="thingName2" class="thingName" style="width: 200px;"/></td>
	                        <td><input id="thingName3" class="thingName" style="width: 200px;"/></td>
	                    </tr>
	                    <tr>
	                        <td>物品数量</td>
	                        <td><input id="thingNum" class="thingNum" style="width: 200px;"/></td>
	                        <td><input id="thingNum1" class="thingNum" style="width: 200px;"/></td>
	                        <td><input id="thingNum2" class="thingNum" style="width: 200px;"/></td>
	                        <td><input id="thingNum3" class="thingNum" style="width: 200px;"/></td>
	                    </tr>
	                </table>
	               </div>
                </div>
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
                <table id="tab7" class="table table-striped">
                <caption class="caption">电话核查列表</caption>
                	<thead>
                		<tr>
                			<th>姓名</th><th>与客户关系</th><th>是否知晓贷款</th><th>联系电话</th><th>家庭住址</th>
                		</tr>
                	</thead>
                	<tbody id="tbody">
                		<tr id="trClass" style="text-align: center;">
                			<td><input class="conName" type="text"/> </td>
                			<td><input class="conRelation" type="text"/></td>
                			<td class="isLoan">
                				<input type="radio"  name="isLoan1" value="1"/>是&nbsp;&nbsp;&nbsp;&nbsp;
                				<input type="radio" checked="checked" name="isLoan1" value="0"/>否
                			</td>
                			<td>
                				<input type="text" class="conPhone" />
                			</td>
                			<td><input type="text" class="conAddress"/> </td>
                		</tr>
                	</tbody>
                </table>
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
                    
                    <form id="myform2">
                    <input type="hidden" id="adviceId" name="adviceId" value="0" />
                <table id="tab10" class="table table-striped" style="table-layout: fixed;">
                	<caption class="caption">综合意见</caption>
                    
                    <tr>
                        <td>产品类别<span style="color: red">*</span></td>
                        <td>
                            <select id="productCategory" name="productCategory" class="info form-control" class="noselect" id="productCategory">
                                <option  value="" style="display: none;">-请选择-</option>
                                <option  value="长期">长期</option>
                                <option  value="中期">中期</option>
                                <option  value="短期">段期</option>
                            </select>
                        </td>
                        <td>审批期数<span style="color: red">*</span></td>
                        <td>
                            <select id="approvalPeriod" name="approvalPeriod" class="info form-control" class="noselect" id="approvalPeriod">
                            	<option  value="" style="display: none;">-请选择-</option>
                            	<option  value="6">六期</option>
                            	<option  value="12">十二期</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>结论<span style="color: red">*</span></td>
                        <td>
                            <select id="conclusion" name="conclusion" class="info form-control" class="noselect" id="conclusion">
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
		                   <textarea id='branchOpinion' readonly="readonly" name="branchOpinion" style="width:100%;height: 80px;resize:none;">
		                   </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td style="line-height: normal;">总公司审核意见<span style="color: red">*</span></td>
                        <td colspan="3" style="text-align: center">
		                   <textarea id='headOpinion' name="branchOpinion" style="width:100%;height: 80px;resize:none;">
		                   </textarea>
                        </td>
                    </tr>
                    </table>
                    </form>
                    <center>
		                <button style="width: 150px;" id="baocun" type="button" class="btn btn-info" >保存</button>
		                <button style="width: 150px;" id="tijiao" type="button" class="btn btn-info" >提交</button>
		                <button style="width: 150px;" id="fanhui" type="button" class="btn btn-info" >返回</button>
		                <button style="width: 150px;" id="getBackClientBase" type="button" class="btn btn-info" >回退</button>
		            </center>
		        
            </div>
         </div>
     </div>

</div>
<script>
$("input").addClass("form-control");
$(":radio").removeClass("form-control");
$(":radio").css("text-align","left");

$("input").attr("readOnly",true);
$(":radio").attr("onclick","return false;");
$("#approvalQuota").removeAttr("readOnly");

var conId="";
var contractId=$("#contractId").val();

$(function(){
	function show(id) {
		$.ajax({
			type:"POST",
			url:"../branch/findAll",
			data:"id="+id,
			async:true,
			success:function(data){
				//data = JSON.parse(data);
				console.log(data);
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
				
				for(var i=1; i<data.carMessageBeans.length;i++){
					$("#div").after($("#div").html());
				}
				var i=0;
				$(".div").each(function(){
					$(this).find('#carplate').val(data.carMessageBeans[i].carPlate)
					$(this).find('#labeltype').val(data.carMessageBeans[i].labelType)
					$(this).find('#carEvaluate').val(data.carMessageBeans[i].engineno)
					$(this).find('#carColor').val(data.carMessageBeans[i].color)
					$(this).find('#firsttime').val(funDate(data.carMessageBeans[i].firstTime))
					$(this).find('#yearvalidity').val(data.carMessageBeans[i].yesrValidity)
					
					$(this).find('#chassisnum').val(data.carMessageBeans[i].chassisnum)
					$(this).find('#carPrice').val(data.carMessageBeans[i].carPrice)
					$(this).find('#currentTripNum').val(data.carMessageBeans[i].currentTripNum)
					
					$(this).find(":radio[name='idcard'][value='" + data.carMessageBeans[i].idcard + "']").prop("name", $(this).find(":radio[name='idcard'][value='" + data.carMessageBeans[i].idcard + "']").attr("name")+i)
					$(this).find(":radio[name='idcard"+i+"'][value='" + data.carMessageBeans[i].idcard + "']").prop("checked", "checked")
					$(this).find(":radio[name='carpurchase'][value='" + data.carMessageBeans[i].carPurchase + "']").prop("name",$(this).find(":radio[name='carpurchase'][value='" + data.carMessageBeans[i].carPurchase + "']").attr("name")+i)
					$(this).find(":radio[name='carpurchase"+i+"'][value='" + data.carMessageBeans[i].carPurchase + "']").prop("checked", "checked")
					$(this).find(":radio[name='insurance'][value='" + data.carMessageBeans[i].insurance + "']").prop("name", $(this).find(":radio[name='insurance'][value='" + data.carMessageBeans[i].insurance + "']").attr("name")+i)
					$(this).find(":radio[name='insurance"+i+"'][value='" + data.carMessageBeans[i].insurance + "']").prop("checked", "checked")
					$(this).find(":radio[name='carKey'][value='" + data.carMessageBeans[i].carKey + "']").prop("name", $(this).find(":radio[name='carKey'][value='" + data.carMessageBeans[i].carKey + "']").attr("name")+i)
					$(this).find(":radio[name='carKey"+i+"'][value='" + data.carMessageBeans[i].carKey + "']").prop("checked", "checked")
					$(this).find('#keyNum').html(data.carMessageBeans[i].carKeyNum+"把")
					$(this).find(":radio[name='carcertificate'][value='" + data.carMessageBeans[i].carCertificate + "']").prop("name", $(this).find(":radio[name='carcertificate'][value='" + data.carMessageBeans[i].carCertificate + "']").attr("name")+i)
					$(this).find(":radio[name='carcertificate"+i+"'][value='" + data.carMessageBeans[i].carCertificate + "']").prop("checked", "checked")
					$(this).find(":radio[name='commercial'][value='" + data.carMessageBeans[i].commercial + "']").prop("name", $(this).find(":radio[name='commercial'][value='" + data.carMessageBeans[i].commercial + "']").attr("name")+i)
					$(this).find(":radio[name='carlicense'][value='" + data.carMessageBeans[i].carLicense + "']").prop("name", $(this).find(":radio[name='carlicense'][value='" + data.carMessageBeans[i].carLicense + "']").attr("name")+i)
					$(this).find(":radio[name='carinvoice'][value='" + data.carMessageBeans[i].carInvoice + "']").prop("name", $(this).find(":radio[name='carinvoice'][value='" + data.carMessageBeans[i].carInvoice + "']").attr("name")+i)
					$(this).find(":radio[name='carpayment'][value='" + data.carMessageBeans[i].carPayment + "']").prop("name", $(this).find(":radio[name='carpayment'][value='" + data.carMessageBeans[i].carPayment + "']").attr("name")+i)
					$(this).find(":radio[name='carprove'][value='" + data.carMessageBeans[i].carProve + "']").prop("name",$(this).find(":radio[name='carprove'][value='" + data.carMessageBeans[i].carProve + "']").attr("name")+i)
					
					$(this).find(":radio[name='commercial"+i+"'][value='" + data.carMessageBeans[i].commercial + "']").prop("checked", "checked")
					$(this).find(":radio[name='carlicense"+i+"'][value='" + data.carMessageBeans[i].carLicense + "']").prop("checked", "checked")
					$(this).find(":radio[name='carinvoice"+i+"'][value='" + data.carMessageBeans[i].carInvoice + "']").prop("checked", "checked")
					$(this).find(":radio[name='carpayment"+i+"'][value='" + data.carMessageBeans[i].carPayment + "']").prop("checked", "checked")
					$(this).find(":radio[name='carprove"+i+"'][value='" + data.carMessageBeans[i].carProve + "']").prop("checked", "checked")
					
					var sss1 = $(this).find('.thingName');
					var sss2 = $(this).find('.thingNum');
					for(var j=0; j<data.carMessageBeans[i].carGoods.length; j++){
						
						sss1[j].value=data.carMessageBeans[i].carGoods[j].goodsName;
						sss2[j].value=data.carMessageBeans[i].carGoods[j].goodsNum;
					}
					i++;
				});
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
				//电话核查
				i=0;
				$(".conName").each(function(){
					$(this).val(data.userMessageBean.contactBean[i].contactName);
					i++;
				});
				i=0;
				$(".conRelation").each(function(){
					$(this).val(data.userMessageBean.contactBean[i].relation);
					i++;
				});
				i=0;
				$(".conPhone").each(function(){
					$(this).val(data.userMessageBean.contactBean[i].contactPhone);
					i++;
				});
				i=0;
				$(".conAddress").each(function(){
					$(this).val(data.userMessageBean.contactBean[i].contactAddress);
					i++;
				});
				i=0;
				$(".isLoan").each(function(){
					$(this).find(":radio[name='isLoan"+(i+1)+"'][value='" + data.userMessageBean.contactBean[i].knowLoan + "']").prop("checked", "checked")
					i++;
				});
				//基本信息附件
				$("#atherAdjunct").html(data.userMessageBean.userAdjunctBean.atherAdjunct);
				$("#carLoanFrom").html(data.userMessageBean.userAdjunctBean.carLoanFrom);
				$("#idcard").html(data.userMessageBean.userAdjunctBean.idcard);
				//车辆附件
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
				//综合意见
				$("#adviceId").val(data.adviceBean.id);
				$("#approvalPeriod [value='"+data.adviceBean.approvalPeriod+"']").attr("selected","selected");
				$("#conclusion [value='"+data.adviceBean.conclusion+"']").attr("selected","selected");
				$("#productCategory [value='"+data.adviceBean.productCategory+"']").attr("selected","selected");
				$("#approvalQuota").val(data.adviceBean.approvalQuota);
				$("#branchOpinion").val(data.adviceBean.branchOpinion);
				$("#headOpinion").val(data.adviceBean.headOpinion);
				
			}
		})
		
	}
	show(contractId);
	function submit(isSubmit){
        var data = $("#myform2").serialize()+"&contractId="+contractId+"&isSubmit="+isSubmit;
        console.info(data);
		$.ajax({
        	type:"POST",
        	url:"../head/saveHead",
        	data:data,
        	async:true,
			success:function(data){
				var str="";
		    	if(data||data=="true"){
		    		str="操作成功！";
					$("#ifrom").load('headcompany/headCompany.jsp');
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
	}
	
	$("#baocun").click(function(){
		submit(0);
	})
	$("#tijiao").click(function(){
		submit(1);
	})
	$("#getBackClientBase").click(function(){
		var backInfo = $("#backInfo").val();
		$.ajax({
        	type:"POST",
        	url:"../head/return",
        	data:"contractId="+contractId+"&advice="+backInfo,
        	async:true,
			success:function(data){
				var str="";
		    	if(data||data=="true"){
		    		str="操作成功！";
					$("#ifrom").load('headcompany/headCompany.jsp');
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
	})
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
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>详细信息</title>
<!-- <link rel="stylesheet" type="text/css" href="static/bootstrap/css/bootstrap.min.css"> -->
<!-- <script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script> -->
<!-- <link rel="stylesheet" type="text/css" href="static/easyui/themes/default/easyui.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="static/easyui/themes/icon.css"> -->
<!-- <script type="text/javascript" src="static/easyui/jquery.min.js"></script> -->

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
<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷管理>车贷放款</font></div>

   <div style="margin-top: 10px">
   		<table class="table table-striped" style="width: 100%;">
   			<caption class="caption">个人基本信息</caption>
                    <tr>
                        <td>申请人姓名</td>
                        <td><input id="clientName" type="text" class="form-control"/></td>
                        <td>身份证号码</td>
                        <td><input id="idCardNum" type="text" class="form-control"/></td>
                    </tr>
                    <tr>
                        <td>最高学历</td>
                        <td><input id="education" type="text" class="form-control"/></td>
                        <td>申请人手机号码</td>
                        <td><input id="tel" type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>户籍地址</td>
                        <td><input id="clientAddress" type="text" class="form-control" /></td>
                        <td>申请人电话号码</td>
                        <td><input id="phone" type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>婚姻状况</td>
                        <td><input type="text" class="form-control" /></td>
                        <td>有无子女</td>
                        <td><input type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>房产状况</td>
                        <td><input type="text" class="form-control" /></td>
                        <td>共有居住者</td>
                        <td><select class="form-control">
                        		<option value="" style="display: none;">-请选择-</option>
								<option value="配偶">配偶</option>
								<option value="子女">子女</option>
							</select></td>
                    </tr>
                    <tr>
                    	<td>现住址</td>
                        <td><input type="text" class="form-control" /></td>
                        <td>客户类型</td>
                        <td><input id="producType" type="text" class="form-control" /></td>
                    </tr>
   		</table>
   		<table class="table table-striped" style="width: 100%;">
   			<caption class="caption">工作信息</caption>
                	<tr>
                        <td>工作单位全称</td>
                        <td><input id="jobName" type="text" class="form-control" /></td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td>工作单位地址</td>
                        <td><input id="jobAddress" type="text" class="form-control" /></td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td>单位电话</td>
                        <td><input id="jobTel" type="text" class="form-control" /></td>
                        <td>邮政编码</td>
                        <td><input id="postCode" type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>进入该单位时间</td>
                        <td><input id="joinTime" type="text" class="form-control" /></td>
                        <td>所在部门</td>
                        <td><input id="Department" type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>担任职务</td>
                        <td><input id="fillPost" type="text" class="form-control" /></td>
                        <td>公司规模</td>
                        <td><input id="scaleCompany" type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>行业类别</td>
                        <td><input id="industryCategory" type="text" class="form-control" /></td>
                        <td>单位性质</td>
                        <td>
                            <select class="info form-control" id="jobProperty" >
                                <option  value="私企">私企</option>
                                <option value="国企">国企</option>
                            </select>
                        </td>
                    </tr>
   		</table>
   		<table class="table table-striped" style="width: 100%;">
   		<caption class="caption">资产信息</caption>
   			<tr>
   				<td>有无房产<span style="color: red">*</span></td>
   				<td><input type="text" class="form-control" /></td>
   				<td>有无房贷<span style="color: red">*</span></td>
   				<td><input type="text" class="form-control" /></td>
   			</tr>
   			<tr>
   				<td>有无车产<span style="color: red">*</span></td>
   				<td><input type="text" class="form-control" /></td>
   				<td>有无房贷<span style="color: red">*</span></td>
   				<td><input type="text" class="form-control" /></td>
   			</tr>
   		</table>
   		<table class="table table-striped" style="width: 100%;">
   		<caption class="caption">信用信息</caption>
                     <tr>
                        <td>信用卡、贷款最大逾期状况（24个月内）</td>
                        <td><input id="" type="text" class="form-control" /></td>
                        <td>信用卡、贷款最大逾期状况*（24个月内）</td>
                        <td><input id="" type="text" class="form-control" /></td>
                    </tr>
					<tr>
                        <td>信用卡额度使用率</td>
                        <td><input id="" type="text" class="form-control" /></td>
                        <td>信用卡、审批查询次数（6个月内）</td>
                        <td><input id="" type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>有无其他信用贷款</td>
                        <td><input id="" type="text" class="form-control" /></td>
                        <td>有无信用卡）</td>
                        <td><input id="" type="text" class="form-control"/></td>
                    </tr>
   		</table>
   		<table class="table table-striped" style="width: 100%;">
   		<caption class="caption">家庭联系人信息</caption>
   		
   			<tr>
   				<td>姓名：</td>
   				<td><input type="text" class="form-control" /></td>
   				<td>联系人电话：</td>
   				<td><input type="text" class="form-control" /></td>
   			</tr>
   			<tr>
   				<td>联系人类型：</td>
   				<td><input type="text" class="form-control" /></td>
   				<td>和本人关系：</td>
   				<td><select class="form-control" id="" >
   						<option  value="" style="display: none;">-请选择-</option>
                        <option  value="亲属">亲属</option>
                        <option value="朋友">朋友</option>
                    </select> </td>
   			</tr>
   			<tr>
   				<td>单位名称：</td>
   				<td><input type="text" class="form-control" /></td>
   				<td></td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>家庭住址/单位地址：</td>
   				<td><input type="text" class="form-control"/></td>
   				<td></td>
   				<td></td>
   			</tr>
   		</table>
   		<table class="table table-striped" style="width: 100%;">
   		<caption class="caption">紧急联系人信息</caption>
   		
   			<tr>
   				<td>姓名：</td>
   				<td><input type="text" class="form-control" /></td>
   				<td>联系人电话：</td>
   				<td><input type="text" class="form-control" /></td>
   			</tr>
   			<tr>
   				<td>联系人类型：</td>
   				<td><input type="text" class="form-control" /></td>
   				<td>和本人关系：</td>
   				<td><select class="form-control" id="" >
   						<option  value="" style="display: none;">-请选择-</option>
                        <option  value="亲属">亲属</option>
                        <option value="朋友">朋友</option>
                    </select> </td>
   			</tr>
   			<tr>
   				<td>单位名称：</td>
   				<td><input type="text" class="form-control" /></td>
   				<td></td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>家庭住址/单位地址：</td>
   				<td><input type="text" class="form-control"/></td>
   				<td></td>
   				<td></td>
   			</tr>
   		</table>
   		<table class="table table-striped" style="width: 100%;">
   			<caption class="caption">借款需求</caption>
                    <tr>
                        <td>贷款详细用途</td>
                        <td><input id="userFor" type="text" class="form-control" /></td>
                        <td>月收入</td>
                        <td><input id="income" type="text" class="form-control" ></td>
                    </tr>
                    <tr>
                        <td>可以承受的月还款额</td>
                        <td><input id="repayment" type="text" class="form-control" /></td>
                        <td>希望申请最长还款期限</td>
                        <td><input id="maxdeadline" type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>希望申请借款额度(最低)</td>
                        <td><input id="minlimit" type="text" class="form-control" /></td>
                        <td>希望申请借款额度(最高)</td>
                        <td><input id="maxlimit" type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>你从何处得知橘子车贷</td>
                        <td><input id="channel" type="text" class="form-control" /></td>
                        <td>申请日期</td>
                        <td><input id="applydate" type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>业务员姓名</td>
                        <td><input id="Salename" type="text" class="form-control" /></td>
                        <td>贷款专员</td>
                        <td><input id="commissioner" type="text" class="form-control" /></td>
                    </tr>
   		</table>
   		<table class="table table-striped" style="width: 100%;">
   		<caption class="caption">签约信息</caption>
   			<tr>
   				<td>借款总额：</td>
   				<td><input type="text" class="form-control"/></td>
   				<td>咨询服务费：</td>
   				<td><input type="text" class="form-control"/></td>
   			</tr>
   			<tr>
   				<td>月还款额：</td>
   				<td><input type="text" class="form-control" /></td>
   				<td>贷款期数：</td>
   				<td><input type="text" class="form-control" /></td>
   			</tr>
   			<tr>
   				<td>产品名称：</td>
   				<td><input type="text" class="form-control" /></td>
   				<td>审批金额：</td>
   				<td><input type="text" class="form-control" /></td>
   			</tr>
   			<tr>
   				<td>约定放款日：</td>
   				<td><input type="text" class="form-control" /></td>
   				<td>放款、还款银行：</td>
   				<td><input type="text" class="form-control" /></td>
   			</tr>
   			<tr>
   				<td>放款还款账号：</td>
   				<td><input type="text" class="form-control" /></td>
   				<td>放款/还款开户银行（支行）：</td>
   				<td><input type="text" class="form-control" /></td>
   			</tr>
   		</table>
   		 <table class="table table-striped" style="table-layout: fixed;">
                	<caption class="caption">综合意见</caption>
                    
                    <tr>
                        <td>产品类别<span style="color: red">*</span></td>
                        <td>
                            <select class="info form-control" id="productCategory" >
                                <option  value="" style="display: none;">-请选择-</option>
                            </select>
                        </td>
                        <td>审批期数<span style="color: red">*</span></td>
                        <td>
                            <select class="info form-control" id="approvalPeriod" >
                            	<option  value="" style="display: none;">-请选择-</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>结论<span style="color: red">*</span></td>
                        <td>
                            <select class="info form-control" id="conclusion" >
                                <option  value="" style="display: none;">-请选择-</option>
                            </select>
                        </td>
                        <td>审批额度<span style="color: red">*</span></td>
                        <td><input id="approvalQuota" type="text" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td style="line-height: normal;">分公司初审意见<span style="color: red">*</span></td>
                        <td colspan="3" style="text-align: center">
                   <textarea id='firstComment' style="width:100%;height: 50%">
                   </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td style="line-height: normal;">总公司审核意见<span style="color: red">*</span></td>
                        <td colspan="3" style="text-align: center">
                   <textarea id='firstComment' style="width:100%;height: 50%">
                   </textarea>
                        </td>
                    </tr>
                    </table>
   		<table class="table table-striped" style="table-layout: fixed;">
       			<caption class="caption">基本信息附件列表</caption>
                    <tr>
                        <td>身份证（原件）</td>
                        <td><span>附件1</span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td>附件大小</td>
                        <td><span>&nbsp;</span></td>
                    </tr>
                   <tr>
                        <td>信用卡额度使用率</td>
                        <td><span>附件2</span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td>附件大小</td>
                        <td><span>&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td>有无其他信用贷款</td>
                        <td><span>附件3</span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td>附件大小</td>
                        <td><span>&nbsp;</span></td>
                    </tr>
                    </table>
     			    <table class="table table-striped" style="table-layout: fixed;">
     			    <caption class="caption">车辆信息附件列表</caption>
                    <tr>
                        <td>抵押车辆评估表</td>
                        <td><span>附件1</span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td>附件大小</td>
                        <td><span>&nbsp;</span></td>
                    </tr>
                    <tr>
                    	<td>车辆照片</td>
                        <td><span>附件2</span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td>附件大小</td>
                        <td><span>&nbsp;</span></td>
                    </tr>
                    <tr>
                    	<td>车辆登记证书(原件)</td>
                        <td><span>附件3</span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td>附件大小</td>
                        <td><span>&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td>车辆行驶证正副本(原件)</td>
                        <td><span>附件4</span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td>附件大小</td>
                        <td><span>&nbsp;</span></td>
                    </tr>
                     <tr>
                        <td>保单(交强险)</td>
                        <td><span>附件5</span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td>附件大小</td>
                        <td><span>&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td>保单(商业险)</td>
                        <td><span>附件6</span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td>附件大小</td>
                        <td><span>&nbsp;</span></td>
                    </tr>
                    <tr>
                        <td>其他车辆附件</td>
                        <td><span>附件7</span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td>附件大小</td>
                        <td><span>&nbsp;</span></td>
                    </tr>
              </table>
   		<table class="table" style="width: 100%;table-layout: fixed;">
   		<caption class="caption">签约附件列表</caption>
   			<tr class="warning">
	            <td>银行卡<font size="3" color="red">*</font></td>
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td>
	        </tr>
   			<tr class="warning">
	            <td>机打申请表片<font size="3" color="red">*</font></td>
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
   			<tr class="warning">
	            <td>小额借款服务合同<font size="3" color="red">*</font></td>
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td>
	        </tr>
   			<tr class="warning">
	            <td>收款扣款委托书<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
   			<tr class="warning">
	            <td>授权委托书<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
   			<tr class="warning">
	            <td>还款计划表<font size="3" color="red">*</font></td>
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
   			<tr class="warning">
	            <td>补充协议<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
   			<tr class="warning">
	            <td>车辆买卖回购合同<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
   			<tr class="warning">
	            <td>授权委托书（车辆处理使用）<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
   			<tr class="warning">
	            <td>车辆抵押照片<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
   			<tr class="warning">
	            <td>车辆入库照片</td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="下载"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
   		</table>
   		<center>
   			<button style="width:120px;" type="button" class="btn btn-info" >返回</button>
   		</center>
   		<br>
   </div>
<script>
// $("input").addClass("form-control");
</script>
</body>
<!--  -->
</html>
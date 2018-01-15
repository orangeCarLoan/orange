<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>详细信息</title>
<link rel="stylesheet" type="text/css" href="static/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="static/easyui/themes/icon.css">
<script type="text/javascript" src="static/easyui/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="static/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script>


<style type="text/css">

</style>
</head>
<body>

   <div style="margin-top: 70px">
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   			<tr >
   				<th colspan="4" style="text-align: center;" >个人基本信息</th>
   			</tr>
   			<tr>
   				<td>申请人姓名：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>身份证号码：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>最高学历：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>申请人手机号码：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>户籍地址：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>申请人电话号码：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>婚姻状况：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>有无子女：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>房产状况：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>共同居住者：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>现住址：</td>
   				<td><input type="text" width="50px"/></td>
   				<td></td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>客户类型：</td>
   				<td><input type="text" width="50px"/></td>
   				<td></td>
   				<td></td>
   			</tr>
   			
   		</table>
   		<br>
   		<br>
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   		<thead>
   			<tr>
   				<th colspan="4" style="text-align: center;">工作信息</th>
   			</tr>
   			</thead>
   			<tbody>
   			<tr>
   				<td>工作单位全称：</td>
   				<td><input type="text" width="50px"/></td>
   				<td></td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>工作单位地址：</td>
   				<td><input type="text" width="50px"/></td>
   				<td></td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>单位电话：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>邮政编码：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>进入该单位时间：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>所在部门：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>担任职务：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>公司规模：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>行业类别：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>单位性质</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>申请人姓名：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>飒飒</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			</tbody>
   		</table>
   		<br>
   		<br>
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   		<thead>
   			<tr>
   				<th colspan="4" style="text-align: center;">资产信息</th>
   			</tr>
   			</thead>
   			<tbody>
   			<tr>
   				<td>有无房产*：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>有无房贷*：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>有无车产*：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>有无房贷*：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			</tbody>
   		</table>
   		<br>
   		<br>
   		
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   		<thead>
   			<tr>
   				<th colspan="4" style="text-align: center;">信用信息</th>
   			</tr>
   			</thead>
   			<tbody>
   			<tr>
   				<td>信用卡、贷款最大逾期状况（24个月内）：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>信用卡、贷款最大逾期状况*（24个月内）：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>信用卡额度使用率：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>信用卡、审批查询次数（6个月内）：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>有无其他信用贷款：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>有无信用卡：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			</tbody>
   		</table>
   		<br>
   		<br>
   		
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   		<thead>
   			<tr>
   				<th colspan="4" style="text-align: center;">家庭联系人信息</th>
   			</tr>
   			</thead>
   			<tbody>
   			<tr>
   				<td>姓名：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>联系人电话：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>联系人类型：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>和本人关系：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>单位名称：</td>
   				<td><input type="text" width="50px"/></td>
   				<td></td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>家庭住址/单位地址：</td>
   				<td><input type="text" width="50px"/></td>
   				<td></td>
   				<td></td>
   			</tr>
   			</tbody>
   		</table>
   		<br>
   		<br>
   		
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   		<thead>
   			<tr>
   				<th colspan="4" style="text-align: center;">紧急联系人信息</th>
   			</tr>
   			</thead>
   			<tbody>
   			<tr>
   				<td>姓名：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>联系人电话：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>联系人类型：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>和本人关系：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>单位名称：</td>
   				<td><input type="text" width="50px"/></td>
   				<td></td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>家庭住址/单位地址：</td>
   				<td><input type="text" width="50px"/></td>
   				<td></td>
   				<td></td>
   			</tr>
   			</tbody>
   		</table>
   		<br>
   		<br>
   		
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   			<tr >
   				<th colspan="4" style="text-align: center;" >借款需求</th>
   			</tr>
   			<tr>
   				<td>借款详细用途：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>月收入：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>可以承受的月还款额：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>希望申请最长还款期限：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>希望申请借款额度：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>希望申请借款额度：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>您从何得知正和普惠：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>申请日期：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>业务员姓名：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>车贷专员：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   		</table>
   		<br>
   		<br>
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   			<tr >
   				<th colspan="4" style="text-align: center;" >签约信息</th>
   			</tr>
   			<tr>
   				<td>借款总额：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>咨询服务费：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>月还款额：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>贷款期数：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>产品名称：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>审批金额：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>约定放款日：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>放款、还款银行：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   			<tr>
   				<td>放款还款账号：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>放款/还款开户银行（支行）：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   		
   			
   		</table>
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   		<tr >
   				<th colspan="4" style="text-align: center;" >综合意见</th>
   			</tr>
   		<tbody>
   		<tr>
   				<td>产品类别*：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>审批期数*：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr><tr>
   				<td>结论*：</td>
   				<td><input type="text" width="50px"/></td>
   				<td>审批额度*：</td>
   				<td><input type="text" width="50px"/></td>
   			</tr>
   				<tr style="height:80px;width:100%;">
   				<td style="line-height: 80px;float: right;">分公司初审意见：</td>
   				<td><textarea rows="4"  cols="100"></textarea></td>
   			     </tr>
   			<tr style="height:80px;width:100%;">
   				<td style="line-height: 80px;float: right;">总公司审核意见：</td>
   				<td><textarea rows="4"  cols="100"></textarea></td>
   			     </tr>
   			</tbody>
   		</table>
   		<br>
   		<br>
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   		<thead>
   			<tr>
   				<th colspan="4" style="text-align: center;">基本信息附件列表</th>
   			</tr>
   			</thead>
   			<tbody>
   			<tr>
   				<td>身份证（原件）：</td>
   				<td>附件1<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>信用卡额度使用率：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>有无其他信用贷款：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			</tbody>
   		</table>
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   		<thead>
   			<tr>
   				<th colspan="4" style="text-align: center;">车辆信息附件列表</th>
   			</tr>
   			</thead>
   			<tbody>
   			<tr>
   				<td>抵押车辆评估表：</td>
   				<td>附件1<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>车辆照片：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>车辆登记证书（原件）：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>车辆行驶证正副本（原件）：</td>
   				<td>附件1<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>保单（交强险）：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>保单（商业险）：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>其他车辆附件：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			</tbody>
   		</table>
   		<br>
   		
   		<table class="table table-striped" style="width: 100%;font-size:15px;text-align: center;">
   		<thead>
   			<tr>
   				<th colspan="4" style="text-align: center;">签约附件列表</th>
   			</tr>
   			</thead>
   			<tbody style="background-color: rgb(255,255,0);">
   			<tr>
   				<td>银行卡*：</td>
   				<td>附件1<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>机打申请表片*：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>小额借款服务合同*：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>授权扣款委托书*：</td>
   				<td>附件1<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>授权委托书*：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>还款计划表*：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>补充协议*：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>车辆买卖回购合同*：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			<tr>
   				<td>授权委托书(车辆处理使用)*：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr><tr>
   				<td>车辆抵押照片*：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr><tr>
   				<td>车辆入库照片：</td>
   				<td>附件3<button>下载</button></td>
   				<td>附件大小：</td>
   				<td></td>
   			</tr>
   			</tbody>
   		</table>
   		<button>返回</button>
   </div>


</body>
<!--  -->
</html>
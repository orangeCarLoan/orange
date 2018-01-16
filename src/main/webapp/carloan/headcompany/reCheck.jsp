<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>车贷签约复核</title>

<link rel="stylesheet" type="text/css" href="static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="static/easyui/themes/default/easyui.css">
<!-- <script src="../static/js/jQuery-2.2.2-min.js"></script> -->
<script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script>
<!-- <script type="text/javascript" src="../static/easyui/jquery.easyui.min.js"></script> -->

</head>
<body>
<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷管理>车贷签约复核</font></div>
		<form action="#">
		<div style="float: right;">
			<input type="text" style="width: 300px;" placeholder="回退意见" class="form-control"><br/><br/>
		</div>
			<table id="tab" class="table table-striped" style="width: 1000px;">
				<caption style="text-align: center;font-size: 15px;">借贷人基本信息</caption>
				<tbody>
				<style>
				
				#tab td:nth-child(2n+1){
				
				    width:15%;
				}
				#tab td:nth-child(2n){
				
				    width:35%;
				}
				
				</style>
					<tr>
						<td>借款合同编号</td>
						<td></td>
						<td>借款人</td>
						<td></td>
					</tr>
					<tr>
						<td>身份证号</td>
						<td></td>
						<td>借款人手机</td>
						<td></td>
					</tr>
					<tr>
						<td>业务经理</td>
						<td></td>
						<td>借款用途</td>
						<td></td>
					</tr>

					<tr>
						<td>职务</td>
						<td></td>
						<td>所属分公司</td>
						<td></td>
					</tr>

                    <tr>
						<td>产品类别</td>
						<td></td>
						<td>审批额度</td>
						<td></td>
					</tr>
					<tr>
						<td>期数</td>
						<td></td>
						<td>产品名称</td>
						<td></td>
					</tr>
					<tr>
						<td style="width:100px">审查意见</td>
						<td colspan="3"><textarea rows="" cols="" style="width:85%;height: 100px"></textarea></td>						
					</tr>
					
					
				</tbody>

			</table>
			

			
			<table id="tab" class="table table-striped" style="width: 1000px;table-layout: fixed;">
				<caption style="text-align: center;font-size: 15px;">基本信息附件列表</caption>

				<tbody>

					<tr>
						<td>身份证（原件）</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
	            		<td><span>&nbsp;</span></td>
					</tr>

					<tr>
						<td>信用卡额度使用率</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>


                    <tr>
						<td>有无其他信用贷款</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>					

				</tbody>

			</table>
			
			<table id="tab" class="table table-striped" style="width: 1000px;table-layout: fixed;">
				<caption style="text-align: center;font-size: 15px;">车辆信息附件列表</caption>

				<tbody>

					<tr>
						<td>抵押车辆评估表</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
	            		<td><span>&nbsp;</span></td>
					</tr>

					<tr>
						<td>车辆照片</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>


                    <tr>
						<td>车辆登记证书（原件）</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>
					<tr>
						<td>车辆行驶证正副本（原件）</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>
					<tr>
						<td>保单（交强险）</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>
					<tr>
						<td>保单（商业险）</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>
					<tr>
						<td>其它车辆附件</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>

				</tbody>

			</table>
			
			
			<table id="tab" class="table table-striped" style="width: 1000px;table-layout: fixed;">
				<caption style="text-align: center;font-size: 15px;">签约附件列表</caption>

				<tbody>

					<tr>
						<td>银行卡</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
	            		<td><span>&nbsp;</span></td>
					</tr>

					<tr>
						<td>机打申请表卡</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>


                    <tr>
						<td>小额借款服务合同</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>	
					
					<tr>
						<td>授权扣款委托书</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>	
					<tr>
						<td>授权委托书</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>	
					<tr>
						<td>还款计划表</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>	
					<tr>
						<td>补充协议</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>	
					<tr>
						<td>车辆买卖回购合同</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>	
					<tr>
						<td>授权委托书（车辆处理使用）</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>	
					<tr>
						<td>车辆抵押照片</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>	
					<tr>
						<td>车辆入库照片</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>					

				</tbody>

			</table>
			
		</form>
		
			<center>
				<button id="" class="btn btn-info" style="width: 120px;">保存</button>
				<button id="" class="btn btn-info" style="width: 120px;">提交</button>
				<button id="" class="btn btn-info" style="width: 120px;">返回</button>
				<button id="" class="btn btn-info" style="width: 120px;">回退</button>
			</center>
</body>
</html>
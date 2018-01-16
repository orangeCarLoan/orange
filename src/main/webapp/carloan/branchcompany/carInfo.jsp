<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>车辆信息</title>

<link rel="stylesheet" type="text/css" href="static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="static/easyui/themes/default/easyui.css">
<!-- <script src="../static/js/jQuery-2.2.2-min.js"></script> -->
<script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script>
<!-- <script type="text/javascript" src="../static/easyui/jquery.easyui.min.js"></script> -->

</head>
<body>
<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷管理>车贷申请信息录入>车辆信息录入</font></div>
		<h1>车辆信息</h1>
		<form action="#">
		<div style="float: right;">
			<input type="text" style="width: 300px;" placeholder="回退意见" class="form-control"><br/><br/>
		</div>
			<table id="tab" class="table table-striped" style="width: 1000px;">
				<caption style="text-align: center;font-size: 15px;">车辆信息</caption>
				<tbody>
					<tr>
						<td>机动车辆号牌</td>
						<td><input type="text" class="form-control"/></td>
						<td>厂牌型号</td>
						<td><input type="text" class="form-control"/></td>
					</tr>
					<tr>
						<td>发动机号</td>
						<td><input type="text" class="form-control"/></td>
						<td>颜色</td>
						<td><input type="text" class="form-control"/></td>
					</tr>
					<tr>
						<td>初次登陆日期</td>
						<td><input type="text" class="form-control"/></td>
						<td>年检有限期</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>车架号</td>
						<td><input type="text" class="form-control"/></td>
						<td>车辆评估价格</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>目前已行驶里程数</td>
						<td><input type="text" class="form-control"/></td>
						<td> </td>
						<td>							
						</td>
					</tr>
<style>
   label {
         font-size: 14px;
         font-weight: normal;
         color: #333;
         margin-left: 10px;
   }

</style>
					<tr>
						<td>身份证</td>
						<td>
						     <label >
                                <input type="radio" name="options" id="option1">交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">未交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">原件
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">复印件
                             </label>
                        </td>
						<td>车辆购置证/发票</td>
						<td>
						     <label >
                                <input type="radio" name="options" id="option1">交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">未交付
                             </label>
						</td>
					</tr>
                    <tr>
						<td>交强保险单</td>
						<td>
						     <label >
                                <input type="radio" name="options" id="option1">交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">未交付
                             </label>
                        </td>
						<td>车辆钥匙</td>
						<td>
						     <label >
                                <input type="radio" name="options" id="option1">交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">未交付
                             </label>
                             <input type="text" class="form-control" style="width:50px;display:inline-block;"/>把
						</td>
					</tr>
					<tr>
						<td>机动车登记证</td>
						<td>
						
						     <label >
                                <input type="radio" name="options" id="option1">交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">未交付
                             </label>
						</td>
						<td>商业保险单</td>
						<td>
						
						     <label >
                                <input type="radio" name="options" id="option1">交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">未交付
                             </label>
						</td>
					</tr>
					<tr>
						<td>车辆行驶证</td>
						<td>
						     <label >
                                <input type="radio" name="options" id="option1">交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">未交付
                             </label>
						
						</td>
						<td>车辆原始发票</td>
						<td>
						
						      <label >
                                <input type="radio" name="options" id="option1">交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">未交付
                             </label>
						</td>
					</tr>
					
					<tr>
						<td>车辆完税证</td>
						<td>
						
						      <label >
                                <input type="radio" name="options" id="option1">交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">未交付
                             </label>
						</td>
						<td>进口车辆证明</td>
						<td>
						
						      <label >
                                <input type="radio" name="options" id="option1">交付
                             </label>
                             <label >
                                <input type="radio" name="options" id="option1">未交付
                             </label>
						</td>
					</tr>
				</tbody>

			</table>

			<table id="tab" class="table table-striped" style="width: 1000px;">
			<caption style="text-align: center;font-size: 15px;">车内物品详单</caption>

				<tbody>

					<tr>
						<td>物品名称</td>
						<td><input type="text" class="form-control"/></td>
						<td><input type="text" class="form-control"/></td>
						<td><input type="text" class="form-control"/></td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>物品数量</td>
						<td><input type="text" class="form-control"/></td>
						<td><input type="text" class="form-control"/></td>
						<td><input type="text" class="form-control"/></td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					

					

				</tbody>

			</table>

			
			<table id="tab" class="table table-striped" style="width: 1000px;table-layout: fixed;">
				<caption style="text-align: center;font-size: 15px;">附件列表</caption>

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
		</form>
		
			<center>
				<button id="" class="btn btn-info" style="width: 120px;">保存</button>
				<button id="" class="btn btn-info" style="width: 120px;">提交</button>
				<button id="" class="btn btn-info" style="width: 120px;">返回</button>
				<button id="" class="btn btn-info" style="width: 120px;">回退</button>
			</center>
</body>
</html>
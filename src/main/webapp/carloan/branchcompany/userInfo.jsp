<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户基本信息</title>
<script>
	$("select").addClass("form-control");
	
	$(document).ready(function(){
		  $("#add").click(function(){
		    $("#btns").before($("#div").html());
		  });
		  $("#del").click(function(){
			    var s = $(".xxx");
			    if(s.length>1){
			    	s[s.length-1].remove(); 
			    }else{
			    	 console.info("xxxxxxxxxxxxx")
			    }
			  });
		});

</script>

		<style type="text/css">
			.select{
				width: 100%;
			}
			#tab {
				margin: auto;
			}
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
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷录入>客户基本信息录入</font></div>
		<h1>客户基本信息</h1>
		<form action="#">
		<div style="float: right;">
			<input type="text" style="width: 300px;" placeholder="回退意见" class="form-control"><br/><br/>
		</div>
			<table id="tab" class="table table-striped" style="width: 1000px;">
				<caption style="text-align: center;font-size: 15px;">个人基本信息</caption>
				<tbody>
					<tr>
						<td>申请人姓名</td>
						<td><input type="text" class="form-control"/></td>
						<td>身份证号码</td>
						<td><input type="text" class="form-control"/></td>
					</tr>
					<tr>
						<td>最高学历</td>
						<td>
							<select>
								<option/>博士
								<option/>硕士</select>
						</td>
						<td>申请人手机号码</td>
						<td><input type="text" class="form-control"/></td>
					</tr>
					<tr>
						<td>户籍信息</td>
						<td><input type="text" class="form-control"/></td>
						<td>申请人电话号码</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>婚姻状况</td>
						<td><input type="text" class="form-control"/></td>
						<td>有无子女</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>房产状况</td>
						<td><input type="text" class="form-control"/></td>
						<td>共同居住者</td>
						<td>
							<select>
								<option/>配偶及子女
								<option/>其它</select>
						</td>
					</tr>

					<tr>
						<td>现住址</td>
						<td><input type="text" class="form-control"/></td>
						<td>客户类型</td>
						<td>
							<select>
								<option>工薪人士</option>
								<option>其它</option>
							</select>
						</td>
					</tr>

				</tbody>

			</table>

			<table id="tab" class="table table-striped" style="width: 1000px;">
			<caption style="text-align: center;font-size: 15px;">工作信息</caption>

				<tbody>

					<tr>
						<td>工作单位全称</td>
						<td><input type="text" class="form-control"/></td>
						<td>工作单位地址</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>单位电话</td>
						<td><input type="text" class="form-control"/></td>
						<td>邮政编码</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>进入该单位时间</td>
						<td><input type="date" class="form-control"/></td>
						<td>所在部门</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>担任职务</td>
						<td><input type="text" class="form-control"/></td>
						<td>公司规模</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>行业类别</td>
						<td><input type="text" class="form-control"/></td>
						<td>单位性质</td>
						<td>
							<select>
								<option/>个体户
								<option/>其它</select>
						</td>
					</tr>

				</tbody>

			</table>

			<table id="tab" class="table table-striped" style="width: 1000px;">
			<caption style="text-align: center;font-size: 15px;">借款需求</caption>
				<tbody>

					<tr>
						<td>借款详细用途</td>
						<td><input type="text" class="form-control"/></td>
						<td>月收入</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>可承受的月还款额</td>
						<td><input type="text" class="form-control"/></td>
						<td>希望申请最长还款期限</td>
						<td>
							<select>
								<option/>十二个月
								<option/>其它</select>
						</td>
					</tr>

					<tr>
						<td>希望申请还款额度</td>
						<td><input type="text" class="form-control"/></td>
						<td>希望申请借款额度</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>您从何得知橘子车贷</td>
						<td><input type="text" class="form-control"/></td>
						<td>申请日期</td>
						<td><input type="datetime-local" class="form-control"/></td>
					</tr>

					<tr>
						<td>业务员姓名</td>
						<td><input type="text" class="form-control"/></td>
						<td>车贷专员</td>
						<td><input type="text" class="form-control"/></td>
					</tr>

				</tbody>

			</table>
			<table class="table table-striped" style="width: 100%;">
				<caption style="text-align: center;font-size: 15px;">联系人信息（填写不能重复，至少三个）</caption>
			</table>
			<div id="div" style="margin-top: -20px;">
				<table id="tabx" class="xxx table table-striped" style="width: 100%;">
					<tbody id="tb">
					<tr>
							<td>姓名</td>
							<td><input type="text" class="form-control"/></td>
							<td>联系人电话</td>
							<td><input type="text" class="form-control"/></td>
						</tr>

						<tr>
							<td>联系人类型</td>
							<td><input type="text" class="form-control"/></td>
							<td>和本人关系</td>
							<td>
								<select>
									<option>亲属</option>
									<option>其它</option>
								</select>
							</td>
						</tr>

						<tr>
							<td>单位名称</td>
							<td><input type="text" class="form-control"/></td>
							<td>家庭住址/单位地址</td>
							<td><input type="text" class="form-control"/></td>
						</tr>

						<tr>
							<td>业务员姓名</td>
							<td><input type="text" class="form-control"/></td>
							<td>车贷专员</td>
							<td><input type="text" class="form-control"/></td>
						</tr>
					</tbody>
				</table>
			</div>
			<table  id="btns" class="table table-striped" style="width: 100%;">
				<tr>
					<td><input id="add" class="btn btn-info" type="button" value="添加" />
					<input id="del" class="btn btn-info" type="button" value="删除" /></td>
				</tr>
			</table>

			<table id="tab" class="table table-striped" style="width: 1000px;table-layout: fixed;">
				<caption style="text-align: center;font-size: 15px;">附件列表</caption>

				<tbody>

					<tr>
						<td>身份证（原件）</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
	            		<td><span>&nbsp;</span></td>
					</tr>

					<tr>
						<td>车贷申请表</td>
						<td><input type="file" id=""/></td>
						<td><input type="button" class="btn btn-default" value="上传"/> </td>
	            		<td>附件大小</td>
						<td><span>&nbsp;</span> </td>
					</tr>

					<tr>
						<td>其它附件</td>
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
			</center>
</body>
</html>
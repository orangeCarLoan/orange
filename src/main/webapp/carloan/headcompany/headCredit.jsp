<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../commons.jsp"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>总公司信审</title>
 <script type="text/javascript" src="../static/js/branchCredit.js"></script>
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
            <form>
                <br/>
                <div style="float: right;">
					<input type="text" style="width: 300px;" placeholder="回退意见" class="form-control">
				</div>
                <table id="tab1" class="table table-striped" style="width: 100%">
                	<caption class="caption">个人基本信息</caption>
                    <tr>
                        <td>申请人姓名</td>
                        <td><input id="clientName" type="text"/></td>
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
                        <td><input type="text" /></td>
                        <td>有无子女</td>
                        <td><input type="text" /></td>
                    </tr>
                    <tr>
                        <td>房产状况</td>
                        <td><input type="text" /></td>
                        <td>共有居住者</td>
                        <td><select class="form-control">
								<option>配偶</option>
								<option>子女</option>
							</select></td>
                    </tr>
                    <tr>
                    	<td>现住址</td>
                        <td><input type="text" /></td>
                        <td>客户类型</td>
                        <td><input id="producType" type="text" /></td>
                    </tr>
                </table>
                <table id="tab2" class="table table-striped" style="width: 100%;">
                	<caption class="caption">工作信息</caption>
                	<tr>
                        <td>工作单位全称</td>
                        <td><input id="jobName" type="text" /></td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td>工作单位地址</td>
                        <td><input id="jobAddress" type="text" /></td>
                        <td></td><td></td>
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
                        <td><input id="firsttime" type="text" /></td>
                        <td>车辆评估价格</td>
                        <td><input id="yearvalidity" type="text" /></td>
                    </tr>
                    <tr>
                        <td>目前已行驶里程</td>
                        <td><input id="currenttripnum" type="text" /></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>身份证</td>
                        <td>
		                    <input type="radio" name="idcard" value="交付"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
		                    <input type="radio" name="idcard" value="未交付"/>未交付&nbsp;&nbsp;&nbsp;&nbsp;
		                    <input type="radio" name="idcard1" value="原件" />原件&nbsp;&nbsp;&nbsp;&nbsp;
		                    <input type="radio" name="idcard1" value="复印件"/>复印件
                        </td>
                        <td>车辆购置证/发票</td>
                        <td><input type="radio" name="carpurchase" value="交付"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="carpurchase" value="未交付"/>未交付</td>
                    </tr>
                    <tr>
                        <td>交强保险单</td>
                        <td><input type="radio" name="insurance" value="交付" />交付&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="insurance" value="未交付" />未交付</td>
                        <td>车辆钥匙</td>
                        <td><input type="radio" name="carpurchase" value="交付"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="carpurchase" value="未交付"/>未交付</td>
                    </tr>
                    <tr>
                        <td>机动车登记证</td>
                        <td><input type="radio" name="carcertificate" value="交付"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="carcertificate" value="未交付"/>未交付</td>
                        <td>商业保险单</td>
                        <td><input type="radio" name="commercial" value="交付" />交付&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="commercial" value="未交付" />未交付</td>
                    </tr>
                    <tr>
                        <td>车辆行驶证</td>
                        <td><input type="radio" name="carlicense" value="交付" />交付&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="carlicense" value="未交付" >未交付</td>
                        <td>车辆原始发票</td>
                        <td><input type="radio" name="carinvoice" value="交付" />交付&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="carinvoice" value="未交付" />未交付</td>
                    </tr>
                    <tr>
                        <td>车辆完税证</td>
                        <td><input type="radio" name="carpayment" value="交付"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="carpayment" value="未交付"/>未交付</td>
                        <td>进口车辆证明</td>
                        <td><input type="radio" name="carprove" value="交付"/>交付&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="carprove" value="未交付"/>未交付</td>
                    </tr>
                </table>
                <br/> <br/>
                <table id="tab5" class="table table-striped">
                <caption class="caption">车内物品清单</caption>
                    <tr>
                        <td>物品名称<span style="color: red">*</span></td>
                        <td><input id="thingName" style="width: 200px;"/></td>
                        <td><input id="thingName1" style="width: 200px;"/></td>
                        <td><input id="thingName2" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>物品数量<span style="color: red">*</span></td>
                        <td><input id="thingNum" style="width: 200px;"/></td>
                        <td><input id="thingNum1" style="width: 200px;"/></td>
                        <td><input id="thingNum2" style="width: 200px;"/></td>
                    </tr>

                </table>
                
                <table id="tab10" class="table table-striped">
                <caption class="caption">信用信息</caption>
                     <tr>
                        <td>信用卡、贷款最大逾期状况（24个月内）</td>
                        <td><input id="" type="text" /></td>
                        <td>信用卡、贷款最大逾期状况*（24个月内）</td>
                        <td><input id="" type="text" /></td>
                    </tr>
					<tr>
                        <td>信用卡额度使用率</td>
                        <td><input id="" type="text" /></td>
                        <td>信用卡、审批查询次数（6个月内）</td>
                        <td><input id="" type="text" /></td>
                    </tr>
                    <tr>
                        <td>有无其他信用贷款</td>
                        <td><input id="" type="text" /></td>
                        <td>有无信用卡）</td>
                        <td><input id="" type="text" /></td>
                    </tr>
                </table>
                
                <table id="tab6" class="table table-striped">
                <caption class="caption">联系人信息（填写不能重复）</caption>
                    <tr>
                        <td>姓名</td>
                        <td><input id="" type="text"/></td>
                        <td>联系人电话</td>
                        <td><input id="" type="text"/></td>
                    </tr>
                    <tr>
                        <td>联系人类型</td>
                        <td><input id="" type="text"/></td>
                        <td>和本人关系</td>
                        <td><select class="form-control" id="" >
                                <option  value="亲属">亲属</option>
                                <option value="朋友">朋友</option>
                            </select> </td>
                    </tr>
                    <tr>
                        <td>单位名称</td>
                        <td><input id="" type="text"/></td>
                        <td></td>
                        <td></td>
                    </tr>
					<tr>
                        <td>家庭住址/单位地址</td>
                        <td><input id="" type="text"/></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
                <table id="tab7" class="table table-striped" style="table-layout: fixed;">
                <caption class="caption">电话核查列表</caption>
                	<thead>
                		<tr>
                			<th>电话</th><th>与客户关系</th><th>是否知晓贷款</th><th>联系电话</th><th>家庭住址</th>
                		</tr>
                	</thead>
                	<tbody>
                		<tr style="text-align: center;">
                			<td><input type="text"/> </td>
                			<td><select class="form-control">
                				<option  value="亲属">亲属</option>
                                <option value="朋友">朋友</option>
                			</select> </td>
                			<td>
                				<input type="radio" name="isLoan" value="是"/>是&nbsp;&nbsp;&nbsp;&nbsp;
                				<input type="radio" name="isLoan" value="否"/>否
                			</td>
                			<td>
                				<input type="text" />
                			</td>
                			<td><input type="text"/> </td>
                		</tr>
                		<tr style="text-align: center;">
                			<td><input type="text"/> </td>
                			<td><select class="form-control">
                				<option  value="亲属">亲属</option>
                                <option value="朋友">朋友</option>
                			</select> </td>
                			<td>
                				<input type="radio" name="isLoan" value="是"/>是&nbsp;&nbsp;&nbsp;&nbsp;
                				<input type="radio" name="isLoan" value="否"/>否
                			</td>
                			<td>
                				<input type="text" />
                			</td>
                			<td><input type="text"/> </td>
                		</tr>
                		<tr style="text-align: center;">
                			<td><input type="text"/> </td>
                			<td><select class="form-control">
                				<option  value="亲属">亲属</option>
                                <option value="朋友">朋友</option>
                			</select> </td>
                			<td>
                				<input type="radio" name="isLoan" value="是"/>是&nbsp;&nbsp;&nbsp;&nbsp;
                				<input type="radio" name="isLoan" value="否"/>否
                			</td>
                			<td>
                				<input type="text"/>
                			</td>
                			<td><input type="text"/> </td>
                		</tr>
                	</tbody>
                </table>
       			<table id="tab8" class="table table-striped" style="table-layout: fixed;">
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
     			    <table id="tab9" class="table table-striped" style="table-layout: fixed;">
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
                <table id="tab10" class="table table-striped" style="table-layout: fixed;">
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
                        <td><input id="approvalQuota" type="text" /></td>
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
                    <center>
		                <button style="width:150px;" id="baocun" type="button" class="btn btn-info" >保存</button>
		                <button style="width:150px;" id="tijiao" type="button" class="btn btn-info" >提交</button>
		                <button style="width:150px;" id="fanhui" type="button" class="btn btn-info" >返回</button>
		                <button style="width:150px;" id="getBack" type="button" class="btn btn-info" >回退</button>
		            </center>
		        </form>
            </div>
         </div>
     </div>

</div>
<script>
$("input").addClass("form-control");
$(":radio").removeClass("form-control");
</script>
</body>
</html>
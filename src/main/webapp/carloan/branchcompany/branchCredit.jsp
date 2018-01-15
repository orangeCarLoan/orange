<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="commons.jsp"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/demo.css">

<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.easyui.mobile.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/branchCredit.js"></script> --%>
</head>
<body>
<p style="outline: 1px solid black;">车贷管理>分公司审核列表</p>
<div>
     
     <div>
    <div>

        <div>
            <form>
                <br/>
                
                <div  style="margin-left:80px">
                	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #95B8E7">回退信息：</span><input id="backInfo_gg" style="width: 300px;"/>
                </div>
                <table id="tab1" class="table table-striped" style="border: 1px solid black">
                    <tr style="border: 1px solid black">
                        <td colspan="4" style="text-align: center;border: 1px solid black">个人基本信息</td>
                    </tr>
                    <tr>
                        <td>申请人姓名<span style="color: red">*</span></td>
                        <td><input id="clientName" style="width: 200px;"/></td>
                        <td>身份证号码<span style="color: red">*</span></td>
                        <td><input id="idCardNum" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>最高学历<span style="color: red">*</span></td>
                        <td><input id="education" type="text" style="width: 200px;"/></td>
                        <td>申请人手机号<span style="color: red">*</span></td>
                        <td><input id="tel" type="text"  style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>现住址<span style="color: red">*</span></td>
                        <td><input id="clientAddress" type="text" style="width: 200px;"/></td>
                        <td>客户类型</td>
                        <td><input id="producType" type="text" style="width: 200px;"/></td>
                    </tr>
                    
                    </table>
                    
                    
                   
                <br/> <br/>
                <table id="tab2" class="table table-striped" style="border: 1px solid black">
                    <tr  style="border: 1px solid black">
                        <td colspan="4" style="text-align: center;border: 1px solid black">工作信息</td>
                    </tr>
                    <tr>
                        <td>工作地址<span style="color: red">*</span></td>
                        <td><input id="jobAddress" type="text" style="width: 200px;"/></td>
                        <td>工作单位全称<span style="color: red">*</span></td>
                        <td><input id="jobName" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>单位电话<span style="color: red">*</span></td>
                        <td><input id="jobTel" type="text" style="width: 200px;"/></td>
                        <td>邮政编码<span style="color: red">*</span></td>
                        <td><input id="postCode" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>进入该单位时间<span style="color: red">*</span></td>
                        <td><input id="joinTime" type="text" style="width: 200px;"/></td>
                        <td>所在部门<span style="color: red">*</span></td>
                        <td><input id="Department" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>担任职务<span style="color: red">*</span></td>
                        <td><input id="fillPost" type="text" style="width: 200px;"/></td>
                        <td>公司规模<span style="color: red">*</span></td>
                        <td><input id="scaleCompany" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>单位性质<span style="color: red">*</span></td>
                        <td>
                            <select class="info" id="jobProperty" style="width:40%;">
                                <option  value="私企">私企</option>
                                <option value="国企">国企</option>
                            </select>
                        </td>
                        <td>行业类别<span style="color: red">*</span></td>
                        <td><input id="industryCategory" type="text" style="width: 200px;"/></td>
                    </tr>
                </table>
                <br/> <br/>
                <table id="tab3" class="table table-striped" style="border: 1px solid black">
                    <tr  style="border: 1px solid black">
                        <td colspan="4" style="text-align: center;border: 1px solid black">借款需求</td>
                    </tr>
                    <tr>
                        <td>月收入<span style="color: red">*</span></td>
                        <td><input id="income" type="text" style="width: 200px;"/></td>
                        <td>贷款用途<span style="color: red">*</span></td>
                        <td><input id="userFor" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>可以承受的月还款额<span style="color: red">*</span></td>
                        <td><input id="repayment" type="text" style="width: 200px;"/></td>
                        <td>希望申请最长还款期限<span style="color: red">*</span></td>
                        <td><input id="maxdeadline" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>希望申请借款额度(最低)<span style="color: red">*</span></td>
                        <td><input id="minlimit" type="text" style="width: 200px;"/></td>
                        <td>希望申请借款额度(最高)<span style="color: red">*</span></td>
                        <td><input id="maxlimit" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>你从何处得知本公司<span style="color: red">*</span></td>
                        <td><input id="channel" type="text" style="width: 200px;"/></td>
                        <td>申请日期<span style="color: red">*</span></td>
                        <td><input id="applydate" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>业务员姓名<span style="color: red">*</span></td>
                        <td><input id="Salename" type="text" style="width: 200px;"/></td>
                        <td>贷款专员<span style="color: red">*</span></td>
                        <td><input id="commissioner" type="text" style="width: 200px;"/></td>
                    </tr>
                </table>
                <br/> <br/>
                <table id="tab4" class="table table-striped" style="border: 1px solid black">
                    <tr  style="border: 1px solid black">
                        <td colspan="4" style="text-align: center;border: 1px solid black">车辆信息</td>
                    </tr>
                    <tr>
                        <td>机动车辆牌号<span style="color: red">*</span></td>
                        <td><input id="carplate" type="text" style="width: 200px;"/></td>
                        <td>厂牌型号<span style="color: red">*</span></td>
                        <td><input id="labeltype" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>发动机号<span style="color: red">*</span></td>
                        <td><input id="carEvaluate" type="text" style="width: 200px;"/></td>
                        <td>颜色<span style="color: red">*</span></td>
                        <td><input id="carColor" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>初次登记日期<span style="color: red">*</span></td>
                        <td><input id="firsttime" type="text" style="width: 200px;"/></td>
                        <td>年检有期限<span style="color: red">*</span></td>
                        <td><input id="yearvalidity" type="text" style="width: 200px;"/></td>
                    </tr>
                    <tr>
                        <td>目前已行驶里程<span style="color: red">*</span></td>
                        <td><input id="currenttripnum" type="text" style="width: 200px;"/></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>身份证<span style="color: red">*</span></td>
                        <td><input type="radio" name="idcard" value="交付" style="width:10%;"/>交付<input type="radio" name="idcard" value="未交付" style="width:10%;"/>未交付<input type="radio" name="idcard1" value="原件" style="width:10%;"/>原件<input type="radio" name="idcard1" value="复印件" style="width:10%;"/>复印件</td>
                        <td>车辆购置证/发票<span style="color: red">*</span></td>
                        <td><input type="radio" name="carpurchase" value="交付" style="width:10%;"/>交付<input type="radio" name="carpurchase" value="未交付" style="width:10%;"/>未交付</td>
                    </tr>
                    <tr>
                        <td>交强保险单<span style="color: red">*</span></td>
                        <td><input type="radio" name="insurance" value="交付" style="width:10%;"/>交付<input type="radio" name="insurance" value="未交付" style="width:10%;"/>未交付</td>
                        <td>车辆钥匙<span style="color: red">*</span></td>
                        <td><input type="radio" name="carpurchase" value="交付" style="width:10%;"/>交付<input type="radio" name="carpurchase" value="未交付" style="width:10%;"/>未交付</td>
                    </tr>
                    <tr>
                        <td>机动车登记证<span style="color: red">*</span></td>
                        <td><input type="radio" name="carcertificate" value="交付" style="width:10%;"/>交付<input type="radio" name="carcertificate" value="未交付" style="width:10%;"/>未交付</td>
                        <td>商业保险单<span style="color: red">*</span></td>
                        <td><input type="radio" name="commercial" value="交付" style="width:10%;"/>交付<input type="radio" name="commercial" value="未交付" style="width:10%;"/>未交付</td>
                    </tr>
                    <tr>
                        <td>车辆行驶证<span style="color: red">*</span></td>
                        <td><input type="radio" name="carlicense" value="交付" style="width:10%;"/>交付<input type="radio" name="carlicense" value="未交付" style="width:10%;"/>未交付</td>
                        <td>车辆原始发票<span style="color: red">*</span></td>
                        <td><input type="radio" name="carinvoice" value="交付" style="width:10%;"/>交付<input type="radio" name="carinvoice" value="未交付" style="width:10%;"/>未交付</td>
                    </tr>
                    <tr>
                        <td>车辆完税证<span style="color: red">*</span></td>
                        <td><input type="radio" name="carpayment" value="交付" style="width:10%;"/>交付<input type="radio" name="carpayment" value="未交付" style="width:10%;"/>未交付</td>
                        <td>进口车辆证明<span style="color: red">*</span></td>
                        <td><input type="radio" name="carprove" value="交付" style="width:10%;"/>交付<input type="radio" name="carprove" value="未交付" style="width:10%;"/>未交付</td>
                    </tr>
                </table>
                <br/> <br/>
                <table id="tab5" class="table table-striped" style="border: 1px solid black">
                    <tr  style="border: 1px solid black">
                        <td colspan="4" style="text-align: center;border: 1px solid black">车内物品详单</td>
                    </tr>
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
                
                <table id="tab10" class="table table-striped" style="border: 1px solid black">
                    <tr  style="border: 1px solid black">
                        <td colspan="4" style="text-align: center;border: 1px solid black">资产信息</td>
                    </tr>

                    <tr>
                    <td>有无房贷<span style="color: red">*</span></td>
                        <td>
                            <select class="info" id="haveHouse" style="width:40%;">
                                <option value="0">有</option>
                                <option value="1">无</option>
                            </select>
                        </td>
                         <td>有无房产<span style="color: red">*</span></td>
                        <td>
                            <select class="info" id="havehouseLoad" style="width:40%;">
                                <option value="0">有</option>
                                <option value="1">无</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                    <td>有无车贷<span style="color: red">*</span></td>
                        <td>
                            <select id="carloan" class="info" style="width:40%;">
                                <option value="0">有</option>
                                <option value="1">无</option>
                            </select>
                        </td>
                         <td>有无车产<span style="color: red">*</span></td>
                        <td>
                            <select id="havecarLoad" class="info" style="width:40%;">
                                <option value="0">有</option>
                                <option value="1">无</option>
                            </select>
                        </td>
                    </tr>

                </table>
                
                <table id="tab6" class="table table-striped" style="border: 1px solid black">
                    <tr  style="border: 1px solid black">
                        <td colspan="4" style="text-align: center;border: 1px solid black">信用信息</td>
                    </tr>
                    <tr>
                        <td>信用卡、贷款最大逾期状况(24个月内)<span style="color: red">*</span></td>
                        <td><input id="maxOverdueSituation" style="width: 200px;"/></td>
                        <td>信用卡、贷款最大逾期次数*(24个月内)<span style="color: red">*</span></td>
                        <td><input id="maxOverdueNumber" style="width: 184px;"/></td>
                    </tr>
                    <tr>
                        <td>信用卡额度使用率<span style="color: red">*</span></td>
                        <td><input id="creditCardUsageRate" style="width: 200px;"/></td>
                        <td>信用卡、审批查阅次数(6个月内)<span style="color: red">*</span></td>
                        <td><input id="noccLae" style="width: 184px;"/></td>
                    </tr>
                    <tr>
                        <td>有无其他信用贷款<span style="color: red">*</span></td>
                        <td><input id="otherCreditLoans" style="width: 200px;"/></td>
                        <td>有无信用卡<span style="color: red">*</span></td>
                        <td><input id="creditCard" style="width: 184px;"/></td>
                    </tr>

                </table>
       <table id="tab7" class="table table-striped" style="border: 1px solid black">
                    <tr  style="border: 1px solid black">
                        <td colspan="4" style="text-align: center;border: 1px solid black">基本信息附件列表</td>
                    </tr>
                    <tr>
                        <td style="width: 250px">身份证原件</td>
                        <td style="width: 250px"><button>下载</button></td>
                        <td style="width: 250px">车贷申请表</td>
                        <td style="width: 250px"><button>下载</button></td>
                    </tr>
                    <tr>
                        <td style="width: 250px">其他附件</td>
                        <td style="width: 250px"><button>下载</button></td>
                        <td style="width: 250px">附件大小</td>
                        <td style="width: 250px"></td>
                    </tr>
                    </table>
       <table id="tab8" class="table table-striped" style="border: 1px solid black">
                    <tr  style="border: 1px solid black">
                        <td colspan="4" style="text-align: center;border: 1px solid black">车辆信息附件列表</td>
                    </tr>
                    <tr>
                        <td style="width: 250px">抵押车辆评估表</td>
                        <td style="width: 250px"><button>下载</button></td>
                        <td style="width: 250px">车辆照片</td>
                        <td style="width: 250px"><button>下载</button></td>
                    </tr>
                    <tr>
                        <td style="width: 250px">车辆登记证书(原件)</td>
                        <td style="width: 250px"><button>下载</button></td>
                        <td style="width: 250px">车辆行驶证正副本(原件)</td>
                        <td style="width: 250px"><button>下载</button></td>
                    </tr>
                     <tr>
                        <td style="width: 250px">保单(交强险)</td>
                        <td style="width: 250px"><button>下载</button></td>
                        <td style="width: 250px">保单(商业险)</td>
                        <td style="width: 250px"><button>下载</button></td>
                    </tr>
                    <tr>
                        <td style="width: 250px">其他车辆附件</td>
                        <td style="width: 250px"><button>下载</button></td>
                        <td style="width: 250px">附件大小</td>
                        <td style="width: 250px"></td>
                    </tr>
                    </table>
                    <br/> <br/>
                <table id="tab9" class="table table-striped" style="border: 1px solid black">
                    <tr  style="border: 1px solid black">
                        <td colspan="4" style="text-align: center;border: 1px solid black">综合意见</td>
                    </tr>
                    <tr>
                        <td style="width: 250px">产品类别<span style="color: red">*</span></td>
                        <td style="width: 250px">
                            <select class="info" id="productCategory" style="width:43%;">
                                <option  value="私企">私企</option>
                                <option value="国企">国企</option>
                            </select>
                        </td>
                        <td style="width: 250px">审批期数<span style="color: red">*</span></td>
                        <td style="width: 250px">
                            <select class="info" id="approvalPeriod" style="width:43%;">
                                <option  value="私企">私企</option>
                                <option value="国企">国企</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 250px">结论<span style="color: red">*</span></td>
                        <td style="width: 250px">
                            <select class="info" id="conclusion" style="width:43%;">
                                <option  value="私企">私企</option>
                                <option value="国企">国企</option>
                            </select>
                        </td>
                        <td style="width: 250px">审批额度<span style="color: red">*</span></td>
                        <td style="width: 250px"><input id="approvalQuota" type="text"/></td>
                    </tr>
                    <tr>
                        <td style="width: 250px">分公司初审意见<span style="color: red">*</span></td>
                        <td colspan="3" style="text-align: center">
                   <textarea id='firstComment' style="width:1270px;height: 160px">
                   </textarea>
                        </td>
                    </tr>
                    </table>
                <input id="baocun" type="button" value="保存" style="width: 80px ;margin-top: 20px;margin-left: 230px"/>
                <input id="tijiao" type="button" value="提交" style="width: 80px ;margin-top: 20px;margin-left: 50px"/>
                <input id="fanhui" type="button" value="返回" style="width: 80px ;margin-top: 20px;margin-left: 50px"/>
                <input id="getBackClientBase" type="button" value="客户基本信息回退" style="width: 150px ;margin-top: 20px;margin-left: 50px"/>
                <input id="getBackCarInfo" type="button" value="车辆信息回退" style="width: 150px ;margin-top: 20px;margin-left: 50px"/> 
                    
                     </form>
                </div>
                </div>
                </div>

</div>
</body>
</html>
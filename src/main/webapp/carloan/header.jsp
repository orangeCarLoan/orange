<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div data-options="region:'north'" style="height:52px;background-color:#95B8E7;">
			<span style="margin-left:1%;">  
                <font size="3" style="line-height: 50px" color="white" >  
                    <b>橘子车贷-你我的身边贷！</b>  
                </font>  
                <span style="font-size: 20px;margin-left: 300px;">这里做天气预报天气预报及显示时间！</span>
            </span>  
              
            <span style="float:right;margin-top:10px;margin-right:20px;">  
                <font size="3" color="white">欢迎 :Admin</font>      
                <a href="" > <font size="3" color="red">退出</font> </a>  
            </span> 
		</div>
		<div data-options="region:'west',split:true" title="业务处理" style="width:200px;">
			<div class="easyui-accordion" data-options="fit:true,border:false">
				<div title="信审业务管理" >
				
				<style>
				
				      .noRadius{
				              width: 100%;
				              height:30px;
				             padding-top:4px;
                              border-radius: 0;
                              box-sizing: border-box;
                           }
				</style>
					<ul style="width:100%">
						<li class="easyui-linkbutton noRadius"><a id="head_company">总公司信审</a></li>
						<li class="easyui-linkbutton noRadius"><a id="re_check">车贷签约复核</a></li>
						<li class="easyui-linkbutton noRadius"><a id="loan_list">车贷放款列表</a></li>
						<li class="easyui-linkbutton noRadius"><a id="sub_menu">审核分单</a></li>
					</ul>
				</div>
				<div title="车贷管理">
					<style>
				
				      .noRadius{
				              width: 100%;
                              border-radius: 0;
                           }
				</style>
					<ul  style="width:100%">
						<li  class="easyui-linkbutton noRadius"><a id="read_idCard">车贷读取身份证</a></li>
						<li class="easyui-linkbutton noRadius"><a id="loan_input">车贷录入</a></li>
						<li class="easyui-linkbutton noRadius"><a id="branch_company">分公司信审</a></li>
						<li class="easyui-linkbutton noRadius"><a id="signed">车贷签约</a></li>
						<li class="easyui-linkbutton noRadius"><a id="loan_check">车贷查看</a></li>
					</ul>
				</div>
				<div title="管理员">
					<style>
				
				      .noRadius{
				              width: 100%;
                              border-radius: 0;
                           }
				</style>
					<ul  style="width:100%">
						<li  class="easyui-linkbutton noRadius"><a id="manager">管理员操作</a></li>
					</ul>
				</div>
			</div>
		</div>
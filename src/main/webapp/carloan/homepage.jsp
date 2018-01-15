
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>橘子车贷</title>
<link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap.min.css"/>
<script type="text/javascript" src="../static/bootstrap/js/bootstrap.min.js"></script>
<link rel="SHORTCUT ICON" href="../static/img/tubiao.ico" />
<link rel="stylesheet" type="text/css" href="../static/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../static/easyui/themes/icon.css">
<script type="text/javascript" src="../static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="../static/easyui/jquery.easyui.min.js"></script>
<style>

   *{   
     padding: 0;
     margin: 0;
   }
   a{
       text-decoration: none;      
   }
   
</style>
<script type="text/javascript">  
    $(document).ready(function(){  
        var height1 = $(window).height()-20;  
        $("#main_layout").attr("style","width:100%;height:"+height1+"px");  
        $("#main_layout").layout("resize",{  
            width:"100%",  
            height:height1+"px"  
        });  
    });  
      
      
    $(window).resize(function(){  
        var height1 = $(window).height()-30;  
        $("#main_layout").attr("style","width:100%;height:"+height1+"px");  
        $("#main_layout").layout("resize",{  
            width:"100%",  
            height:height1+"px"  
        });  
    });   
</script>  
</head>
<body style="overflow-X: hidden;">
	<div style="margin-top:5px;margin-left:5px;margin-right:5px;margin-bottom:5px;"> 
	<div id="main_layout" class="easyui-layout" style="width:100%; height:680px;">
	
	    <%--  引用头部公共部分--%>
		<%@ include  file="header.jsp" %>
		
		<div data-options="region:'center'" style="overflow-X:hidden" id="ifrom">  
		   <img alt="" src="../static/img/homepage.png" style="display: inline-block;height:100%;margin-left:-100px">
		   <%-- 这里用load方法加载自己的页面,不用重新加载跳转页面 --%>
		   <script type="text/javascript">		   
		     $(function(){
		    	 //array中为整个左边导航栏页面链接加载的id值
		    	 //page为需要加载到右边的页面
		    	 //var array=["head_company","re_check","loan_list","sub_menu","read_idCard","loan_input","branch_company","signed","loan_check","manager"];		     
		    	 //$(array[i]).click(function(){
 				 //  $("#ifrom").load('page');
		    	 //}
		    	 
		    	 //例如：
		    	 $("#read_idCard").click(function(){
		    		 console.info(1);
 				   $("#ifrom").load('signInfo.jsp');
		    	 })
		    	 
		     })
		   
			</script>
		</div>
		
		
		<%--  引用尾部公共部分--%>
		<%@ include  file="footer.jsp" %>
	</div>
</body>
</html>
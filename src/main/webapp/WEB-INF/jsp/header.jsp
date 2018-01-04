<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link id="addonstyle" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.default.css" type="text/css" />
 	<style type="text/css">
		#HTsystem{font-family: '宋体' ; font-style:normal;font-size: 32px;padding-left: 30%;color:white;}
	</style> 
</head>
<body>
<div class="topheader">
        <div class="left">
            <h1 class="logo">极驱科技<span>Admin</span></h1>
            <span class="slogan" id="HTsystem" >后 台 管 理 系 统</span>
            <c:if test="${sessionScope.loginUser == null }">
            	123
            </c:if>
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="ajax/notifications.html"><span>9</span></a>
        	</div>-->
            <div class="userinfo">
            	<img src="${pageContext.request.contextPath}/images/thumbs/avatar.png" alt="" />
                <span>${sessionScope.loginUser.username }</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="${pageContext.request.contextPath}/images/thumbs/avatarbig.png" alt="" /></a>
                 <%--    <div class="changetheme">
                    	切换主题: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>--%>
                </div><!--avatar--> 
                <div class="userdata">
                	<h4>${sessionScope.loginUser.username }</h4>
                    <span class="email">youremail@yourdomain.com</span>
                    <ul>
                    	<li><a href="editprofile.html">编辑资料</a></li>
                        <li><a href="accountsettings.html">账号设置</a></li>
                        <li><a href="help.html">帮助</a></li>
                        <li><a href="${pageContext.request.contextPath}/index/logout">退出</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li class="current"><a ><span class="icon icon-flatscreen"></span>首页</a></li>
<!--             <li><a href="reports.html"><span class="icon icon-chart"></span>统计报表</a></li>
 -->        </ul>
        

    </div><!--header-->
</body>
</html>
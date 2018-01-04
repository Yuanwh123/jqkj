<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>订单记录页面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.default.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom/general.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom/tables.js"></script>
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/js/plugins/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body class="withvernav">
<div class="bodywrapper">
     <c:import url="header.jsp" charEncoding="utf-8"></c:import>
    
     <c:import url="left.jsp" charEncoding="utf-8"></c:import>
     
    
        
    <div class="centercontent tables">
    
        <div class="pageheader notab">
            <h1 class="pagetitle">所有意见反馈</h1>
            <span class="pagedesc">来自用户的反馈</span>
            
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
                        
                
                <div class="contenttitle2">
                	<h3>意见列表</h3>
                </div><!--contenttitle-->
                <table cellpadding="0" cellspacing="0" border="0" class="stdtable" id="dyntable">
                    <colgroup>
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="head0">意见编号</th>
                            <th class="head1">用户昵称</th>
                            <th class="head0">反馈内容</th>                          
                            <th class="head0">用户邮箱</th>
                            <th class="head0">用户电话</th>
                            <th class="head1">反馈时间</th>
                        </tr>
                    </thead>
                   
                    <tbody>
                    	<c:forEach var="orders" items="${requestScope.orders }">
	                    	<tr class="gradeX">
	                             <td>${orders.orderid }</td>
	                           	<td><fmt:formatDate value="${orders.ordertime }" pattern="yyyy-MM-dd"/></td>
	                            <td>${orders.orderprice }</td>
	                            <td>${orders.orderstate.orderstatename }</td>
	                            <td>${orders.user.username }</td>
	                            <td class="center"><a href="#">修改</a></td>
	                            
	                        </tr>
                    	</c:forEach>
                    </tbody>
                </table>
                
          <br /><br />
          
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>

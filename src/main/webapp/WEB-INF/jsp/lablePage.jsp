<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>文字排版页面</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.default.css"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/custom/general.js"></script>
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


				
		<div class="centercontent">
		
			<c:forEach var="category" items="${requestScope.category }">
				<div class="pageheader notab">
					<h1 class="pagetitle">${category.firstgoodsname }</h1>
					<span class="pagedesc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					</span>

				</div>
				<!--pageheader-->
				<div id="contentwrapper" class="contentwrapper lineheight21">
					<c:forEach var="lable" items="${requestScope.lable }">
						<c:if test="${ lable.firstgoodsid == category.firstgoodsid }">
						<a href="" class="btn btn_orange btn_flag"><span>${lable.lablename }</span></a>
						</c:if>
					</c:forEach>
				<div class="clearfix"></div>
				</div>
			</c:forEach>
		</div>
	</div>

</body>
</html>

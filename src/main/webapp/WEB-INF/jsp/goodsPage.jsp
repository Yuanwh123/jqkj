<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>数据表格页面</title>
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
       
        
        <div id="contentwrapper" class="contentwrapper">
                <div class="contenttitle2">
                	<h3>商品列表</h3>
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
                            <th class="head0">商品编号</th>
                            <th class="head1">商品名</th>
                            <th class="head0">商品图片</th>
                            <th class="head1"></th>
                            <th class="head0"></th>
                            <th class="head1"></th>
                        </tr>
                    </thead>
                   
                    <tbody>
                    	<c:forEach var="good" items="${requestScope.goods }">
	                    	<tr class="gradeX">
	                            <td>${good.goodsid }</td>
	                            <td>${good.goodsname }</td>
								<c:forEach items="${fn:split(good.goodspic,',')}" var = "firstPic" varStatus="fp">
									<c:if test="${fp.index == 0 }">
									<td><img src="/upload/${ firstPic}" alt="" style="width:150px;height:100px"/></td>
									</c:if>
								</c:forEach>
	                            
	                            <td class="center"><a href="${pageContext.request.contextPath }/Goods/goAddSizePage?goodsId=${good.goodsid}">增加商品规格</a></td>

	                            <td class="center"><a href="${pageContext.request.contextPath }/Goods/updateGoodsPage?goodsId=${good.goodsid }">修改</a></td>
	                            <td class="center"><a href="${pageContext.request.contextPath }/Goods/deleteGoods?goodsId=${good.goodsid }">删除</a></td>
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="vernav2 iconmenu">
    	<ul>
        	
            <li><a href="${pageContext.request.contextPath }/user/selectAdminUser" class="elements">后台用户管理</a></li>
          <%--   <li><a href="${pageContext.request.contextPath }/Goods/selectGoods" class="tables">商品管理</a></li> --%>
            
            <li><a href="#formsub" class="editor">目录管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
            		<li><a href="${pageContext.request.contextPath }/Goods/selectGoods">目录总览</a></li>
               		<li><a href="${pageContext.request.contextPath }/Goods/goAddGoodsPage">添加商品</a></li>
                </ul>
            </li>
            
            <li><a href="#addons" class="addons">页面位置</a>
            	<span class="arrow"></span>
            	<ul id="addons">
               		<li><a href="${pageContext.request.contextPath }/category/selectCategory">一级目录管理</a></li>
           			<li><a href="${pageContext.request.contextPath }/category/selectCategorySecond">二级目录管理</a></li>
		            <li><a href="${pageContext.request.contextPath }/category/selectLable">轮播图片管理</a></li>
		            <li><a href="${pageContext.request.contextPath }/category/goLablePage">新增标签</a></li>
                </ul>
            </li>

              <li><a href="#tables" class="tables">意见反馈管理</a>
            	<span class="arrow"></span>
            	<ul id="tables">
               		<li><a href="${pageContext.request.contextPath }/orders/goShowAllOrdersPage">意见展示</a></li>
           			            <!--<li><a href="${pageContext.request.contextPath }/orders/goPaymentForOther?orderstateid=1">待付款订单</a></li>
		            <li><a href="${pageContext.request.contextPath }/orders/goCancelledOrder?orderstateid=2">已取消订单</a></li><!-- ${pageContext.request.contextPath }/orders/goCancelledOrder 
		            <li><a href="${pageContext.request.contextPath }/orders/goShippedOrder?orderstateid=3">已发货订单</a></li>
		            <li><a href="${pageContext.request.contextPath }/orders/goOrderInProcess?orderstateid=4">处理中订单</a></li>
		            <li><a href="${pageContext.request.contextPath }/orders/goCompletedOrder?orderstateid=5">已完成订单</a></li>
                </ul>
             </li>
            
            <li><a href="orderPage.jsp" class="widgets">订单管理</a></li>
            <li><a href="productlist.jsp" class="addons">商品一览</a></li> 
            -->
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
</body>
</html>
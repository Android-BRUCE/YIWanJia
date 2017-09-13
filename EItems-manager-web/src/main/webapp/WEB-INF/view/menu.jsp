<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>menu</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/skin/css/base.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/skin/css/menu.css" type="text/css" />
<script language='javascript'>var curopenItem = '1';</script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/skin/js/frame/menu.js"></script>
<base target="main" />
</head>
<body target="main">
<table width='99%' height="100%" border='0' cellspacing='0' cellpadding='0'>
  <tr>
    <td style='padding-left:3px;padding-top:8px' valign="top">
	
     <%----%>
     <%--<c:forEach items="${menus }" var="pr">--%>
     	<%--<c:if test="${pr.menu_location==-1}">--%>
     	<%--<!-- Item  Strat -->--%>
      <%--<dl class='bitem'>--%>
        <%--<dt onClick='showHide("items${pr.menu_id}_1")'><b>${pr.menu_name}</b></dt>--%>
       	 <%--<dd style='display:block' class='sitem' id='items${pr.menu_id}_1'>--%>
          <%--<ul class='sitemu'>--%>
           <%----%>
           <%--<c:forEach items="${menus }" var="pri">--%>
           	<%--<c:if test="${pri.menu_location==pr.menu_id }">--%>
           		<%--<li><a href='${pageContext.request.contextPath}${pri.menu_url}' target='main'>${pri.menu_name}</a></li>--%>
           	<%--</c:if>--%>
           <%--</c:forEach>--%>
           <%----%>
          <%--</ul>--%>
        <%--</dd>--%>
      <%--</dl>--%>
       <%--<!-- Item  End -->--%>
      <%--</c:if>--%>
      <%--</c:forEach>--%>
      <%----%>

     
	<!-- Item  Strat -->
      <dl class='bitem'>
        <dt onClick='showHide("items2_1")'><b>首页管理</b></dt>
        <dd style='display:none' class='sitem' id='items2_1'>
          <ul class='sitemu'>
            <li><a href='${pageContext.request.contextPath}/banner.html' target='main'>轮播控制</a> </li>
            <%--<li><a href='${pageContext.request.contextPath}/indexGoods.html' target='main'>首页产品轮播</a> </li>--%>
            <li><a href='javascript:void(0)' target='main'>底部导航栏</a> </li>
          </ul>
        </dd>
      </dl>
      <!-- Item  End -->
         <dl class='bitem'>
             <dt onClick='showHide("items1_1")'><b>解决方案</b></dt>
             <dd style='display:none' class='sitem' id='items1_1'>
                 <ul class='sitemu'>
                     <li><a href='${pageContext.request.contextPath}/jump/support.html?id=1' target='main'>解决方案</a> </li>
                 </ul>
             </dd>
         </dl>
	<!-- Item  Strat -->
      <dl class='bitem'>
        <dt onClick='showHide("items3_1")'><b>产品展示管理</b></dt>
        <dd style='display:none' class='sitem' id='items3_1'>
          <ul class='sitemu'>
            <li><a href='${pageContext.request.contextPath}/goodsCategory.html' target='main'>添加产品分类</a> </li>
            <li><a href='${pageContext.request.contextPath}/Goods.html' target='main'>产品展示</a> </li>
          </ul>
        </dd>
      </dl>
      <!-- Item  End -->
	<!-- Item  Strat -->
      <dl class='bitem'>
        <dt onClick='showHide("items4_1")'><b>公司介绍管理（废弃）</b></dt>
        <dd style='display:none' class='sitem' id='items4_1'>
          <ul class='sitemu'>
            <li><a href='${pageContext.request.contextPath}/company/companyIntroduction.html' target='main'>公司介绍更改</a> </li>
            <li><a href='${pageContext.request.contextPath}/companyPic.html' target='main'>更换荣誉资质图片</a> </li>
            <li><a href='${pageContext.request.contextPath}/company/companyRoad.html' target='main'>修改发展历程</a> </li>
            <li><a href='${pageContext.request.contextPath}/company/companyVideo.html'>更换宣传视频</a> </li>
          </ul>
        </dd>
      </dl>
      <!-- Item  End -->
	<!-- Item  Strat -->
      <dl class='bitem'>
        <dt onClick='showHide("items5_1")'><b>新闻|人才</b></dt>
        <dd style='display:none' class='sitem' id='items5_1'>
          <ul class='sitemu'>
            <%--<li><a href='${pageContext.request.contextPath}/about.html' target='main'>公司介绍管理</a> </li>--%>
            <li><a href='${pageContext.request.contextPath}/about_news.html' target='main'>公司新闻管理</a> </li>
            <%--<li><a href='${pageContext.request.contextPath}/role.html' target='main'>公司文化管理</a> </li>--%>
            <%--<li><a href='${pageContext.request.contextPath}/about_activity.html' target='main'>公司活动管理</a> </li>--%>
            <li><a href='${pageContext.request.contextPath}/joinUs.html' target='main'>人才招聘</a> </li>
          </ul>
        </dd>
      </dl>
      <!-- Item  End -->
         <!-- Item  Start -->
         <dl class='bitem'>
             <dt onClick='showHide("items7_1")'><b>公司案例</b></dt>
             <dd style='display:none' class='sitem' id='items7_1'>
                 <ul class='sitemu'>
                     <li><a href='${pageContext.request.contextPath}/case.html' target='main'>公司案管理</a> </li>
                 </ul>
             </dd>
         </dl>
         <!-- Item  End -->
	<!-- Item  Strat -->
      <dl class='bitem'>
        <dt onClick='showHide("items6_1")'><b>联系我们</b></dt>
        <dd style='display:none' class='sitem' id='items6_1'>
          <ul class='sitemu'>
            <li><a href='${pageContext.request.contextPath}/contact.html' target='main'>联系方式</a> </li>
            <li><a href='${pageContext.request.contextPath}/modpassword.html' target='main'>修改密码</a> </li>
          </ul>
        </dd>
      </dl>

      <!-- Item  End -->

	  </td>
  </tr>
</table>
</body>
</html>
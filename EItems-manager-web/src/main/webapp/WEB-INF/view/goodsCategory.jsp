<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<html>
<head>


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/skin/css/base.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/jquery-1.7.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.2.6/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.2.6/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/locale/easyui-lang-zh_CN.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/easyUIShow-category.js"></script>
</head>
<body leftmargin="8" topmargin="8" background='${pageContext.request.contextPath}/skin/images/allbg.gif'>

<div id="dd"></div>
<div id="address"></div>


<!--  快速转换位置按钮  -->
<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="left">
    <tr>
        <td height="26" background="${pageContext.request.contextPath}/skin/images/newlinebg3.gif">
            <table width="58%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td >
                        当前位置:产品展示管理>>添加产品分类
                    </td>
                    <td>
                        <input type='button' class="coolbg np" onClick="location='${pageContext.request.contextPath}/goodsCategory-add.html';" value='添加产品分类' />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<!--  搜索表单  -->
<form name='form3' method='post'>
    <input type='hidden' name='dopost' value='' />
    <table width='98%'  border='0' cellpadding='1' cellspacing='1' bgcolor='#CBD8AC' align="left" style="margin-top:8px">
        <tr bgcolor='#EEF4EA'>
            <td background='${pageContext.request.contextPath}/skin/images/wbg.gif' align='left'>
                <table border='0' cellpadding='0' cellspacing='0'>
                    <tr>
                        <td width='90' align='center'>搜索条件：</td>
                        <td width='160'>
                            <select name='cid' style='width:150' id="cid">
                                <option value='0'>选择类型...</option>
                                <option value='1'>产品分类名</option>
                                <option value='cid'>产品分类ID号</option>
                            </select>
                        </td>
                        <td width='70'>
                            关键字：
                        </td>
                        <td width='160'>
                            <input type='text' name='keyword' style='width:120px' id="keyword"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
<!--  内容列表   -->
<form id="tt"></form>
</body>

</html>

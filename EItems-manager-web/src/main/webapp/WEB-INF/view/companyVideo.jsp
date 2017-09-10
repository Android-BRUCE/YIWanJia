<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
    <title>更换链接</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/skin/css/base.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/jquery-1.7.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.2.6/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.2.6/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/locale/easyui-lang-zh_CN.js"></script>

    <script>

        $(function(){
            $.extend($.fn.validatebox.defaults.rules,{
                usernameLength:{
                    validator:function(value,param){
                        return value.length>=param[0] && value.length<=param[1];
                    },
                    message:"用户名最少{0}个字符,最多{1}个字符"
                }
            });
            $.extend($.fn.validatebox.defaults.rules,{
                passwordRegex:{
                    validator:function(value,param){
                        var passRegex=/^[a-zA-Z](\w|\d){5,11}$/;
                        return passRegex.test(value);
                    },
                    message:"密码必须以字母开头,至少6个字符,最多12个字符"
                }

            });
            $("#video").validatebox({
                required:true,
                missingMessage:"视频链接必填",
                validType:"usernameLength[4,500]"
            });
            $("#r_comment").validatebox({
                required:true,
                missingMessage:"最多120个字数",
                validType:"usernameLength[0,120]"
            });

            $("#submit").click(function (){

                var flag=$("#form2").form("validate");

                if(!flag){
                    $.messager.show({
                        title:"消息1",
                        width:200,
                        height:100,
                        msg:"验证未通过!!"
                    }); }else{

                    $.post("${pageContext.request.contextPath}/company/video.do",$("#form2").serialize(), function(data){
                        if(data.status == 200){
                            $.messager.alert('提示',data.msg);
                        }
                    });
                    document.getElementById("form2").reset();
                }
            });
        });


        function allcheck(num) {
            var list = document.getElementsByName(num);
            for(var i=1;i<list.length;i++){
                if(list[i].checked){
                    list[i].checked=false;
                }else{
                    list[i].checked=true;
                }
            }

        }
function yulan(){
            var url = document.getElementById("video").value;


            document.getElementById("url").src = url;
}


    </script>
</head>
<body leftmargin="8" topmargin="8" background='${pageContext.request.contextPath}/skin/images/allbg.gif'>

<!--  快速转换位置按钮  -->
<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="center">
    <tr>
        <td height="26" background="${pageContext.request.contextPath}/skin/images/newlinebg3.gif">
            <table width="58%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td >
                        当前位置:公司介绍管理>>更换宣传视频
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<form name="form2" id="form2">

    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
        <tr bgcolor="#E7E7E7">
            <td height="24" colspan="2" background="${pageContext.request.contextPath}/skin/images/tbg.gif">&nbsp;添加链接&nbsp;</td>
        </tr>
        <tr >
            <td align="right" bgcolor="#FAFAF1" height="22">添加更换的视频链接：</td>
            <td  align='left' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='#FCFDEE';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22"><textarea   style="width:1000px;" type="text" name="video" id="video"></textarea></td>
        </tr>
        <tr bgcolor="#FAFAF1">
            <td height="28" colspan=4 align=center>
                &nbsp;
                <a href="javascript:yulan()" id="yulan" class="coolbg">点击预览</a>
                <a href="javascript:#0" id="submit" class="coolbg">点击更换</a>
                <%--<a href="${pageContext.request.contextPath}/forward/forward_role.do" class="coolbg">返回</a>
                <iframe height=498 width=510 src='http://player.youku.com/embed/XMjUxNjQ3MDYxMg==' frameborder=0 'allowfullscreen'></iframe>
                --%>
            </td>
        </tr>
    </table>
</form>
<br>
<br>
<br>
<br>
<br>
<br>
<center>
    <h1 style="color: #00ee00">视频预览</h1>
    <div>
        <style>p{border:3px solid green;height: 500;width: 790;background: #68ffc1}</style>
        <p id="videourl">加载视频中... ...<iframe id="url" height=500 width=790 src='' frameborder=0 'allowfullscreen'></iframe></p>
    </div>
</center>
</body>
</html>
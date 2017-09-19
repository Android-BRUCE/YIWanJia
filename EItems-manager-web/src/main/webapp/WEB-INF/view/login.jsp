<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>	
<head>
	<link rel="icon" sizes="124x124" href="${pageContext.request.contextPath}/images/logo.png">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.png">
<title>万家科技网站后台</title>
<meta name="viewport" content="">
<meta name="keywords" content="" />
<link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />
<!--webfonts-->
<%--<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>--%>
<%--<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>--%>
	<link href='${pageContext.request.contextPath}/css/loginfonts1.css' rel='stylesheet' type='text/css'>
	<link href='${pageContext.request.contextPath}/css/loginfonts2.css' rel='stylesheet' type='text/css'>
<!--//webfonts-->

</head>
<body>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
 <!--SIGN UP-->
 <h1>欢迎登陆</h1>
<div class="login-form">
	<div class="close"> </div>
		<div class="head-info">
			<label class="lbl-1"> </label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>
			<div class="clear"> </div>
	<div class="avtar">
		<img src="${pageContext.request.contextPath}/images/avtar.png" />
	</div>

			<form class="form"  id="formlogin" method="post" onsubmit="return false;">
					<input type="text" class="text" name="username" value="用户名字" onfocus="this.value = '';"  id="loginname" onblur="if (this.value == '') {this.value = '用户名字';}">
						<div class="key">
							<input type="password" value=""  id="nloginpwd" name="password"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
						</div>
					<input type="submit" value="Login" id="loginsubmit">
			</form>
</div>
 <div class="copy-rights">
					<p>Copyright &copy; 2017.杭州钱王万家信息科技有限公司 All rights reserved.</p></p>
			</div>

 <script>
     var LOGIN = {
         checkInput:function() {
             if ($("#loginname").val() == "") {
                 alert("用户名不能为空");
                 $("#loginname").focus();
                 return false;
             }
             if ($("#nloginpwd").val() == "") {
                 alert("密码不能为空");
                 $("#nloginpwd").focus();
                 return false;
             }
             return true;
         },
         doLogin:function() {
             $.post("${pageContext.request.contextPath}/user/login.do",$("#formlogin").serialize(),function(data){
                 if (data.status==200) {
                     alert("登录成功");
                         location.href = "index.html";
                 }
				 if(data.status==400){
                     alert("登录失败，原因是：" + data.msg);
                     $("#loginname").select();
                 }
             });
         },
         login:function() {
             if (this.checkInput()) {
                 this.doLogin();
             }
         }

     };
     $(function(){
         $("#loginsubmit").click(function(){
             LOGIN.login();
         });
     });
 </script>

 <script>$(document).ready(function(c) {
     $('.close').on('click', function(c){
         $('.login-form').fadeOut('slow', function(c){
             $('.login-form').remove();
         });
     });
 });
 </script>
</body>
</html>
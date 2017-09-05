<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="杭州钱王万家信息科技有限公司" />
<meta name="author" content="杭州钱王万家信息科技有限公司" />
<!-- css --> 
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="/stylesheet" href="${pageContext.request.contextPath}/materialize/css/materialize.min.css" media="screen,projection" />
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/flexslider.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" />
	<%--<script type="text/javascript" src="/css/public/default/css-outM/jquery.min.js"></script>--%>

	<%--<script type="text/javascript" src="/css/public/default/css-outM/jquery.SuperSlide.2.1.1.js"></script>--%>

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div id="wrapper"> 
	<header class="topbar">
		<div class="container">
			<div class="row">

				<div class="col-sm-3">
					<ul class="social-network">
						<%--<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-facebook"></i></a></li>--%>
						<%--<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-twitter"></i></a></li>--%>
						<%--<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-linkedin"></i></a></li>--%>
						<%--<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-pinterest"></i></a></li>--%>
						<%--<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-google-plus"></i></a></li>--%>
					</ul>
				</div>
				<div class="col-sm-9">
					<div class="row">
						<ul class="info">
							<li><i class="icon-info-blocks material-icons">question_answer</i><span>info@Arrive.com</span></li>
							<li><i class="icon-info-blocks material-icons">perm_phone_msg</i><span>+(012) 345 6789</span></li>
						</ul>
						<div class="clr"></div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- start header -->
	<!-- start header -->
	<header>
		<div class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">
						<%--<i class="icon-info-blocks material-icons">language</i>--%>
						<img src="/img/top.png" alt="" height="50" width="50" align=""/>
					</a>
				</div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">主页</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品展示</a></li>
						<li ><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/services.html">服务与支持</a></li>
						<%--<li><a class="waves-effect waves-dark" href="pricing.html">Pricing</a></li>--%>
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" class="dropdown-toggle waves-effect waves-dark">关于我们 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/about.html">公司介绍</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news/page.html">公司新闻</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/culture.html">公司文化</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/activity/page.html">公司活动</a></li>
								<li><a class="waves-effect waves-dark" href="#">加入我们</a></li>
							</ul>
						</li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/contact/contactUs.html">联系我们</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>


	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">公司荣誉资质</h2>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	
	<div class="container">


		<div class="about-main" id="company-profile">
			<div id="nr_main_box">



			<!-- =+++++++++++++++++++++-->
				<div class="about_right">
					<div class="rnav_bt">
						<b>关于万家</b>
						<span class="x"></span>
					</div>
					<ul style="position:relative">
						<li ><a href="${pageContext.request.contextPath}/about.html" title="公司介绍" id="nynavID91">公司介绍</a></li>
						<li ><a href="${pageContext.request.contextPath}/aboutHonour.html" title="荣誉资质" id="nynavID92" class="acvier">荣誉资质</a></li>
						<li ><a href="${pageContext.request.contextPath}/aboutDevelopment.html" title="发展历程" id="nynavID93">发展历程</a></li>
						<li ><a href="${pageContext.request.contextPath}/aboutPropaganda.html" title="企业宣传视频" id="nynavID97">企业宣传视频</a></li>
						<%--<li ><a href="about.aspx?cateid=95" title="联系我们" id="nynavID95">联系我们</a></li>--%>


					</ul>
					<script language="javascript" type="text/javascript">
                        try {
                            document.getElementById("nynavID" + nynav).className = "acvier";
                        }
                        catch (e) {}
					</script>

					<div class="ny_left_gg">
						<A href="http://www.zjlyzhkj.com/Solution.aspx?cateid=81"><img src="images/banner/x2.jpg" /></A>
						<A href="http://www.zjlyzhkj.com/Solution.aspx?cateid=80"><img src="images/banner/x1.jpg" /></A>
						<A href="http://www.zjlyzhkj.com/Solution.aspx?cateid=79"><img src="images/banner/x3.jpg" /></A>
					</div>
				</div>
				<!-- =++++++++++++++left        left    left   +++++++-->

				<div class="about_left">

					<div id="about_text">

						<p><img title="网站资质证书图片3-29.jpg" src="http://www.zjlyzhkj.com/Upload/ueditor/images/2017-03-29/%E7%BD%91%E7%AB%99%E8%B5%84%E8%B4%A8%E8%AF%81%E4%B9%A6%E5%9B%BE%E7%89%873-29-d97906b3-7368-46c9-b10a-4528c02603ca.jpg"/></p>

					</div>

				</div>




				<div id="clear" ></div>
			</div> <!--内容 END-->


				<!-- =+++++++++++++++++++++-->



		</div>
		<!--end about-main-->
	</div>
</div>

</div>
	</div>

	</section>
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">Our Contact</h5>
					<address>
					<strong>Bootstrap company Inc</strong><br>
					JC Main Road, Near Silnile tower<br>
					 Pin-21542 NewYork US.</address>
					<p>
						<i class="icon-phone"></i> (123) 456-789 - 1255-12584 <br>
						<i class="icon-envelope-alt"></i> email@domainname.com
					</p>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">Quick Links</h5>
					<ul class="link-list">
						<li><a class="waves-effect waves-dark" href="#">Latest Events</a></li>
						<li><a class="waves-effect waves-dark" href="#">Terms and conditions</a></li>
						<li><a class="waves-effect waves-dark" href="#">Privacy policy</a></li>
						<li><a class="waves-effect waves-dark" href="#">Career</a></li>
						<li><a class="waves-effect waves-dark" href="#">Contact us</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">Latest posts</h5>
					<ul class="link-list">
						<li><a class="waves-effect waves-dark" href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
						<li><a class="waves-effect waves-dark" href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
						<li><a class="waves-effect waves-dark" href="#">Natus error sit voluptatem accusantium doloremque</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-3">
					<div class="widget">
					<h5 class="widgetheading">Recent News</h5>
					<ul class="link-list">
						<li><a class="waves-effect waves-dark" href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
						<li><a class="waves-effect waves-dark" href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
						<li><a class="waves-effect waves-dark" href="#">Natus error sit voluptatem accusantium doloremque</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>
							Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
						</p>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="social-network">
						<li><a class="waves-effect waves-dark" href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a class="waves-effect waves-dark" href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a class="waves-effect waves-dark" href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a class="waves-effect waves-dark" href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
						<li><a class="waves-effect waves-dark" href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>
</div>
<a href="#" class="scrollup waves-effect waves-dark"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/materialize/js/materialize.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.fancybox.pack.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.fancybox-media.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>
<script src="${pageContext.request.contextPath}/js/animate.js"></script>
<!-- Vendor Scripts -->
<script src="${pageContext.request.contextPath}/js/modernizr.custom.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.isotope.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/animate.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>

 <script src="${pageContext.request.contextPath}/contact/jqBootstrapValidation.js"></script>
 <script src="${pageContext.request.contextPath}/contact/contact_me.js"></script>
</body>

</html>
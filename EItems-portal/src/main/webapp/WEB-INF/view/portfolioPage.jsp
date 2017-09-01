<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- css --> 
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="/stylesheet" href="../materialize/css/materialize.min.css" media="screen,projection" />
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="/css/flexslider.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link href="/css/public/default/css-outM/style.css" rel="stylesheet" />
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
						易万家科技
					</a>
				</div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">主页</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品展示</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/services.html">服务与支持</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/pricing.html">Pricing</a></li>
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" class="dropdown-toggle waves-effect waves-dark">关于我们 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/about.html">公司介绍</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news.html">公司新闻</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/#">公司文化</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/#">公司活动</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/#">加入我们</a></li>
							</ul>
						</li>
						<li  class="active"><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/contact.html">联系我们</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>


	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<%--<div class="col-lg-12">--%>
				<%--&lt;%&ndash;<h2 class="pageTitle">联系我们</h2>&ndash;%&gt;--%>
			<%--</div>--%>
		</div>
	</div>
	</section>
	<section id="content">
	
	<div class="container">
		<div class="row">
							<div class="col-md-12">
								<div class="about-logo">
									<h3>Get<span class="color"> in Touch</span></h3>
									<p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                                    	<p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
								</div>
							</div>
						</div>


		<div class="about-main" id="company-profile">
			<div class="about-con">



				<!-- =+++++++++++++++++++++-->
				<div id="nr_main_box">
					<div style=" width:745px; float:right;">
						<div id="inside_rnewtil" style=" text-align:left; border-bottom:1px solid #ddd; padding-bottom:15px;">${list.goodsttile}</div>

						<div id="nrboxstyle">

${list.goodsdesc}

						</div>
					</div>

					<div style=" width:280px; float:left; text-align:center; margin-top:15px;">
						<img  src="http://localhost:8080${list.image}" class="proxx_img" style=" width:280px; margin-bottom:10px;" />
						<div style=" font-size:16px; color:#333; line-height:20px; text-align:center;">${list.goodsttile}</div>
					</div>



					<div style="clear:both;"></div>
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
<script src="/js/jquery.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/materialize/js/materialize.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.fancybox.pack.js"></script>
<script src="/js/jquery.fancybox-media.js"></script>
<script src="/js/jquery.flexslider.js"></script>
<script src="/js/animate.js"></script>
<!-- Vendor Scripts -->
<script src="/js/modernizr.custom.js"></script>
<script src="/js/jquery.isotope.min.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/animate.js"></script>
<script src="/js/custom.js"></script>

 <script src="/contact/jqBootstrapValidation.js"></script>
 <script src="/contact/contact_me.js"></script>
</body>

</html>
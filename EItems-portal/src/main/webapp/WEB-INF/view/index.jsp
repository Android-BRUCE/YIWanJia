<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>杭州钱王万家信息科技有限公司</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="杭州钱王万家信息科技有限公司" />
<meta name="author" content="杭州钱王万家信息科技有限公司" />
<!-- css -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/materialize/css/materialize.min.css" media="screen,projection" />
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/flexslider.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/common.js" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div id="wrapper" class="home-page"> 
	<header class="topbar">
		<div class="container">
			<div class="row">
				<!-- social icon-->
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
							<li><i class="icon-info-blocks material-icons">邮箱地址: </i><span>zjqwwy@163.com</span></li>
							<li><i class="icon-info-blocks material-icons">联系电话: </i><span>0571-61099111</span></li>
						</ul>
						<div class="clr"></div>
					</div>
				</div>
				<!-- info -->

			</div>
		</div>
	</header>
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
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/index.html">
						<%--<i class="icon-info-blocks material-icons">language</i>--%>
							<img src="${pageContext.request.contextPath}/img/logo.jpg" alt="" height="50" width="50" align=""/>
							杭州钱王万家信息科技有限公司
					</a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="active"><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">主页</a></li>
                        <li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品展示</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/support.html">服务与支持</a></li>
                        <%--<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/pricing.html">Pricing</a></li>--%>
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" class="dropdown-toggle waves-effect waves-dark">关于我们 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/about.html">公司介绍</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news.html">公司新闻</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/activity.html">公司活动</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/joinUs.html">加入我们</a></li>
							</ul>
						</li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/contact/contactUs.html">联系我们</a></li>
                    </ul>
                </div>
            </div>
        </div>
	</header>
	<!-- end header -->
	<section class="section-padding gray-bg">
	<section id="banner">
	<!-- Slider -->
        <div id="main-slider" class="flexslider">
            <ul class="slides" id="banner_show" >
				<c:forEach items="${banner }" var="pr">
					<li>
						<img src="${pr.image}" alt="" />
						<div class="flex-caption">
							<h3>${pr.title}</h3>
							<p>${pr.point}</p>
						</div>
					</li>
				</c:forEach>
            </ul>
        </div>
		</section>
	<!-- end slider -->
	</section>
	<section class="section-padding gray-bg">
	<div class="ind_zszk_box" style=" padding:50px 0 50px 0;">
		<ul class="zszk_icon">
			<li>
				<A href="####">
					<i class="icon icon01"></i>
					<div class="text">
						<h1>环卫云平台</h1>
						<p class="ms">提供环卫服务，为客户提供专业化的订制服务</p>
					</div>
				</A>
			</li>
			<li>
				<A href="####">
					<i class="icon icon02"></i>
					<div class="text">
						<h1>垃圾分类云平台</h1>
						<p class="ms">利用物联网、互联网融合技术，实现垃圾投放的有源可溯</p>
					</div>
				</A>
			</li>

			<li>
				<A href="####">
					<i class="icon icon03"></i>
					<div class="text">
						<h1>公路云平台</h1>
						<p class="ms">实现对施工过程的监控，提升养护清洁作业质量</p>
					</div>
				</A>
			</li>
			<div id="clear"></div>
		</ul>
	</div>

	</section>

	<div id="clear" ></div>

	<section class="section-padding gray-bg">

		<div id="ind_box_service">
			<h1 class="ind_bt">产品</h1>
			<h2 class="ind_ms">PRODUCTS</h2>
			<span class="ind_x"></span>

			<div class="picScroll-left" id="ind_service_box">
				<div class="hd">
					<a class="next"></a>
					<a class="prev"></a>
				</div>
				<div class="bd">
					<div class="tempWrap" style="overflow:hidden; position:relative; width:1100px">
						<ul class="ind_service_list" style="width: 2750px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">

							<c:forEach items="${goods}" var="pr">
								<li style="float: left; width: 255px;">
									<div class="title">
										<a href="${pageContext.request.contextPath}${pr.id}/detilPortfolio.html" title="${pr.goodsttile}">${pr.goodsttile}</a>
										<p class="ms"></p>
									</div>
									<div class="pic"><a href="${pageContext.request.contextPath}${pr.id}/detilPortfolio.html"><img src="${pr.image}" alt=${pr.goodsttile}></a></div>
								</li>
							</c:forEach>

					</ul></div>
				</div>
			</div>
			<script type="text/javascript">
                jQuery(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:4,easing:"easeOutCirc"});
			</script>

		</div>
		<!--================================================= -->
	</section>



	
	<section class="section-padding gray-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Our <strong>Business</strong></h2>
						<p>Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada Pellentesque <br>ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>
					</div>
				</div>
			</div>
			<div class="row"> 
				<div class="col-md-6 col-sm-6">
					<div class="about-image">
						<img src="${pageContext.request.contextPath}/img/about.jpg" alt="About Images">
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="about-text">
						<p>Grids is a responsive Multipurpose Template. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>

						<p>Grids is a responsive Multipurpose Template. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>

						<p>Grids is a responsive Multipurpose Template. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>

					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="content">
		<div class="case_hd">
			<ul>
				<li><A href="####"><img src="${pageContext.request.contextPath}/img/works/x1.jpg" /></A></li>
				<li><A href="####"><img src="${pageContext.request.contextPath}/img/works/x2.jpg" /></A></li>
				<li><A href="####"><img src="${pageContext.request.contextPath}/img/works/x3.jpg" /></A></li>
			</ul>
		</div>
	</section>
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">联系方式</h5>
					<address>
					<strong>杭州钱王万家信息科技有限公司</strong><br>
						杭州临安市青山湖街道958号<br>
						科创大楼A603</address>
					<p>
						<i class="icon-phone"></i>电话：0571-61099111<br>
						<i class="icon-envelope-alt"></i>邮箱：zjqwwy@163.com
					</p>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">万家产品</h5>
					<ul class="link-list">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">手持终端</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">定点投放箱体</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">垃圾分类app</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">传感器原件</a></li>
					</ul>
				</div>
			</div>

			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">新闻资讯</h5>
					<ul class="link-list">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news.html">万家新闻直达</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/activity.html">万家活动直达</a></li>
					</ul>
				</div>
			</div>
				<img src="${pageContext.request.contextPath}/img/public/gong2_20170908151221.jpg" alt="" height="135" width="135" align="">
			&nbsp;&nbsp;
			<img src="${pageContext.request.contextPath}/img/public/app1_20170908151237.jpg" alt="" height="135" width="135" align="">
		<%--<p>&nbsp;&nbsp;&nbsp;&nbsp;公众号</p>--%>
</div>


		</div>
	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>
							Copyright &copy; 2017.杭州钱王万家信息科技有限公司 All rights reserved.
						</p>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="social-network">
						<p>浙ICP备14036718号-6浙公网安备 33018502001594号</p></ul>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/script/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/script/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/script/countUp.min.js"></script>
<script src="${pageContext.request.contextPath}/js/script/common.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/css/public/default/css-outM/jquery.SuperSlide.2.1.1.js"></script>
</body>
</html>
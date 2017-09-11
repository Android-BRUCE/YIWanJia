<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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

	<!-- Vendor Styles -->
	<link href="${pageContext.request.contextPath}/css/magnific-popup.css" rel="stylesheet">
	<!-- Block Styles -->
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/gallery-1.css" rel="stylesheet">

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
				<!-- social icon-->
				<div class="col-sm-3">
					<%--<ul class="social-network">--%>
						<%--&lt;%&ndash;<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-facebook"></i></a></li>&ndash;%&gt;--%>
						<%--&lt;%&ndash;<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-twitter"></i></a></li>&ndash;%&gt;--%>
						<%--&lt;%&ndash;<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-linkedin"></i></a></li>&ndash;%&gt;--%>
						<%--&lt;%&ndash;<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-pinterest"></i></a></li>&ndash;%&gt;--%>
						<%--&lt;%&ndash;<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-google-plus"></i></a></li>&ndash;%&gt;--%>
					<%--</ul>--%>
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
							<img src="${pageContext.request.contextPath}/img/logo.png" alt="" height="50" width="50" align=""/>
							杭州钱王万家信息科技有限公司
					</a>
				</div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">主页</a></li>
						<li class="active"><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品展示</a></li>
						<li ><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/support.html">服务与支持</a></li>
						<%--<li><a class="waves-effect waves-dark" href="pricing.html">Pricing</a></li>--%>
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
	<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2 class="pageTitle">产品展示</h2>
				</div>
			</div>
		</div>
	</section>
	<section id="content">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<div class="about-logo">
						<h3>我们的 <span class="color">产品</span></h3>
						<p>公司于2005年成立，现有员工900余名，其中具有专业技术职称的100余名，大专以上学历的200余名，拥有垃圾直运车、压缩车、洒水车、清扫车、小区管理巡逻车、接送车、高空吊篮等1000余万元先进、高效的机械设备和车辆等固定资产。</p>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- Start Gallery 1-2 -->
	<section id="gallery-1" class="content-block section-wrapper gallery-1">
		<div class="container">

			<div class="editContent">
				<ul class="filter">
					<li class="active"><a href="#" data-filter="*">所有</a></li>
					<%--<li><a class="waves-effect waves-dark" href="#" data-filter=".artwork ">Artwork</a></li>--%>
					<%--<li><a class="waves-effect waves-dark" href="#" data-filter=".creative">Creative</a></li>--%>
					<%--<li><a class="waves-effect waves-dark" href="#" data-filter=".nature">Nature</a></li>--%>
					<%--<li><a class="waves-effect waves-dark" href="#" data-filter=".outside">Outside</a></li>--%>
					<%--<li><a class="waves-effect waves-dark" href="#" data-filter=".photography">Photography</a></li>--%>
					<c:forEach items="${category}" var="pr">
						<li><a class="waves-effect waves-dark" href="#" data-filter=".${pr.name}">${pr.name}</a></li>
					</c:forEach>
				</ul>

			</div>
			<!-- /.gallery-filter -->

			<div class="row">
				<div id="isotope-gallery-container">


					<!-- /.gallery-item-wrapper -->
					<%--<div class="col-md-4 col-sm-6 col-xs-12 gallery-item-wrapper nature outside">--%>
						<%--<div class="gallery-item">--%>
							<%--<div class="gallery-thumb">--%>
								<%--<img src="img/works/2.jpg" class="img-responsive" alt="2nd gallery Thumb">--%>
								<%--<div class="image-overlay"></div>--%>
								<%--<a href="img/works/2.jpg" class="gallery-zoom"><i class="fa fa-eye"></i></a>--%>

							<%--</div>--%>
							<%--<div class="gallery-details">--%>
								<%--<div class="editContent">--%>
									<%--<h5>2nd gallery Item</h5>--%>
								<%--</div>--%>
								<%--<div class="editContent">--%>
									<%--<p>Nullam id dolor id nibh ultricies vehicula.</p>--%>
								<%--</div>--%>
							<%--</div>--%>
						<%--</div>--%>
					<%--</div>--%>

					<c:forEach items="${goods}" var="pr">
						<!-- /.gallery-item-wrapper -->
						<div class="col-md-4 col-sm-6 col-xs-12 gallery-item-wrapper ${pr.name}">
							<div class="gallery-item">
								<div class="gallery-thumb">
									<img src="${pr.image}" class="img-responsive" alt="2st ${pr.name}">
									<div class="image-overlay"></div>
									<a href="${pr.image}" class="gallery-zoom"><i class="fa fa-eye"></i></a>

								</div>
								<div class="gallery-details">
									<div class="editContent">
										<a href="${pageContext.request.contextPath}/${pr.id}/detilPortfolio.html"><h5>${pr.goodsttile}</h5></a>
									</div>
									<div class="editContent">
										<a href="${pageContext.request.contextPath}/${pr.id}/detilPortfolio.html"><p>${pr.point}</p></a>
									</div>
								</div>
							</div>
						</div>

					</c:forEach>

				</div>
				<!-- /.isotope-gallery-container -->
			</div>
			<!-- /.row -->
			<!-- /.container -->
		</div>
	</section>
	<!--// End Gallery 1-2 -->
</div>


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
			<div class="col-sm-3">
				<img src="${pageContext.request.contextPath}/img/public/erweima.jpg" alt="" height="180" width="290" align="">
			</div>
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

</body>
</html>
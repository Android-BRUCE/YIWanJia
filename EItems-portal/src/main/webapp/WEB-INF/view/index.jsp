<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<link rel="icon" sizes="124x124" href="${pageContext.request.contextPath}/img/logo.png">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo.png">
<meta charset="utf-8">
<title>杭州钱王万家信息科技有限公司</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="杭州、钱王、万家、万家科技、万家信息、万家产品、杭州钱王、杭州钱王万家、杭州钱王万家信息、杭州钱王万家信息科技
钱王物业、万家信息科技、万家信息科技有限公司、钱王万家、钱王万家信息、钱王万家信息科技、易万家产品、杭州钱王万家信息科技有限公司" /><meta name="keywords" content="杭州、钱王、钱王万家、钱王万家信息、钱王万家信息科技、易万家产品、杭州钱王万家信息科技有限公司" />
<meta name="author" content="杭州钱王万家信息科技有限公司" />

<!-- css -->

	<%--<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">--%>	<link href="${pageContext.request.contextPath}/css/public/fonts-google.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/materialize/css/materialize.min.css" media="screen,projection" />
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/flexslider.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/common.js" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/script/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/script/jquery.SuperSlide.2.1.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/script/countUp.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/script/common.js" type="text/javascript"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/css/public/default/css-outM/jquery.SuperSlide.2.1.1.js"></script>



<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div id="wrapper" >
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
							<img src="${pageContext.request.contextPath}/img/public/logo02.png" alt="" height="65" width="200" style="margin-bottom: 20px;float: left" />
							<%--杭州钱王万家信息科技有限公司--%>
							<%--钱王万家--%>
					</a>

                </div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li class="active"><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">首 页</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news.html">新闻资讯</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品中心</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/support.html">解决方案</a></li><!--服务支持-->
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/case.html">公司案例</a></li><!---->
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/joinUs.html">人才招聘</a></li><!--加入我们-->
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/about.html">关于我们</a></li>
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
						<img src="${pr.image}" alt="" height="450"/>
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
				<p align="center" style="font-size: 50">互联网+智慧服务平台</p><br><br><br>
				<ul class="zszk_icon">
					<li>
						<A href="${pageContext.request.contextPath}/supportPages.aspx?id=1">
							<i class="icon icon01"></i>
							<div class="text">
								<h1>智慧环卫监控平台</h1>
								<p class="ms">提供环卫服务，为客户提供专业化的订制服务</p>
							</div>
						</A>
					</li>
					<li>
						<A href="${pageContext.request.contextPath}/supportPages.aspx?id=2">
							<i class="icon icon02"></i>
							<div class="text">
								<h1>智慧垃圾分类平台</h1>
								<p class="ms">利用物联网、互联网融合技术，实现垃圾投放的有源可溯</p>
							</div>
						</A>
					</li>

					<li>
						<A href="${pageContext.request.contextPath}/supportPages.aspx?id=3">
							<i class="icon icon03"></i>
							<div class="text">
								<h1>智慧养老服务平台</h1>
								<p class="ms">实现对施工过程的监控，提升养护清洁作业质量</p>
							</div>
						</A>
					</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<%--<li>--%>
						<%--<A href="####">--%>
							<%--<i class="icon icon04"></i>--%>
							<%--<div class="text">--%>
								<%--<h1>智慧物业管理平台</h1>--%>
								<%--<p class="ms">实现对施工过程的监控，提升养护清洁作业质量</p>--%>
							<%--</div>--%>
						<%--</A>--%>
					<%--</li>--%>
					<div id="clear"></div>
				</ul>
			</div>
		</section>

	<!-- ###################start####################-->
	<%--<section class="section-padding gray-bg">--%>
		<%--<div class="container">--%>
			<%--<div class="row">--%>
				<%--<div class="col-md-12">--%>
					<%--<div class="section-title text-center">--%>
						<%--<h2>Our <strong>Business</strong></h2>--%>
						<%--<p>Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada Pellentesque <br>ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>
			<%--<div class="row">--%>
				<%--<div class="col-md-6 col-sm-6">--%>
					<%--<div class="about-image">--%>
						<%--<img src="${pageContext.request.contextPath}/img/about.jpg" alt="About Images">--%>
					<%--</div>--%>
				<%--</div>--%>
				<%--<div class="col-md-6 col-sm-6">--%>
					<%--<div class="about-text">--%>
						<%--<p>Grids is a responsive Multipurpose Template. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>--%>

						<%--<p>Grids is a responsive Multipurpose Template. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>--%>

						<%--<p>Grids is a responsive Multipurpose Template. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>--%>

					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>
		<%--</div>--%>
	<%--</section>--%>
	<!-- ################end#######################-->


	<div id="clear" ></div>
	<section class="section-padding gray-bg">

		<div id="ind_box_service">
			<h1 class="ind_bt">产品</h1>
			<h2 class="ind_ms">PRODUCTS</h2>
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
										<a href="${pageContext.request.contextPath}/${pr.id}/detilPortfolio.html" title="${pr.goodsttile}">${pr.goodsttile}</a>
										<p class="ms"></p>
									</div>
									<div class="pic"><a href="${pageContext.request.contextPath}/${pr.id}/detilPortfolio.html"><img src="${pr.image}" alt=${pr.goodsttile}></a></div>
								</li>
							</c:forEach>

					</ul></div>
				</div>
			</div>
			<script type="text/javascript">
                jQuery(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:4,easing:"easeOutCirc"});
			</script>
		</div>
		<!--================================================= --><br>
	</section>
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">联系方式</h5>
					<ul class="foot_add_box">
						<li class="foot_tel">&nbsp;0571-61099111</li>
						<li class="foot_add">zjqwwy@163.com</li>
					</ul>
					<br>
					<address>
						杭州市临安市青山湖街道<br>
						大园路958号科创大楼A603</address>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">产品中心</h5>
					<ul class="link-list">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/supportPages.aspx?id=1">智慧环卫监控平台</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/supportPages.aspx?id=2">智慧垃圾分类平台</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/supportPages.aspx?id=3">智慧养老服务平台</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">新闻资讯</h5>
					<ul class="link-list">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news.html">公司新闻</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-4" style="float: right;margin-right: 150px;margin-top: 0px;">
				<div class="widget">
					<h5 class="widgetheading"></h5>
					<ul class="link-list">
						<img src="${pageContext.request.contextPath}/img/public/erweima.jpg" alt="" height="170" width="290" align="微信扫一扫">
					</ul>
				</div>
			</div></div>
		</div>
	<div id="sub-footer" style="margin-top: 20px">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright" style="float: left">
						<p>
							Copyright &copy; 2017.杭州钱王万家信息科技有限公司 All rights reserved.
						</p>
					</div>
				</div>
				<div class="col-lg-6" style="float: right">
					<ul class="copyright">
						<p>&nbsp;&nbsp;&nbsp;&nbsp;浙ICP备14036718号-6浙公网安备 33018502001594号</p></ul>
				</div>
			</div>
		</div>
	</div>
	</footer>
 </div>
<%--<a href="#" class="scrollup waves-effect waves-dark"><i class="fa fa-angle-up active"></i></a>--%>
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


</body>
</html>
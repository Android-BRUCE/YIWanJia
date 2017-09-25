<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="icon" sizes="124x124" href="${pageContext.request.contextPath}/img/logo.png">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo.png">
<meta charset="utf-8">
<title>杭州钱王万家信息科技有限公司</title>
<meta name="viewport" content="杭州钱王万家信息科技有限公司" />
	<meta name="keywords" content="杭州钱王万家信息科技有限公司"/>
<meta name="description" content="杭州钱王万家信息科技有限公司" />
<meta name="author" content="杭州钱王万家信息科技有限公司" />
<!-- css -->
	<link href="${pageContext.request.contextPath}/css/public/fonts-google.css" rel="stylesheet">
<link rel="stylesheet" href="materialize/css/materialize.min.css" media="screen,projection" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet"> 
<link href="css/flexslider.css" rel="stylesheet" />
<!-- Vendor Styles -->
<link href="css/magnific-popup.css" rel="stylesheet"> 
<!-- Block Styles -->
<link href="css/style.css" rel="stylesheet" />
<link href="css/gallery-1.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/flexslider.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" />
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div id="wrapper"> 
	

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
							<img src="${pageContext.request.contextPath}/img/logo.png" alt="" height="50" width="50" />
							杭州钱王万家信息科技有限公司
							<%--钱王万家--%>
					</a>

                </div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li ><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">首 页</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news.html">新闻资讯</a></li>
						<li class="active"><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品中心</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/support.html">解决方案</a></li><!--服务支持-->
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/case.html">公司案例</a></li><!---->
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/joinUs.html">人才招聘</a></li><!--加入我们-->
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/about.html">关于我们</a></li>
					</ul>
				</div>
            </div>
        </div>
	</header><!-- end header -->
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
					<c:forEach items="${category}" var="pr">
						<li><a class="waves-effect waves-dark" href="#" data-filter=".${pr.name}">${pr.name}</a></li>
					</c:forEach>
				</ul>
			</div>
            <!-- /.gallery-filter -->
            
            <div class="row">
                <div id="isotope-gallery-container">


                    <!-- /.gallery-item-wrapper -->

                    <!-- /.gallery-item-wrapper -->

                    <!-- /.gallery-item-wrapper -->

                    <!-- /.gallery-item-wrapper -->

                    <!-- /.gallery-item-wrapper -->
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
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html"></a></li>
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
			<div class="col-sm-4">
				<div class="widget">
					<h5 class="widgetheading"></h5>
					<ul class="link-list">
						<img src="${pageContext.request.contextPath}/img/public/erweima.jpg" alt="" height="170" width="290" align="">
					</ul>
				</div>
			</div></div>
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


</body>
</html>
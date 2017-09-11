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
				<ul class="info">
					<li><i class="icon-info-blocks material-icons">邮箱地址:</i><span>zjqwwy@163.com</span></li>
					<li><i class="icon-info-blocks material-icons">联系电话: </i><span>0571-61099111</span></li>
				</ul>
				<div class="clr"></div>
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
					<a class="navbar-brand" href="${pageContext.request.contextPath}/index.html">
						<%--<i class="icon-info-blocks material-icons">language</i>--%>
							<img src="${pageContext.request.contextPath}/img/logo.png" alt="" height="50" width="50" align=""/>
							杭州钱王万家信息科技有限公司
					</a>
				</div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">主页</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品展示</a></li>
						<li ><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/support.html">服务与支持</a></li>
						<%--<li><a class="waves-effect waves-dark" href="pricing.html">Pricing</a></li>--%>
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" class="dropdown-toggle waves-effect waves-dark">关于我们 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/about.html">公司介绍</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news.html">公司新闻</a></li>
								<%--<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/culture.html">公司文化</a></li>--%>
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
				<h2 class="pageTitle">公司发展历程</h2>
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
						<li ><a href="${pageContext.request.contextPath}/aboutHonour.html" title="荣誉资质" id="nynavID92">荣誉资质</a></li>
						<li ><a href="${pageContext.request.contextPath}/aboutDevelopment.html" title="发展历程" id="nynavID93" class="acvier">发展历程</a></li>
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
						<A href="####"><img src="/img/works/x1.jpg" /></A>
						<A href="####"><img src="/img/works/x2.jpg" /></A>
						<A href="####"><img src="/img/works/x3.jpg" /></A>
					</div>
				</div>
				<!-- =++++++++++++++left        left    left   +++++++-->

				<div class="about_left">

					<div id="about_text">

						<%--<p><strong style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">1997年</strong><br/></p><ul style="width: 810.34375px; white-space: normal;"><li><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">董事长王永带领早期团队开始了筚路蓝缕的创业之旅</span></p></li></ul><p style="line-height: 150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></p><p style="line-height: 150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></p><p style="line-height: 150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2001年7月</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p style="line-height:150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">联运环境前身杭州国建工程设备有限公司成立，成为国内最大的道路设备运营商之一，摊铺机、道路设备配件营业额全国第一</span></p></li></ul><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></p><p><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2007年</span></strong></p><ul style="list-style-type: disc;"><li><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">被中联重科评为上海、浙江、安徽地区“优秀经销商”</span></p><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></p></li></ul><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2010年</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p style="line-height:150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">SCMC-ABG摊铺机连续十一年代理商销售营业额第一</span></p></li></ul><p><br/></p><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></p><p><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2011年</span></strong></p><ul style="list-style-type: disc;"><li><p style="line-height:150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">中联重科环卫设备代理销售营业额第一，政府采购项目工程、环卫机械全国营业额第一</span></p></li></ul><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></p><p><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2013年2月</span></strong></p><ul style="list-style-type: disc;"><li><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">浙江联运环境工程股份有限公司成立，开始进军城乡环卫综合保洁、垃圾清运、收集处置等环卫市场</span></p></li></ul><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></p><p><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2013年8月</span></strong></p><ul style="list-style-type: disc;"><li><p style="line-height:150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">参与实施第二届亚洲青少年运动会（简称“亚青会”）运动员村保洁项目</span></p><p style="line-height:150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></p><p><br/></p></li></ul><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2013年9月</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p style="line-height:150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">“亚青会”项目荣获“2013城市固体废气物处理技术与设备国际展览会”银奖</span></p></li></ul><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2013年11月</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p style="line-height: 150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">荣获ISO9001质量管理体系认证证书，ISO14001环境管理体系认证证书</span></p></li></ul><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2014年3月</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p style="line-height: 150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">荣获18001执业健康安全管理体系认证证书</span></p></li></ul><p style="white-space: normal;"><br/></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2014年12月</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">全资子公司浙江联运知慧科技有限公司成立，开始进军智慧环卫、垃圾分类、环卫云平台等领域</span></p></li></ul><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2015年1月</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">被认定为“杭州市高新技术企业”，2015年3月被认定为“浙江省科技型中小企业”</span></p><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></p></li></ul><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2015年3月</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">荣获中华人民共和国物业服务企业资质证书</span></p></li></ul><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></strong></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2016年8月</span></strong><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">成功中标安徽亳州市环卫等“五车信息化监管平台”项目，并正式落地实施，成为公司运营的首个超500万元的信息化大型项目</span>&nbsp;</p></li></ul><p><br/></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2016年9月</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p style="line-height:150%"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">浙江联运环境工程股份有限公司挂牌新三板上市成功，证券代码839166</span></p></li></ul><p><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"><br/></span></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2016年11月</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><div><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">成为中环协垃圾分类与减量专委会副主任委员单位</span>&nbsp;</div></li><li><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">成为智慧环卫和环卫运营专委会副主任委员单位</span><br/></p></li></ul><p style="white-space: normal;"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;"></span></p><p><br/></p><p style="white-space: normal;"><strong><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">2016年12月</span></strong></p><ul style="width: 810.34375px; white-space: normal;"><li><p><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;;">参与制订“中华人民共和国机动车清扫工行业职业技能标准”</span>&nbsp;</p><p><br/></p></li></ul>--%>
${road.introduction}


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
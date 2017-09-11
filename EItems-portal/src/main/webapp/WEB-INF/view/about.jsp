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
				<h2 class="pageTitle">公司介绍</h2>
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
						<li ><a href="${pageContext.request.contextPath}/about.html" title="公司介绍" id="nynavID91" class="acvier">公司介绍</a></li>
						<li ><a href="${pageContext.request.contextPath}/aboutHonour.html" title="荣誉资质" id="nynavID92">荣誉资质</a></li>
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
						<A href="####"><img src="/img/works/x1.jpg" /></A>
						<A href="####"><img src="/img/works/x2.jpg" /></A>
						<A href="####"><img src="/img/works/x3.jpg" /></A>
					</div>
				</div>
				<!-- =++++++++++++++left        left    left   +++++++-->
				<div class="about_left">
					<div id="about_text">
						<p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"></span></p><h1 class="about_dbt" style="margin: 20px 0px 10px; padding: 0px; border: 0px currentColor; border-image: none; color: rgb(85, 85, 85); font-family: &quot;Microsoft YaHei&quot;, simsun, Arial, Helvetica, sans-serif; font-size: 24px; white-space: normal;">杭州钱王万家信息科技有限公司</h1><h3 class="about_xbt" style="border-width: 0px 0px 1px; margin: 0px 0px 20px; padding: 0px 0px 20px; height: auto; color: rgb(102, 102, 102); text-transform: uppercase; line-height: 20px; letter-spacing: 1px; font-family: &quot;Microsoft YaHei&quot;, simsun, Arial, Helvetica, sans-serif; font-size: 14px; font-weight: normal; border-bottom-color: rgb(221, 221, 221); border-bottom-style: solid; white-space: normal;">HANGZHOU &nbsp;QIANWANG WANJIA Technology Co.,Ltd.</h3>
						<%--<p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"></span></p><p style="text-indent: 2em;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">杭州钱王万家信息科技有限公司座落于杭州市余杭经济开发区，是一家致力于城市公共事业综合运营管理系统的研发、应用、销售于一体的高新技术企业，是浙江联运环境工程股份有限公司（证券代码：839166）的全资子公司。公司专注于为城市综合体信息化提供完善的软硬件解决方案，研发符合环境卫生行业发展要求的具有领先技术水准的软硬件系统产品。公司坚持致力于环境全产业链的打造，包括环境综合运用管理系统及硬件设备的研发、销售和运维服务。</span></p><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"></span><img title="about.JPG" style="padding: 5px; border: 1px solid rgb(238, 238, 238); border-image: none; width: 780px; margin-top: 10px; margin-bottom: 10px;" src="/Upload/ueditor/images/2017-01-20/about-5893a399-82e6-4d97-a432-1ce883226d2a.jpg"/><br/></p><h2 class="xbt"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">核心实力</span></h2><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"></span></p><p style="text-indent: 2em;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"></span></p><p style="background: rgb(255, 255, 255); margin: 0pt 0px; line-height: 18.75pt; text-indent: 24pt;"><span id="_baidu_bookmark_start_24" style="line-height: 0px; display: none;">‍</span><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">浙江联运知慧科技有限公司拥有200多名员工，其中各类骨干，博、硕士学历30余名，德、美专家4名，IT技术专家45名之多，环境卫生工程项目运营专家35名，以及一批环卫运营服务，互联网信息，电子环保产品制造，环卫设备服务等方面专业人才。公司通过ISO9001质量管理体系认证，ISO14001环境管理体系认证，OHSAS18001职业健康安全管理体系认证，中国国家强制性产品认证证书，并荣获2015城市固体废气物处理技术与设备国际展览会“争优创新项目奖”及各类专利、软著100余项</span><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">。</span><span id="_baidu_bookmark_end_25" style="line-height: 0px; display: none;">‍</span><span id="_baidu_bookmark_end_19" style="line-height: 0px; display: none;">‍</span><span id="_baidu_bookmark_end_13" style="line-height: 0px; display: none;">‍</span><span id="_baidu_bookmark_end_7" style="line-height: 0px; display: none;">‍</span></p><p style="text-indent: 2em;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"><br/></span></p><p style="text-indent: 2em;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">公司成立以来，已成功研发出了具有自主知识产权的智慧环卫云平台、智慧公路云平台、智慧市政云平台；通过云服务自动化控制等互联网信息技术，在行业内率先构建了一整套领先的环境服务整体解决方案，满足了环卫行业的大数据分析需求。公司在智慧垃圾分类运营以及环境咨询规划、环卫服务、环卫设备销售、公路市政工程建设等多个方面取得了长足的发展。持续引领着智慧环卫发展新趋势，推动着行业标准的升级。公司结合多年的项目运营经验，首创智慧垃圾分类联运四化全服务模式，简称“联运四化模式”，即“前端分类智慧化、过程管控可视化、因地制宜减量化、收运处置一体化”，致力于为用户打造“全过程无忧式增值服务”的一种广域模式。同时，公司采用智慧环卫终端设备来解决新形势下的环卫问题，开创了传统环卫向智慧环卫转变的新局面。</span></p><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"></span><br/></p><h2 class="xbt"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">运营理念</span></h2><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"></span></p><p style="text-indent: 2em;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">浙江联运知慧科技有限公司以“知融环境，慧享生活”为品牌核心价值，致力于倡导和传播“认知、认同、融入环境”并以智能化技术和模式创新开展环境产业服务的理念。</span></p><p style="text-indent: 2em;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"><br/></span></p><p style="text-indent: 2em;"><br/></p><p style="text-indent: 2em;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">公司以持续的产业化升级和创新，在国内率先提出“环境工程产业4.0”的概念，创造了适合不同环境工程条件下的“联运知慧模式”。公司通过智能软硬件技术，为客户创造专业、贴心、高效的品质服务。推动城市环境综合服务形成一个基于物联网、互联网和大数据、云平台的生态产业链，打造环境工程产业4.0领导者。</span></p><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"></span><br/></p><h2 class="xbt"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">业务范围</span></h2><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"></span></p><p style="background: rgb(255, 255, 255); line-height: 25px; text-indent: 2em;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">浙江联运知慧科技有限公司通过以环卫咨询项目的方式，为客户提供环境卫生一体化解决设备整体方案，包括设备选型、产品配置方式和作业管理等，形成以整体解决方案带动环卫软件系统和硬件设施的营销模式。 基于多年环卫行业的销售与服务经验，公司以环境服务为业务核心，深耕环卫，服务市场，以技术为导向，以管理为手段，实现企业的稳步发展。公司长期与沃尔沃、中联重科、斗山、华为、浙江大学、重庆大学等企业、院校开展合作，在高端环境服务产业具有显著竞争力及整体优势。</span></p><p style="background: rgb(255, 255, 255); line-height: 25px; text-indent: 2em;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"><br/></span></p><p style="background: rgb(255, 255, 255); line-height: 25px; text-indent: 2em;"><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">目前，公司的智慧环卫、垃圾分类项目覆盖了浙江、江苏、四川、广东、福建、江西、湖北等省市地区，总业绩突破2亿元，并且以每年以飞速的势头上升。随着管理手段，技术方案、业务流程的完善，公司业绩在很长时间内将会得到持续性大幅度的提</span><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;">升。</span></p><p><span style="font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;"></span><br/></p>--%>

						${aboutUsContent.content}
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
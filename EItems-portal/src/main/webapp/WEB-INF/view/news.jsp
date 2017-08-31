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

<link href="/css/public/default/outDream/about.css" rel="stylesheet" />
<link href="/css/public/default/outDream/default.css" rel="stylesheet" />
<link href="/css/public/default/outDream/product.css" rel="stylesheet" />
<link href="/css/public/default/outDream/reset.css" rel="stylesheet" />
<link href="/css/public/default/outDream/style.css" rel="stylesheet" />
<link href="/css/public/default/outDream/swiper.min.css" rel="stylesheet" />


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
								<li><a class="waves-effect waves-dark" href="../about.html">公司介绍</a></li>
								<li><a class="waves-effect waves-dark" href="../#">公司新闻</a></li>
								<li><a class="waves-effect waves-dark" href="../#">公司文化</a></li>
								<li><a class="waves-effect waves-dark" href="../#">公司活动</a></li>
								<li><a class="waves-effect waves-dark" href="../#">加入我们</a></li>
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
			<div class="col-lg-12">
				<h2 class="pageTitle">公司新闻</h2>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	
	<div class="container">


		<div class="about-main" id="company-profile">





				<!-- =+++++++++++++++++++++-->
				<div class="wrapper">
				<div class="about-con-main" style="width:1200px; ">
					<div style="display:block">
						<ul>
							<li>
								<a href="http://www.dtdream.com:80/companynews/361.jhtml" title="技术流 | 818企业级应用中OpenStack的5个“坑”">
									<h3>技术流 | 818企业级应用中OpenStack的5个“坑”</h3>
									<span>【2017-08-18】</span>
									<p>找不到OpenStack企业级产品怎么办？为什么运维升级新版本OpenStack时会被提示无法升级？OpenStack如何玩转企业级应用？看技术专家为你解惑。</p>
								</a>
							</li>
							<li>
								<a href="http://www.dtdream.com:80/companynews/360.jhtml" title="数梦工场荣获“2017年浙江省信息经济创新引领型企业”">
									<h3>数梦工场荣获“2017年浙江省信息经济创新引领型企业”</h3>
									<span>【2017-08-18】</span>
									<p></p>
								</a>
							</li>
							<li>
								<a href="http://www.dtdream.com:80/companynews/359.jhtml" title="当图书馆遇见大数据，让每个人都能找到最爱的书">
									<h3>当图书馆遇见大数据，让每个人都能找到最爱的书</h3>
									<span>【2017-07-28】</span>
									<p>浙江图书馆的“互联网+”Style</p>
								</a>
							</li>
							<li>
								<a href="http://www.dtdream.com:80/companynews/356.jhtml" title="一场与技术的亲密邂逅 数梦工场·OpenStack Days China 2017小记">
									<h3>一场与技术的亲密邂逅 数梦工场·OpenStack Days China 2017小记</h3>
									<span>【2017-07-25】</span>
									<p>过去48小时里，我们与2000人一起聊了聊技术与开源</p>
								</a>
							</li>
							<li>
								<a href="http://www.dtdream.com:80/companynews/356.jhtml" title="一场与技术的亲密邂逅 数梦工场·OpenStack Days China 2017小记">
									<h3>一场与技术的亲密邂逅 数梦工场·OpenStack Days China 2017小记</h3>
									<span>【2017-07-25】</span>
									<p>过去48小时里，我们与2000人一起聊了聊技术与开源</p>
								</a>
							</li>



							<div class="pagesite" >
								<div>
									共135条记录 1/14页
									&nbsp;<a disabled="disabled">首页</a> <a disabled="disabled">上一页</a>&nbsp;<a href="#" onclick="location.href=encodeURI('index_2.jhtml');">下一页</a> <a href="#" onclick="location.href=encodeURI('index_14.jhtml');">尾页</a>
									&nbsp;第<select onChange="if(this.value==1){location.href=encodeURI('index.jhtml')}else{location.href=encodeURI('index_'+this.value+'.jhtml')}this.disabled='disabled'">
									<option value="1" selected="selected">1</option>
									<option value="2" >2</option>
									<option value="3" >3</option>
									<option value="4" >4</option>
									<option value="5" >5</option>
									<option value="6" >6</option>
									<option value="7" >7</option>
									<option value="8" >8</option>
									<option value="9" >9</option>
									<option value="10" >10</option>
									<option value="11" >11</option>
									<option value="12" >12</option>
									<option value="13" >13</option>
									<option value="14" >14</option>
								</select>页
								</div>
							</div>




						</ul>
					</div>

				</div>
				</div>




			<!--end about-main-->







				<!-- =+++++++++++++++++++++-->




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
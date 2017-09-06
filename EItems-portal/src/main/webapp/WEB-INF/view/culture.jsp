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
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/services.html">服务与支持</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/pricing.html">Pricing</a></li>
						<li class="dropdown">
							<a href="#" data-toggle="dropdown" class="dropdown-toggle waves-effect waves-dark">关于我们 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li class="active"><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/about/aboutUs.html">公司介绍</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news/page.html">公司新闻</a></li>
								<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/culture.html">公司文化</a></li>
								<li><a class="waves-effect waves-dark" href="../#">公司活动</a></li>
								<li><a class="waves-effect waves-dark" href="../#">加入我们</a></li>
							</ul>
						</li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/contact.html">联系我们</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>


	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">企业文化</h2>
			</div>
		</div>
	</div>
	</section>
	<div class="map_box"><!--当前位置-->
		<div class="w1200_center"><!--版块居中-->
			<div class="ny_news_nav">
				<a href="job.aspx" id="nynavID1" class="acvier">企业文化</a>
				<a href="job_ln.aspx" id="nynavID2">员工宣言</a>
				<a href="job_fc.aspx" id="nynavID3">万家语录</a>
				<script language="javascript" type="text/javascript">
                    try {
                        document.getElementById("nynavID" + nynav).className = "acvier";
                    }
                    catch (e) {}
				</script>
			</div>
			<div id="clear"></div>
		</div>
	</div><!--当前位置 END-->

	<section id="content">



		<div class="container">
		<%--<div class="about-main" id="company-profile">--%>
			<div id="nr_main_box">



			<!-- =+++++++++++++++++++++-->

				<!-- =++++++++++++++left        left    left   +++++++-->


				<%--<div id="about_text">--%>
						<!-- =++++++++++++++context   start+++++++-->

				<div id="nrboxstyle">
					<h4 style="text-align:center;font-size:20px;vertical-align:baseline;background:#FFFFFF;font-weight:normal;color:#00A0E8;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						开场白
					</h4>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						一个公司本来没有文化，
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						当这个公司有了梦想，
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						当有相同梦想的人聚在一起，
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						当这些逐梦人有了不同的个性与内涵，
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						这个公司也便有了文化。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						文化不仅是墙上的文字、嘴里的口号，更是行为体现出来的思想；文化不是弘扬出来的，而是实践出来的；我们来到这里，一半听别人的声音，一半呼唤出自己内心的声音；这只是一粒种子，数梦文化要靠大家一起创造。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<h4 style="text-align:center;font-size:20px;vertical-align:baseline;background:#FFFFFF;font-weight:normal;color:#00A0E8;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦文化是什么？
					</h4>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						用一句话来表述数梦文化：以人为本，和而不同。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						“以人为本”这句话我们已经听了很多年，但少有人将其真正落实。我们认为是时代的原因，而现在已经到了“以人为本”的时代。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						因为这是一个互联互通的商业民主时代，一个基于大数据的知本时代，一个客户与人才价值优先的无边界时代，一个开放共享的有机生态圈时代。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						人是什么？是知识、经验、思想、感情、智慧和梦想，这些加在一起叫做知本。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						资本和知本需要相互尊重，恪守边界，找到平衡。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦工场的slogan是：数据连接梦想。数据首先连接的是人，有人才有梦想。人有趣、丰富、完整了，梦想才会有趣、丰富、完整。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦人因同一个梦想而和，又因差别的个性而不同。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						所以我们说，以人为本，和而不同。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>数梦文化做什么？</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						我们认为数梦文化的使命是：让梦想可见，让思想产生，让代码有灵魂，让工程师有魅力，让组织有生命力。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>让梦想可见</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦不是一架机器，而是一个有机生命体。数梦人不是一颗螺丝钉，而是一根神经。数梦的数据，要能感知每一根神经的痛感。数梦的梦想，要能让每一根神经产生快感。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>让思想产生</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数据时代的大航海，需要有思想有创见的开拓者。我们会采用互联式的工作方式和沟通方法，举办云栖公开课、技术高峰论坛和读书会等，来让数梦人产生思想。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>让代码有灵魂</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦工场的愿景是用最卓越的数据技术，去圆最美好的梦想，助力实现青山绿水，民生幸福，政治安定和经济繁荣。当我们看得见梦想，摸得着思想的时候，每写一行代码，都能感觉青山绿水离我们更近一些，窗外的空气也会更清澈一些，下次看病会更方便一些，回家路上也会更通畅一些。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>让工程师有魅力</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						我们还会发掘工程师身上技术的魅力、思想的魅力、性格的魅力以及生活的魅力，让他们获得尊重，产生成就感，爆发最大能量。除了公开课、论坛、讲堂和读书会，在数梦江湖里，我们有侠客行，为每一个有个性的员工录制一段专题；有英雄会，为每一个出色的团队录制一个故事。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>让组织有生命力</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						人才是企业最宝贵的财富，人格是企业最重要的产品，以人为本的文化是企业最强大的生命力。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>数梦文化怎么做？</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦文化将从以下几个方面践行：经营体制、激励政策、工作方式、沟通方法、物质实体、魅力人格体、花名和看不见的气息。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>经营体制</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						文化之树生长于体制的土壤，什么样的经营体制，决定了什么样的文化之树。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>激励政策</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦有着行业内极具竞争力的薪酬，还有员工持股计划以及期权。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>工作方式</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						传统IT企业的工作方式是金字塔状的，它的特点是：层级结构、工种隔离、专业化、稳定、在稳定环境中可预估绩效。数梦将会采用互联网企业的网状工作方式，它的特点是：团组结构、全功能团队、自治权、灵活、在不确定的环境中可以自适应。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>沟通方法</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						在沟通方法，我们会秉持平等、开放、协作、共享的互联网精神，组建一个温暖友爱的梦使馆，与员工零距离沟通。在这里，你的每一个需求都会得到尊重，你的每一个问题都会得到答复， 你也可以成为梦使者。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>物质实体</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						我们有现代派、极简风的工作环境和休闲空间。墙面文字和图案、数梦服饰都将按照互联网的方式展现公司的企业文化。我们的会议室以科幻电影命名。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>魅力人格体</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						我们肯定会塑造一系列魅力人格体，这里有男神女神，但是没有神。这里有姓王的人，但是没有王。这里有孤独的人，但是没有寡人。这里有的，全部都是有个性有魅力的独立人。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>花名</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						每一个数梦人都要取一个花名，可以是历史人物，也可以是武侠角色，还可以是动漫英雄，百无禁忌。花名代表了一种自由飞扬之精神。选择一个花名，是被其人格和作为所吸引。花名是一个心理暗示，让我们渐渐成为我们想成为的自己。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<strong>看不见的气息</strong>
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						因为以花名相称，在数梦，传统IT企业的文化将会变淡，工号文化也会变淡。而数据文化、新航海精神将会自行生长出来。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<h4 style="text-align:center;font-size:20px;vertical-align:baseline;background:#FFFFFF;font-weight:normal;color:#00A0E8;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦人的三个维度
					</h4>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦人有三个维度：军人那样战斗，大师那样工作，诗人那样生活。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						在军人的维度，我们有数梦人自己的三大纪律和八项注意。遵循万物规律，才有百花齐放。遵守铁的纪律，才能真正活泼。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						在大师的维度，我们要认真、专注，把事情做到极致。对梦想负责，对自己负责。我们最大的对手不是别人，而是自己。不断超越自我，才能顶尖世界。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						在诗人的维度，我们并不是说一定要写诗，而是像诗人那样生活。我们倡导的不是嘶喊尖叫和无病呻吟，而是一种柔声细语和云淡风轻，是内心的平静和空灵。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						<br />
					</p>
					<h4 style="text-align:center;font-size:20px;vertical-align:baseline;background:#FFFFFF;font-weight:normal;color:#00A0E8;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						结束语
					</h4>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦工场正用数据技术重构世界，
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						我们是在开创一个时代，
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						数梦文化就是时代现象。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						从现在开始，你就是数梦文化的代言人，
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						你就是数梦工场，
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						你，就是时代。
					</p>
					<p style="text-align:center;font-size:14px;vertical-align:baseline;background:#FFFFFF;color:#555555;font-family:Verdana, Arial, SourceHanSansCNNormal;">
						不忘初心，方得始终。
					</p>


						<!-- =++++++++++++++context   end t+++++++-->

					</div>






				<div id="clear" ></div>
			</div> <!--内容 END-->


				<!-- =+++++++++++++++++++++-->



		<%--</div>--%>
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
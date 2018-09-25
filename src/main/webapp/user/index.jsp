<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		
</script>
<script type="text/javascript">
	function validate() {
		$.ajax({
			url : "../BookServlet?method=Select",
			type : "post",
			dataType : "json",
			success : function(data){  
				var dataObj = data, //返回的result为json格式的数据
				r_type = "";
				r_type += "<option>"+"</option>";
                $.each(data,function(index, item){  
                	
                	r_type += "<option>"+item.r_type+"</option>";  
                });  
               
                $("#r_type").html(r_type);
            }  
		});
	}
</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" property="" />
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/font-awesome.css" rel="stylesheet">
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="laydate/laydate.js"></script>
<script src="laydate/laydate.js"></script>
<!-- 改成你的路径 -->

<!--/web-fonts-->
<link
	href="http://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600"
	rel="stylesheet">
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet"> 
<!--//web-fonts-->
</head>

<body >
	<!--/main-header-->
	<!--/banner-section-->
	<div id="demo-1"
		data-zs-src='["images/4.jpg", "images/2.jpg", "images/1.jpg","images/3.jpg"]'
		data-zs-overlay="dots">
		<div class="demo-inner-content">
			<!--/header-w3l-->
			<div class="header-w3-agileits" id="home">
				<div class="inner-header-agile">
					<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<h1>
							<a href="index.jsp"><span>R</span>esort
								<p class="s-log">Booking</p></a>

						</h1>
					</div>
					<!-- navbar-header -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">

						<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp">首页</a></li>
							<li><a href="about.jsp">关于</a></li>
							<li><a href="gallery.jsp">画廊</a></li>
							<li><a href="#book">预订</a></li>
						</ul>

					</div>
					<div class="clearfix"></div>
					</nav>

				</div>

				<!--//header-w3l-->
				<!--/banner-info-->
				<div class="baner-info">
					<h3>欢迎入住xx豪华酒店</h3>
					<h4>预订你的梦想度假胜地</h4>
					<p>享受您的每一天</p>
				</div>
				<!--/banner-ingo-->

			</div>
		</div>
	</div>
	<!--/banner-section-->
	<!--//main-header-->
	<div class="special featured">
		<div class="container">
			<div class="ab-w3l-spa">
				<h3 class="tittle">欢迎来到我们的酒店!</h3>
				<p align="left">xx酒店集团经营管理着403间酒店，包括261间xx酒店，142间面向中端市场的“xxxx”酒店，以及与总部设在北美的xx酒店管理公司合资经营的、分布在12个国家中的18间“xx”酒店。它与xx酒店管理公司组合的全球营销联盟，令世界范围内双方旗下酒店总数超过了2700间，其中500多间酒店共同使用xx的品牌。xx酒店集团在全球80个国家内有着逾71000名雇员
				</p>
			</div>
			<!-- services -->
			<div class="w3_agileits_services_grids">
				<div
					class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
					<div class="w3_agileits_services_grid_agile">
						<div class="w3_agileits_services_grid_1">
							<img src="images/5.jpg" alt="service-img">
						</div>
						<h3>豪华房</h3>
					</div>
				</div>
				<div
					class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
					<div class="w3_agileits_services_grid_agile">
						<div class="w3_agileits_services_grid_1">
							<img src="images/6.jpg" alt="service-img">
						</div>
						<h3>豪华客房</h3>
					</div>
				</div>
				<div
					class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
					<div class="w3_agileits_services_grid_agile">
						<div class="w3_agileits_services_grid_1">
							<img src="images/7.jpg" alt="service-img">
						</div>
						<h3>游泳池</h3>
					</div>
				</div>
				<div
					class="col-md-3 w3_agileits_services_grid hvr-overline-from-center">
					<div class="w3_agileits_services_grid_agile">
						<div class="w3_agileits_services_grid_1">
							<img src="images/8.jpg" alt="service-img">
						</div>
						<h3>Spa</h3>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- //services -->

		</div>
	</div>
	<div class="featured-facility">
		<!-- welcome -->

		<div class="spa-agile">
			<h3 class="tittle fea">特色设施</h3>
			<div class="col-md-3 spa-grid">

				<i class="fa fa-cutlery" aria-hidden="true"></i>

				<h4>餐厅</h4>

			</div>
			<div class="col-md-3 spa-grid">

				<i class="fa fa-glass" aria-hidden="true"></i>

				<h4>酒吧</h4>

			</div>
			<div class="col-md-3 spa-grid lost">

				<i class="fa fa-wheelchair-alt" aria-hidden="true"></i>

				<h4>健身房</h4>

			</div>
			<div class="col-md-3 spa-grid lost">

				<i class="fa fa-car" aria-hidden="true"></i>

				<h4>接送</h4>

			</div>
			<div class="clearfix"></div>
		</div>

		<!-- //welcome -->
	</div>
	<!-- about-bottom -->
	<div class="about-bottom">
		<div class="col-md-6 w3l_about_bottom_left">
			<div class="video-grid-single-page-agileits">
				<div data-video="44fbHx7P-t8" id="video">
					<img src="images/watch.jpg" alt="" class="img-responsive" />
				</div>
			</div>

			<div class="w3l_about_bottom_left_video">
				<h4></h4>
			</div>
		</div>
		<div class="col-md-6 w3l_about_bottom_right one">
			<h3 class="tittle why">为什么选择我们 ？</h3>
			<div class="panel-group w3l_panel_group_faq" id="accordion"
				role="tablist" aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title asd">
							<a class="pa_italic" role="button" data-toggle="collapse"
								data-parent="#accordion" href="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne"> <span
								class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
								class="glyphicon glyphicon-minus" aria-hidden="true"></i>餐厅
							</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body panel_text">
							作为xx外滩xx酒店久负盛名的高级西餐厅，xx餐厅让您品味西式美食飨宴。餐厅主厨主理和设计的时令菜单，精选当季新鲜食材，延续摩登西式美食概念，以精湛烹饪技艺和无限创意，演绎经典与摩登完美融合的西餐体验。
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title asd">
							<a class="pa_italic collapsed" role="button"
								data-toggle="collapse" data-parent="#accordion"
								href="#collapseTwo" aria-expanded="false"
								aria-controls="collapseTwo"> <span
								class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
								class="glyphicon glyphicon-minus" aria-hidden="true"></i>交通出行
							</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body panel_text">
							酒店距离上海浦东国际机场47公里；距离上海虹桥机场14.5公里；距离火车站5公里；距离外滩0.5公里；距离市中心人民广场2公里</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
						<h4 class="panel-title asd">
							<a class="pa_italic collapsed" role="button"
								data-toggle="collapse" data-parent="#accordion"
								href="#collapseThree" aria-expanded="false"
								aria-controls="collapseThree"> <span
								class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
								class="glyphicon glyphicon-minus" aria-hidden="true"></i>给我们尊贵的顾客最好的照顾
							</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingThree">
						<div class="panel-body panel_text">
							从管家到门房，我们提供广泛的宾客服务，确保您有一个难忘的xx之旅。如您想购物，我们可以提供本地零售商店及附近购物中心的信息，还可以以较低的收费为您提供一位双语购物导购。
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	</div>
	<!-- //about-bottom -->
	<!-- about-bottom -->
	<a name="book"></a>
	<div class="about-bottom" id="ab">
		<div class="col-md-6 w3l_about_bottom_right two">
			<h3 class="tittle why">预订房间</h3>
			<div class="book-form">

				<form action="../BookServlet?method=Book" method="post">
					<div class="col-md-6 form-date-w3-agileits">
						<label><i class="fa fa-user" aria-hidden="true"></i> 姓名 :</label>
						<input type="text" name="name"  required="">
					</div>
					<div class="col-md-6 form-date-w3-agileits second-agile">
						<label><i class="fa fa-envelope" aria-hidden="true"></i>
							手机号 :</label> <input type="text" name="phone" 
							required="">
					</div>
					<div class="col-md-6 form-date-w3-agileits">
						<label><i class="fa fa-calendar" aria-hidden="true"></i>
							到达日期 ：</label> <input type="text" name="arrivalDate" id="ArrivalDate" required="">

					</div>
					<div class="col-md-6 form-time-w3layouts second-agile">
						<label><i class="fa fa-clock-o" aria-hidden="true"></i>时间
							：</label> <input type="text" name="arrivalTime" id="ArrivalTime" required="">
					</div>
					<div class="col-md-6 form-date-w3-agileits">
						<label><i class="fa fa-calendar" aria-hidden="true"></i>离开日期
							：</label> <input type="text" name="departureDate" id="DepartureDate" required="">

					</div>
					<div class="col-md-6 form-time-w3layouts second-agile">
						<label><i class="fa fa-clock-o" aria-hidden="true"></i>时间
							：</label> <input type="text" name="departureTime" id="DepartureTime" required="">
					</div>
					<div class="col-md-6 form-left-agileits-w3layouts bottom-w3ls">
						<label><i class="fa fa-home" aria-hidden="true"></i>选择房间类型：</label>
						<select name="r_type" id="r_type" class="form-control" onmouseover="validate();">
							
						</select>
					</div>
					<div class="col-md-6 form-left-agileits-w3layouts second-agile">
						<label><i class="fa fa-users" aria-hidden="true"></i>人数：</label> <select
							class="form-control" name="p_num">
							<option></option>
							<option>1 人</option>
							<option>2 人</option>
							<option>3 人</option>
							<option>4 人</option>
							<option>5 人</option>
							<option>更多</option>
						</select>
					</div>
					<div class="clearfix"></div>
					<div class="make wow shake" data-wow-duration="1s"
						data-wow-delay=".5s">
						<input type="submit" value="预订">
					</div>
				</form>
			</div>

		</div>
		<div class="col-md-6 w3l_about_bottom_left">

			<img src="images/33.jpg" alt="" class="img-responsive" />
			<div class="w3l_about_bottom_left_video book-text">
				<h4>无需注册即刻预订</h4>
			</div>
		</div>

		<div class="clearfix"></div>
	</div>
	<!-- //about -->

	<!-- Footer -->
	<div class="w3l-footer">
		<div class="container">
			<div class="footer-info-agile">
				<div class="col-md-2 footer-info-grid links">
					<h4>快速链接</h4>
					<ul>
						<li><a href="index.jsp">首页</a></li>
						<li><a href="about.jsp">关于</a></li>
						<li><a href="gallery.jsp">画廊</a></li>
						<li><a href="#book">预订</a></li>

					</ul>
				</div>
				<div class="col-md-3 footer-info-grid address">
					<h4>Address</h4>
					<address>
						<ul>
							<li>Mexico United States 3000</li>
							<li>40019 Honey Street</li>
							<li>BO,Mexico</li>
							<li>Telephone : +1 (734) 123-4567</li>
							<li>Email : <a class="mail" href="mailto:mail@example.com">info(at)example.com</a></li>
						</ul>
					</address>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>Instagram</h4>
					<div class="footer-grid-instagram">
						<a href="javascript:"><img src="images/f1.jpg" alt=" "
							class="img-responsive"></a>
					</div>
					<div class="footer-grid-instagram">
						<a href="javascript:"><img src="images/f2.jpg" alt=" "
							class="img-responsive"></a>
					</div>
					<div class="footer-grid-instagram">
						<a href="javascript:"><img src="images/f3.jpg" alt=" "
							class="img-responsive"></a>
					</div>
					<div class="footer-grid-instagram">
						<a href="javascript:"><img src="images/f4.jpg" alt=" "
							class="img-responsive"></a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 footer-info-grid">
					<div class="connect-social">
						<h4>联系我们</h4>
						<section class="social">
						<ul>
							<li><a class="icon fb" href="javascript:"><i
									class="fa fa-facebook"></i></a></li>
							<li><a class="icon tw" href="javascript:"><i
									class="fa fa-twitter"></i></a></li>

							<li><a class="icon pin" href="javascript:"><i
									class="fa fa-pinterest"></i></a></li>
							<li><a class="icon db" href="javascript:"><i
									class="fa fa-dribbble"></i></a></li>
							<li><a class="icon gp" href="javascript:"><i
									class="fa fa-google-plus"></i></a></li>
						</ul>
						</section>

					</div>

				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>

	<a href="#home" id="toTop" class="scroll" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
	<script>
		$(document).ready(function() {
			$(".dropdown").hover(function() {
				$('.dropdown-menu', this).stop(true, true).slideDown("fast");
				$(this).toggleClass('open');
			}, function() {
				$('.dropdown-menu', this).stop(true, true).slideUp("fast");
				$(this).toggleClass('open');
			});
		});
	</script>
	<!-- //Dropdown-Menu-JavaScript -->

	<script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
	<!-- search-jQuery -->
	<script src="js/main.js"></script>

	<!--/script-->
	<script src="js/simplePlayer.js"></script>
	<script>
		$("document").ready(function() {
			$("#video").simplePlayer();
		});
	</script>
	<!-- flexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!--//script for portfolio-->
	<!-- Calendar -->
	<link rel="stylesheet" href=".css/jquery-ui.css" />
	<script src="js/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3")
					.datepicker();
		});
	</script>
	<!-- //Calendar -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>

	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			/*
						var defaults = {
				  			containerID: 'toTop', // fading element id
							containerHoverID: 'toTopHover', // fading element hover id
							scrollSpeed: 1200,
							easingType: 'linear' 
				 		};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!--end-smooth-scrolling-->
	<!--js for bootstrap working-->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<script>
		//执行一个laydate实例
		laydate.render({
			elem : '#ArrivalDate' //指定元素
			,
			theme : '#000000'
		});
		laydate.render({
			elem : '#DepartureDate' //指定元素
			,
			theme : '#000000'
		});
		laydate.render({
			elem : '#ArrivalTime',
			type : 'time',
			theme : '#000000'
		});
		laydate.render({
			elem : '#DepartureTime',
			type : 'time',
			theme : '#000000'
		});
	</script>
</body>

</html>
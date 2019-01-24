
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Home</title>
<!-- Favicon -->
<link rel="shortcut icon" type="image/icon"
	href="/PetProject/assets/images/favicon.ico" />
<!-- Font Awesome -->
<link href="/PetProject/assets/css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="/PetProject/assets/css/bootstrap.css" rel="stylesheet">
<!-- Slick slider -->
<link rel="stylesheet" type="text/css"
	href="/PetProject/assets/css/slick.css" />
<!-- Fancybox slider -->
<link rel="stylesheet" href="/PetProject/assets/css/jquery.fancybox.css"
	type="text/css" media="screen" />
<!-- Animate css -->
<link rel="stylesheet" type="text/css"
	href="/PetProject/assets/css/animate.css" />
<!-- Progress bar  -->
<link rel="stylesheet" type="text/css"
	href="/PetProject/assets/css/bootstrap-progressbar-3.3.4.css" />
<!-- Theme color -->
<link id="switcher"
	href="/PetProject/assets/css/theme-color/default-theme.css"
	rel="stylesheet">

<!-- Main Style -->
<link href="/PetProject/assets/css/style.css" rel="stylesheet">
<!-- login Style -->
<link href="/PetProject/assets/css/login/login.css" rel="stylesheet">

<!-- alert -->
<link
	href="//cdnjs.cloudflare.com/ajax/libs/alertify.js/0.3.10/alertify.core.css"
	rel="stylesheet">
<link
	href="//cdnjs.cloudflare.com/ajax/libs/alertify.js/0.3.10/alertify.default.css"
	rel="stylesheet">

<!-- Fonts -->

<!-- Open Sans for body font -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!-- Lato for Title -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<!-- BEGAIN PRELOADER -->
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- END PRELOADER -->

	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"><i
		class="glyphicon glyphicon-chevron-up"></i></a>
	<!-- END SCROLL TOP BUTTON -->

	<!-- Start header -->
	<header id="header">
		<!-- header top search -->
		<div class="header-top">
			<div class="container">
				<form action="">
					<div id="search">
						<input type="text"
							placeholder="Type your search keyword here and hit Enter..."
							name="s" id="m_search" style="display: inline-block;">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
		<!-- header bottom -->
		<div class="header-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-6"></div>
					<div class="col-md-6 col-sm-6 col-xs-6">
						<div class="header-login">

							<c:if test="${!empty  user}">
								<c:out
									value="<span class='Username' >HI, ${user.memberName} </span>"
									escapeXml="false" />
								<c:out
									value="  <a class='login modal-form' id='Logout'> Logout</a>" 
									escapeXml="false" /> 
							</c:if>

							<c:if test="${empty  user}">
								<c:out
								value=" <a class='login modal-form' data-target='#login-form'
								data-toggle='modal' href='#' id='Login'>Login / Sign Up</a>"
									escapeXml="false" />
							</c:if>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- End header -->
	
	<!-- Start login modal window -->
	<div aria-hidden="false" role="dialog" tabindex="-1" id="login-form"
		class="modal leread-modal fade in">
		<div class="modal-dialog">
			<!-- Start login section -->
			<div id="login-content" class="modal-content">
				<div class="modal-header">
					<button aria-label="Close" data-dismiss="modal" class="close"
						type="button">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title">
						<i class="fa fa-unlock-alt"></i>Login
					</h4>
				</div>
				<div class="modal-body">
					<form id="login">
						<div class="form-group">
							<input type="email" placeholder="User email" name="email"
								class="form-control" title="請輸入信箱">
						</div>
						<div class="form-group">
							<input type="password" placeholder="Password" name="password"
								class="form-control" title="請輸入密碼">
						</div>

						<div class="loginbox">
							<label><input type="checkbox"><span>Remember
									me</span></label> <input type="submit" class="btn signin-btn" value="SIGN IN"><span
								class="errorspan" id="errorspan"></span>
						</div>
					</form>
				</div>
				<div class="modal-footer footer-box">
					<a href="#" id="forgotpsw">Forgot password ?</a>
					<p>
					<div>
						No account ? <a id="signup-btn" href="#">Sign Up.</a>
					</div>
				</div>
			</div>
			<!-- Start signup section -->
			<div id="signup-content" class="modal-content">
				<div class="modal-header">
					<button aria-label="Close" data-dismiss="modal" class="close"
						type="button">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title">
						<i class="fa fa-lock"></i>Sign Up
					</h4>
				</div>
				<div class="modal-body">
					<form id="signon" action="<c:url value='/signon'/>">
						<div class="form-group">
							<input type="email" placeholder="User email" class="form-control"
								title="請輸入信箱" name="email">
						</div>
						<div class="form-group">
							<p class="Description" id="checkemail"></p>
						</div>
						<div class="form-group">
							<input type="password" id="password" placeholder="password"
								class="form-control" title="請輸入密碼" name="psw">
						</div>
						<div class="form-group">
							<input type="password" id="checkpass" placeholder="checkpassword"
								class="form-control" title="與密碼相附">
						</div>
						<div class="form-group">
							<p class="Description" id="checkpassword"></p>
						</div>
						<div class="form-group">
							<input type="text" placeholder="name" class="form-control"
								title="請輸入暱稱" name="memberName">
						</div>
						<div class="form-group">
							<input type="text" placeholder="address" class="form-control"
								title="請輸入地址" name="address">
						</div>
						<div class="form-group">
							<input type="text" placeholder="cellphone-number "
								class="form-control" title="請輸入手機" name="memberPhone">
						</div>

						<div class="signupbox">
							<span>Already got account? <a id="login-btn" href="#">Sign
									In.</a></span>
						</div>
						<div class="loginbox">
							<input type="submit" class="btn signin-btn" value="SIGN UP"><span
								class="errorspan" id="errorspan"></span>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End login modal window -->

	<!-- BEGIN MENU -->
	<section id="menu-area">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- LOGO -->
					<!-- TEXT BASED LOGO -->
					<a href="index.jsp"><img src="assets/images/logo.png"
						class="logo_img"></a>
					<!-- IMG BASED LOGO  -->
					<!-- <a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt="logo"></a> -->
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">會員中心 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/PetProject/member/member.jsp">會員資料</a></li>

								<li><a id="fosteritem" onclick="fostercheck()">送養資料</a></li>
								<li><a href="/PetProject/member/membermessage"><span class="fa fa-search"></span>動態消息 </a></li>
							</ul></li>
						<li><a href="">寵物生活館</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寵物百科 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="dog.jsp">Dog</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寄養&領養<span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="">寄養</a></li>
								<li><a href="findFosterForm">領養</a></li>
<!-- 								<li><a id ="xxx" href="" onclick='check()' data-toggle="" data-target="">申請送養</a></li> -->
								<li><a id="application_foster" onclick="check()" data-toggle="" data-target="">申請送養</a></li>
							</ul></li>
						
<!-- 						<li><a href="">寵物旅遊</a></li> -->
<!-- 						<li><a href="">寵物商城</a></li> -->
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						    data-toggle="dropdown">寵物活動<span class="fa fa-angle-down"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="ActivityHome.jsp">活動首頁</a></li>
							<li><a href="/PetProject/activityCommission">一起去旅遊</a></li>
							<li><a href="">查詢參加活動</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
				<a href="#" id="search-icon"> <i class="fa fa-search"> </i>
				</a>
			</div>
		</nav>
	</section>
	<!-- END MENU -->

	<!-- Start slider -->
	<section id="slider">
		<div class="main-slider">
			<div class="single-slide">
				<img src="assets/images/slider-1.jpg" alt="img">
				<div class="slide-content">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="slide-article">
									<h1 class="wow fadeInUp" data-wow-duration="0.5s"
										data-wow-delay="0.5s">Dog</h1>
									<p class="wow fadeInUp" data-wow-duration="0.5s"
										data-wow-delay="0.75s">Lorem Ipsum is simply dummy text of
										the printing and typesetting industry. Lorem Ipsum has been
										the industry's standard dummy text ever since</p>
									<a class="read-more-btn wow fadeInUp" data-wow-duration="1s"
										data-wow-delay="1s" href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="single-slide">
				<img src="assets/images/slider-3.jpg" alt="img">
				<div class="slide-content">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="slide-article">
									<h1 class="wow fadeInUp" data-wow-duration="0.5s"
										data-wow-delay="0.5s">We are Best Team & Support you
										always</h1>
									<p class="wow fadeInUp" data-wow-duration="0.5s"
										data-wow-delay="0.75s">Lorem Ipsum is simply dummy text of
										the printing and typesetting industry. Lorem Ipsum has been
										the industry's standard dummy text ever since</p>
									<a class="read-more-btn wow fadeInUp" data-wow-duration="1s"
										data-wow-delay="1s" href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="single-slide">
				<img src="assets/images/slider-4.jpg" alt="img">
				<div class="slide-content">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="slide-article">
									<h1 class="wow fadeInUp" data-wow-duration="0.5s"
										data-wow-delay="0.5s">We are Best Team & Support you
										always</h1>
									<p class="wow fadeInUp" data-wow-duration="0.5s"
										data-wow-delay="0.75s">Lorem Ipsum is simply dummy text of
										the printing and typesetting industry. Lorem Ipsum has been
										the industry's standard dummy text ever since</p>
									<a class="read-more-btn wow fadeInUp" data-wow-duration="1s"
										data-wow-delay="1s" href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End slider -->

	<!-- Start Feature -->
	<section id="feature">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-area">
						<h2 class="title">Features</h2>
						<span class="line"></span>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour</p>
					</div>
				</div>
				<div class="col-md-12">
					<div class="feature-content">
						<div class="row">
							<div class="col-md-4 col-sm-6">
								<div class="single-feature wow zoomIn">
									<i class="fa fa-leaf feature-icon"></i>
									<h4 class="feat-title">Creative Design</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable.</p>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="single-feature wow zoomIn">
									<i class="fa fa-mobile feature-icon"></i>
									<h4 class="feat-title">Responsive Layouts</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable.</p>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="single-feature wow zoomIn">
									<i class="fa fa-thumbs-o-up feature-icon"></i>
									<h4 class="feat-title">Great Features</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable.</p>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="single-feature wow zoomIn">
									<i class="fa fa-gears feature-icon"></i>
									<h4 class="feat-title">Multiple Options</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable.</p>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="single-feature wow zoomIn">
									<i class="fa fa-code feature-icon"></i>
									<h4 class="feat-title">Quality Code</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable.</p>
								</div>
							</div>
							<div class="col-md-4 col-sm-6">
								<div class="single-feature wow zoomIn">
									<i class="fa fa-smile-o feature-icon"></i>
									<h4 class="feat-title">Awesome Support</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form, by injected humour, or randomised words which don't look
										even slightly believable.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Feature -->

	<!-- Start about  -->
	<section id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-area">
						<h2 class="title">About us</h2>
						<span class="line"></span>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour</p>
					</div>
				</div>
				<div class="col-md-12">
					<div class="about-content">
						<div class="row">
							<div class="col-md-6">
								<div class="our-skill">
									<h3>Our Skills</h3>
									<div class="our-skill-content">
										<p>There are many variations of passages of Lorem Ipsum
											available, but the majority have suffered alteration in some
											form, by injected humour</p>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="100">
												<span class="progress-title">Html5</span>
											</div>
										</div>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="85">
												<span class="progress-title">Css3</span>
											</div>
										</div>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="70">
												<span class="progress-title">JQuery</span>
											</div>
										</div>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="60">
												<span class="progress-title">wordPress</span>
											</div>
										</div>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="40">
												<span class="progress-title">Php</span>
											</div>
										</div>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="25">
												<span class="progress-title">Java</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="why-choose-us">
									<h3>Why Choose Us?</h3>
									<div class="panel-group why-choose-group" id="accordion">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseOne"> Awesome Design Layout <span
														class="fa fa-minus-square"></span>
													</a>
												</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse in">
												<div class="panel-body">
													<img class="why-choose-img" src="assets/images/testi1.jpg"
														alt="img">
													<p>Anim pariatur cliche reprehenderit, enim eiusmod
														high life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.</p>
												</div>
											</div>
										</div>
										<div class="panel panel-default ">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseTwo"> Quality Coding <span
														class="fa fa-plus-square"></span>
													</a>
												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse">
												<div class="panel-body">
													<p>Anim pariatur cliche reprehenderit, enim eiusmod
														high life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.</p>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseThree"> Great Support <span
														class="fa fa-plus-square"></span>
													</a>
												</h4>
											</div>
											<div id="collapseThree" class="panel-collapse collapse">
												<div class="panel-body">
													<p>Anim pariatur cliche reprehenderit, enim eiusmod
														high life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end about -->

	<!-- Start counter -->
	<section id="counter">
		<div class="counter-overlay">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="counter-area">
							<div class="row">
								<!-- Start single counter -->
								<div class="col-md-3 col-sm-6">
									<div class="single-counter">
										<div class="counter-icon">
											<i class="fa fa-suitcase"></i>
										</div>
										<div class="counter-no counter">1275</div>
										<div class="counter-label">Projects</div>
									</div>
								</div>
								<!-- End single counter -->
								<!-- Start single counter -->
								<div class="col-md-3 col-sm-6">
									<div class="single-counter">
										<div class="counter-icon">
											<i class="fa fa-clock-o"></i>
										</div>
										<div class="counter-no counter">5275</div>
										<div class="counter-label">Hours Work</div>
									</div>
								</div>
								<!-- End single counter -->
								<!-- Start single counter -->
								<div class="col-md-3 col-sm-6">
									<div class="single-counter">
										<div class="counter-icon">
											<i class="fa fa-trophy"></i>
										</div>
										<div class="counter-no counter">350</div>
										<div class="counter-label">Awards</div>
									</div>
								</div>
								<!-- End single counter -->
								<!-- Start single counter -->
								<div class="col-md-3 col-sm-6">
									<div class="single-counter">
										<div class="counter-icon">
											<i class="fa fa-users"></i>
										</div>
										<div class="counter-no counter">875</div>
										<div class="counter-label">Clients</div>
									</div>
								</div>
								<!-- End single counter -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End counter -->


	<!-- Start Service -->
	<section id="service">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-area">
						<h2 class="title">Our Services</h2>
						<span class="line"></span>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour</p>
					</div>
				</div>
				<div class="col-md-12">
					<div class="service-content">
						<div class="row">
							<!-- Start single service -->
							<div class="col-md-4 col-sm-6">
								<div class="single-service wow zoomIn">
									<i class="fa fa-desktop service-icon"></i>
									<h4 class="service-title">Web Development</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form.</p>
								</div>
							</div>
							<!-- End single service -->
							<!-- Start single service -->
							<div class="col-md-4 col-sm-6">
								<div class="single-service wow zoomIn">
									<i class="fa fa-paw service-icon"></i>
									<h4 class="service-title">Digital Design</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form.</p>
								</div>
							</div>
							<!-- End single service -->
							<!-- Start single service -->
							<div class="col-md-4 col-sm-6">
								<div class="single-service wow zoomIn">
									<i class="fa fa-magic service-icon"></i>
									<h4 class="service-title">Marketing</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form.</p>
								</div>
							</div>
							<!-- End single service -->
							<!-- Start single service -->
							<div class="col-md-4 col-sm-6">
								<div class="single-service wow zoomIn">
									<i class="fa fa-shopping-cart service-icon"></i>
									<h4 class="service-title">E-commerce</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form.</p>
								</div>
							</div>
							<!-- End single service -->
							<!-- Start single service -->
							<div class="col-md-4 col-sm-6">
								<div class="single-service wow zoomIn">
									<i class="fa fa-mobile service-icon"></i>
									<h4 class="service-title">App Development</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form.</p>
								</div>
							</div>
							<!-- End single service -->
							<!-- Start single service -->
							<div class="col-md-4 col-sm-6">
								<div class="single-service wow zoomIn">
									<i class="fa fa-rocket service-icon"></i>
									<h4 class="service-title">S.E.O</h4>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered alteration in some
										form.</p>
								</div>
							</div>
							<!-- End single service -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Service -->

	<!-- Start Pricing table -->
	<section id="pricing-table">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-area">
						<h2 class="title">Our Pricing Tables</h2>
						<span class="line"></span>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour</p>
					</div>
				</div>
				<div class="col-md-12">
					<div class="pricing-table-content">
						<div class="row">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="single-table-price wow fadeInUp"
									data-wow-duration="0.5s" data-wow-delay="0.5s">
									<div class="price-header">
										<span class="price-title">Basic</span>
										<div class="price">
											<sup class="price-up">$</sup> 25 <span class="price-down">/mo</span>
										</div>
									</div>
									<div class="price-article">
										<ul>
											<li>2GB Space</li>
											<li>10GB Bandwidth</li>
											<li>Free Domain</li>
											<li>Free Email</li>
											<li>Unlimited Support</li>
										</ul>
									</div>
									<div class="price-footer">
										<a class="purchase-btn" href="#">Purchase</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="single-table-price wow fadeInUp"
									data-wow-duration="0.75s" data-wow-delay="0.75s">
									<div class="price-header">
										<span class="price-title">Advanced</span>
										<div class="price">
											<sup class="price-up">$</sup> 50 <span class="price-down">/mo</span>
										</div>
									</div>
									<div class="price-article">
										<ul>
											<li>2GB Space</li>
											<li>10GB Bandwidth</li>
											<li>Free Domain</li>
											<li>Free Email</li>
											<li>Unlimited Support</li>
										</ul>
									</div>
									<div class="price-footer">
										<a class="purchase-btn" href="#">Purchase</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="single-table-price featured-price wow fadeInUp"
									data-wow-duration="1s" data-wow-delay="1s">
									<div class="price-header">
										<span class="price-title">Professional</span>
										<div class="price">
											<sup class="price-up">$</sup> 100 <span class="price-down">/mo</span>
										</div>
									</div>
									<div class="price-article">
										<ul>
											<li>2GB Space</li>
											<li>10GB Bandwidth</li>
											<li>Free Domain</li>
											<li>Free Email</li>
											<li>Unlimited Support</li>
										</ul>
									</div>
									<div class="price-footer">
										<a class="purchase-btn" href="#">Purchase</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="single-table-price wow fadeInUp"
									data-wow-duration="1.15s" data-wow-delay="1.15s">
									<div class="price-header">
										<span class="price-title">Exclusive</span>
										<div class="price">
											<sup class="price-up">$</sup> 125 <span class="price-down">/mo</span>
										</div>
									</div>
									<div class="price-article">
										<ul>
											<li>2GB Space</li>
											<li>10GB Bandwidth</li>
											<li>Free Domain</li>
											<li>Free Email</li>
											<li>Unlimited Support</li>
										</ul>
									</div>
									<div class="price-footer">
										<a class="purchase-btn" href="#">Purchase</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Pricing table -->

	<!-- Start Pricing table -->
	<section id="our-team">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-area">
						<h2 class="title">Our Team</h2>
						<span class="line"></span>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour</p>
					</div>
				</div>
				<div class="col-md-12">
					<div class="our-team-content">
						<div class="row">
							<!-- Start single team member -->
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="single-team-member">
									<div class="team-member-img">
										<img src="assets/images/team-member-2.png"
											alt="team member img">
									</div>
									<div class="team-member-name">
										<p>John Doe</p>
										<span>CEO</span>
									</div>
									<p>Contrary to popular belief, Lorem Ipsum is not simply
										random text. It has roots in a piece of classical Latin
										literature from 45 BC, making it over 2000 years old.</p>
									<div class="team-member-link">
										<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
											class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a>
									</div>
								</div>
							</div>
							<!-- Start single team member -->
							<!-- Start single team member -->
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="single-team-member">
									<div class="team-member-img">
										<img src="assets/images/team-member-1.png"
											alt="team member img">
									</div>
									<div class="team-member-name">
										<p>Bernice Neumann</p>
										<span>Designer</span>
									</div>
									<p>Contrary to popular belief, Lorem Ipsum is not simply
										random text. It has roots in a piece of classical Latin
										literature from 45 BC, making it over 2000 years old.</p>
									<div class="team-member-link">
										<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
											class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a>
									</div>
								</div>
							</div>
							<!-- Start single team member -->
							<!-- Start single team member -->
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="single-team-member">
									<div class="team-member-img">
										<img src="assets/images/team-member-3.png"
											alt="team member img">
									</div>
									<div class="team-member-name">
										<p>Dvid Cameron</p>
										<span>Developer</span>
									</div>
									<p>Contrary to popular belief, Lorem Ipsum is not simply
										random text. It has roots in a piece of classical Latin
										literature from 45 BC, making it over 2000 years old.</p>
									<div class="team-member-link">
										<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
											class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a>
									</div>
								</div>
							</div>
							<!-- Start single team member -->
							<!-- Start single team member -->
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="single-team-member">
									<div class="team-member-img">
										<img src="assets/images/team-member-1.png"
											alt="team member img">
									</div>
									<div class="team-member-name">
										<p>Bernice Neumann</p>
										<span>Designer</span>
									</div>
									<p>Contrary to popular belief, Lorem Ipsum is not simply
										random text. It has roots in a piece of classical Latin
										literature from 45 BC, making it over 2000 years old.</p>
									<div class="team-member-link">
										<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
											class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a>
									</div>
								</div>
							</div>
							<!-- Start single team member -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Pricing table -->

	<!-- Start Testimonial section -->
	<section id="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-12">
							<div class="title-area">
								<h2 class="title">Whats Client Say</h2>
								<span class="line"></span>
							</div>
						</div>
						<div class="col-md-12">
							<!-- Start testimonial slider -->
							<div class="testimonial-slider">
								<!-- Start single slider -->
								<div class="single-slider">
									<div class="testimonial-img">
										<img src="assets/images/testi1.jpg" alt="testimonial image">
									</div>
									<div class="testimonial-content">
										<p>There are many variations of passages of Lorem Ipsum
											available, but the majority have suffered alteration in some
											form, by injected humour, or randomised words which don't
											look even slightly believable.</p>
										<h6>
											Bernice Neumann, <span>Designer</span>
										</h6>
									</div>
								</div>
								<!-- Start single slider -->
								<div class="single-slider">
									<div class="testimonial-img">
										<img src="assets/images/testi3.jpg" alt="testimonial image">
									</div>
									<div class="testimonial-content">
										<p>There are many variations of passages of Lorem Ipsum
											available, but the majority have suffered alteration in some
											form, by injected humour, or randomised words which don't
											look even slightly believable.</p>
										<h6>
											John Dow, <span>CEO</span>
										</h6>
									</div>
								</div>
								<!-- Start single slider -->
								<div class="single-slider">
									<div class="testimonial-img">
										<img src="assets/images/testi2.jpg" alt="testimonial image">
									</div>
									<div class="testimonial-content">
										<p>There are many variations of passages of Lorem Ipsum
											available, but the majority have suffered alteration in some
											form, by injected humour, or randomised words which don't
											look even slightly believable.</p>
										<h6>
											Michel, <span>Developer</span>
										</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6"></div>
			</div>
		</div>
	</section>
	<!-- End Testimonial section -->

	<!-- Start Clients brand -->
	<section id="clients-brand">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="clients-brand-area">
						<ul class="clients-brand-slide">
							<li class="col-md-3">
								<div class="single-brand">
									<img src="assets/images/amazon.png" alt="img">
								</div>
							</li>
							<li class="col-md-3">
								<div class="single-brand">
									<img src="assets/images/discovery.png" alt="img">
								</div>
							</li>
							<li class="col-md-3">
								<div class="single-brand">
									<img src="assets/images/envato.png" alt="img">
								</div>
							</li>
							<li class="col-md-3">
								<div class="single-brand">
									<img src="assets/images/tuenti.png" alt="img">
								</div>
							</li>
							<li class="col-md-3">
								<div class="single-brand">
									<img src="assets/images/amazon.png" alt="img">
								</div>
							</li>
							<li class="col-md-3">
								<div class="single-brand">
									<img src="assets/images/discovery.png" alt="img">
								</div>
							</li>
							<li class="col-md-3">
								<div class="single-brand">
									<img src="assets/images/envato.png" alt="img">
								</div>
							</li>
							<li class="col-md-3">
								<div class="single-brand">
									<img src="assets/images/tuenti.png" alt="img">
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Clients brand -->

	<!-- Start latest news -->
	<section id="latest-news">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-area">
						<h2 class="title">Latest News</h2>
						<span class="line"></span>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour</p>
					</div>
				</div>
				<div class="col-md-12">
					<div class="latest-news-content">
						<div class="row">
							<!-- start single latest news -->
							<div class="col-md-4">
								<article class="blog-news-single">
									<div class="blog-news-img">
										<a href="blog-single-with-right-sidebar.html"><img
											src="assets/images/blog-img-1.jpg" alt="image"></a>
									</div>
									<div class="blog-news-title">
										<h2>
											<a href="blog-single-with-right-sidebar.html">All about
												writing story</a>
										</h2>
										<p>
											By <a class="blog-author" href="#">John Powell</a> <span
												class="blog-date">|18 October 2015</span>
										</p>
									</div>
									<div class="blog-news-details">
										<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry. Lorem Ipsum has been the industry's
											standard dummy text ever since the</p>
										<a class="blog-more-btn"
											href="blog-single-with-right-sidebar.html">Read More <i
											class="fa fa-long-arrow-right"></i></a>
									</div>
								</article>
							</div>
							<!-- start single latest news -->
							<div class="col-md-4">
								<article class="blog-news-single">
									<div class="blog-news-img">
										<a href="blog-single-with-right-sidebar.html"><img
											src="assets/images/blog-img-2.jpg" alt="image"></a>
									</div>
									<div class="blog-news-title">
										<h2>
											<a href="blog-single-with-right-sidebar.html">Best Mobile
												Device</a>
										</h2>
										<p>
											By <a class="blog-author" href="#">John Powell</a> <span
												class="blog-date">|18 October 2015</span>
										</p>
									</div>
									<div class="blog-news-details">
										<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry. Lorem Ipsum has been the industry's
											standard dummy text ever since the</p>
										<a class="blog-more-btn"
											href="blog-single-with-right-sidebar.html">Read More <i
											class="fa fa-long-arrow-right"></i></a>
									</div>
								</article>
							</div>
							<!-- start single latest news -->
							<div class="col-md-4">
								<article class="blog-news-single">
									<div class="blog-news-img">
										<a href="blog-single-with-right-sidebar.html"><img
											src="assets/images/blog-img-3.jpg" alt="image"></a>
									</div>
									<div class="blog-news-title">
										<h2>
											<a href="blog-single-with-right-sidebar.html">Personal
												Note Details</a>
										</h2>
										<p>
											By <a class="blog-author" href="#">John Powell</a> <span
												class="blog-date">|18 October 2015</span>
										</p>
									</div>
									<div class="blog-news-details">
										<p>Lorem Ipsum is simply dummy text of the printing and
											typesetting industry. Lorem Ipsum has been the industry's
											standard dummy text ever since the</p>
										<a class="blog-more-btn"
											href="blog-single-with-right-sidebar.html">Read More <i
											class="fa fa-long-arrow-right"></i></a>
									</div>
								</article>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End latest news -->

	<!-- Start subscribe us -->
	<section id="subscribe">
		<div class="subscribe-overlay">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="subscribe-area">
							<h2 class="wow fadeInUp">Subscribe Newsletter</h2>
							<form action="" class="subscrib-form wow fadeInUp"
								data-wow-duration="0.5s" data-wow-delay="0.5s">
								<input type="text" placeholder="Enter Your E-mail..">
								<button class="subscribe-btn" type="submit">Submit</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End subscribe us -->

	<!-- Start footer -->
	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="footer-left">
						<p>
							Designed by <a href="http://www.markups.io/">MarkUps.io</a>
						</p>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="footer-right">
						<a href="index.html"><i class="fa fa-facebook"></i></a> <a
							href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-google-plus"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a> <a href="#"><i
							class="fa fa-pinterest"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End footer -->

	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<!-- Bootstrap -->
	<script src="/PetProject/assets/js/bootstrap.js"></script>
	<!-- Slick Slider -->
	<script type="text/javascript" src="/PetProject/assets/js/slick.js"></script>
	<!-- mixit slider -->
	<script type="text/javascript"
		src="/PetProject/assets/js/jquery.mixitup.js"></script>
	<!-- Add fancyBox -->
	<script type="text/javascript"
		src="/PetProject/assets/js/jquery.fancybox.pack.js"></script>
	<!-- counter -->
	<script src="assets/js/waypoints.js"></script>
	<script src="assets/js/jquery.counterup.js"></script>
	<!-- Wow animation -->
	<script type="text/javascript" src="/PetProject/assets/js/wow.js"></script>
	<!-- progress bar   -->
	<script type="text/javascript"
		src="/PetProject/assets/js/bootstrap-progressbar.js"></script>
	<!--login   -->
	<script type="text/javascript"
		src="/PetProject/assets/css/login/login.js"></script>
	<!--Signon   -->
	<script type="text/javascript"
		src="/PetProject/assets/css/SignOn/SignOn.js"></script>


	<!-- Custom js -->
	<script type="text/javascript" src="/PetProject/assets/js/custom.js"></script>
	<!-- alert -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/alertify.js/0.3.10/alertify.min.js"></script>
	<!-- sweetalert -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js"></script>	
	
	<script>
		function fostercheck(){	
			if('${user}'){
			var id ='${user.memberId}';
				$("#fosteritem").attr("href","/PetProject/findfosterdetial?owner="+id);
			}else{
				Swal({
					  type: 'warning',
					  title: '請先登入會員',
					  text: 'Something went wrong!',
					  confirmButtonColor:"#FFA600",
					  showConfirmButton:false,
					})	
			}
	}
	</script>


</body>
</html>
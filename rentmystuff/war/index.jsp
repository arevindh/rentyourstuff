<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html lang="en">
<head>
<title></title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css"
	media="screen">
<script type="text/javascript" src="js/jquery-1.6.4.min.js"></script>
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Semibold_600.font.js"
	type="text/javascript"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<script src="js/searchrides.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>

<!--INSERT ALL CDN JS REFS HERE-->
<script
	src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"
	type="text/javascript"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.js"
	type="text/javascript"></script>
<script src="http://code.jquery.com/jquery-1.6.4.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
<!--INSERT JS LOADS HERE-->
<script src="js/timepicker.js" type="text/javascript"></script>
<script src="js/PageLoader.js" type="text/javascript"></script>
</head>

<!--[if lt IE 7]>
	<div style=' clear: both; text-align:center; position: relative;'>
		<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
	</div>
<![endif]-->
<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5.js"></script>
	<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->
</head>
<body id="page1">
	<!-- header -->
	<div id="fb-root"></div>
<script src="js/welcomeuser.js">
</script>
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a class="logo" href="index.jsp">Rent.My.Stuff</a> <strong
							class="slog">Peer-to-Peer Sharing Portal</strong>
					</h1>
				<div id="FBlogin"></div>	
				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
							<li><a id="home-nav" class="active" href="index.jsp">Home Page</a></li>
							<li><a id="rides-nav" href="#" onclick='loadRides();'>Rides</a></li>
							<li><a id="books-nav" href="#" onclick="loadBooks();">Books</a></li>
							<li><a id="electronics-nav" href="#" onclick="loadElectronics();">Electronics</a></li>
							<li class="last-item"><a href="pages/contacts.html">Miscellaneous</a></li>
						</ul>
					</nav>
				</div>
				<div class="row-3">
					<div class="slider-wrapper">
						<div class="slider">
							<ul class="items">
								<li><img src="images/slider-img1.jpg" alt=""> <strong
									class="banner"> <strong class="b1">pool your</strong>
										<strong class="b2">rides & cabs</strong> <!-- <strong class="b3">Remember there's mother<br> nature to be saved.</strong> -->
								</strong></li>
								<li><img src="images/slider-img2.jpg" alt=""> <strong
									class="banner"> <strong class="b1">lend or
											borrow</strong> <strong class="b2">books</strong>
								</strong></li>
								<li><img src="images/slider-img3.jpg" alt=""> <strong
									class="banner"> <strong class="b1">share your</strong>
										<strong class="b2">gadgets & electronics</strong>
								</strong></li>
								<li><img src="images/slider-img4.jpg" alt=""> <strong
									class="banner"> <strong class="b1">rent out</strong> <strong
										class="b2">any item or capacity</strong>
								</strong></li>
							</ul>
							<a class="prev" href="#">prev</a> <a class="next" href="#">prev</a>
						</div>
					</div>
				</div>
			</header>
			<!-- content -->
			<section id="content">
				<div class="padding">
					<!-- 					<div class="box-bg margin-bot"> -->
					<!-- 						<div class="wrapper"> -->
					<!-- 							<div class="col-1"> -->
					<!-- 								<div class="box first"> -->
					<!-- 									<div class="pad"> -->
					<!-- 										<div class="wrapper indent-bot"> -->
					<!-- 											<strong class="numb img-indent2">01</strong> -->
					<!-- 											<div class="extra-wrap"> -->
					<!-- 												<h3 class="color-1"> -->
					<!-- 													<strong>Careful</strong>Analysis -->
					<!-- 												</h3> -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 										<div class="wrapper"> -->
					<!-- 											<a class="button img-indent-r" href="#">>></a> -->
					<!-- 											<div class="extra-wrap"> -->
					<!-- 												Point.co is one of <a class="link" target="_blank" -->
					<!-- 													href="http://blog.templatemonster.com/free-website-templates/ ">free -->
					<!-- 													website templates</a> created by TemplateMonster.com. -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 								</div> -->
					<!-- 							</div> -->
					<!-- 							<div class="col-1"> -->
					<!-- 								<div class="box second"> -->
					<!-- 									<div class="pad"> -->
					<!-- 										<div class="wrapper indent-bot"> -->
					<!-- 											<strong class="numb img-indent2">02</strong> -->
					<!-- 											<div class="extra-wrap"> -->
					<!-- 												<h3 class="color-2"> -->
					<!-- 													<strong>Quick</strong>Research -->
					<!-- 												</h3> -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 										<div class="wrapper"> -->
					<!-- 											<a class="button img-indent-r" href="#"></a> -->
					<!-- 											<div class="extra-wrap"> -->
					<!-- 												This <a class="link" target="_blank" -->
					<!-- 													href="http://blog.templatemonster.com/2011/06/13/free-website-template-jquery-slider/ ">Template</a> -->
					<!-- 												goes with two packages â with PSD files and without them. -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 								</div> -->
					<!-- 							</div> -->
					<!-- 							<div class="col-2"> -->
					<!-- 								<div class="box third"> -->
					<!-- 									<div class="pad"> -->
					<!-- 										<div class="wrapper indent-bot"> -->
					<!-- 											<strong class="numb img-indent2">03</strong> -->
					<!-- 											<div class="extra-wrap"> -->
					<!-- 												<h3 class="color-3"> -->
					<!-- 													<strong>New</strong>Strategies -->
					<!-- 												</h3> -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 										<div class="wrapper"> -->
					<!-- 											<a class="button img-indent-r" href="#">>></a> -->
					<!-- 											<div class="extra-wrap"> -->
					<!-- 												It has several pages: <a class="link" href="index.jsp">Home</a>, -->
					<!-- 												<a class="link" href="news.jsp">News</a>, <a class="link" -->
					<!-- 													href="services.html">Services</a>, <a class="link" -->
					<!-- 													href="products.html">Products</a>, <a class="link" -->
					<!-- 													href="contacts.html">Contacts</a>. -->
					<!-- 											</div> -->
					<!-- 										</div> -->
					<!-- 									</div> -->
					<!-- 								</div> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
					<div class="wrapper">
						<div class="col-3">
							<div class="indent">
								<h2>Our Mission</h2>
								<p class="color-4 p1">Donec vitae massa sit amet lectus
									condimentum aliquam vestibulum tempor nunc vel mi laoreet nec
									condimentum mauris convallis. Praesent lobortis, lectus a
									viverra faucibus, urna turpis sodales purus, magnaorem ipsum
									dolor ser adipiscing elit sed diam nonummy nibh euismod sit
									amet ornare urna augue ut mauris.</p>
								<div class="wrapper">
									<figure class="img-indent3">
										<img src="images/page1-img1.png" alt="" />
									</figure>
									<div class="extra-wrap">
										<div class="indent2">Cras placerat, risus ac porta
											auctor, dui neque varius libero, sed rutrum diam mauris sed
											lorem. Ut at risus eu dui pretium sodales proin fermentum
											condimentum eros quis tincidunt fraesent eleifend tempor
											nisi, in adipiscing felis molestie vitae. Sed et massa justo.
											Pellentesque turpis lorem, ornare sit amet vulputate at,
											consectetur</div>
									</div>
								</div>
								<a class="button-2" href="#">Read More</a>
							</div>
						</div>
						<div class="col-2">
							<div class="block-news">
								<h3 class="color-4 p2">Recent News</h3>
								<div class="wrapper p2">
									<time class="tdate-1 fleft" datetime="2011-05-29">
										<strong>29</strong>may
									</time>
									<div class="extra-wrap">
										<h5>Utatse eudui pretium</h5>
										sodales proin fermen<br>tum condimentum eros quis
										tincidunt fraesent eleifend tempor nisi, in adipiscing... <a
											href="#">more</a>
									</div>
								</div>
								<div class="wrapper">
									<time class="tdate-1 fleft" datetime="2011-05-24">
										<strong>24</strong>may
									</time>
									<div class="extra-wrap">
										<h5>Felis molestie vitae</h5>
										Sed massa justo pellen<br>tesque turpis lorem, ornare sit
										amet vulpate at, consectetur vitae nunc... <a href="#">more</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</section>


		</div>
	</div>
	<script type="text/javascript"> Cufon.now(); </script>
	<script type="text/javascript">
		$(function(){
			$('.slider')._TMS({
				prevBu:'.prev',
				nextBu:'.next',
				playBu:'.play',
				duration:800,
				easing:'easeOutQuad',
				preset:'simpleFade',
				pagination:false,
				slideshow:3000,
				numStatus:false,
				pauseOnHover:true,
				banners:true,
				waitBannerAnimation:false,
				bannerShow:function(banner){
					banner
						.hide()
						.fadeIn(500)
				},
				bannerHide:function(banner){
					banner
						.show()
						.fadeOut(500)
				}
			});
		})
	</script>
</body>
</html>

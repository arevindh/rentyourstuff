
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="rentmystuff.FacebookCookieParser"%>
<%@include file="UserCheck.jsp"%>
<html lang="en">
<head>
<title></title>
<meta charset="utf-8">
<link rel="stylesheet" href="../css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="../css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="../css/layout.css" type="text/css"
	media="screen">
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="http://dev.jquery.com/view/trunk/plugins/autocomplete/demo/main.css"
	type="text/css" />
<link rel="stylesheet"
	href="http://dev.jquery.com/view/trunk/plugins/autocomplete/jquery.autocomplete.css"
	type="text/css" />
<script type="text/javascript"
	src="http://dev.jquery.com/view/trunk/plugins/autocomplete/lib/jquery.bgiframe.min.js"></script>
<script type="text/javascript"
	src="http://dev.jquery.com/view/trunk/plugins/autocomplete/lib/jquery.dimensions.js"></script>
<script type="text/javascript"
	src="http://dev.jquery.com/view/trunk/plugins/autocomplete/jquery.autocomplete.js"></script>

<script type="text/javascript" src="../js/jquery-1.6.4.min.js"></script>
<script src="../js/cufon-yui.js" type="text/javascript"></script>
<script src="../js/cufon-replace.js" type="text/javascript"></script>
<script src="../js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="../js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="../js/Open_Sans_Semibold_600.font.js"
	type="text/javascript"></script>
<script src="../js/FF-cash.js" type="text/javascript"></script>
<script src="../js/searchrides.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery.form.js"></script>

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
<script src="../js/timepicker.js" type="text/javascript"></script>

<!-- ALL ON LOAD CALLS HERE -->
<script>
  $(document).ready(function() {
  $(".datetimepicker").timepicker();
  initialize("fromAdd", "toAdd");
      
}); 
  </script>

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
<body id="page-books">
	<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a class="logo" href="../index.jsp">RentMyStuff</a> <strong
							class="slog">Peer-to-Peer Sharing Portal</strong>
					</h1>
					<div id="FBlogin">
						<% if(UserID==null) { %>
						<a
							href="https://www.facebook.com/dialog/oauth?client_id=220486511346030&redirect_uri=http://share-group.appspot.com/login">
							<img src="../images/buttons/fb.png"> 
						</a>
						<% } else { %>
						<h4>
							Hello
							<%=UserID%>
						</h4>
						<%} %>
					</div>

				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
							<li><a href="../index.jsp">Home Page</a></li>
							<li><a href="rides.jsp">Rides</a></li>
							<li><a href="books.jsp">Books</a></li>
							<li><a class="active" href="electronics.jsp">Electronics</a>
							</li>
							<li class="last-item"><a href="misc.jsp">Miscellaneous</a>
							</li>
						</ul>
					</nav>
				</div>
			</header>
			<!-- content -->

			<section id="content">
				<div class="padding">
					<div class="wrapper p4">
						<div class="col-3">
							<div id="elecContent">
								<div class="col-1">
									<span style="font-size: 20px">Please login with Facebook
										to view all electronic items available for you.</span>
								</div>
							</div>
							<div class="col-4">
								<div style="margin-top: 10%">
									<div>
										<div>
											<img src="../images/buttons/featured_book.png"></img>
											<div style="float: right">
												<a href="#"
													onclick="$('#elecContent').load('content/list_electronics.jsp', function() {
											$('.datetimepicker').timepicker();
											});  
											return false;"><h3
														style="float: none; padding-top: 10%;">Featured</h3> </a>
											</div>
										</div>
									</div>
									<div>
										<img src="../images/buttons/add_book.png"></img>
										<div style="float: right;">
											<a href="#"
												onclick="$('#elecContent').load('content/add_electronics.jsp', 
											function(){
											$('.datetimepicker').timepicker();
											}, alert('data');
											var data = 'Core Selectors Attributes Traversing Manipulation CSS Events Effects Ajax Utilities'.split('');
											alert(data);
											$('#elecTitle').autocomplete(data););
											return false;"><h3
													style="float: left; padding-top: 10%;">
													Add Items
													</h2></a>
										</div>
									</div>

								</div>
								<div>
									<div>
										<img src="../images/buttons/search_book.png"></img>
										<div style="float: right">
											<a href="#"
												onclick="$('#elecContent').load('content/electronics_search.jsp', function() {
											$('.datetimepicker').timepicker();
											});  
											return false;"><h3
													style="float: left; padding-top: 10%;">Find Items</h3> </a>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

				</div>

			</section>


			<!-- footer -->
			<footer>
				<div class="row-top">
					<div class="row-padding">
						<div class="wrapper">
							<div class="col-1">
								<h4>Address:</h4>
								<dl class="address">
									<dt>
										<span>Country:</span>USA
									</dt>
									<dd>
										<span>City:</span>San Diego
									</dd>
									<dd>
										<span>Address:</span>Beach st. 54
									</dd>
									<dd>
										<span>Email:</span><a href="#">lcenter@mail.com</a>
									</dd>
								</dl>
							</div>
							<div class="col-2">
								<h4>Follow Us:</h4>
								<ul class="list-services">
									<li class="item-1"><a href="#">Facebook</a></li>
									<li class="item-2"><a href="#">Twitter</a></li>
									<li class="item-3"><a href="#">LinkedIn</a></li>
								</ul>
							</div>
							<div class="col-3">
								<h4>Why Us:</h4>
								<ul class="list-1">
									<li><a href="#">Lorem ipsum dolor</a></li>
									<li><a href="#">Aonsect adipisic</a></li>
									<li><a href="#">Eiusmjkod tempor</a></li>
									<li><a href="#">Incididunt ut labore</a></li>
								</ul>
							</div>
							<div class="col-4">
								<div class="indent3">
									<strong class="footer-logo">Point.<strong>co</strong>
									</strong> <strong class="phone"><strong>Toll Free:</strong>
										1-800-567-8934</strong>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-bot">
					<div class="aligncenter">
						<p class="p0">Copyright: RentMyStuff.com</p>

						<!-- {%FOOTER_LINK} -->
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>

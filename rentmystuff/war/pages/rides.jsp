
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="rentmystuff.FacebookCookieParser" %>
<%@include file="UserCheck.jsp" %>
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
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
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
  $("#datetimepicker").timepicker();
  initialize("fromAdd", "toAdd");
  
  //FORM SUBMIT THROUGH AJAX
  var options = { 
        target:        '#output2',   // target element(s) to be updated with server response 
        beforeSubmit:  showRequest,  // pre-submit callback 
        //success:       showResponse  // post-submit callback 
 
        // other available options: 
        //url:       url         // override for form's 'action' attribute 
        //type:      type        // 'get' or 'post', override for form's 'method' attribute 
        //dataType:  null        // 'xml', 'script', or 'json' (expected server response type) 
        //clearForm: true        // clear all form fields after successful submit 
        //resetForm: true        // reset the form after successful submit 
 
        // $.ajax options can be used here too, for example: 
        //timeout:   3000 
    };
    $('#addRideForm').submit(function() { 
        // inside event callbacks 'this' is the DOM element so we first 
        // wrap it in a jQuery object and then invoke ajaxSubmit 
        $(this).ajaxSubmit(options); 
 		
        // !!! Important !!! 
        // always return false to prevent standard browser submit and page navigation 
        return false; 
    });
      
  });
  
  function showRequest(formData, jqForm, options) { 
    // formData is an array; here we use $.param to convert it to a string to display it 
    // but the form plugin does this for you automatically when it submits the data 
    var queryString = $.param(formData); 
 
    // jqForm is a jQuery object encapsulating the form element.  To access the 
    // DOM element for the form do this: 
    // var formElement = jqForm[0]; 
 
    alert('About to submit: \n\n' + queryString); 
 
    // here we could return false to prevent the form from being submitted; 
    // returning anything other than false will allow the form submit to continue 
    return true; 
} 
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
<body id="page-rides">
	<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a class="logo" href="../index.html">RentMyStuff</a> <strong
							class="slog">Peer-to-Peer Sharing Portal</strong>
					</h1>
					<div id="FBlogin" style="margin-left: 67%">
					<% if(UserID==null) { %>
						<a href="https://www.facebook.com/dialog/oauth?client_id=220486511346030&redirect_uri=http://share-group.appspot.com/login"><img src="../images/buttons/fb.png">
						</a>
					<% } else { %>
					<h4> Hello <%=UserID%> </h4> <%} %>
					</div>
				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
							<li><a href="../index.html">Home Page</a></li>
							<li><a class="active" href="rides.html">Rides</a></li>
							<li><a href="books.html">Books</a></li>
							<li><a href="electronics.html">Electronics</a></li>
							<li class="last-item"><a href="misc.html">Miscellaneous</a>
							</li>
						</ul>
					</nav>
				</div>
			</header>
			<!-- content -->

			<section id="content" id="rides">
				<div class="padding">
					<div class="wrapper p4">
						<div class="col-3" id="addRideContent">
							<form id="addRideForm" action="submit.php">
								<div class="col-1">
									<div class="customForm">

										<h2>Add a Ride</h2>

										<p>
											<input type="text" name="from" id="fromAdd"
												value="From where"
												onblur="if (this.value == ''){this.value = 'From where'; }"
												onfocus="if (this.value == 'From where') {this.value = '';}">
											<br> <input type="text" name="to" id="toAdd"
												value="To where"
												onblur="if (this.value == ''){this.value = 'To where'; }"
												onfocus="if (this.value == 'To where') {this.value = '';}">

											<input type="text" name="date" id="datetimepicker"
												value="Select Date & Time"
												onblur="if (this.value == ''){this.value = 'Select Date & Time'; }"
												onfocus="if (this.value == 'Select Date & Time') {this.value = '';}">
											<br> <select name="seats"
												style="clear: left; padding-top: 2px">
												<option value="" selected>Select Number of Seats</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
											</select>

										</p>
										<p>
											<input type="submit" name="addThisRide" class="submit"
												value="Add This Ride">
										</p>

									</div>
								</div>

								<div class="col-2">
									<div class="customForm"
										style="margin-top: 27%; margin-left: 10%">
										<div>

											<input type="text" name="description" id="describeAddedRide"
												style="height: 100px; text-align: left;"
												value="Add a description"
												onblur="if (this.value == ''){this.value = 'Add a description'; }"
												onfocus="if (this.value == 'Add a description') {this.value = '';}">
											<br> <input type="text" name="ride-cost" id="ride-cost"
												value="Ride Cost (no. of credits)"
												onblur="if (this.value == ''){this.value = 'Ride Cost (no. of credits)'; }"
												onfocus="if (this.value == 'Ride Cost (no. of credits)') {this.value = '';}">
										</div>
									</div>
								</div>

							</form>
						</div>
						<div class="col-4">
							<div style="margin-top: 10%">
								<div>
									<img src="../images/buttons/add_ride.png"></img>
									<div style="float: right;">
										<a href="#"
											onclick="$('#addRideContent').load('rides.html #addRideContent', function(){
											$('#datetimepicker').timepicker();
											initialize('fromAdd', 'toAdd');});return false;"><h3
												style="float: left; padding-top: 10%;">
												Add Rides
												</h2>
										</a>
									</div>
								</div>

							</div>
							<div>
								<div>
									<img src="../images/buttons/search_ride.png"></img>
									<div style="float: right">
										<a href="#"
											onclick="$('#addRideContent').load('content/rides_search.html', function() {
											$('#datetimepicker').timepicker();
											initialize('fromSearch', 'toSearch');});  return false;"><h3
												style="float: left; padding-top: 10%;">Find Rides</h3> </a>

									</div>
								</div>
								<!--  <a href="#" onclick='$("addRideContent").load("../test.html");'><h2>aa</h2></a>-->
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
<div id="fb-root"></div>
<script src="http://connect.facebook.net/en_US/all.js"></script>
<script>
  FB.init({
    appId  : '220486511346030',
    status : true, // check login status
    cookie : true, // enable cookies to allow the server to access the session
    xfbml  : true, // parse XFBML
    oauth  : true // enable OAuth 2.0
  });
</script>
</body>
</html>
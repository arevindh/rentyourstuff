  function welcomeUser() {
		//alert("in check user");
	    //alert(document.cookie);
	    $.ajax({
	  	  url: 'pages/UserCheck.jsp',
	  	  success: function(data) {
	  		  //alert('Load was performed.');
	  		  //alert(data);
	  		  if(data == null) {
	  				var loginFB = '<a href="https://www.facebook.com/dialog/oauth?client_id=220486511346030&redirect_uri=http://share-group.appspot.com/login">'
	  					+'<img src="images/buttons/fb.png">'
	  					+'</a>';
	  				$("#FBlogin").html(loginFB);
	  		  }
	  		  else {
	  				$("#FBlogin").html("<h4>Hello "+data+"</h4>");		  
	  		  }  
	  	  },
	  	  complete: function(data) {
	  		  //alert('in complete');
	  	  }
	  	});
  }
	    
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '220486511346030', // App ID
      status     : true, // check login status
      cookie     : true, // enable cookies to allow the server to access the session
      oauth      : true, // enable OAuth 2.0
      xfbml      : true  // parse XFBML
    });
    //alert('cookies init done');
    //alert(document.cookie);
    setTimeout(welcomeUser, 1000); 
    // Additional initialization code here
  };
  
  // Load the SDK Asynchronously
  (function(d){
     var js, id = 'facebook-jssdk'; if (d.getElementById(id)) {return;}
     js = d.createElement('script'); js.id = id; js.async = true;
     js.src = "//connect.facebook.net/en_US/all.js";
     d.getElementsByTagName('head')[0].appendChild(js);
   }(document));
  
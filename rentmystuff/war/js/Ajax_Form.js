function formInitialize(){
	alert("here");
	//FORM SUBMIT THROUGH AJAX
	
	  var options = { 
	        target:        'bookContent',   // target element(s) to be updated with server response 
	        //beforeSubmit:  showRequest,  // pre-submit callback 
	        success:       showResponse  // post-submit callback 
	 
	        // other available options: 
	        //url:       url         // override for form's 'action' attribute 
	        //type:      type        // 'get' or 'post', override for form's 'method' attribute 
	        //dataType:  null        // 'xml', 'script', or 'json' (expected server response type) 
	        //clearForm: true        // clear all form fields after successful submit 
	        //resetForm: true        // reset the form after successful submit 
	 
	        // $.ajax options can be used here too, for example: 
	        //timeout:   3000 
	    };
	    $('#addBookForm').submit(function() { 
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
	    
	    $('bookContent').load('content/success.jsp');
	    return true; 
	} 

}
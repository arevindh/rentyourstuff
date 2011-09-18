/**
 * 
 */

function initialize() {
	var input_from = document.getElementById('fromSearch');
	var input_to = document.getElementById('toSearch');
	var autocomplete_from = new google.maps.places.Autocomplete(input_from);
	var autocomplete_to = new google.maps.places.Autocomplete(input_to);
	google.maps.event.addListener(autocomplete_from, 'place_changed', function() {
		var place_from = autocomplete_from.getPlace();
	});
	google.maps.event.addListener(autocomplete_to, 'place_changed', function() {
		var place_to = autocomplete_to.getPlace();
	});
}
//google.maps.event.addDomListener(window, 'load', initialize);

//TEST!!
/*
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
*/
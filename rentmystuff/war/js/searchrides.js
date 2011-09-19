/**
 * 
 */

function initialize() {
	var input_from = document.getElementById('fromFind');
	var input_to = document.getElementById('toFind');
	alert('here:'+input_to);
	input_to.value = 'setvalue';
	alert('after setting value:'+input_to);
	var autocomplete_from = new google.maps.places.Autocomplete(input_from);
	var autocomplete_to = new google.maps.places.Autocomplete(input_to);
	alert('here 2');
	google.maps.event.addListener(autocomplete_from, 'place_changed', function() {
		var place_from = autocomplete_from.getPlace();
	});
	google.maps.event.addListener(autocomplete_to, 'place_changed', function() {
		var place_to = autocomplete_to.getPlace();
	});
}
//google.maps.event.addDomListener(window, 'load', initialize);



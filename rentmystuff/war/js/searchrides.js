/**
 * 
 */

function initialize() {
	var input_from = document.getElementById('fromSearch');
	var input_to = document.getElementById('toSearch');
	var autocomplete_from = new google.maps.places.Autocomplete(input_from);
	var autocomplete_to = new google.maps.places.Autocomplete(input_to);

	google.maps.event.addListener(autocomplete, 'place_changed', function() {
		var place_from = autocomplete_from.getPlace();
		var place_to = autocomplete_to.getPlace();
	});
}
//google.maps.event.addDomListener(window, 'load', initialize);

//TEST!!


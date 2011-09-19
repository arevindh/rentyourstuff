/**
 * 
 */

function initialize(fromText, toText ) {
	var from_AddRide = document.getElementById(fromText);
	var to_AddRide = document.getElementById(toText);
	var autocomplete_from = new google.maps.places.Autocomplete(from_AddRide);
	var autocomplete_to = new google.maps.places.Autocomplete(to_AddRide);
	

	google.maps.event.addListener(autocomplete_from, 'place_changed', function() {
		var place_from = autocomplete_from.getPlace();
	});
	google.maps.event.addListener(autocomplete_to, 'place_changed', function() {
		var place_to = autocomplete_to.getPlace();
	});

}


//google.maps.event.addDomListener(window, 'load', initialize);



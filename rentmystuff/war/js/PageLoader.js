function loadRides(){
	$("#home-nav").removeClass("active");
	$("#books-nav").removeClass("active");
	$("#electronics-nav").removeClass("active");
	//$("#home-nav").removeClass("active");
	$("#rides-nav").addClass("active");
	$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
	$(".col-3").load("pages/rides/FeaturedRidesList.jsp", 
			function(){
		$(".datetimepicker").timepicker();
		initialize("fromAdd", "toAdd");
	});
	$(".col-2").load("pages/rides/MenuItems.jsp");
	return false;													

}

function loadBooks(){
	$("#home-nav").removeClass("active");
	$("#rides-nav").removeClass("active");
	$("#electronics-nav").removeClass("active");
	//$("#home-nav").removeClass("active");
	$("#books-nav").addClass("active");
	$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
	$(".col-3").load("pages/books/FeaturedBooksList.jsp");
	$(".col-2").load("pages/books/MenuItems.jsp");
	return false;
}

function loadElectronics(){
	$("#home-nav").removeClass("active");
	$("#rides-nav").removeClass("active");
	$("#books-nav").removeClass("active");
	//$("#home-nav").removeClass("active");
	$("#electronics-nav").addClass("active");
	$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
	$(".col-3").load("pages/electronics/FeaturedElectronicsList.jsp");
	$(".col-2").load("pages/electronics/MenuItems.jsp");
	return false;
}
function loadRides(){
	//document.getElementByClassName("menu").style.color="#fff";
	$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
	$(".col-3").load("pages/rides/add_rides.jsp", 
	function(){
	$("#datetimepicker").timepicker();
	initialize("fromAdd", "toAdd");
	});
	$(".col-2").load("pages/rides/MenuItems.jsp");
	return false;													
	
}
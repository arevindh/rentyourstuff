							<div style="margin-top: 10%">
								<div>
									<img src="../images/buttons/add_ride.png"></img>
									<div style="float: right;">
										<a href="#"
											onclick='
											$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
											$(".col-3").load("pages/rides/add_rides.jsp", 
											function(){
											$("#datetimepicker").timepicker();
											initialize("fromAdd", "toAdd");
											});
											return false;													
											'><h3
												style="float: left; padding-top: 10%;">
												Add Rides
												</h2></a>
									</div>
								</div>

							</div>
							<div>
								<div>
									<img src="../images/buttons/search_ride.png"></img>
									<div style="float: right">
										<a href="#"
											onclick="$('.col-3').load('pages/content/rides_search.jsp', function() {
											$('#datetimepicker').timepicker();
											initialize('fromSearch', 'toSearch');});  return false;"><h3
												style="float: left; padding-top: 10%;">Find Rides</h3> </a>

									</div>
								</div>
								
							</div>
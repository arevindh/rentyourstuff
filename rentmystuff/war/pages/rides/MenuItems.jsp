							<div style="margin-top: 10%">
								<div>
									<img src="../images/buttons/add_ride.png"></img>
									<div style="float: right;">
										<a href="#"
											onclick='
											$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
											$(".col-3").load("pages/rides/add_rides.jsp", 
											function(){
											$(".datetimepicker").timepicker();
											initialize("fromAdd", "toAdd");
											$("#addRideForm").submit(function(event) {
											/* stop form from submitting normally */
    										event.preventDefault();
											var inputdata = $("#addRideForm").serialize();
											//alert(inputdata);
											var $form=$(this),
											url=$form.attr("action");
											$.post(url, inputdata, function(data){
											//alert(data);
											$(".col-3").html(data);	
											});
											});
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
											onclick='
											$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
											$(".col-3").load("pages/rides/rides_search.jsp", function() {
											$(".datetimepicker").timepicker();
											initialize("fromSearch", "toSearch");
											});  
											return false;
											'>
											<h3	style="float: left; padding-top: 10%;">Find Rides</h3> </a>

									</div>
								</div>
								
							</div>
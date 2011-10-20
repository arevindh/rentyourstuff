
<div style="margin-top: 10%">
	<div>
		<div>
			<img src="../images/buttons/featured_elec.png"></img>
			<div style="float: right">
				<a href="#" onclick='
					$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
					$(".col-3").load("pages/electronics/FeaturedElectronicsList.jsp"); 
					return false;'>
					<h3 style="float: none; padding-top: 10%;">Featured</h3> </a>
			</div>
		</div>
	</div>
	<div>
		<img src="../images/buttons/add_elec.png"></img>
		<div style="float: right;">
			<a href="#" onclick='
				$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
				$(".col-3").load("pages/electronics/add_electronics.jsp", function(){
				$(".datetimepicker").timepicker(); 
				$("#addElecForm").submit(function(event) {
				/* stop form from submitting normally */
    			event.preventDefault();
				var inputdata = $("#addElecForm").serialize();
				//alert(inputdata);
				var $form=$(this),
				url=$form.attr("action");
				$.post(url, inputdata, function(data){
				//alert(data);
				$(".col-3").html(data);	
				});
				});
				}); 
				return false; '>
				<h3 style="float: left; padding-top: 10%;">
					Add Gadget
					</h2></a>
		</div>
	</div>

</div>
<div>
	<div>
		<img src="../images/buttons/search_elec.png"></img>
		<div style="float: right">
			<a href="#" onclick='
				$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
				$(".col-3").load("pages/electronics/electronics_search.jsp"); return false;'>
				<h3 style="float: left; padding-top: 10%;">Find Gadget</h3> </a>
		</div>
	</div>
</div>


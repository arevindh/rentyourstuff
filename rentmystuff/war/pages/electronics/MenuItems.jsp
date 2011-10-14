
<div style="margin-top: 10%">
	<div>
		<div>
			<img src="../images/buttons/featured_book.png"></img>
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
		<img src="../images/buttons/add_book.png"></img>
		<div style="float: right;">
			<a href="#" onclick='
				$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
				$(".col-3").load("pages/electronics/add_electronics.jsp", function(){
				$(".datetimepicker").timepicker(); }); return false; '>
				<h3 style="float: left; padding-top: 10%;">
					Add Gadget
					</h2></a>
		</div>
	</div>

</div>
<div>
	<div>
		<img src="../images/buttons/search_book.png"></img>
		<div style="float: right">
			<a href="#" onclick='
				$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
				$(".col-3").load("pages/electronics/electronics_search.jsp"); return false;'>
				<h3 style="float: left; padding-top: 10%;">Find Gadget</h3> </a>
		</div>
	</div>
</div>


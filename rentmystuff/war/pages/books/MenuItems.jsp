
<div style="margin-top: 10%">
	<div>
		<div>
			<img src="../images/buttons/featured_book.png"></img>
			<div style="float: right">
				<a href="#" onclick='
					$(".col-3").empty().html("<img src=\"../images/loading.gif\"></img>");
					$(".col-3").load("pages/books/FeaturedBooksList.jsp", function() {
					$(".datetimepicker").timepicker(); 
					}); 
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
				$(".col-3").load("pages/books/add_books.jsp", function(){
				$(".datetimepicker").timepicker();
				$("#addBookForm").submit(function(event) {
				
				/* stop form from submitting normally */
    			event.preventDefault();
				var inputdata = $("#addBookForm").serialize();
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
					Add Books
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
				$(".col-3").load("pages/books/books_search.jsp", function() {
				$(".datetimepicker").timepicker(); }); return false;'>
				<h3 style="float: left; padding-top: 10%;">Find Books</h3> </a>
		</div>
	</div>
</div>


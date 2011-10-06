<form id="searchBookForm" action="submit.php">
	<div class="col-1">
		<div class="customForm">

			<h2>Search for Book</h2>

			<p>
				<input type="text" name="from" id="titleSearch"
					value="Enter title or author"
					onblur="if (this.value == ''){this.value = 'Enter title or author'; }"
					onfocus="if (this.value == 'Enter title or author') {this.value = '';}">

			</p>
			<p>
				<input type="submit" name="searchThisBook" class="submit"
					value="Find Me a Book">
			</p>

		</div>
	</div>

</form>






<form id="searchBookForm" action="submit.php">

	<div class="customForm">
		<h2>Search for Book</h2>
		<p>Looking for a book? Help us find you one!</p><br/>
		<p>
			<input type="text" name="from" id="titleSearch"
				value="Enter title or author"
				onblur="if (this.value == ''){this.value = 'Enter title or author'; }"
				onfocus="if (this.value == 'Enter title or author') {this.value = '';}">

		</p>
		<p>
			<input type="submit" name="resolveAction" class="submit"
				value="Find Me a Book">
		</p>

	</div>


</form>






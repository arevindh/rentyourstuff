<form id="searchBookForm" action="submit.php">
	
		<div class="customForm">

			<h2>Gadgets Search</h2>
			<p>Enter item name you are looking for. Remember: Be specific.</p><br/>
			<p>
				<input type="text" name="from" id="elecSearch"
					value="Enter Specific Item"
					onblur="if (this.value == ''){this.value = 'Enter Specific Item'; }"
					onfocus="if (this.value == 'Enter title or author') {this.value = '';}">

			</p>
			<p>
				<input type="submit" name="resolveAction" class="submit"
					value="Find Me a Book">
			</p>

		</div>
	</div>

</form>






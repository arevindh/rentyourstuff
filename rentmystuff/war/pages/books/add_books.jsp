<form id="addBookForm" action="pages/Submit.jsp">
	<div class="col-1">
		<h2>Add a Book</h2>
		<div class="customForm">
			<p>
				<input type="text" name="bookTitle" id="bookTitle" value="Book Title"
					onblur="if (this.value == ''){this.value = 'Book Title'; }"
					onfocus="if (this.value == 'Book Title') {this.value = '';}">
				<br> <input type="text" name="fromDate" class="datetimepicker"
					value="From When"
					onblur="if (this.value == ''){this.value = 'From When'; }"
					onfocus="if (this.value == 'From When') {this.value = '';}">
				<br> <input type="text" name="numberOfDays"
					value="Rent Duration (in days)"
					onblur="if (this.value == ''){this.value = 'Rent Duration (in days)'; }"
					onfocus="if (this.value == 'Rent Duration (in days)') {this.value = '';}">
				<br> <input type="text" name="description"
					id="describeAddedRide" style="height: 100px; text-align: left;"
					value="Add a description"
					onblur="if (this.value == ''){this.value = 'Add a description'; }"
					onfocus="if (this.value == 'Add a description') {this.value = '';}">
				<br> <input type="text" name="book-cost" id="book-cost"
					value="Book Rent Cost (no. of credits)"
					onblur="if (this.value == ''){this.value = 'Book Rent Cost (no. of credits)'; }"
					onfocus="if (this.value == 'Book Rent Cost (no. of credits)') {this.value = '';}">

			</p>
			<p><input type="hidden" name=resolveAction value="Add This Book"/>
				<input type="submit" class="submit"
					value="Add This Book" >
			</p>

		</div>
	</div>
</form>

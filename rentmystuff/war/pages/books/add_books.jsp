<form id="addBookForm" action="pages/Submit.jsp">
	<h2>Add a Book</h2>
		<p>If you are done reading a novel, why not share it with your friends and let it generate some bucks for you?</p>
		<br/><br/>
		<div class="col-2" style="float: right;"><h3>Who to share with?</h3><br/>
					<table>
					<tr><td><input type="checkbox" name="sharewith" value="friendscity" style="width: 20px;"/></td><td>Friends in City</td></tr>
					<tr><td><input type="checkbox" name="sharewith" value="city" style="width: 20px;"/></td><td>People in City</td></tr>
					<tr><td><input type="checkbox" name="sharewith" value="colleagues" style="width: 20px;"/></td><td>Colleagues</td></tr>
					<tr><td><input type="checkbox" name="sharewith" value="friends" style="width: 20px;"/></td><td>All Friends</td></tr>
					<tr><td><input type="checkbox" name="sharewith" value="everyone" style="width: 20px;"/></td><td>Everyone</td></tr>
					</table>
		</div>
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

</form>

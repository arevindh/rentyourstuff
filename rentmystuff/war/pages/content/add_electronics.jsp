<form id="addElecForm" action="submit.php">
	<div class="col-1">
		<h2>Add an Electronic Item</h2>
		<div class="customForm">
			<p>
				<input type="text" name="title" id="elecTitle" value="Item Type"
					onblur="if (this.value == ''){this.value = 'Item Type'; }"
					onfocus="if (this.value == 'Item Type') {this.value = '';}">
				<br> <input type="text" name="fromDate" class="datetimepicker"
					value="From When"
					onblur="if (this.value == ''){this.value = 'From When'; }"
					onfocus="if (this.value == 'From When') {this.value = '';}">
				<br> <input type="text" name="title" id="numberOfDays"
					value="Rent Duration (in days)"
					onblur="if (this.value == ''){this.value = 'Rent Duration (in days)'; }"
					onfocus="if (this.value == 'Rent Duration (in days)') {this.value = '';}">
				<br> <input type="text" name="description"
					id="describeElecItem" style="height: 100px; text-align: left;"
					value="Add a description"
					onblur="if (this.value == ''){this.value = 'Add a description'; }"
					onfocus="if (this.value == 'Add a description') {this.value = '';}">
				<br> <input type="text" name="book-cost" id="item-cost"
					value="Item Rent Cost (no. of credits)"
					onblur="if (this.value == ''){this.value = 'Item Rent Cost (no. of credits)'; }"
					onfocus="if (this.value == 'Item Rent Cost (no. of credits)') {this.value = '';}">

			</p>
			<p>
				<input type="submit" name="resolveAction" class="submit"
					value="Add Item">
			</p>

		</div>
	</div>
</form>
<form id="addElecForm" action="Submit.jsp">
	<h2>Add an Electronic Item</h2>
	<p>You can rent out any gadget or any other electronic item such as your DSLR Camera, Xbox/PlayStation Gaming Console, etc.
	through this portal. Just enter the details below. Remember to put specific details.</p><br/>
		<div class="customForm">
			<p>
				<input type="text" name="gadgetName" id="elecTitle" value="Item Type"
					onblur="if (this.value == ''){this.value = 'Item Type'; }"
					onfocus="if (this.value == 'Item Type') {this.value = '';}">
				<br> <input type="text" name="fromDate" class="datetimepicker"
					value="From When"
					onblur="if (this.value == ''){this.value = 'From When'; }"
					onfocus="if (this.value == 'From When') {this.value = '';}">
				<br> <input type="text" name="numberOfDays" id="numberOfDays"
					value="Rent Duration (in days)"
					onblur="if (this.value == ''){this.value = 'Rent Duration (in days)'; }"
					onfocus="if (this.value == 'Rent Duration (in days)') {this.value = '';}">
				<br> <input type="text" name="description"
					id="describeElecItem" style="height: 100px; text-align: left;"
					value="Add a description"
					onblur="if (this.value == ''){this.value = 'Add a description'; }"
					onfocus="if (this.value == 'Add a description') {this.value = '';}">
				<br> <input type="text" name="item-cost" id="item-cost"
					value="Item Rent Cost (no. of credits)"
					onblur="if (this.value == ''){this.value = 'Item Rent Cost (no. of credits)'; }"
					onfocus="if (this.value == 'Item Rent Cost (no. of credits)') {this.value = '';}">

			</p>
			<p>
				<input type="submit" name="resolveAction" class="submit"
					value="Add Gadget">
			</p>

		</div>
	</div>
</form>


<div class="col-3" id="searchRideContent">
	<form id="searchRideForm" action="submit.php">
		<div class="col-1">
			<div class="customForm">

				<h2>Search for Ride</h2>

				<p>
					<input type="text" name="from" id="fromSearch" value="From where"
						onblur="if (this.value == ''){this.value = 'From where'; }"
						onfocus="if (this.value == 'From where') {this.value = '';}">
					<br> <input type="text" name="to" id="toSearch"
						value="To where"
						onblur="if (this.value == ''){this.value = 'To where'; }"
						onfocus="if (this.value == 'To where') {this.value = '';}">

					<input type="text" name="date" id="datetimepicker"
						value="Select Date & Time"
						onblur="if (this.value == ''){this.value = 'Select Date & Time'; }"
						onfocus="if (this.value == 'Select Date & Time') {this.value = '';}">
					<br> <select name="seats"
						style="clear: left; padding-top: 2px">
						<option value="" selected>Select Number of Seats</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
					</select>

				</p>
				<p>
					<input type="submit" name="searchThisRide" class="submit"
						value="Find a Ride">
				</p>

			</div>
		</div>

	</form>
</div>





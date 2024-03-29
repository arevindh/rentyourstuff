
<form id="addRideForm" class="customForm" action="pages/Submit.jsp">		

			<h2>Add a Ride</h2>
			<p>You can share a ride to your workplace or any other location.
				Or you can share a cab too. The details can be entered below and we
				will share them with your trust circle.</p>
			<br /> <br />
			<div class="col-2" style="float: right;"><h3>Who to share with?</h3><br/>
					<table>
					<tr><td><input type="checkbox" name="sharewith" value="friendscity" style="width: 20px;"/></td><td>Friends in City</td></tr>
					<tr><td><input type="checkbox" name="sharewith" value="city" style="width: 20px;"/></td><td>People in City</td></tr>
					<tr><td><input type="checkbox" name="sharewith" value="colleagues" style="width: 20px;"/></td><td>Colleagues</td></tr>
					<tr><td><input type="checkbox" name="sharewith" value="friends" style="width: 20px;"/></td><td>All Friends</td></tr>
					<tr><td><input type="checkbox" name="sharewith" value="everyone" style="width: 20px;"/></td><td>Everyone</td></tr>
					</table>
			</div>

			<p>
				<input type="text" name="from" id="fromAdd" value="From where"
					onblur="if (this.value == ''){this.value = 'From where'; }"
					onfocus="if (this.value == 'From where') {this.value = '';}">
				<br> <input type="text" name="to" id="toAdd" value="To where"
					onblur="if (this.value == ''){this.value = 'To where'; }"
					onfocus="if (this.value == 'To where') {this.value = '';}">

				<input type="text" name="date" class="datetimepicker"
					value="Select Date & Time"
					onblur="if (this.value == ''){this.value = 'Select Date & Time'; }"
					onfocus="if (this.value == 'Select Date & Time') {this.value = '';}">
				<br> <select name="seats" style="clear: left; padding-top: 2px">
					<option value="" selected>Select Number of Seats</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
				</select>

			</p>
			<br/>
			<input type="text" name="description" id="describeAddedRide"
				style="height: 100px; text-align: left;" value="Add a description"
				onblur="if (this.value == ''){this.value = 'Add a description'; }"
				onfocus="if (this.value == 'Add a description') {this.value = '';}">
			<br> <input type="text" name="ride-cost" id="ride-cost"
				value="Ride Cost (no. of credits)"
				onblur="if (this.value == ''){this.value = 'Ride Cost (no. of credits)'; }"
				onfocus="if (this.value == 'Ride Cost (no. of credits)') {this.value = '';}">
			<br />
			<p><input type="hidden" name="resolveAction" value="Add This Ride" />
				<input type="submit" class="submit"
					value="Add This Ride">
			</p>
			
</form>

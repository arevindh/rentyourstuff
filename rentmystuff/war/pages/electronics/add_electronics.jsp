<form id="addElecForm" action="pages/Submit.jsp">

	<h2>Add an Electronic Item</h2>
	<p>You can share a variety of gadgets you may have lying around,
		say a DSLR camera, to a friend going away on a vacation or your
		XBox/Playstation to the gaming freaks you know. Just enter details as
		asked below and we'll take care of the rest.</p>
	<br /><br/>
	
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
				<input type="text" name="gadgetName" id="elecTitle"
					value="Item Type"
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
			<p><input type="hidden" name=resolveAction value="Add Gadget"/>
				<input type="submit" class="submit"
					value="Add Gadget">
			</p>

		</div>		
</form>
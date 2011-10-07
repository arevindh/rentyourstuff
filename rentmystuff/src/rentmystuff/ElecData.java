package rentmystuff;

public class ElecData extends DataEntity {
	
	String ElecName;
	String FromDate;
	int NumberOfDays;
	String Description;
	int RentCost;
	
	public ElecData(String id, String elecName, String fromDate, int numberOfDays,
			String description, int rentCost) {
		super();
		ID=id;
		ElecName = elecName;
		FromDate = fromDate;
		NumberOfDays = numberOfDays;
		Description = description;
		RentCost = rentCost;
		
		entity.setProperty("ItemId", ID);
		entity.setProperty("ElecName", ElecName);
		entity.setProperty("FromDate", FromDate);
		entity.setProperty("NumberOfDays", NumberOfDays);
		entity.setProperty("Description", Description);
		entity.setProperty("RentCost", RentCost);
	}
	
	

}

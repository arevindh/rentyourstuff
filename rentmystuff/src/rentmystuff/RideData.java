package rentmystuff;

import com.google.appengine.repackaged.com.google.common.base.Flag.Date;

public class RideData extends DataEntity {
	
	String FromLocation;
	String ToLocation;
	String DateTime;
	int Seats;
	String Description;
	int RideCost;
	
	public RideData(String id, String fromLocation, String toLocation, String dateTime,
			int seats, String description, int rideCost) {
		super();
		ID=id;
		FromLocation = fromLocation;
		ToLocation = toLocation;
		DateTime = dateTime;
		Seats = seats;
		Description = description;
		RideCost = rideCost;
		
		entity.setProperty("ItemId", ID);
		entity.setProperty("FromLocation", FromLocation);
		entity.setProperty("ToLocation", ToLocation);
		entity.setProperty("DateTime", DateTime);
		entity.setProperty("Description", Description);
		entity.setProperty("RideCost", RideCost);
	}
	
	

}

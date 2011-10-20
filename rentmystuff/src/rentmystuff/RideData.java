package rentmystuff;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public class RideData extends DataEntity {
	
	Entity ridedata;
	
	public RideData(String UserID, String fromLocation, String toLocation, String dateTime,
			int seats, String description, int rideCost) {
		ridedata = new Entity("Ride",fromLocation+"_"+toLocation+"_"+UserID);
		
		ridedata.setProperty("User", UserID);
		ridedata.setProperty("FromLocation", fromLocation);
		ridedata.setProperty("ToLocation", toLocation);
		ridedata.setProperty("DateTime", dateTime);
		ridedata.setProperty("Description", description);
		ridedata.setProperty("RideCost", rideCost);
		DatastoreService DataStore = DatastoreServiceFactory.getDatastoreService();
		DataStore.put(ridedata);
	}
	
	

}

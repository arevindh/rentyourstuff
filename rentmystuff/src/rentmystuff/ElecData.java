package rentmystuff;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public class ElecData{
	
	Entity elecdata;
	
	public ElecData(String UserID, String elecName, String fromDate, int numberOfDays,
			String description, int rentCost) {
		
		elecdata = new Entity("Gadget",elecName+"_"+UserID);
		elecdata.setProperty("User", UserID);
		elecdata.setProperty("ElecName", elecName);
		elecdata.setProperty("FromDate", fromDate);
		elecdata.setProperty("NumberOfDays", numberOfDays);
		elecdata.setProperty("Description", description);
		elecdata.setProperty("RentCost", rentCost);
		DatastoreService DataStore = DatastoreServiceFactory.getDatastoreService();
		DataStore.put(elecdata);
	
	}
}

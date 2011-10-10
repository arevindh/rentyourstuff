package rentmystuff;


import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public class BookData {
	
	Entity bookdata;
	
	public BookData(String UserID, String bookTitle, String fromDate, int numberOfDays,String description, int rentCost) {
		bookdata = new Entity("Book",bookTitle+"_"+UserID);
		bookdata.setProperty("User", UserID);
		bookdata.setProperty("BookTitle", bookTitle);
		bookdata.setProperty("FromDate", fromDate);
		bookdata.setProperty("NumberOfDays", numberOfDays);
		bookdata.setProperty("Description", description);
		bookdata.setProperty("RentCost", rentCost);
		DatastoreService DataStore = DatastoreServiceFactory.getDatastoreService();
		System.err.println("here");
		DataStore.put(bookdata);
	}
}

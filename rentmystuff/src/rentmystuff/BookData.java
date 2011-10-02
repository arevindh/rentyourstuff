package rentmystuff;

import java.util.ArrayList;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.EntityNotFoundException;

public class BookData extends DataEntity {
	
	String BookTitle;
	String FromDate;
	int NumberOfDays;
	String Description;
	int RentCost;
	
	Entity bookDataEntity = new Entity("BookData", ID);
	
	
	public BookData(String id, String bookTitle, String fromDate, int numberOfDays,
			String description, int rentCost) {
		ID=id;
		BookTitle = bookTitle;
		FromDate = fromDate;
		NumberOfDays = numberOfDays;
		Description = description;
		RentCost = rentCost;
		
		bookDataEntity.setProperty("ItemId", ID);
		bookDataEntity.setProperty("BookTitle", BookTitle);
		bookDataEntity.setProperty("FromDate", FromDate);
		bookDataEntity.setProperty("NumberOfDays", NumberOfDays);
		bookDataEntity.setProperty("Description", Description);
		bookDataEntity.setProperty("RentCost", RentCost);
		
	}


	@Override
	public ArrayList<DataEntity> getData() {
		
		return null;
	}

}

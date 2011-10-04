package rentmystuff;


import java.util.ArrayList;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;


public class BookData  {
	String ID;
	String BookTitle;
	String FromDate;
	int NumberOfDays;
	String Description;
	int RentCost;
	Entity entity;
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	
	public BookData(String test) {
		BookTitle = test;
	}
	/*
	public BookData(String id, String bookTitle, String fromDate, int numberOfDays,
			String description, int rentCost) {
		ID=id;
		this.BookTitle = bookTitle;
		this.FromDate = fromDate;
		this.NumberOfDays = numberOfDays;
		this.Description = description;
		this.RentCost = rentCost;
		this.entity = new Entity("sdsad");
		entity.setProperty("ItemId", ID);
		entity.setProperty("BookTitle", BookTitle);
		entity.setProperty("FromDate", FromDate);
		entity.setProperty("NumberOfDays", NumberOfDays);
		entity.setProperty("Description", Description);
		entity.setProperty("RentCost", RentCost);
		
	}
	*/
	public boolean putData() {
		return true;
	}

	public ArrayList<DataEntity> getData() {
		
		return null;
	}

}

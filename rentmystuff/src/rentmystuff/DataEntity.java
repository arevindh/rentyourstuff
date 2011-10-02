package rentmystuff;


import java.util.ArrayList;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public abstract class DataEntity {
	String ID;
	DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	Entity entity;
	public abstract ArrayList<DataEntity> getData();
	
	public boolean putData (){
		datastore.put(entity);
		return true;
	}

}

package rentmystuff;

import java.io.IOException;
import javax.servlet.http.*;

//import com.google.appengine.api.datastore.Entity;
import com.google.gson.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.io.*;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.EntityNotFoundException;

@SuppressWarnings("serial")
public class Login extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse resp)
			throws IOException {

		String code = request.getParameter("code");
		if(code != null)
		{
			String AuthToken = getAuthToken(code);
			
			String GraphResponse = getGraphResponse(AuthToken);
			JsonParser Parser = new JsonParser();
			JsonObject JObject = Parser.parse(GraphResponse).getAsJsonObject();
		    String UserID = JObject.get("id").getAsString();
			String Name = JObject.get("name").getAsString();
			
			// Save Auth Token with UID
			DatastoreService DataStore = DatastoreServiceFactory.getDatastoreService();
			Key UserKey = KeyFactory.createKey("User",UserID);
			try {
				Entity User = DataStore.get(UserKey);
				String OldAuthToken = (String) User.getProperty("LastAuthToken");
				if(!OldAuthToken.equals(AuthToken)) {
					User.setProperty("LastAuthToken", AuthToken);
				}
				DataStore.put(User);
			}
			catch(EntityNotFoundException e) {
				Entity User = new Entity("User",UserID);
				User.setProperty("Name",Name);
				User.setProperty("LastAuthToken",AuthToken);
				DataStore.put(User);
			}
			resp.sendRedirect(resp.encodeURL("http://share-group.appspot.com/pages/rides.jsp?AuthToken="+AuthToken));
			//resp.getWriter().println("AuthResponse:"+AuthToken+" Code:"+code+" UserID:"+UserID+" Name:"+Name);			
		}
	}
		
	private String getAuthToken(String Code) throws IOException {
		String accessTokenUrl = "https://graph.facebook.com/oauth/access_token?"
			       +"client_id=220486511346030&redirect_uri=http://share-group.appspot.com/login"
			       +"&client_secret=28a63496982ad747d971ab07a33ddc3c&code=" + Code;
			URL url = new URL(accessTokenUrl);
		    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		    connection.setRequestMethod("GET");
		    connection.connect();
		    String authCodeResponse = "";
	        BufferedReader in = new BufferedReader(
	                new InputStreamReader(
	                connection.getInputStream()));
			String inputLine;
			
			while ((inputLine = in.readLine()) != null) 
				authCodeResponse+=(inputLine);
			in.close();
			System.err.println("authCodeResponse:"+authCodeResponse);
			String AuthToken="";
			try {
				AuthToken=authCodeResponse.substring(authCodeResponse.indexOf('=')+1,authCodeResponse.indexOf('&'));
			}
			catch(Exception e) {
				return authCodeResponse;
			}
			return AuthToken;
	}
	
	private String getGraphResponse(String AuthToken) throws IOException {
		String GraphResponse = "";
		URL url = new URL("https://graph.facebook.com/me?access_token="+AuthToken);
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	    connection.setRequestMethod("GET");
	    connection.connect();
	    BufferedReader in = new BufferedReader(
                new InputStreamReader(
                connection.getInputStream()));
	    String InputLine;
		while ((InputLine = in.readLine()) != null) 
			GraphResponse+=(InputLine);
		return GraphResponse;
	}
	
}

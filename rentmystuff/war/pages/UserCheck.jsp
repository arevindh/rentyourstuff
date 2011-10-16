<%@ page import="rentmystuff.FacebookCookieParser" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>
<%@ page import="com.google.appengine.api.datastore.Query" %>
<%@ page import="com.google.appengine.api.datastore.PreparedQuery" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<%@ page import="com.google.appengine.api.datastore.FetchOptions" %>
<%@ page import="com.google.appengine.api.datastore.Key" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>
<%@ page import="com.google.appengine.api.datastore.EntityNotFoundException" %>

<%
	//out.println("top");
	String AuthToken = request.getParameter("AuthToken"); 
	DatastoreService DataStore = DatastoreServiceFactory.getDatastoreService();
	String UserID = null;
	
	if(AuthToken != null ) {
		Query AuthTokenQuery = new Query("User");
		AuthTokenQuery.addFilter("LastAuthToken", Query.FilterOperator.EQUAL, AuthToken);
		PreparedQuery pq = DataStore.prepare(AuthTokenQuery);
		for (Entity User : pq.asIterable()) {
			UserID = (String)User.getProperty("Name");
			break;
		}
	}
	else {
		Cookie FbCookie = FacebookCookieParser.getFbCookie(request,"220486511346030");
		if(FbCookie != null) {
			FacebookCookieParser Fcp = new FacebookCookieParser(FbCookie,"28a63496982ad747d971ab07a33ddc3c","220486511346030");
			UserID = Fcp.getFBUserFromCookie();
			Key UserKey = KeyFactory.createKey("User",UserID);
			Entity User;
			try {
				User = DataStore.get(UserKey);
				UserID = (String)User.getProperty("Name");
			}
			catch(EntityNotFoundException e) {
				//UserID = UserID+"-Not in database";
				UserID = null;
			}
		}
	}
	
	out.println(UserID);
	
%>
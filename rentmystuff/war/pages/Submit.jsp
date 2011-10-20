<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="rentmystuff.*"%>
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

	String AuthToken = request.getParameter("AuthToken"); 
	String UserID = null;
	DatastoreService DataStore = DatastoreServiceFactory.getDatastoreService();
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
	//temp test fix as user is not logged in 
	UserID = "testid";
	
	
  String action = request.getParameter("resolveAction");
  
  //delegating action based upon type of form submitted
  if(action.equals("Add This Book")){
	  
   BookData book = new BookData(UserID,
                                request.getParameter("bookTitle"),
                                request.getParameter("fromDate"), 
                                Integer.parseInt(request.getParameter("numberOfDays")),
                                request.getParameter("description"),
  	                            Integer.parseInt(request.getParameter("book-cost")));
   } else if (action.equals("Add Gadget")){
     
	   ElecData gadget = new ElecData(UserID,
                                request.getParameter("gadgetName"),
                                request.getParameter("fromDate"), 
                                Integer.parseInt(request.getParameter("numberOfDays")),
                                request.getParameter("description"),
                                Integer.parseInt(request.getParameter("item-cost")));
   } else if (action.equals("Add This Ride")){
     RideData ride = new RideData(UserID,
                                  request.getParameter("from"),
                                  request.getParameter("to"),
                                  request.getParameter("date"),
                                  Integer.parseInt(request.getParameter("seats")),
                                  request.getParameter("description"),
                                  Integer.parseInt(request.getParameter("ride-cost")));    
   }

%>
<%
response.setContentType("text/html");
response.getWriter().println("<span style=\"font-size: 20px\">Content added successfully. This will be published to your trust circle. </span>");

%>






<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="rentmystuff.*"%>
<%
  String action = request.getParameter("resolveAction");
  
  //delegating action based upon type of form submitted
  if(action=="Add This Book"){
   String BookID = "genBookId";
   BookData book = new BookData(BookID,
                                request.getParameter("bookTitle"),
                                request.getParameter("fromDate"), 
                                Integer.parseInt(request.getParameter("numberOfDays")),
                                request.getParameter("description"),
                                Integer.parseInt(request.getParameter("book-cost")));
	
	//Saving the book to dataStore  
	book.putData();
   } else if (action=="Add Gadget"){
      String GadgetID = "genGadgetID";
      
      ElecData gadget = new ElecData(GadgetID,
                                request.getParameter("gadgetName"),
                                request.getParameter("fromDate"), 
                                Integer.parseInt(request.getParameter("numberOfDays")),
                                request.getParameter("description"),
                                Integer.parseInt(request.getParameter("item-cost")));
      gadget.putData();
   
   } else if (action=="Add This Ride"){
     String RideID = "genRideId";
     
     RideData ride = new RideData(RideID,
                                  request.getParameter("from"),
                                  request.getParameter("to"),
                                  request.getParameter("date"),
                                  Integer.parseInt(request.getParameter("seats")),
                                  request.getParameter("description"),
                                  Integer.parseInt(request.getParameter("ride-cost")));    
     //Saving the RIDE to dataStore  
      ride.putData();
   }
   
	
%>
<%
response.setContentType("text/html");
response.getWriter().println("<div class=\"col-1\">");
response.getWriter().println("<span style=\"font-size: 20px\">Book added successfully. This will be published to your trust circle.</span>");
response.getWriter().println("</div>");
%>


	



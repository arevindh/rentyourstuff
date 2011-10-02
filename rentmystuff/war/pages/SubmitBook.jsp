<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="rentmystuff.*"%>
<%
	BookData book = new BookData("111",
			request.getParameter("bookTitle"),
			request.getParameter("fromDate"), Integer.parseInt(request
					.getParameter("numberOfDays")),
			request.getParameter("description"),
			Integer.parseInt(request.getParameter("book-cost")));
	book.putData();
%>
<html>
<div class="col-1">
	<span style="font-size: 20px">Book added successfully. This will be published
	to your trust circle.</span>
</div>
</html>

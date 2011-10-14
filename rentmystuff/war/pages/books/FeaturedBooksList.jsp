<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="rentmystuff.FacebookCookieParser"%>
<%@include file="../UserCheck.jsp"%>
<% String s =  request.getParameter("AuthToken");%>
<p>
	<%=s %>
	Hello <%= UserID %>

</p>
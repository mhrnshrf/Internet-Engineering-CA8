<%@page import="far.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Stock Exchange</title>
<%
int id;
String name, family;
try{
    id = Integer.parseInt(request.getParameter("id"));
    name = request.getParameter("name");
    family = request.getParameter("family");
}
catch(NumberFormatException b){
		String er = "Enter number!";
		request.setAttribute("error", er); %>
		<jsp:forward page = "err.jsp"/>
<%
}
String res = new String();
if(!Customer.exist(id) && id != 1){
	Customer c = new Customer(id, name, family);
	Customer.list.add(c);
	res = "New user is added";
}
else
	res = "Repeated id";

request.setAttribute("res", res);
%>

<jsp:forward page = "response.jsp"/>
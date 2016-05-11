<%@page import="far.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Stock Exchange</title>

	<%
	int id, amount;
	try{
		id = Integer.parseInt(request.getParameter("id"));
	    amount = Integer.parseInt(request.getParameter("amount"));
	}
	catch(NumberFormatException b){
		String er = "Enter number!";
		request.setAttribute("error", er);
	%>
			<jsp:forward page = "err.jsp"/>
	<%
	}

	String res = new String();
    Symbol s;

    if(!Customer.exist(id))
        res = "Unknown user id";
    else{
        WaitingCustomer c = new WaitingCustomer(Customer.getCustomer(id), amount);
        WaitingCustomer.waitList.add(c);
        res = "Your request is queued.";
    }

    request.setAttribute("res", res);
    %>

    <jsp:forward page = "response.jsp"/>

</body>
</html>
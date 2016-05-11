<%@page import="far.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Stock Exchange</title>

	<%
	int id, price, quantity;
	String instrument, type;
	try{
		id = Integer.parseInt(request.getParameter("id"));
	    instrument = request.getParameter("instrument");
	    price = Integer.parseInt(request.getParameter("price"));
	    quantity = Integer.parseInt(request.getParameter("quantity"));
	    type = request.getParameter("type");
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

    if (id == 1) {
    	if (Symbol.exist(instrument)) {
    		s = Symbol.getSymbol(instrument);
    	}
    	else{
    		s = new Symbol(instrument);
    		Symbol.list.add(s);
    	}

    	res = s.updateList(id, instrument, price, quantity, type, "sell");
    	
    }
	else if (!Symbol.exist(instrument)) 
		res = "Invalid symbol id";
    else if(!Customer.exist(id))
    	res = "Unknown user id";
    else if (Customer.getCustomer(id).getShare(instrument) < quantity)	
    	res = "Not enough share";
    else{
    	s = Symbol.getSymbol(instrument);
    	res = s.updateList(id, instrument, price, quantity, type, "sell");
    }

    request.setAttribute("res", res);
    %>
    <jsp:forward page = "response.jsp"/>

</body>
</html>
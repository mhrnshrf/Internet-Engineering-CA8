<%@page import="far.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Stock Exchange</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-rtl/3.2.0-rc2/css/bootstrap-rtl.css"> -->
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-rtl/3.2.0-rc2/css/bootstrap-rtl.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="mystyle.css">

</head>
	<body>
		<div class="container">
			<%@include file="header.jsp" %>
		  <div class="row">
		    <div class="col-sm-4 col-sm-push-8">
				<%@include file="menu.jsp" %>
		    </div>
		    <div class="col-sm-8 col-sm-pull-4">
			    <div class="content">
		            <div id="sell-table">
			            <FORM method="POST" ACTION="response.jsp">
			              <table>
			                <tr>
			                  <th>لیست درخواست‌ها</th>
			                </tr>
			                <tr>
			                  <th>شناسه</th>
			                  <th>میزان</th>
			                  <th>انتخاب</th>
			                </tr>
			                <%
			                for(int i=0; i<WaitingCustomer.waitList.size(); i++){
			                  int id = WaitingCustomer.waitList.get(i).getID();
			                  int amount = WaitingCustomer.waitList.get(i).getAmount();

			                %>
			                  <tr>
			                    <td><%=id%></td>
			                    <td><%=amount%></td>
			                    <td> <input type="checkbox" name="accepts" value=<%=Integer.toString(id)%> /> </td>
			                  </tr>
			                <% } %>
			              </table>
			              <input type="submit" value="ثبت"/>
		            </div>
			    </div>
		    </div>
		  </div>
		</div>
	</body>
</html>

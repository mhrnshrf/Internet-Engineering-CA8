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

          <%
            Symbol s = (Symbol) request.getAttribute("sym");
            
            %>
            <h2>وضعیت کنونی نماد</h2></br>
            <div id="sell-table">
              <table>
                <tr>
                  <th>لیست فروش سهام</th>
                </tr>
                <tr>
                  <th>شناسه فروشنده</th>
                  <th>تعداد سهم</th>
                  <th>قیمت هر سهم</th>
                </tr>
                <%
                for(int i=0; i<s.sell.size(); i++){
                  int id = s.sell.get(i).getID();
                  int price = s.sell.get(i).getPrice();
                  int quant = s.sell.get(i).getQuant();

                %>
                  <tr>
                    <td><%=id%></td>
                    <td><%=quant%></td>
                    <td><%=price%></td>
                  </tr>
                <% } %>
              </table>
            </div>

            <div id="buy-table">
              <table>
                <tr>
                  <th>لیست خرید سهام</th>
                </tr>
                <tr>
                  <th>شناسه فروشنده</th>
                  <th>تعداد سهم</th>
                  <th>قیمت هر سهم</th>
                </tr>
                <%
                for(int i=0; i<s.buy.size(); i++){
                  int id = s.buy.get(i).getID();
                  int price = s.buy.get(i).getPrice();
                  int quant = s.buy.get(i).getQuant();

                %>
                  <tr>
                    <td><%=id%></td>
                    <td><%=quant%></td>
                    <td><%=price%></td>
                  </tr>
                <% } %>
              </table>
            </div>

          </div>
        </div>
      </div>
    </div>
  </body>
</html>





<%@page import="far.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<html>
<head>
<title>Stock Exchange</title>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Stock Exchange</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
	<body>
		<div class="container">
		  <div class="row">
			  	<div class="col-sm-2">
			  		<div id="logo">
						<img id="stock-logo" class="img-responsive" src="tehran-stock-exchange-logo3.png" />
						<img id="fanni-logo" class="img-responsive" src="fanni.jpg" />
					</div>
				</div>
				<div class="col-sm-10">
			 		<div id="top" class="jumbotron">
					   	<a href="index.html"><h2>سامانه هسته معاملات بورس</h2></br></a>
						<i>نسخه آزمایشی</i>
					</div>
			  	</div>
			</div>
		  <div class="row">
		    <div class="col-sm-8">
			    <div class="content">
		   			<!-- !!!!!!!!CONTENT!!!!!!! -->
		   				<% 
	   					if(((String) request.getAttribute("page")).equals("index")) %>
	   						<h2>به هسته‌ی معاملات بورس خوش آمدید.</h2>

			    </div>
		    </div>
		    <div class="col-sm-4">
			    <div id="navbar">
			      	<ul>
					  <li><a href="register.html">عضویت</a></li>
					  <li><a href="deposit.html">واریز</a></li>
					  <li><a href="withdraw.html">برداشت</a></li>
					  <li><a href="unknown.html">وضعیت بازار</a></li>
					  <li><a href="sell.html">فروش سهام</a></li>
					  <li><a href="buy.html">خرید سهام</a></li>
					</ul>
			    </div>
		    </div>
		  </div>
		</div>
	</body>
</html>

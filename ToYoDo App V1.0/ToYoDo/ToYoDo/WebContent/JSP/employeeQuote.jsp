<%@page import="com.toyodo.service.impl.EmployeeServiceImpl"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.toyodo.service.EmployeeService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*, java.io.*, com.toyodo.utils.*, com.toyodo.notification.*,com.toyodo.model.Employee, com.toyodo.model.Order, com.toyodo.model.Products"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quote</title>
<link href="/ToYoDo/CSS/layout.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	
<%
HttpSession httpSession = request.getSession(false);
String employeeID = (String) httpSession.getAttribute("loginID");
System.out.println(employeeID);
if (employeeID == null || httpSession.isNew()){
	RequestDispatcher rd = request.getRequestDispatcher("/JSP/index.jsp");
	request.setAttribute("unauthorised_msg", Notify.UNAUTHORISED);
	rd.forward(request, response);
}
%>

	<div id="header">
		
	<%@include file="/WEB-INF/nav/dashboardNav.html" %>
	</div>
	<div id="sidebar-left">
		<% 
			EmployeeService employeeService = new EmployeeServiceImpl(); 
		%>
		<%@include file="/WEB-INF/nav/sidebarNav.html" %>
	</div>
	<div id="main">
		
		<form action="" method="POST" name="createQuote">
					<div class="form-row">
						<div class="form-group col-md-4">
							<label for="orderdate">Order Date</label> <input type="date"
								class="form-control" id="inputEmail4">
						</div>
						<div class="form-group col-md-4">
							<label for="customerNameID">Customer Name/ID</label> <input type="text"
							class="form-control" id="inputAddress">
						</div>
						<div class="form-group col-md-4">
							<label for="gstNo">GST Number</label> <input type="text"
							class="form-control" id="inputAddress" value=${gstNo}>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="shippingAddress">Shipping Address</label> <input type="text" 
							class="form-control" id="inputAddress" value=${shippingAddress}>
						</div>
						<div class="form-group col-md-6">
							<label for="city">City</label> <input type="text"
							class="form-control" id="city" value=${city}>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-4">
							<label for="phone">Phone Number</label> <input type="number"
							class="form-control" id="phone" value=${phone}>
						</div>
						<div class="form-group col-md-6">
							<label for="email">Email</label> <input type="email"
							class="form-control" id="email" value=${email}>
						</div>
						<div class="form-group col-md-2">
							<label for="pincode">Pincode</label> <input type="number"
							class="form-control" id="pincode" value=${pincode}>
						</div>
					</div>
					<p>Product List</p>

					<div class="container-fluid" style="height: 210px; overflow-y: auto;">
					    <div class="row">
						      <table class="table table-hover table-sm">
								  <thead class="thead-dark">
								    <tr>
								      <th scope="col">Product ID</th>
								      <th scope="col">Name</th>
								      <th scope="col">Price</th>
								      <th scope="col">Category</th>
								      <th scope="col">Add</th>
								    </tr>
								  </thead>
								  <tbody>
									<%
										List<Products> listProducts = employeeService.listProducts();
										for (Products product:listProducts){
									%>
								    <tr>
								      <th><%=product.getProduct_id() %></th>
								      <td><%=product.getName() %></td>
								      <td>&#8377; <%=product.getPrice() %></td>
								      <td><%=product.getCategory() %></td>
								      <td><input type="checkbox" name="addProduct"></td>
								    </tr>
								    
								    <%} %>
								  </tbody>
							</table>
					    </div>
					</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="shippingCost">Shipping Cost</label> <input type="number"
									class="form-control" id="shippingCost">
								</div>
								<div class="form-group col-md-6">
									<label for="totalOrderValue">Total Order Value</label> <input type="number"
									class="form-control" id="totalOrderValue">
								</div>
							</div>
							
							
				</form>
				

	</div>
	
	<div id="footer">
		Copyright &copy; 2021 ToYoDo<br/>
		All rights reserved. Powered by JAVATAR
	</div>
</body>
</html>
<html>
<head>
<%@include file="./base.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
</head >
<title>Inventory Management</title>
<body >

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center" style="background-color:LightBlue;">Inventory Management System</h1>
				
				<div class="container text-center">
<form method="get" action="search">
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" value="Search" />
		<div class="container text-right">
<a href="new" class="btn btn-outline-success">Add</a>
</div></form>
		
				<table class="table">
  <thead class="thead-light">
    <tr>
      	
			<th>Product_Name</th>
			<th>Quantity</th>
			<th>Unit_Price(Rs)</th>
			<th>Edit/Delete</th>
      
    </tr>
  </thead>
  <tbody>
		<c:forEach items="${listCustomer}" var="customer">
		<tr>
			
			<td>${customer.name}</td>
			<td>${customer.em}</td>
			<td>${customer.ad}</td>
			<td>
				<a href="edit?id=${customer.id}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="delete?id=${customer.id}">Delete</a>
			</td>
		</tr>
		</c:forEach></tbody>
	</table>
</div>	
</body>
</html>
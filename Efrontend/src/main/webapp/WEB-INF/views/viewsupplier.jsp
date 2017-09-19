<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html lang="en">

<head>
<meta charset="UTF-8" />
<title>Address Form</title>
<meta name="viewport" content="initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<h4 style="font-family: magneto; margin-left: 5em;" align="left">NewSupplier</h4>
<!-- <table align="center"
	class="col-lg-8 col-lg-offset-1 col-sm-7 col-sm-offset-1">
 -->
	<body>
		 <div class="container">  
      <table align="center" class="col-lg-2 col-lg-offset-1 col-sm-7 col-sm-offset-1">       
  <table class="table table-bordered">
    <thead>
      <tr>
						<c:url value="/admin/supplier" var="supplier1" />
				<thead>

					<tr>

						<th>supplierId</th>

						<th>supplierName</th>

						<th>contactNumber</th>
						<th>Edit</th>
						<th>Delete</th>

					</tr>

				</thead>

				<tbody>

					<c:forEach items="${supplierList}" var="supplier"
						varStatus="status">

						<tr>

							

							<td>${supplier.supplierId}</td>

							<td>${supplier.supplierName}</td>

							<td>${supplier.contactNumber}</td>


							<td><a
								href="${supplier1}/editsupplier?supplierId=${supplier.supplierId}" class="glyphicon glyphicon-pencil">Edit</a></td>
							<td><a
								href="${supplier1}/deletesupplier?supplierId=${supplier.supplierId}" class="glyphicon glyphicon-trash">Delete</a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
	</html>
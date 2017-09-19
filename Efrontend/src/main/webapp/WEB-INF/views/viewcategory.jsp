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


<h4 style="font-family: magneto; margin-left: 5em;" align="left">NewCategory</h4>

	<body>
 <div class="container">  
      <table align="center" class="col-lg-2 col-lg-offset-1 col-sm-7 col-sm-offset-1">       
  <table class="table table-bordered">
    <thead>
      <tr>
						<c:url value="/admin/Category" var="category1" />
				<thead>

					<tr>

						<th>categoryId</th>

						<th>categoryName</th>

						<th>categoryDescription</th>
						
						<th>Edit</th>
						<th>Delete</th>
					</tr>

				</thead>

				<tbody>

					<c:forEach items="${categoryList}" var="category"
						varStatus="status">

						<tr>

							<%-- <td>${status.count}</td> --%>
							<td>${category.categoryId}</td>

							<td>${category.categoryName}</td>

							<td>${category.categoryDescription}</td>

							<td><a
								href="${category1}/editCategory?categoryId=${category.categoryId}" class="glyphicon glyphicon-pencil">Edit</a></td>
							<td><a
								href="${category1}/deleteCategory?categoryId=${category.categoryId}" class="glyphicon glyphicon-trash">Delete</a></td>

						</tr>

					</c:forEach>
			</table>
		</div>
	</body>
	</html>
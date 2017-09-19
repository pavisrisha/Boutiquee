<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html lang="en">

<head>
 <meta charset="UTF-8" />
  <title>Address Form</title>
  <meta name="viewport" content="initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  </head>
<h4 style="font-family: magneto; margin-left: 5em;" align="left" >NewProduct</h4>
 

<body>
  <div class="container">  
      <table align="center" class="col-lg-2 col-lg-offset-1 col-sm-7 col-sm-offset-1">       
  <table class="table table-bordered">
    <thead>
      <tr>	
<c:url value="/admin/product" var="product1" /> 

    <thead>
      <tr>
      
        <th>productId</th>

        <th>productName</th>

        <th>produtDescription</th>

        <th>stock</th>

        <th>price</th>

        <th>categoryName</th>

        <th>supplierName</th>

        <th>image</th> 
        <th>Edit</th> 
       
        <th>Delete</th> 

      </tr>

    </thead>

    <tbody>

    <c:forEach items="${productList}" var="product" varStatus="status">

  <tr>

    

			<td>${product.productId}</td>
			<td>${product.productName}</td>
			
			<td>${product.productDescription}</td>

			<td>${product.stock}</td>

			<td>${product.price}</td>

			 <td>${product.category}</td>

			<td>${product.supplierName}</td> 
			
			<c:url value="/resources/images/${product.productId}.jpg" var="s"></c:url>
			 <td> <img src="${s}" alt="${product.productId}" width=100px; height=100px;></td>

			

			<td><a href="${product1}/editproduct?productId=${product.productId}" class="glyphicon glyphicon-pencil">EDIT</a></td>
			
			<td><a href="${product1}/deleteproduct?productId=${product.productId}" class="glyphicon glyphicon-trash" >Delete</a></td>

  </tr>

  </c:forEach>

  </tbody>

      </table>

</div>





</body>

</html>
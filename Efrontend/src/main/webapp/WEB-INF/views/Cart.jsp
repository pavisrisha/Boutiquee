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
<h4 style="font-family: magneto; margin-left: 5em;" align="left" >Product Description</h4>
 

<body>
  <div class="container">  
      <table align="center" class="col-lg-2 col-lg-offset-1 col-sm-7 col-sm-offset-1">       
  <table class="table table-bordered">
    <thead>
      <tr>		 
	<c:if test="${cartlength > 0}">
		<!-- <table class="table table-striped custab"> -->




			<tr>


				<th align="left">S.No</th>

				<th align="left">Cart Id</th>

				<th align="left">Product Name</th>

				<th align="left">Price</th>

				<th align="left">Quantity</th>

				<th align="left">Total</th>

				<th align="left">Days</th>

				<th align="left">Remove</th>



			</tr>
			
			<c:url value="/cart/increaseQty" var="increaseQty"></c:url>
			<c:url value="/cart/decreaseQty" var="decreaseQty"></c:url>
			<c:forEach items="${cartList}" var="cart" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${cart.cartId}</td>
					<td>${cart.productName}</td>
					<td>${cart.price}</td>

					<td><a href="${decreaseQty}?cartId=${cart.cartId}"><span
							class="glyphicon glyphicon-minus"> </span></a> <input type="text"
						name="quantity" value="${cart.qty}" min="1" id="quantity"
						style="width: 50px; text-align: center;" /> <a
						href="${increaseQty}?cartId=${cart.cartId}"><span
							class="glyphicon glyphicon-plus"> </span></a></td>
					<td>${cart.total}</td>
					<td>${cart.days}</td>



					<c:url value="/cart/removeCart" var="p"></c:url>
					<td><a href="${p}?cartId=${cart.cartId}">Remove</a></td>

				</tr>
			</c:forEach>
			<tr>
				<td colspan="5">Grand Total :</td>

				<td colspan="2">${GrandTotal }</td>
				<td></td>
			</tr>
		</table>
		<%--  </c:if>  --%>
		</div>
		<p>
			<center><a href="proceed" class="btn teal">Proceed</a></center>
			<%-- <center><a href="proceed"><button align="left"
					class="w3-button w3-#009933">Proceed</button></a></center> --%>
		</p>
	</c:if>
	<c:if test="${cartlength == 0}">
		<center>
			<h2 style="padding-top: 50px;">Sorry!!!!! Your Cart is empty</h2>
		</center>
<br>

			
			</center>
	</c:if>
	</div>
	

	
	<br>

	<br>
	
</body>
</html>
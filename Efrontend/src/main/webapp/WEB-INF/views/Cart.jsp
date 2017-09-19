<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  @import url(https://fonts.googleapis.com/css?family=Open+Sans:400, 300, 600, 700);

  html {
    font-family: "Open Sans", sans-serif;
  }

  h1 {
    color: #444;
  }

   .btn {
      padding: 1em 2.1em 1.1em;
      border-radius: 3px;
      margin: 8px 8px 8px 8px;
      color: #fbdedb;
      background-color: #fbdedb;
      display: inline-block;
      background: #e74c3c;
      -webkit-transition: 0.3s;
      -moz-transition: 0.3s;
      -o-transition: 0.3s;
      transition: 0.3s;
      font-family: sans-serif;
      font-weight: 800;
      font-size: .85em;
      text-transform: uppercase;
      text-align: center;
      text-decoration: none;
      -webkit-box-shadow: 0em -0.3rem 0em rgba(0, 0, 0, 0.1) inset;
      -moz-box-shadow: 0em -0.3rem 0em rgba(0, 0, 0, 0.1) inset;
      box-shadow: 0em -0.3rem 0em rgba(0, 0, 0, 0.1) inset;
      position: relative;
  }
  .btn:hover, .btn:focus {
      opacity: 0.8;
  }
  .btn:active {
      -webkit-transform: scale(0.80);
      -moz-transform: scale(0.80);
      -ms-transform: scale(0.80);
      -o-transform: scale(0.80);
      transform: scale(0.80);
  }
  .btn.block {
      display: block !important;
  }
  .btn.circular {
    border-radius: 50em !important;
  }


  /* Colours */
  .red {
      background-color: #d55050;
  }
  .teal {
      background-color: #50d5a1;
  }
  .sky {
      background-color: #6698cb;
  }
  .black {
      background-color: #5c6166;
  }
  .gray {
      color: black;
      background-color: #d2d2d2;
  }
  .orange {
      background-color: #e96633;
  }
  .pink {
      background-color: #cb99c5;
  }
  .green {
      background-color: #5bbd72;
  }
  .blue {
      background-color: #7abedf;
  }
  .yellow {
      background-color: #ecc92b;
  }
  .purple {
      background-color: #564f8a;
  }</style>
<style>
border


:

 

1
px

 

solid

 

black


;
border-collapse


:

 

collapse


;
}
th, td {
	padding: 5px;
}

th {
	text-align: left;
}

#page {
	margin: 20px;
}
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">

</head>
<h5 style="font-family: magneto; margin-left: 5em;" align="left">Product
	Description</h5>




</head>
<body>

            
  <table class="table table-bordered">
 <%--  <c:if test="${count!=0}">

		<c:url value="/cart/removecart/${i.id}" var="clear"></c:url>

		<a href="${clear}" class="btn btn-danger pull-left"><span

			class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a> --%>
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

			<c:url value="/all/products/getallproducts" var="h"></c:url>

			<a href="${h}" class="btn btn-success"> Add Cart to Products </a> 

			</center>
	</c:if>
	</div>
	

	
	<br>

	<br>
	
</body>
</html>
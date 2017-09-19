<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
</style>
<style>
body {
	margin-top: 20px;
}
</style>
<head>
<title>Insert title here</title>
</head>

<h2 style="font-family: magneto; margin-left: 5em;" align="left" >Receipt</h2>
<body>


	<div class="container">
		<div class="row">

		

			<br> <br>

			<div
				class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6"><th>ADDRESS DETAILS</th>
						<address>
							${shipping.address}<br> ${shipping.zipcode}
						</address>
					</div>
					
					<%-- <div class="col-xs-6 col-sm-6 col-md-6"><th>Custumer Details</th>
						<address>
							${shipping.username}<br> ${shipping.emailid} 
						</address>
					</div> --%>
					<div class="col-xs-6 col-sm-6 col-md-6 text-right"></div>
				</div>
				<div class="row">
					<div class="text-center"></div>
					</span>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Product</th>
								<th class="text-center">Product Price</th>
								<th class="text-center">Qty</th>
								<th class="text-center">Total</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${i}" var="cartitem" varStatus="status">

								<tr>

									<td>${cartitem.productName}</td>

									<td class="text-center">${cartitem.price}</td>

									<td class="text-center">${cartitem.qty}</td>

									<td class="text-right">${cartitem.total}</td>
                                    <c:set var="grandTotal" value="${grandtotal + cartitems.total }"></c:set>
								</tr>

							</c:forEach>
							<tr>
								<td> </td>
								<td> </td>
								<td class="text-right"><h4>
										<strong>Grand Total: </strong>
									</h4></td>
								<td class="text-center text-danger"><h4>
										<strong>${GrandTotal}</strong>
									</h4></td> 
							</tr>
							
						</tbody>
					</table>
					<c:url value="/Thanku" var="abc"></c:url>
					<a href="${abc}" class="btn teal block circular">Clickhere</a>
					<%--  <a href="${abc}" class="btn btn-success btn-lg btn-block">Clickhere <span class="glyphicon glyphicon-chevron-right"></span>
 --%>
                </a>
					<div>
					<div class="wrapper">

  
  
  
</div>

					
					</div>
				</div>
			</div>
		</div>
</body>
</html>
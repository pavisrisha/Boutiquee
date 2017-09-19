<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style>
 	<div class="product-box">
  <div class="container">
    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/furniture.jpg" alt="cookies" class="hero-image" />
    
    <div class="price">$ <div>95</div></div>
    
    <div class="information">

      <div class="name">Amazing Furniture</div>
      
      <div class="store">ikea.com</div>
      
      <a href="#" class="button">Purchase Product</a>
      
    </div> <!-- end information -->
  </div> <!-- end container -->
</div> <!-- end product-box -->
</style>
</head>

<body>

	

		<div class="product-single">

			<div class="product-gallery">

				<div class="slider-arrows">
					<i class="fa fa-fw fa-arrow-circle-o-left" id="prev-slide"></i><i
						class="fa fa-fw fa-arrow-circle-o-right" id="next-slide"></i>
				</div>
 
				<div id="slider-wrap">

					<ul class="slides"> 
						<c:url value="/resources/images/${pro.productId}.jpg" var="image"></c:url>
<img src="${image}" alt="${pro.productId}" width="500" height="500" align="left"> <div class="center">



							
							</div>
							</div>
							<!-- <li class=""> --><h3 style="font-family: magneto" align="center">Product
									Name: ${pro.productName}</h3>
								<h3 style="font-family: magneto" align="center">Price: ${pro.price}</h3>
				</ul> 

					<span style="color: red;"> ${message}</span>

					<div class="center">

					
						

						
							<c:url value="/cart/addtocart" var="a"></c:url>

							<br>
							<br>
							<br>
							<p>
							<center>
							<%-- 	<a href="${a}?productId=${pro.productId}" class="btn orange">Add To Cart</a> --%>
								
								 <a href="${a}?productId=${pro.productId}"><button
										type="button" class="btn btn-secondary">Add To Cart</button></a> 
							</center>
							</p>
							
							
						<c:url value="/home" var="after"></c:url>
						<p>
						<center>
							<a href="${after}"><button type="button"
									class="btn btn-secondary">Go Back</button></a>
									</center>
						</p>

					</div>

				</div>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>

	<c:choose>
		<c:when test="${isUserClickedRegister == 'true' }">
			<%@ include file="register.jsp"%>
		</c:when>

		<c:when test="${isUserClickedLogin == 'true' }">
			<%@ include file="login.jsp"%>
		</c:when>

		<c:when test="${isUserClickedProduct == 'true' }">
			<%@ include file="Product.jsp"%>
		</c:when>

		<c:when test="${isUserClickedViewPsroduct == 'true' }">
			<%@ include file="viewproduct.jsp"%>
		</c:when>

		<c:when test="${isUserClickedCategory == 'true' }">
			<%@ include file="Category.jsp"%>
		</c:when>

		<c:when test="${isUserClickedViewCategory == 'true' }">
			<%@ include file="viewcategory.jsp"%>
		</c:when>

		<c:when test="${isUserClickedMyCart == 'true' }">
			<%@ include file="Cart.jsp"%>
		</c:when>

		<c:when test="${isUserClickedSupplier== 'true' }">
			<%@ include file="Supplier.jsp"%>
		</c:when>

		<c:when test="${isUserClickedViewSupplier == 'true' }">
			<%@ include file="viewsupplier.jsp"%>
		</c:when>

	
		
		 <c:when test="${isUserClickedAboutus == 'true' }">
			<%@ include file="Aboutus.jsp"%>
		</c:when>  

		<c:when test="${isUserClickedViewUser == 'true' }">
			<%@ include file="viewuser.jsp"%>
		</c:when>

		<c:when test="${isUserClickedViewMore == 'true' }">
			<%@ include file="Productdescription.jsp"%>
		</c:when>

		<c:when test="${viewShippingAddressClicked  == 'true' }">
			<%@ include file="Shippingaddress.jsp"%>
		</c:when>

		<c:when test="${newShippingaddressClicked == 'true' }">
			<%@ include file="Editshippingaddress.jsp"%>
		</c:when>

		<c:when test="${isuserclickeddeliverhere== 'true' }">
			<%@ include file="Card payment.jsp"%>
		</c:when>


		<c:when test="${isuserclickedCashOnDelivery== 'true' }">
			<%@ include file="receipt.jsp"%>
		</c:when>


		<c:when test="${isUserClickedThanku == 'true' }">
			<%@ include file="Thanku.jsp"%>
		</c:when>






		<c:otherwise>
			<%@ include file="Carousel.jsp"%>
			<%@ include file="productlist.jsp"%>
		</c:otherwise>



	</c:choose>
	
	<div>
		<%@ include file="footer.jsp"%>
	</div>



</body>
</html>
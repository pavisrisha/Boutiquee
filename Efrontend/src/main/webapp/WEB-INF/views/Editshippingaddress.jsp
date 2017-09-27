<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html lang="en">
 <script

	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<title>Insert title here</title>
 <script>
	function formAddress() {

	// Make quick references to our fields

	

	var userName = document.getElementById('userName');

	var contactNumber = document.getElementById('contactNumber');

	var address = document.getElementById('address');

	var zipcode = document.getElementById('zipcode');

	// Check each input in the order that it appears in the form!

	

				if (notEmpty(userName, "Username Should not be empty")) {

						if (isAlphabet(userName,

								"Please enter only letters for Username")) {

									if (notEmpty(contactNumber,

											"Contact Number Should not be empty")) {

										if (isNumeric(contactNumber,

												"Please enter only number for Contact Number")) {

										     if (notEmpty(address,

														"Address Should not be empty")) {

													if (notEmpty(zipcode,

															"Zipcode Should not be empty")) {

														if (isNumeric(

																zipcode,

																"Please enter a valid zip code")) {

															return true;

														}

													}

												}

											}

										}

									}

		

}

	return false;

}

function notEmpty(elem, helperMsg) {

	if (elem.value.length == 0) {

		alert(helperMsg);

		elem.focus(); // set the focus to this input

		return false;

	}

	return true;

}



function isNumeric(elem, helperMsg) {

	var numericExpression = /^[0-9]+$/;

	if (elem.value.match(numericExpression)) {

		return true;

	} else {

		alert(helperMsg);

		elem.focus();

		return false;

	}

}

function isAlphabet(elem, helperMsg) {

	var alphaExp = /^[a-z A-Z]+$/;

	if (elem.value.match(alphaExp)) {

		return true;

	} else {

		alert(helperMsg);

		elem.focus();

		return false;

	}

}



</script>
<head>
  <meta charset="UTF-8" />
  <title>Address Form</title>
  <meta name="viewport" content="initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<%-- <form action="${url1}" class="form-horizontal" method="post" onsubmit="return formShip()"> --%>

<body class="container">
 <h4 style="font-family: magneto; margin-left: 5em;" align="left" >Add New Shipping Address</h4>
  <div class="row">
  <c:url value="/addShippingaddress" var="action"></c:url>
  
     <form class="col s12"  method="post" action="${action}" onsubmit="return formAddress()"> 
    <c:if test="${shippingaddress.shippingId > 0}">
     <div class="input-field col s12 m12 l6">
          <input id="shippingId" name="shippingId" type="text" value="${shippingaddress.shippingId}"> 
         
        </div>
      </c:if>
      <div class="input-field col s12 m12 l6">
         
          <input id="userName" type="text" id="userName" value="${shippingaddress.userName}">
          <label for="username">userName</label>
        </div>
      <div class="row">
        <div class="input-field col s12 m12 l6">
          <input id="address" name="address" type="text" value="${shippingaddress.address}">
          <label for="address">Address</label>
        </div>
       
      </div>
      <div class="row">
        <div class="col s12 m12 l6">
          
        </div>
        <div class="input-field col s12 m12 l6">
          <input id="zipcode" name="zipcode" type="text" value="${shippingaddress.zipcode}"> 
          <label for="zipcode">ZipCode</label>
        </div>
      </div>
  
      <button class="waves-effect waves-light btn right" type="submit">deliver here</button>
    </form>

  </div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>

</body>

</html>

</body>
</html>
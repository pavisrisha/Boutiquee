<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>Address Form</title>
  <meta name="viewport" content="initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body class="container">
 <h4 style="font-family: magneto; margin-left: 5em;" align="left" >Add New Shipping Address</h4>
  <div class="row">
  <c:url value="/addShippingaddress" var="action"></c:url>
  
    <form class="col s12"  method="post" action="${action}" >
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
          <label for="zip-code">Zip Code</label>
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
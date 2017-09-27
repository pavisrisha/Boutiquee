<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  }
</style> 

<head>
<body>

<c:url value="/shippingaddressPage" var="u"></c:url>
<center><a href="${u}" class="btn teal">New Shipping Address</a></center>
<%-- <center><a href="${u}">New Shipping Address</a></center></span></button><br><br> --%>

<c:forEach items="${shippingList}" var="shipping" >
<div class="col-sm-3 col-sm-offset-1" style="width:300px;heigth:500px;border:2px solid green ; float: left; margin-left: 1.5em;" >
<c:url value="/cart/deleteshippingAddress" var="p"></c:url>
							<td><a href="${p}?shippingId=${shipping.shippingId}">

<span style="float: right;margin-right:1em;" class="glyphicon glyphicon-trash"></span> 
</a>
<c:url value="/cart/editshippingaddress" var="a"></c:url>
<a href="${a}?shippingId=${shipping.shippingId}"> 
<span style="float: right; margin-right:1em;"class="glyphicon glyphicon-pencil"></span>

</a>


</a>

<br><b><font color="solid red">Shipping address</b></font><br><br>

Name:${shipping.userName}<br>

Contact Number:${shipping.contactNumber}<br>
Address:${shipping.address}<br>
Zipcode:${shipping.zipcode}

<br><br><button >

<c:url value="/payment/${shipping.shippingId}" var="urlpay"></c:url>

<a href="${urlpay}" class="btn green">DeliverHere</a>
<%-- <class="btn btn-secondary"><a href="${urlpay}">DeliverHere</a></button><br><br></td> --%>
</div>
</c:forEach>
<br><br>

</body>
</html>
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
    font-size: .95em;
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

@import url(https://fonts.googleapis.com/css?family=Roboto:100,300,400,900,700,500,300,100);
*{
  margin: 0;
  box-sizing: border-box;

}
body{
  background: #E0E0E0;
  font-family: 'Roboto', sans-serif;
  background-image: url('');
  background-repeat: repeat-y;
  background-size: 100%;
}
::selection {background: #f31544; color: #FFF;}
::moz-selection {background: #f31544; color: #FFF;}
h1{
  font-size: 2.5em;
  color: #222;
}
h2{font-size: .9em;}
h3{
  font-size:3.2em;
  font-weight: 300;
  line-height: 2em;
}
p{
  font-size: .7em;
  color: #666;
  line-height: 1.2em;
}

#invoiceholder{
  width:100%;
  hieght: 100%;
  padding-top: 50px;
}
#headerimage{
  z-index:-1;
  position:relative;
  top: -50px;
  height: 350px;
 


}
#invoice{
  position: relative;
  top: -290px;
  margin: 0 auto;
  width: 700px;
  background: #FFF;
}

[id*='invoice-']{ /* Targets all id with 'col-' */
  border-bottom: 1px solid #EEE;
  padding: 30px;
}

#invoice-top{min-height: 120px;}
#invoice-mid{min-height: 120px;}
#invoice-bot{ min-height: 250px;}

.logo{
  float: left;
	height: 60px;
	width: 60px;
	background: url(http://michaeltruong.ca/images/logo1.png) no-repeat;
	background-size: 60px 60px;
}
.clientlogo{
  float: left;
	height: 60px;
	width: 60px;
	background: url(http://michaeltruong.ca/images/client.jpg) no-repeat;
	background-size: 60px 60px;
  border-radius: 50px;
}
.info{
  display: block;
  float:left;
  margin-left: 20px;
}
.title{
  float: right;
}
.title p{text-align: right;}
#project{margin-left: 52%;}
table{
  width: 100%;
  border-collapse: collapse;
}
td{
  padding: 5px 0 5px 15px;
  border: 1px solid #EEE
}
.tabletitle{
  padding: 5px;
  background: #EEE;
}
.service{border: 1px solid #EEE;}
.item{width: 50%;}
.itemtext{font-size: .9em;}

#legalcopy{
  margin-top: 30px;
}
form{
  float:right;
  margin-top: 30px;
  text-align: right;
}


.effect2
{
  position: relative;
}
.effect2:before, .effect2:after
{
  z-index: -1;
  position: absolute;
  content: "";
  bottom: 15px;
  left: 10px;
  width: 50%;
  top: 80%;
  max-width:300px;
  background: #777;
  -webkit-box-shadow: 0 15px 10px #777;
  -moz-box-shadow: 0 15px 10px #777;
  box-shadow: 0 15px 10px #777;
  -webkit-transform: rotate(-3deg);
  -moz-transform: rotate(-3deg);
  -o-transform: rotate(-3deg);
  -ms-transform: rotate(-3deg);
  transform: rotate(-3deg);
}
.effect2:after
{
  -webkit-transform: rotate(3deg);
  -moz-transform: rotate(3deg);
  -o-transform: rotate(3deg);
  -ms-transform: rotate(3deg);
  transform: rotate(3deg);
  right: 10px;
  left: auto;
}



.legal{
  width:70%;
}
</style>
<head>
<title>Insert title here</title>
</head>
<h1 style="font-family: magneto; margin-left: 5em;" align="left" >Receipt</h1>
<body>
	<div id="invoiceholder">
  <div id="headerimage"></div>
  <div id="invoice" class="effect2">
    
    <div id="invoice-top">
      <div class="logo"></div>
      <div class="info">
        <h2>Pavithra</h2>
        <p> Boutique@gmail.com </br>
            289-335-6503
        </p>
      </div><!--End Info-->
      <div class="title">
        <h1>Invoice </h1>
      
        </p>
      </div><!--End Title-->
    </div><!--End InvoiceTop-->


    
    <div id="invoice-mid">
      
       <div class="clientlogo"></div>
      <div class="info">
         <h2>Custumer Details</h2>
        <p>${shipping.userName}<br> ${shipping.emailId} <br> ${shipping.contactNumber} </p> 
        
          
      </div> 

      <div id="project">
        <h2><b>ADDRESS DETAILS</b></h2>
        <p>${shipping.address}<br> ${shipping.zipcode}</p>
      </div>   

    </div><!--End Invoice Mid-->
    
    <div id="invoice-bot">
      
      <div id="table">
        <table>
          <tr class="tabletitle">
            <td class="item"><h2>Product Name</h2></td>
            <td class="Hours"><h2>Product Price</h2></td>
            <td class="Rate"><h2>Qty</h2></td>
            <td class="subtotal"><h2>Total</h2></td>
          </tr>
          <c:forEach items="${i}" var="cartitem" varStatus="status">
          <tr class="service">
            <td class="tableitem"><p class="itemtext">${cartitem.productName}</p></td>
            <td class="tableitem"><p class="itemtext">${cartitem.price}</p></td>
            <td class="tableitem"><p class="itemtext">${cartitem.qty}</p></td>
            <td class="tableitem"><p class="itemtext">${cartitem.total}</p></td>
                       <c:set var="grandTotal" value="${grandtotal + cartitems.total }"></c:set>
          </tr>
         
          </c:forEach>
            
          <tr class="tabletitle">
            <td></td>
            <td></td>
           
          
           <td class="text-right"><h4>
										<strong>Grand Total: </strong>
									</h4></td>
								<td class="text-center text-danger"><h4>
										<strong>${GrandTotal}</strong>
									</h4></td> 
								
                   
           
          </tr>
          </tbody>
        </table>
      </div><!--End Table-->
      	
  
					<c:url value="/Thanku" var="abc"></c:url>
					<center><a href="${abc}" class="btn teal block circular">Clickhere</a></center>
      
      <div id="legalcopy">
        <p class="legal"><strong>Thank you for your business!</strong>  Payment is expected within 31 days; please process this invoice within that time. There will be a 5% interest charge per month on late invoices. 
        </p>
      </div>
      
    </div><!--End InvoiceBot-->
  </div><!--End Invoice-->
</div><!-- End Invoice Holder-->

</body>
</html>
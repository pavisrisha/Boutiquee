<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	document.getElementById('app').onclick = function() {
		myFunction()
	};
	function myFunction() {
		var x = document.getElementById('myDIV');
		x.style.display = 'block';
	}
</script>
<style type="text/css">
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

.teal {
    background-color: #50d5a1;
}
</style>
<style type="text/css">
body {
	background: white;
}

.flip-container {
	-webkit-perspective: 1000;
	-moz-perspective: 1000;
	-ms-perspective: 1000;
	perspective: 1000;
	-ms-transform: perspective(1000px);
	-moz-transform: perspective(1000px);
	-moz-transform-style: preserve-3d;
	-ms-transform-style: preserve-3d;
}

/* START: Accommodating for IE */
.flip-container.hover .back {
	-webkit-transform: rotateY(0deg);
	-moz-transform: rotateY(0deg);
	-o-transform: rotateY(0deg);
	-ms-transform: rotateY(0deg);
	transform: rotateY(0deg);
}

.flip-container.hover .front {
	-webkit-transform: rotateY(180deg);
	-moz-transform: rotateY(180deg);
	-o-transform: rotateY(180deg);
	transform: rotateY(180deg);
}

/* END: Accommodating for IE */
.flip-container, .front, .back {
	width: 435px;
	height: 258px;
	margin: 25px auto;
}

/* flip speed goes here */
.flipper {
	-webkit-transition: 0.6s;
	-webkit-transform-style: preserve-3d;
	-ms-transition: 0.6s;
	-moz-transition: 0.6s;
	-moz-transform: perspective(1000px);
	-moz-transform-style: preserve-3d;
	-ms-transform-style: preserve-3d;
	transition: 0.6s;
	transform-style: preserve-3d;
	position: relative;
}

/* hide back of pane during swap */
.front, .back {
	border: 1px solid #E3E3E3;
	-webkit-backface-visibility: hidden;
	-moz-backface-visibility: hidden;
	-ms-backface-visibility: hidden;
	backface-visibility: hidden;
	-webkit-transition: 0.6s;
	-webkit-transform-style: preserve-3d;
	-webkit-transform: rotateY(0deg);
	-moz-transition: 0.6s;
	-moz-transform-style: preserve-3d;
	-moz-transform: rotateY(0deg);
	-o-transition: 0.6s;
	-o-transform-style: preserve-3d;
	-o-transform: rotateY(0deg);
	-ms-transition: 0.6s;
	-ms-transform-style: preserve-3d;
	-ms-transform: rotateY(0deg);
	transition: 0.6s;
	transform-style: preserve-3d;
	transform: rotateY(0deg);
	position: absolute;
	top: 0;
	left: 0;
}

* /
	/* front pane, placed above back */ 
.front {
	-webkit-transform: rotateY(0deg);
	-ms-transform: rotateY(0deg);
	z-index: 2;
}

/* back, initially hidden pane */
.back {
	-webkit-transform: rotateY(-180deg);
	-moz-transform: rotateY(-180deg);
	-o-transform: rotateY(-180deg);
	-ms-transform: rotateY(-180deg);
	transform: rotateY(-180deg);
}

/* card styles goes here */
.card {
	background: linear-gradient(rgba(255, 255, 255, 1) 25%,
		rgba(255, 255, 255, 0.2)), #ddd;
	border-radius: 4px;
	-webkit-box-shadow: 0 2px 10px rgba(51, 51, 51, 0.2);
	-moz-box-shadow: 0 2px 10px rgba(51, 51, 51, 0.2);
	box-shadow: 0 2px 10px rgba(51, 51, 51, 0.2);
	box-sizing: border-box;
	font-family: 'Source Sans Pro', sans-serif;
	padding: 10px;
}

.card.back {
	text-align: right;
}

.card-provider {
	text-align: right;
	min-height: 40px; /* to remove image loading div resize */
}

.card-provider .c-image {
	display: inline-block;
	vertical-align: middle;
	margin-left: 18px;
}

.input-title, .disclaimer {
	color: #737373;
	font-weight: 400;
	font-size: 15px;
	display: block;
}

.input-field {
	display: block;
	padding: 13px 10px;
	border: 1px solid #D9D9D9;
	border-radius: 4px;
	margin: 10px 0 15px;
	font-size: 16px;
	box-shadow: inset 0 1px 5px rgba(0, 0, 0, 0.25);
}

.input-field.options {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.input-field.cvv-code {
	width: 100px;
}

.input-field:focus {
	outline: 0;
}

.input-field::-webkit-input-placeholder {
	color: #BBBBBB;
}

.input-field:-moz-placeholder { /* Firefox 18- */
	color: #BBBBBB;
}

.input-field::-moz-placeholder { /* Firefox 19+ */
	color: #BBBBBB;
}

.input-field:-ms-input-placeholder {
	color: #BBBBBB;
}

.card-number, .cardholder-name {
	width: 219px;
}

.cardholder-name-wrap {
	display: inline-block;
	vertical-align: middle;
	margin-right: 20px;
}

/* fix for firefox */
@
-moz-document url-prefix () { .cardholder-name-wrap { margin-right:10px;
	
}

}
.card-expiry-wrap {
	display: inline-block;
	vertical-align: middle;
}

.custom-dropdown {
	position: relative;
	display: inline-block;
	margin-right: 6px;
}

.custom-dropdown .options {
	padding-right: 33px;
}

.custom-dropdown .select-icon {
	position: absolute;
	width: 12px;
	top: 24px;
	right: 13px;
}

.black-stripe {
	height: 50px;
	background: #333;
	margin: 30px -11px 20px;
}

.cvv-wrap {
	display: inline-block;
	text-align: left;
	margin-bottom: 6px;
}

.disclaimer {
	text-align: left;
}

/* navigation buttons styles */
.buttons {
	text-align: center;
	padding-top: 20px;
}

.buttons button {
	cursor: pointer;
}

.buttons button:focus {
	outline: 0;
}

.buttons button:disabled {
	cursor: not-allowed;
}

.next, .prev {
	padding: 10px 20px;
	border: 0;
	background: #fff;
	border-radius: 3px;
	margin: 0 5px;
	font-size: 15px;
}
</style>
</head>
<body>

<div class="container">
 
  <ul class="nav nav-tabs">
   
    <li><a data-toggle="tab" href="#menu1">Credit Card Payment</a></li>
    <li><a data-toggle="tab" href="#menu2">Cash On Delivery</a></li>
    
  </ul>

  <div class="tab-content">
    
    <div id="menu1" class="tab-pane fade">
    
				     <h2 style="font-family: magneto; margin-left: 5em;" align="left">Pay
			Using Card</h2>


				<div class="flip-container" id="flip-toggle">

					<div class="flipper">
						<div class="card front">

							<div class="card-provider">
								<div class="visa c-image">
									<img src="https://i.imgur.com/NN9t7UH.png" alt="visa">
								</div>

								<div class="mastercard c-image">
									<img src="https://i.imgur.com/bma7TBS.png" alt="mastercard">
								</div>
							</div>

							<div class="card-number-wrap">
								<label class="input-title" for="c-number"> Card Number*
								</label> <input type="text" name="c-number" id="c-number"
									class="input-field card-number"
									placeholder="XXXX XXXX XXXX XXXX" maxlength="16" required>
							</div>

							<div class="cardholder-name-wrap">
								<label for="c-name" class="input-title cardholder-name">
									Name on card* </label> <input type="text" name="c-number" id="c-name"
									class="input-field cardholder-name" placeholder="John Doe"
									required>
							</div>

							<div class="card-expiry-wrap">

								<label class="input-title">Expiry Date*</label>
								<div class="custom-dropdown">
									<select name="month" class="input-field options">
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
									</select> <img src="http://imgh.us/dropdown_3.svg" alt="dropdown icon"
										class="select-icon">
								</div>

								<div class="custom-dropdown">
									<select name="year" class="input-field options">
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>24</option>
										<option>25</option>
									</select> <img src="http://imgh.us/dropdown_3.svg" alt="dropdown icon"
										class="select-icon">
								</div>

							</div>

						</div>

						<div class="card back">
							<!-- back content -->
							<div class="black-stripe"></div>
							<div class="cvv-wrap">
								<label for="cvv-code" class="input-title">CVV Code*</label> <input
									type="text" class="input-field cvv-code" id="cvv-code"
									placeholder="000" maxlength="3" required>
							</div>
							<div class="disclaimer">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit. <br />
								*Champs obligatoires
							</div>
						</div>

					</div>

				</div>

				<div class="buttons">
					<button class="prev" disabled="disabled">Prev</button>


					<button class="next">Next</button>
				</div>
				<c:url value="/order" var="order"></c:url>
				
					<center><a href="${order}/${shippingid}" class="btn red">submit</a></center>
					<%-- 	<a href="${order}/${shippingid}" >submit</a> --%>
					
				
    </div>
 
     
		
	
			
			<div id="menu2" class="tab-pane fade">
    <c:url value="/order/${shippingid}" var="p" />
<a href="${p}" class="btn btn-success pull-right">Cash On Delivery</a></right>
    </div>
			
				
  


</div>

	
				<script type="text/javascript">
					/* fix to enable click to show dropdown on custom icon */

					$(document).on('click', '.select-icon', function() {
						var selectId = $(this).siblings('.options');
						open(selectId);
					});

					function open(elem) {
						if (document.createEvent) {
							var e = document.createEvent("MouseEvents");
							e.initMouseEvent("mousedown", true, true, window,
									0, 0, 0, 0, 0, false, false, false, false,
									0, null);
							elem[0].dispatchEvent(e);
						} else if (element.fireEvent) {
							elem[0].fireEvent("onmousedown");
						}
					}

					/* next view button */
					$('.next').on('click', function() {

						$('#flip-toggle').addClass('hover');
						$(this).attr('disabled', true);
						$('.prev').removeAttr('disabled');

					});

					/* prev view button */
					$('.prev').on('click', function() {

						$('#flip-toggle').removeClass('hover');
						$(this).attr('disabled', true);
						$('.next').removeAttr('disabled');

					});
				</script>
</body>
</html>
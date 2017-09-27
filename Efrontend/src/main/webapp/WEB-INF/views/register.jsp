<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<script type="text/javascript">

function formRegister() {

	// Make quick references to our fields

	var userName = document.getElementById('userName');

	

    var password = document.getElementById('password');
	
	/* var password_confirmation = document.getElementById('password_confirmation'); */
	
	var contactNumber = document.getElementById('contactNumber');

	var emailId = document.getElementById('emailId');

	var address = document.getElementById('address');

	var zipcode = document.getElementById('zipcode');
/* 	var str1=document.getElementById("password").value;

	var str2=document.getElementById("password_confirmation").value;

	if(str1 != str2 ){

		alert("Passwords donot match");

		return false;

	}

	return true; */

	// Check each input in the order that it appears in the form!

	if (notEmpty(userName, "Name Should not be empty")) 

	{

		if (isAlphabet(userName, "Please enter only letters for name"))

			{

			if (notEmpty(contactNumber,

			"contactNumber Should not be empty")) 

			

		{

			if (isNumeric(contactNumber,

			"Please enter only number for contactNumber")) 

		{

				if (notEmpty(address,

				"Address Should not be empty"))

				{	

					if (isAlphanumeric(address,

					"Numbers and Letters Only for Address")) 

					{	

						

					if (notEmpty(zipcode,

					"Zipcode Should not be empty")) 

					{

				if (isNumeric(

						zipcode,

						"Please enter a valid zip code")) {

					

					if (notEmpty(emailId,

					"EmailId Should not be empty")) 

				 {

						if (emailIdValidator(emailId,

						"Enter a valid e-mail address"))

		{
							if (notEmpty(password,

									"password Should not be empty")) {

								if (isAlphanumeric(password,

										"Numbers and Letters Only for Passwords")) {
															return true;

														} 

													

												}

											}

										}

									}

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

function isAlphabet(elem, helperMsg) {

	var alphaExp = /^[0-9a-zA-Z\.\-]+$/;

	if (elem.value.match(alphaExp)) {

		return true;

	} else {

		alert(helperMsg);

		elem.focus();

		return false;

	}

}

function emailIdValidator(elem, helperMsg) {

	var emailIdExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;

	if (elem.value.match(emailExp)) {

		return true;

	} else {

		alert(helperMsg);

		elem.focus();

		return false;

	}

}

/* function Validate()

{

var str1=document.getElementById("password").value;

var str2=document.getElementById("password_confirmation").value;

if(str1 != str2 ){

	alert("Passwords donot match");

	return false;

}

return true;

}  */

</script>
<style>
body {
	margin: 0;
	color: #6a6f8c;
	background: #c8c8c8;
	font: 600 16px/18px 'Open Sans', sans-serif;
}

*, :after, :before {
	box-sizing: border-box
}

.clearfix:after, .clearfix:before {
	content: '';
	display: table
}

.clearfix:after {
	clear: both;
	display: block
}

a {
	color: inherit;
	text-decoration: none
}

.login-wrap {
	width: 100%;
	margin: auto;
	max-width: 525px;
	min-height: 670px;
	position: relative;
	background:
		url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg)
		no-repeat center;
	box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0
		rgba(0, 0, 0, .19);
}

.login-html {
	width: 100%;
	height: 100%;
	position: absolute;
	padding: 90px 70px 50px 70px;
	background: rgba(40, 57, 101, .9);
}

.login-html .sign-in-htm, .login-html .sign-up-htm {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	transform: rotateY(180deg);
	backface-visibility: hidden;
	transition: all .4s linear;
}

.login-html .sign-in, .login-html .sign-up, .login-form .group .check {
	display: none;
}

.login-html .tab, .login-form .group .label, .login-form .group .button
	{
	text-transform: uppercase;
}

.login-html .tab {
	font-size: 22px;
	margin-right: 15px;
	padding-bottom: 5px;
	margin: 0 15px 10px 0;
	display: inline-block;
	border-bottom: 2px solid transparent;
}

.login-html .sign-in:checked+.tab, .login-html .sign-up:checked+.tab {
	color: #fff;
	border-color: #1161ee;
}

.login-form {
	min-height: 345px;
	position: relative;
	perspective: 1000px;
	transform-style: preserve-3d;
}

.login-form .group {
	margin-bottom: 15px;
}

.login-form .group .label, .login-form .group .input, .login-form .group .button
	{
	width: 100%;
	color: #fff;
	display: block;
}

.login-form .group .input, .login-form .group .button {
	border: none;
	padding: 15px 20px;
	border-radius: 25px;
	background: rgba(255, 255, 255, .1);
}

.login-form .group input[data-type="password"] {
	text-security: circle;
	-webkit-text-security: circle;
}

.login-form .group .label {
	color: #aaa;
	font-size: 12px;
}

.login-form .group .button {
	background: #1161ee;
}

.login-form .group label .icon {
	width: 15px;
	height: 15px;
	border-radius: 2px;
	position: relative;
	display: inline-block;
	background: rgba(255, 255, 255, .1);
}

.login-form .group label .icon:before, .login-form .group label .icon:after
	{
	content: '';
	width: 10px;
	height: 2px;
	background: #fff;
	position: absolute;
	transition: all .2s ease-in-out 0s;
}

.login-form .group label .icon:before {
	left: 3px;
	width: 5px;
	bottom: 6px;
	transform: scale(0) rotate(0);
}

.login-form .group label .icon:after {
	top: 6px;
	right: 0;
	transform: scale(0) rotate(0);
}

.login-form .group .check:checked+label {
	color: #fff;
}

.login-form .group .check:checked+label .icon {
	background: #1161ee;
}

.login-form .group .check:checked+label .icon:before {
	transform: scale(1) rotate(45deg);
}

.login-form .group .check:checked+label .icon:after {
	transform: scale(1) rotate(-45deg);
}

.login-html .sign-in:checked+.tab+.sign-up+.tab+.login-form .sign-in-htm
	{
	transform: rotate(0);
}

.login-html .sign-up:checked+.tab+.login-form .sign-up-htm {
	transform: rotate(0);
}

.hr {
	height: 2px;
	margin: 60px 0 50px 0;
	background: rgba(255, 255, 255, .2);
}

.foot-lnk {
	text-align: center;
}
</style>
</head>
<body>
	<form action="newUser"  method="post" onsubmit="return formRegister()">
	
	 <div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-up" checked><label
				for="tab-1" class="tab">Sign Up</label>

			<div class="panel-body">
				


					<div class="form-group">
	<input type="text" name="emailId" id="emailId" class="form-control input-sm" placeholder="emailId">
					</div>
					

					<div class="form-group">
						<input type="text" name="userName" id="userName"
							class="form-control input-sm" placeholder="userName">
					</div>


					
						
							<div class="form-group">
	<input type="password" name="password" id="password" class="form-control input-sm" placeholder="password">
							</div>
						
						<!-- <div class="col-xs-6 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="password" name="password_confirmation"
									id="password_confirmation" class="form-control input-sm"
									placeholder="Confirm Password">
							</div>
						</div> -->
					
					<div class="form-group">
	<input type="text" name="contactNumber" id="contactNumber" class="form-control input-sm" placeholder="contactNumber">
					</div>

					<div class="form-group">
						<input type="text" name="address" id="address"
							class="form-control input-sm" placeholder="address">
					</div>

					<div class="form-group">
<input type="text" name="zipcode" id="zipcode" class="form-control input-sm" placeholder="zipcode">
					</div>
					<input type="submit" value="Register"
					
					class="btn btn-info btn-block">
					 <div class="hr"></div>
               <!--  <div class="foot-lnk"> -->

				</form>

			</div>

		</div>
	</div>



</body>
</html>
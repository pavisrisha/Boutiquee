<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>boutique- ${title}</title>
<script type="text/javascript">
	window.menu = '${title}'
</script>
</head>
<body>


	<c:url value="/admin/Category" var="category" />
	<c:url value="/admin/product" var="product" />
	<c:url value="/admin/supplier" var="supplier" />



	<nav class="navbar navbar-inverse">

	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">



			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex5-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<ul class="nav navbar-nav navbar-left">

					<ul class="nav navbar-nav">
						<c:url value="/home" var="url1"></c:url>

						<li class="active"><a href="${url1}">Home</a></li>

						<li><a href="Aboutus">Aboutus</a></li>

					

							<ul class="nav navbar-nav">
								<c:if test="${pageContext.request.userPrincipal.name != null }">
									<security:authorize access="hasRole('ROLE_USER')">
										<c:url value="/cart/myCart" var="cart"></c:url>
										<li id="cart"><a href="${cart }"><span
												class="glyphicon glyphicon-shopping-cart"></span> myCart ${cartlength}</a></li>
									</security:authorize>
								</c:if>
								
									



								<security:authorize access="hasRole('ROLE_ADMIN')">

									<li id=Product class="dropdown"><a class="dropdown-toggle"
										data-toggle="dropdown">Product <span class="caret"></span></a>

										<ul class="dropdown-menu">
											<li><a href="${product}/add">ADD</a></li>

											<li><a href="${product}/view">VIEW</a></li>

										</ul>
								</security:authorize>
								<security:authorize access="hasRole('ROLE_ADMIN')">
									<li id=Supplier class="dropdown"><a
										class="dropdown-toggle" data-toggle="dropdown">Supplier <span
											class="caret"></span></a>

										<ul class="dropdown-menu">

											<li><a href="${supplier}/add">ADD </a></li>

											<li><a href="${supplier}/view">VIEW </a></li>

										</ul></li>
								</security:authorize>
								<security:authorize access="hasRole('ROLE_ADMIN')">
									<li id=Category class="dropdown"><a
										class="dropdown-toggle" data-toggle="dropdown">Category <span
											class="caret"></span></a>

										<ul class="dropdown-menu">

											<li><a href="${category}/add">ADD </a></li>

											<li><a href="${category}/view">VIEW </a></li>

										</ul></li>

								</security:authorize>
								<c:if test="${pageContext.request.userPrincipal.name != null }">

									<li><a href="#">${pageContext.request.userPrincipal.name}
									</a></li>
								</c:if>

							</ul> <c:if test="${pageContext.request.userPrincipal.name == null }">
								<li id=register><a href="register"><span
										class="glyphicon glyphicon-user"></span>Register</a></li>
							</c:if> <c:if test="${pageContext.request.userPrincipal.name == null }">
								<c:url value="/login" var="login"></c:url>
								<li id=login><a href="${login }"><span
										class="glyphicon glyphicon-log-in"></span> Login</a></li>

							</c:if>
					</ul>
					<c:if test="${pageContext.request.userPrincipal.name != null }">
						<c:url value="/j_spring_security_logout" var="logout"></c:url>
						<li id=logout><a href="${logout}"> <span
								class="glyphicon glyphicon-log-out"></span> logout
						</a></li>
						</a>
						</li>
					</c:if>
			</div>
	</nav>



	</ul>

	</div>

	</nav>


	<!-- Self Coded Java Script -->
	<script src="${js}/myapp.jsp"></script>


</body>

</html>
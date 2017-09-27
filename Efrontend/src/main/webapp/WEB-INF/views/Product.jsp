<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<html lang="en">

<head>
<meta charset="UTF-8" />
<title>Address Form</title>
<meta name="viewport" content="initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<h2 style="font-family: magneto; margin-left: 5em;" align="left">Product</h2>
<body>

	<c:url value="/admin/product" var="product1" />

	<form:form action="${product1}/newProduct" class="form-horizontal" modelAttribute="product" method="post" enctype="multipart/form-data">



		<fieldset>
		
			 <div class="form-group">
				<div class="col-md-4">
					<form:input path="productId" type="hidden" name="productId"
						class="form-control" /> 
				</div>

			</div> 
			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name_fr">PRODUCT
					NAME</label>
				<div class="col-md-4">
					<form:input path="productName" name="productName"
						class="form-control" />
						<form:errors path="productName" cssStyle="color:red"></form:errors>
				</div>
			</div>
			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name_fr">PRODUCT
					Description</label>
				<div class="col-md-4">
					<form:input path="productDescription" name="productDescription"
						class="form-control" />
						<form:errors path="productDescription" cssStyle="color:red"></form:errors>
				</div>
			</div>
			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name">STOCK</label>
				<div class="col-md-4">
					<form:input path="stock" name="stock" class="form-control" />
					<form:errors path="stock" cssStyle="color:red"></form:errors>
				</div>
			</div>
			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name_fr">PRICE</label>
				<div class="col-md-4">
					<form:input path="price" name="price" class="form-control" />
					<form:errors path="price" cssStyle="color:red"></form:errors>
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-4 control-label" for="post">CategoryName</label>

				<div class="col-xs-6">

					<select name="category" id="category" class="form-control">
					

						<option value="" class="form-control">Select Category</option>

						<c:forEach items="${categoryList}" var="category">

							<option value="${category.categoryName}">${category.categoryName}</option>

						</c:forEach>

					</select>

				</div>

			</div>
			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-xs-4 control-label" for="post">SupplierName</label>

				<div class="col-xs-6">

					<select name="supplierName" id="supplier" class="form-control">

						<option value="" class="form-control">Select Supplier</option>

						<c:forEach items="${supplierList}" var="supplier"
							varStatus="status">

							<option value="${supplier.supplierName}">${supplier.supplierName}</option>

						</c:forEach>

					</select>

				</div>

			</div>
			<!-- File Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="filebutton">upload
					file</label>
				<div class="col-md-4">
					<form:input path="image" name="image" type="file" />
				</div>
			</div>
			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for=""></label>
				<div class="col-md-4">
					<button type="submit" name="submit" class="btn btn-primary">Submit</button>
				</div>
			</div>

		</fieldset>

	</form:form>
</body>
</html>

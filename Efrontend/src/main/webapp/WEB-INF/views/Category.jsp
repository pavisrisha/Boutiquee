<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>Address Form</title>
  <meta name="viewport" content="initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<h4 style="font-family: magneto; margin-left: 5em;" align="left" >CATOGORY</h4>

<body>
<c:url value="/admin/Category" var="category" />
	<form:form action="${category}/newCategory" class="form-horizontal" modelAttribute="category"  method="post">
		<fieldset>
			<!-- Form Name -->

			
			<!-- Select Basic -->
			 <div class="form-group">
				
					<div class="col-md-4">
						<form:input path="categoryId"  type="hidden"  name="categoryId" class="form-control" />
					</div> 
				
			</div>
<div class="form-group">

			<label class="col-md-4 control-label" for="category_name">CATEGORY NAME</label>
			<div class="col-md-4">
				<form:input path="categoryName"  type="text"  name="categoryName" class="form-control" />
				<form:errors path="categoryName" cssStyle="color:red"></form:errors>
			</div>
</div>

			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="category_name_fr">CATEGORY DESCRIPTION</label>
				<div class="col-md-4">
					<form:input path="categoryDescription"  type="text" name="categoryDescription"	class="form-control" />
					<form:errors path="categoryDescription" cssStyle="color:red"></form:errors>
				</div>
			</div>
			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for=""></label>
				<div class="col-md-4">
					<button type="submit" name="" class="btn btn-primary">Submit</button>
				</div>
			</div>
		</fieldset>

	</form:form>





</body>

</html>
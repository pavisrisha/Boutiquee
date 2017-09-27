<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>


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
<h2 style="font-family: magneto; margin-left: 5em;" align="left" >Supplier</h2>
<body>

	<c:url value="/admin/supplier" var="supplier2" />

	<form:form action="${supplier2}/newSupplier" class="form-horizontal"
		modelAttribute="supplier" method="post">

		<fieldset>
			<div class="form-group">
			
			<div class="col-md-4">
						<form:input path="supplierId"  type="hidden"  name="supplierId" class="form-control" />
						
					</div>
					
					</div>


			
					
<div class="form-group">
				<label class="col-md-4 control-label" for="supplier_name_fr">SUPPLIER
					NAME</label>
				<div class="col-md-4">

					<form:input path="supplierName" name="supplierName"
						class="form-control" />
						<form:errors path="supplierName" cssStyle="color:red"></form:errors>
</div>
</div>
					<div class="form-group">

						<label class="col-md-4 control-label" for="supplier_name_fr">CONTACT
							NUMBER</label>
						<div class="col-md-4">
							<form:input path="contactNumber" name="contactNumber"
								class="form-control" />
								<form:errors path="contactNumber" cssStyle="color:red"></form:errors>
						
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
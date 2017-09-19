<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<html lang="en">
<head>
<style type="text/css">
@import url(https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css);
@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,700);
.snip1418 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  float: left;
  overflow: hidden;
  margin: 10px 1%;
  min-width: 230px;
  max-width: 315px;
  width: 100%;
  background: #ffffff;
  text-align: left;
  color: #000000;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  font-size: 16px;
  -webkit-transform: translateZ(0);
  transform: translateZ(0);
  -webkit-perspective: 20em;
  perspective: 20em;
}
.snip1418 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.3s ease-out;
  transition: all 0.3s ease-out;
}
.snip1418 img {
  max-width: 100%;
  vertical-align: top;
  position: relative;
}
.snip1418 .add-to-cart {
  position: absolute;
  top: 0;
  right: 0;
  padding-right: 10px;
  color: #ffffff;
  font-weight: 700;
  text-transform: uppercase;
  font-size: 0.9em;
  opacity: 0;
  background-color: #409ad5;
  -webkit-transform: rotateX(-90deg);
  transform: rotateX(-90deg);
  -webkit-transform-origin: 100% 0;
  -ms-transform-origin: 100% 0;
  transform-origin: 100% 0;
}
.snip1418 .add-to-cart i {
  display: inline-block;
  margin-right: 10px;
  width: 40px;
  line-height: 40px;
  text-align: center;
  background-color: #164666;
  color: #ffffff;
  font-size: 1.4em;
}
.snip1418 figcaption {
  padding: 20px;
}
.snip1418 h3,
.snip1418 p {
  margin: 0;
}
.snip1418 h3 {
  font-size: 1.5em;
  font-weight: 700;
  margin-bottom: 10px;
  text-transform: uppercase;
}
.snip1418 p {
  font-size: 0.9em;
  letter-spacing: 1px;
  font-weight: 400;
}
.snip1418 .price {
  font-weight: 500;
  font-size: 1.5em;
  line-height: 48px;
  letter-spacing: 1px;
}
.snip1418 .price s {
  margin-right: 5px;
  opacity: 0.5;
  font-size: 0.9em;
}
.snip1418 a {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}
.snip1418:hover .add-to-cart,
.snip1418.hover .add-to-cart {
  opacity: 1;
  -webkit-transform: rotateX(0deg);
  transform: rotateX(0deg);
}
.snip1418:hover .add-to-cart i,
.snip1418.hover .add-to-cart i {
  background-color: #2980b9;
}
/* Demo purposes only */
body {

}
</style>
<script>
/* Demo purposes only */
$(".hover").mouseleave(
  function () {
    $(this).removeClass("hover");
  }
);
</script>
</head>


  
 
</head>

<body>
  <c:forEach items="${productList}" var="product">
<figure class="snip1418"> <img src="resources/images/${product.productId}.jpg" alt="${product.productId}" />
  <div class="add-to-cart"> <i class="ion-android-add"></i><span>Add to Cart</span></div>
  <figcaption>
    <h4>  ${product.productDescription}</h4>
    <h3>${product.productName}</h3>
    <h4>  ${product.price}</h4>
    <c:url value="/productdescription/${product.productId}" var="des"></c:url>
     </figcaption><a href="${des}"></a>
     <div class="price">
    
    
      
    </div>
     
<%-- <a href="${des}" class="btn red">Moredetails</a> --%>

   
 
</figure>


</c:forEach>

</body>

</html>
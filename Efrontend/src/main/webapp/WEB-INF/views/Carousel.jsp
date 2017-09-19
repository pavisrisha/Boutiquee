
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

</head>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	display: block;
	height: 400px;
	min-width: 100%;
	width: 100%;
	max-width: 100%;
	line-height: 2;
}
</style>

<body>

<div id="myCarousel" class="carousel slide">

    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="" contenteditable="false"></li>
        <li data-target="#myCarousel" data-slide-to="1" class="active" contenteditable="false"></li>
        <li data-target="#myCarousel" data-slide-to="2" class="" contenteditable="false"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item" style="">
            <img src="resources/55.jpg" alt="" class="">
            <div class="carousel-caption">
                <h4 class="">New Arrivals</h4>
                <p class="New Arrivals For More Shopping.">
                                   
                  
                </p>
            </div>
        </div>
        <div class="item active">
            <img src="resources/33.jpg"alt="" class="">
            <div class="carousel-caption">
                <h4 class="">Welocme</h4>

                <p class="Welcome to our website.">
                </p>
            </div>
        </div>
        <div class="item" style="">
            <img src="resources/8.jpg"alt="" class="">
            <div class="carousel-caption">
                <h4 class="">Discount</h4>

                            <p class="">
                  More Discount In Wedding Dresses.
                </p>
            </div>
        </div>
    </div>    

    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>

    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>

	
</div>	

</div>
</div>

</body>
</html>
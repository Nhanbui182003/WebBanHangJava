<%@page import="Model.BEAN.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
<head>
	<!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name='copyright' content=''>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Title Tag  -->
    <title>Eshop - eCommerce HTML5 Template.</title>

	<!-- Favicon -->
	<link rel="icon" type="image/png" href="images/favicon.png">
	<!-- Web Font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
	
	<!-- StyleSheet -->
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Magnific Popup -->
    <link rel="stylesheet" href="css/magnific-popup.min.css">
	<!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.css">
	<!-- Fancybox -->
	<link rel="stylesheet" href="css/jquery.fancybox.min.css">
	<!-- Themify Icons -->
    <link rel="stylesheet" href="css/themify-icons.css">
	<!-- Nice Select CSS -->
    <link rel="stylesheet" href="css/niceselect.css">
	<!-- Animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
	<!-- Flex Slider CSS -->
    <link rel="stylesheet" href="css/flex-slider.min.css">
	<!-- Owl Carousel -->
    <link rel="stylesheet" href="css/owl-carousel.css">
	<!-- Slicknav -->
    <link rel="stylesheet" href="css/slicknav.min.css">
	
	<!-- Eshop StyleSheet -->

	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
   
</head>
<style>
	.original_price{
		font-size: 20px;
		font-weight: 500;
		color: red;
		text-decoration: line-through;
		margin-top: 20px;
		margin-bottom: 10px;
	}
	.product_price{
		font-size: 20px;
		font-weight: 500;
		color: red;
	}
	.quantity {
	  display: flex;
	  flex-direction: column;
	  flex-wrap: wrap;
	  align-items: center;
	  margin-top: 20px;
	  margin-bottom: 20px;
	}
	
	.quantity_selector {
	  display: flex;
	  align-items: center;
	}
	
	.quantity span {
	  font-size: 16px;
	}
	
	.quantity_selector span {
	  margin: 0 5px;
	  cursor: pointer;
	}
	
	.product_favorite {
	  display: flex;
	  flex-direction: column;
	  align-items: center;
	  justify-content: center;
	}
</style>
<body class="js">
	<header class="header shop ">
		<%@ include file="header.jsp" %>
	</header>
	<div class="container single_product_container">
		<div class="row" >
			<div class="col" >

				<!-- Breadcrumbs -->

				<div class="breadcrumbs d-flex flex-row align-items-center" style="padding-left: 20px">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="categories.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Men's</a></li>
						<li class="active"><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Single Product</a></li>
					</ul>
				</div>

			</div>
		</div>
		<%
			ProductBean product = (ProductBean)request.getAttribute("product");
		%>

		<div class="row" style="margin-bottom: 100px">
			<div class="col-lg-7">
				<div class="single_product_pics">
					<div class="row">
						
						<div class="col-lg-12 image_col order-lg-2 order-1">
						
								<img src="images/<%=product.getImageUrl() %>" alt="" data-image="images/single_1.jpg">
							
						</div>
					</div>
				</div>
			</div>
			<form action="OrderServlet" method="POST">
				<div class="col-lg-5">
				<div class="product_details">
					<div class="product_details_title">
						<h2><%=product.getName()%></h2>
						<p><%=product.getDescription() %></p>
					</div>
					<div class="free_delivery d-flex flex-row align-items-center justify-content-center" style="background-color: #ccc; padding: 8px; margin: 10px;">
						<span class="ti-truck"></span><span>free delivery</span>
					</div>
					
					
					<div class="original_price"><%=product.getPriceOriginal() %></div>
					<div class="product_price"><%=product.getPriceSale() %></div>
					
					
					<div class="quantity d-flex flex-column flex-sm-row align-items-sm-center">
						<span style="font-size: 16px">Quantity:</span>
						<div class="quantity_selector" style="margin-left: 20px">
							<input type="text" name=quantity>
						</div>
						<br> 
						
						<div class="product_favorite d-flex flex-column align-items-center justify-content-center"></div>
					</div>
					<input type="hidden" name=productId value="<%=product.getProductId()%>">
					<input type="submit" class="btn" value="add to cart"> 
					
				</div>
			</div>
			</form>
			
		</div>

	</div>
	<!-- Start Footer Area -->
	<footer class="footer">
		<%@ include file="footer.jsp" %>
	</footer>
	<!-- /End Footer Area -->
 
	<!-- Jquery -->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.0.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="js/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="js/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="js/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="js/magnific-popup.js"></script>
	<!-- Waypoints JS -->
	<script src="js/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script src="js/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="js/nicesellect.js"></script>
	<!-- Flex Slider JS -->
	<script src="js/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="js/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="js/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="js/easing.js"></script>
	<!-- Active JS -->
	<script src="js/active.js"></script>
</body>
</html>
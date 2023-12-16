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
<body class="js">
	<header class="header shop ">
		<%@ include file="header.jsp" %>
	</header>
	<div class="container">
		<div class="breadcrumbs d-flex flex-row align-items-center" style="padding-left: 20px">
			<ul>
				<li><a href="index.html">Home</a></li>
				<li class="active"><a href="index.html"><i class="fa fa-angle-right" aria-hidden="true"></i>Men's</a></li>
			</ul>
		</div>
		
		<div class="row">
			<div class="col-3">
				
				<!-- Sidebar -->

				<div class="sidebar">
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>Product Category</h5>
						</div>
						<ul class="sidebar_categories">
							<li><a href="#">Men</a></li>
							<li class="active"><a href="#"><span><i class="fa fa-angle-double-right" aria-hidden="true"></i></span>Women</a></li>
							<li><a href="#">Accessories</a></li>
							<li><a href="#">New Arrivals</a></li>
							<li><a href="#">Collection</a></li>
							<li><a href="#">Shop</a></li>
						</ul>
					</div>
					<hr>
					<!-- Price Range Filtering -->
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>Filter by Price</h5>
						</div>
						<p>
							<input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
						</p>
						<div id="slider-range"></div>
						<div class="filter_button"><span>filter</span></div>
					</div>
					<hr>

					<!-- Sizes -->
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>Sizes</h5>
						</div>
						<ul class="checkboxes">
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>S</span></li>
							<li class="active"><i class="fa fa-square" aria-hidden="true"></i><span>M</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>L</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>XL</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>XXL</span></li>
						</ul>
					</div>
					<hr>

					<!-- Color -->
					<div class="sidebar_section">
						<div class="sidebar_title">
							<h5>Color</h5>
						</div>
						<ul class="checkboxes">
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Black</span></li>
							<li class="active"><i class="fa fa-square" aria-hidden="true"></i><span>Pink</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>White</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Blue</span></li>
							<li><i class="fa fa-square-o" aria-hidden="true"></i><span>Orange</span></li>
						</ul>
						<div class="show_more">
							<span><span>+</span>Show More</span>
						</div>
					</div>

				</div>

				
			</div>
			<div class="col-9 main_content">

					<!-- Products -->

					<div class="products_iso">
						<div class="row">
							<div class="col">

								<!-- Product Sorting -->

								<div class="product_sorting_container product_sorting_container_top">
									<ul class="product_sorting">
										<li>
											<span class="type_sorting_text">Default Sorting</span>
											<i class="fa fa-angle-down"></i>
											<ul class="sorting_type">
												<li class="type_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>Default Sorting</span></li>
												<li class="type_sorting_btn" data-isotope-option='{ "sortBy": "price" }'><span>Price</span></li>
												<li class="type_sorting_btn" data-isotope-option='{ "sortBy": "name" }'><span>Product Name</span></li>
											</ul>
										</li>
										<li>
											<span>Show</span>
											<span class="num_sorting_text">6</span>
											<i class="fa fa-angle-down"></i>
											<ul class="sorting_num">
												<li class="num_sorting_btn"><span>6</span></li>
												<li class="num_sorting_btn"><span>12</span></li>
												<li class="num_sorting_btn"><span>24</span></li>
											</ul>
										</li>
									</ul>
									<div class="pages d-flex flex-row align-items-center">
										<div class="page_current">
											<span>1</span>
											<ul class="page_selection">
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
											</ul>
										</div>
										<div class="page_total"><span>of</span> 3</div>
										<div id="next_page" class="page_next"><a href="#"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
									</div>

								</div>

								<!-- Product Grid -->

								<div class="row row-cols-1 row-cols-md-3 g-4" style="margin-top:20px;">
								   <div class="col-3" style="margin-top:20px; height:400px" >
								    <div class="card text-bg-secondary h-100"  >
								      <img src="images/main.jpg" style=" height: 200px;" class="card-img-top " alt="...">
								      <div class="card-body" style=" height: 100px;">
								        <h5 class="card-title">Card title</h5>
								        <p class="card-text"> This content is a little bit longer.</p>
								      	
								      </div>
								       <div class="btn card-footer">
									    	Cart
									  </div>
								    </div>
								  </div>
								   <div class="col-3" style="margin-top:20px; height:400px" >
								    <div class="card text-bg-secondary h-100"  >
								      <img src="images/main.jpg" style=" height: 200px;" class="card-img-top " alt="...">
								      <div class="card-body" style=" height: 100px;">
								        <h5 class="card-title">Card title</h5>
								        <p class="card-text"> This content is a little bit longer.</p>
								      	
								      </div>
								       <div class="btn card-footer">
									    	Cart
									  </div>
								    </div>
								  </div>
								  <div class="col-3" style="margin-top:20px; height:400px" >
								    <div class="card text-bg-secondary h-100"  >
								      <img src="images/main.jpg" style=" height: 200px;" class="card-img-top " alt="...">
								      <div class="card-body" style=" height: 100px;">
								        <h5 class="card-title">Card title</h5>
								        <p class="card-text"> This content is a little bit longer.</p>
								      	
								      </div>
								       <div class="btn card-footer">
									    	Cart
									  </div>
								    </div>
								  </div>
								   <div class="col-3" style="margin-top:20px; height:400px" >
								    <div class="card text-bg-secondary h-100"  >
								      <img src="images/main.jpg" style=" height: 200px;" class="card-img-top " alt="...">
								      <div class="card-body" style=" height: 100px;">
								        <h5 class="card-title">Card title</h5>
								        <p class="card-text"> This content is a little bit longer.</p>
								      	
								      </div>
								       <div class="btn card-footer">
									    	Cart
									  </div>
								    </div>
								  </div>
								   <div class="col-3" style="margin-top:20px; height:400px" >
								    <div class="card text-bg-secondary h-100"  >
								      <img src="images/main.jpg" style=" height: 200px;" class="card-img-top " alt="...">
								      <div class="card-body" style=" height: 100px;">
								        <h5 class="card-title">Card title</h5>
								        <p class="card-text"> This content is a little bit longer.</p>
								      	
								      </div>
								       <div class="btn card-footer">
									    	Cart
									  </div>
								    </div>
								  </div>
								   <div class="col-3" style="margin-top:20px; height:400px" >
								    <div class="card text-bg-secondary h-100"  >
								      <img src="images/main.jpg" style=" height: 200px;" class="card-img-top " alt="...">
								      <div class="card-body" style=" height: 100px;">
								        <h5 class="card-title">Card title</h5>
								        <p class="card-text"> This content is a little bit longer.</p>
								      	
								      </div>
								       <div class="btn card-footer">
									    	Cart
									  </div>
								    </div>
								  </div>
								  <div class="col-3" style="margin-top:20px; height:400px" >
								    <div class="card text-bg-secondary h-100"  >
								      <img src="images/main.jpg" style=" height: 200px;" class="card-img-top " alt="...">
								      <div class="card-body" style=" height: 100px;">
								        <h5 class="card-title">Card title</h5>
								        <p class="card-text"> This content is a little bit longer.</p>
								      	
								      </div>
								       <div class="btn card-footer">
									    	Cart
									  </div>
								    </div>
								  </div>
								  
								  
								  
								  
								</div>
								<div class="product_sorting_container product_sorting_container_bottom clearfix" style="margin:30px">
									<ul class="product_sorting">
										<li>
											<span>Show:</span>
											<span class="num_sorting_text">04</span>
											<i class="fa fa-angle-down"></i>
											<ul class="sorting_num">
												<li class="num_sorting_btn"><span>01</span></li>
												<li class="num_sorting_btn"><span>02</span></li>
												<li class="num_sorting_btn"><span>03</span></li>
												<li class="num_sorting_btn"><span>04</span></li>
											</ul>
										</li>
									</ul>
									<span class="showing_results">Showing 1–3 of 12 results</span>
									<div class="pages d-flex flex-row align-items-center">
										<div class="page_current">
											<span>1</span>
											<ul class="page_selection">
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
											</ul>
										</div>
										<div class="page_total"><span>of</span> 3</div>
										<div id="next_page_1" class="page_next"><a href="#"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></div>
									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
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
<%@page import="Model.BEAN.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.BEAN.CategoryBean" %>

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
	<script type="text/javascript">
		if (${not empty successMessage}) {
		    alert("${successMessage}");
		}
	</script>
	<header class="header shop">
		<%@ include file="header.jsp" %>
	</header>
	
	<!--/ End Header -->
	
	<!-- Slider Area -->
	<section class="hero-slider">
		<!-- Single Slider -->
		<div class="single-slider" style="	background-image: url('images/main.jpg');">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-lg-9 offset-lg-3 col-12">
						<div class="text-inner">
							<div class="row">
								<div class="col-lg-7 col-12">
									<div class="hero-text">
										<h1 style="color: black;"><span>UP TO 20% OFF </span>Iphone 15</h1>
										
										<div class="button">
											<a href="#" class="btn">Shop Now!</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Single Slider -->
	</section>
	<!--/ End Slider Area -->
	
	
	<!-- End Small Banner -->
	
	<!-- Start Product Area -->
    <div class="product-area section">
         <div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<h2>Trending Item</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="product-info">
						<div class="nav-main">
						    <!-- Tab Nav -->
						    <ul class="nav nav-tabs" id="myTab" role="tablist">
						        <%
						      	
						            ArrayList<CategoryBean> listCategori = (ArrayList<CategoryBean>)request.getAttribute("listCategorys");
						            for (CategoryBean category : listCategori) {
						        %>
						        <li class="nav-item">
						            <a class="nav-link active" data-toggle="tab" href="ProductServlet?IDCategory=<%= category.getCategoryId() %>" role="tab">
						                <%= category.getName() %>
						            </a>
						        </li>
						        <%
						            }
						        %>
						    </ul>
    				<!--/ End Tab Nav -->
						</div>
					</div>		
					<div class="tab-content" id="myTabContent">
    					<!-- Start Single Tab -->
    					<div class="tab-pane fade show active" id="man" role="tabpanel">
    						<div class="tab-single">
    							<div class="row">
						        <% 
						           	ArrayList<ProductBean> listProduct = (ArrayList<ProductBean>)request.getAttribute("listProducts");
						            for (ProductBean product : listProduct) {
										if (product.getToptrending()<=8) {
						        %>
		        							<div class="col-xl-3 col-lg-4 col-md-4 col-12" style="">
		           								 <div class="single-product">
		               								<div class="product-img">
		                    							<a href="ProductServlet?IDProduct=<%= product.getProductId() %>">
									                        <img class="default-img" src="images/<%= product.getImageUrl() %>" alt="#">
									                        <img class="hover-img" src="images/<%= product.getImageUrl() %>" alt="#">
									                    </a>
									                    <div class="button-head">
															
															<div class="product-action-2">
																<a title="Add to cart" href="OrderServlet?productId=<%=product.getProductId()%>">Add to cart</a>
															</div>
														</div>
													</div>	
													<div class="product-content">
														<h3><a href="ProductServlet?productId=<%=product.getProductId()%>"><%=product.getName() %></a></h3>
														<div class="product-price">
															<span><%= product.getPriceOriginal() %></span>
														</div>
													</div>
												</div>                        			
		                        			</div>
                        		<% 	     } 
						            }
                        		%>
                        		
                				</div>
                			</div>
                		</div>
                	</div>  
                </div>  
             </div>  
           </div>  
    </div> 
    
    
	<!-- End Product Area -->
	
	<!-- Start Midium Banner  -->
	
	<!-- End Midium Banner -->
	
	<!-- Start Most Popular -->
	<div class="product-area most-popular section">
        <div class="container">
            <div class="row">
				<div class="col-12">
					<div class="section-title">
						<h2>Hot Item</h2>
					</div>
				</div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="owl-carousel popular-slider">
                   		 <%
				            for (ProductBean product : listProduct) {
				            	if (product.isHot()==true){			
						 %>
									<!-- Start Single Product -->
									<div class="single-product">
										<div class="product-img">
											<a href="ProductServlet?IDProduct=<%= product.getProductId() %>">
							                        <img class="default-img" src="images/<%= product.getImageUrl() %>" alt="#">
							                        <img class="hover-img" src="images/<%= product.getImageUrl() %>" alt="#">
							                </a>
											<div class="button-head">
												<div class="product-action">
													<a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
													<a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
													<a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
												</div>
												<div class="product-action-2">
													<a title="Add to cart" href="OrderServlet?productId=<%=product.getProductId()%>">Add to cart</a>
												</div>
											</div>
										</div>
										<div class="product-content">
											<h3><a href="product-details.html"><%=product.getName() %></a></h3>
											<div class="product-price">
												<span class="old"><%=product.getPriceOriginal()%></span>
												<span><%=product.getPriceSale()%></span>
											</div>
										</div>
									</div>
									<!-- End Single Product -->
						<%       }
				            }
				        %>
						
						
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- End Most Popular Area -->
	
	<section class="section free-version-banner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-8 offset-md-2 col-xs-12">
                    <div class="section-title mb-60">
                        <span class="text-white wow fadeInDown" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;">Eshop Free Lite version</span>
                        <h2 class="text-white wow fadeInUp" data-wow-delay=".4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">Currently You are using free<br> lite Version of Eshop.</h2>
                        <p class="text-white wow fadeInUp" data-wow-delay=".6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">Please, purchase full version of the template to get all pages,<br> features and commercial license.</p>

                        <div class="button">
                            <a href="https://wpthemesgrid.com/downloads/eshop-ecommerce-html5-template/" target="_blank" rel="nofollow" class="btn wow fadeInUp" data-wow-delay=".8s">Purchase Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	
	<!-- Start Shop Home List  -->
	<section class="shop-home-list section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-12">
					<div class="row">
						<div class="col-12">
							<div class="shop-section-title">
								<h1>On sale</h1>
							</div>
						</div>
					</div>
					 <%
				            for (ProductBean product : listProduct) {
				            	if (product.isOnSale()==true){			
					%>
								<!-- Start Single List  -->
								<div class="single-list">
									<div class="row">
										<div class="col-lg-6 col-md-6 col-12">
											<div class="list-image overlay">
												<img src="images/<%= product.getImageUrl()%>" alt="#">
												<a href="OrderServlet?productId=<%=product.getProductId()%>" class="buy"><i class="fa fa-shopping-bag"></i></a>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-12 no-padding">
											<div class="content">
												<h4 class="title"><a href="#"><%=product.getName()%></a></h4>
												<p class="price with-discount"><%=product.getPriceSale() %></p>
											</div>
										</div>
									</div>
								</div>
								<!-- End Single List  -->
					<%       }
				         }
				    %>
					
				</div>
				<div class="col-lg-4 col-md-6 col-12">
					<div class="row">
						<div class="col-12">
							<div class="shop-section-title">
								<h1>Best Seller</h1>
							</div>
						</div>
					</div>
					 <%
				            for (ProductBean product : listProduct) {
				            	if (product.isBestSeller()==true){			
					%>
								<!-- Start Single List  -->
								<div class="single-list">
									<div class="row">
										<div class="col-lg-6 col-md-6 col-12">
											<div class="list-image overlay">
												<img src="images/<%= product.getImageUrl()%>" alt="#">
												<a href="OrderServlet?productId=<%=product.getProductId()%>" class="buy"><i class="fa fa-shopping-bag"></i></a>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-12 no-padding">
											<div class="content">
												<h4 class="title"><a href="#"><%=product.getName()%></a></h4>
												<p class="price with-discount"><%=product.getPriceSale() %></p>
											</div>
										</div>
									</div>
								</div>
								<!-- End Single List  -->
					<%       }
				         }
				    %>
				</div>
				<div class="col-lg-4 col-md-6 col-12">
					<div class="row">
						<div class="col-12">
							<div class="shop-section-title">
								<h1>Top viewed</h1>
							</div>
						</div>
					</div>
					 <%
				            for (ProductBean product : listProduct) {
				            	if (product.isisTopViewed()==true){			
					%>
								<!-- Start Single List  -->
								<div class="single-list">
									<div class="row">
										<div class="col-lg-6 col-md-6 col-12">
											<div class="list-image overlay">
												<img src="images/<%= product.getImageUrl()%>" alt="#">
												<a href="OrderServlet?productId=<%=product.getProductId()%>" class="buy"><i class="fa fa-shopping-bag"></i></a>
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-12 no-padding">
											<div class="content">
												<h4 class="title"><a href="#"><%=product.getName()%></a></h4>
												<p class="price with-discount"><%=product.getPriceSale() %></p>
											</div>
										</div>
									</div>
								</div>
								<!-- End Single List  -->
					<%       }
				         }
				    %>
				</div>
			</div>
		</div>
	</section>
	<!-- End Shop Home List  -->
	
	<!-- Start Shop Blog  -->
	
	<!-- End Shop Blog  -->
	
	<!-- Start Shop Services Area -->
	<section class="shop-services section home">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-rocket"></i>
						<h4>Free shiping</h4>
						<p>Orders over $100</p>
					</div>
					<!-- End Single Service -->
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-reload"></i>
						<h4>Free Return</h4>
						<p>Within 30 days returns</p>
					</div>
					<!-- End Single Service -->
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-lock"></i>
						<h4>Sucure Payment</h4>
						<p>100% secure payment</p>
					</div>
					<!-- End Single Service -->
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-tag"></i>
						<h4>Best Peice</h4>
						<p>Guaranteed price</p>
					</div>
					<!-- End Single Service -->
				</div>
			</div>
		</div>
	</section>
	<!-- End Shop Services Area -->
	
	
	<!-- End Shop Newsletter -->
	
	<!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="ti-close" aria-hidden="true"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="row no-gutters">
							<div class="col-lg-6 offset-lg-3 col-12">
								<h4 style="margin-top:100px;font-size:14px; font-weight:500; color:#F7941D; display:block; margin-bottom:5px;">Eshop Free Lite</h4>
								<h3 style="font-size:30px;color:#333;">Currently You are using free lite Version of Eshop.<h3>
								<p style="display:block; margin-top:20px; color:#888; font-size:14px; font-weight:400;">Please, purchase full version of the template to get all pages, features and commercial license</p>
								<div class="button" style="margin-top:30px;">
									<a href="https://wpthemesgrid.com/downloads/eshop-ecommerce-html5-template/" target="_blank" class="btn" style="color:#fff;">Buy Now!</a>
								</div>
							</div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    <!-- Modal end -->
	
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
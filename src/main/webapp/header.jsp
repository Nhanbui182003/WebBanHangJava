<%@page import="javax.swing.plaf.basic.BasicComboBoxUI.ItemHandler"%>
<%@page import="Model.BEAN.OrderItemBean"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="Model.BEAN.OrderBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.BEAN.CategoryBean" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class="middle-inner">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-2 col-12">
					<!-- Logo -->
					<div class="logo">
						<a href="CheckLoginServlet?viewhome='1'"><img src="images/logo.png" alt="logo"></a>
					</div>
					<!--/ End Logo -->
					<!-- Search Form -->
					<div class="search-top">
						<div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
						<!-- Search Form -->
						<div class="search-top">
							<form class="search-form">
								<input type="text" placeholder="Search here..." name="search">
								<button value="search" type="submit"><i class="ti-search"></i></button>
							</form>
						</div>
						<!--/ End Search Form -->
					</div>
					<!--/ End Search Form -->
					<div class="mobile-nav"></div>
				</div>
				<div class="col-lg-8 col-md-7 col-12">
					<div class="search-bar-top">
						<div class="search-bar">
							
							<form>
								<input name="search" placeholder="Search Products Here....." type="search">
								<button class="btnn"><i class="ti-search"></i></button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-12">
					<div class="right-bar">
						<!-- Search Form -->
						<div class="sinlge-bar">
							<a href="#" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
						</div>
						<div class="sinlge-bar">
						<%
							int userId = (Integer)session.getAttribute("ID_user");
						%>
							<a href="UserServlet?user_id=<%= userId%>" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
						</div>
						<%
							OrderBean order = (OrderBean)session.getAttribute("order");
							if (order!=null) {
								
						%>
							<div class="sinlge-bar shopping">
								<a href="#" class="single-icon"><i class="ti-bag"></i> <span class="total-count"><%=order.getListItem().size()%></span></a>
								<!-- Shopping Item -->
								<div class="shopping-item">
									<div class="dropdown-cart-header">
										<span><%=order.getListItem().size()%></span>
										<a href="OrderServlet?viewcart='1'">View Cart</a>
									</div>
									<ul class="shopping-list">
										<%
											for (OrderItemBean item : order.getListItem()){

										%>
										<li>
											<a href="#" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
											<a class="cart-img" href="#"><img src="images/<%=item.getItem().getImageUrl()%>" alt="#"></a>
											<h4><a href="#"><%=item.getItem().getName() %></a></h4>
											<p class="quantity"><%=item.getQuantity()%>x - <span class="amount"><%=item.getItem().getPriceSale()*item.getQuantity()%></span></p>
										</li>
										<%
											}
										%>
										
									</ul>
									<div class="bottom">
										<div class="total">
											<span>Total</span>
											<span class="total-amount"><%=order.getTotalPrice()%></span>
										</div>
										<a href="OrderServlet?checkout='1'" class="btn animate">Checkout</a>
									</div>
								</div>
								<!--/ End Shopping Item -->
							</div>
						<%
							} else {
							
						%>
							<div class="sinlge-bar shopping">
								<a href="#" class="single-icon"><i class="ti-bag"></i> <span class="total-count">0</span></a>
								<!-- Shopping Item -->
								<div class="shopping-item">
									<div class="dropdown-cart-header">
										<span>0</span>
										<a href="#">View Cart</a>
									</div>
									<div class="bottom">
										<div class="total">
											<span>Total</span>
											<span class="total-amount">0</span>
										</div>
										<a href="OrderServlet?checkout='1'" class="btn animate">Checkout</a>
									</div>
								</div>
								<!--/ End Shopping Item -->
							</div>
						<%
							} 
							
						%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Header Inner -->
	<div class="header-inner">
		<div class="container">
			<div class="cat-nav-head">
				<div class="row">
					<div class="col-lg-12 col-12">
						<div class="menu-area">
							<!-- Main Menu -->
							<nav class="navbar navbar-expand-lg ms-1">
								<div class="navbar-collapse"">	
									<div class="nav justify-content-center">	
										<ul class="nav main-menu menu navbar-nav">
										 <%
											    ArrayList<CategoryBean> listCategory = (ArrayList<CategoryBean>) request.getAttribute("listCategorys");
											    for (CategoryBean category : listCategory) {
											%>
											    <li><a href="ProductServlet?IDCategory=<%= category.getCategoryId() %>"><%= category.getName() %></a></li>
											<%
											    }
											%> 
										</ul>
									</div>
								</div>
							</nav>
							<!--/ End Main Menu -->	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
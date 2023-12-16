<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

  	  <!-- Preloader -->
	  <div class="preloader flex-column justify-content-center align-items-center">
	    <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
	  </div>

 	  <!-- Navbar -->
	  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
	    <!-- Left navbar links -->
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
	      </li>
	      <li class="nav-item d-none d-sm-inline-block">
	        <a href="index3.html" class="nav-link">Home</a>
	      </li>
	      <li class="nav-item d-none d-sm-inline-block">
	        <a href="index3.html" class="nav-link">Danh mục</a>
	      </li>
	      
	    </ul>
	  </nav>
 	  <!-- /.navbar -->

	  <!-- Main Sidebar Container -->
	  <aside class="main-sidebar sidebar-dark-primary elevation-4">
	    <!-- Brand Logo -->
	    <a href="index3.html" class="brand-link">
	      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
	      <span class="brand-text font-weight-light">AdminLTE 3</span>
	    </a>
	
	    <!-- Sidebar -->
	    <jsp:include page="sideBar.jsp"></jsp:include>
	    <!-- /.sidebar -->
	  </aside>

  <!-- Content Wrapper. Contains page content -->
	  <div class="content-wrapper">
	    <!-- Content Header (Page header) -->
	    <div class="content-header">
	      <div class="container-fluid">
	       	<div class="row mb-2">
	            <div class="col-sm-6">
	                <h1>Quản lý danh mục</h1>
	            </div>
	            <div class="col-sm-6">
	                <ol class="breadcrumb float-sm-right">
	                    <li class="breadcrumb-item"><a href="#">Home</a></li>
	                    <li class="breadcrumb-item active">Danh mục</li>
	                </ol>
	            </div>
        	</div>
	      </div><!-- /.container-fluid -->
	    </div>
	    <!-- /.content-header -->
	
	    <!-- Main content -->
	    <section class="content">
	      <div class="container-fluid">
	      <div class="row">
	          <div class="col-12">
	
	            <div class="card">
	              <div class="card-header">
	                <h3 class="card-title">Danh sách danh mục</h3>
	                <div class="card-tools">
                		<a href="#" class="btn btn-primary">Thêm mới</a>
            		</div>
	              </div>
	              <!-- /.card-header -->
	              <div class="card-body">
	                <table id="example1" class="table table-bordered table-striped">
	                  <thead>
	                  <tr>
	                    <th>Rendering engine</th>
	                    <th>Browser</th>
	                    <th>Platform(s)</th>
	                    <th>Engine version</th>
	                    <th>CSS grade</th>
	                  </tr>
	                  </thead>
	                  <tbody>
	                  <tr>
	                    <td>Trident</td>
	                    <td>Internet
	                      Explorer 4.0
	                    </td>
	                    <td>Win 95+</td>
	                    <td> 4</td>
	                    <td>X</td>
	                  </tr>
	                  
	                </table>
	              </div>
	              <!-- /.card-body -->
	            </div>
	            <!-- /.card -->
	          </div>
	          <!-- /.col -->
	        </div>
	       	<div class="row">
			  <div class="col-sm-12 col-md-5">
			    <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
			  </div>
			  <div class="col-sm-12 col-md-7">
			    <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
			      <ul class="pagination">
			        <li class="paginate_button page-item previous disabled" id="example1_previous"><a href="#"
			            aria-controls="example1" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
			        <li class="paginate_button page-item active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0"
			            class="page-link">1</a></li>
			        <li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0"
			            class="page-link">2</a></li>
			        <li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0"
			            class="page-link">3</a></li>
			        <li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0"
			            class="page-link">4</a></li>
			        <li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0"
			            class="page-link">5</a></li>
			        <li class="paginate_button page-item "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0"
			            class="page-link">6</a></li>
			        <li class="paginate_button page-item next" id="example1_next"><a href="#" aria-controls="example1"
			            data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
			      </ul>
			    </div>
			  </div>
			</div>
	      </div><!-- /.container-fluid -->
	    </section>
	    <!-- /.content -->
	  </div>
  <!-- /.content-wrapper -->
	</div>
	<!-- ./wrapper -->
	
	<!-- jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
	  $.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script src="plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script src="plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
	<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="plugins/moment/moment.min.js"></script>
	<script src="plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script src="plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="dist/js/pages/dashboard.js"></script>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet"
	href="<c:url value="/resource/js/bootstrap/css/bootstrap.min.css"/>">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<c:url value="/resource/dist/css/AdminLTE.min.css"/>">
<!-- jvectormap -->
<link rel="stylesheet"
	href="<c:url value="/resource/plugins/jvectormap/jquery-jvectormap-1.2.2.css"/>">
<!-- Theme style -->
<link rel="stylesheet"
	href="<c:url value="/resource/dist/css/AdminLTE.min.css"/>">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="<c:url value="/resource/dist/css/skins/_all-skins.min.css"/>">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-green sidebar-mini">
	<div class="wrapper">

		<header class="main-header"> <!-- Logo --> <a
			href="/MyRTS/index.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>R</b>TS</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Railway</b>SYSTEM</span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top" role="navigation"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a> <!-- Navbar Right Menu --> </nav> </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="<c:url value="/resource/dist/img/user5-128x128.jpg"/>"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>${username}</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form --> <!-- /.search form --> <!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>
			<li class="active treeview"><a
				href="/MyRTS/profile.html"> <i class="fa fa-dashboard"></i>
					<span>Dashboard</span> <i class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a href="/MyRTS/searchbydate.html"> <i class="fa fa-search"></i>
					<span>Search</span><i class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a href="/MyRTS/member/order.html"> <i
					class="fa fa-th"></i> <span>Order</span><i
					class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a href="/MyRTS/member/creditcard.html">
					<i class="fa fa-credit-card"></i> <span>Creditcard</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a href="/MyRTS/member/checkout.html">
					<i class="fa fa-unlock"></i> <span>Checkout</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
					<span>Blank</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="pages/tables/simple.html"><i
							class="fa fa-circle-o"></i> Blank 1</a></li>
					<li><a href="pages/tables/data.html"><i
							class="fa fa-circle-o"></i> Blank 2</a></li>
				</ul></li>
			<li class="treeview"><a href="<c:url value='/j_spring_security_logout'/>">
					<i class="fa fa-sign-out"></i> <span>Sign Out</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a></li>
			</ul>
		</section> <!-- /.sidebar --> </aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Dashboard <small>Version 2.0</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="/MyRTS/index.html"><i class="fa fa-dashboard"></i>
						Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content"> <!-- Info boxes -->
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="info-box">
						<span class="info-box-icon bg-aqua"><i
							class="ion ion-ios-gear-outline"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">CPU Traffic</span> <span
								class="info-box-number">90<small>%</small></span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="info-box">
						<span class="info-box-icon bg-red"><i
							class="fa fa-google-plus"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">Likes</span> <span
								class="info-box-number">41,410</span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->

				<!-- fix for small devices only -->
				<div class="clearfix visible-sm-block"></div>

				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="info-box">
						<span class="info-box-icon bg-green"><i
							class="ion ion-ios-cart-outline"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">Sales</span> <span
								class="info-box-number">760</span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="info-box">
						<span class="info-box-icon bg-yellow"><i
							class="ion ion-ios-people-outline"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">New Members</span> <span
								class="info-box-number">2,000</span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row --> </section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.3.0
		</div>
		<strong>Copyright &copy; 2014-2015 <a
			href="http://almsaeedstudio.com">Almsaeed Studio</a>.
		</strong> All rights reserved. </footer>

		<!-- Control Sidebar -->
		<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>

	</div>
	<!-- ./wrapper -->
	<!-- jQuery 2.1.4 -->
	<script
		src="<c:url value="/resource/plugins/jQuery/jQuery-2.1.4.min.js"/>"></script>
	<!-- Bootstrap 3.3.5 -->
	<script
		src="<c:url value="/resource/js/bootstrap/js/bootstrap.min.js"/>"></script>
	<!-- FastClick -->
	<script
		src="<c:url value="/resource/plugins/fastclick/fastclick.min.js"/>"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value="/resource/dist/js/app.min.js"/>"></script>
	<!-- Sparkline -->
	<script
		src="<c:url value="/resource/plugins/sparkline/jquery.sparkline.min.js"/>"></script>
	<!-- jvectormap -->
	<script
		src="<c:url value="/resource/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"/>"></script>
	<script
		src="<c:url value="/resource/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"/>"></script>
	<!-- SlimScroll 1.3.0 -->
	<script
		src="<c:url value="/resource/plugins/slimScroll/jquery.slimscroll.min.js"/>"></script>
	<!-- ChartJS 1.0.1 -->
	<script src="<c:url value="/resource/plugins/chartjs/Chart.min.js"/>"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="<c:url value="/resource/dist/js/pages/dashboard2.js"/>"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<c:url value="/resource/dist/js/demo.js"/>"></script>
</body>
</html>

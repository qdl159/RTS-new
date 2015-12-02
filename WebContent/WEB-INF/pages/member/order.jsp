<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Page</title>

<!-- Tell the browser to be responsive to screen width -->
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

<!-- iCheck -->
<link rel="stylesheet"
	href="<c:url value="/resource/plugins/iCheck/square/blue.css"/>">


<style>
.orderlist {
	background: #f5f5f5;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 12px;
	line-height: 24px;
	margin: 30px auto;
	text-align: left;
	width: 800px;
}

th {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png),
		linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
	font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;
}

th:after {
	background: linear-gradient(rgba(255, 255, 255, 0),
		rgba(255, 255, 255, .08) );
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}

th:first-child {
	border-left: 1px solid #777;
	box-shadow: inset 1px 1px 0 #999;
}

th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}

td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}

td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}

tr {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png);
}

tr:nth-child(odd) td {
	background: #f1f1f1
		url(http://jackrugile.com/images/misc/noise-diagonal.png); body {
	background : #d2d6de;
	margin: 0;
	/* padding: 0 20px 20px 20px; */
	tr: nth-child(odd) td{   
	background:    #f1f1f1
		url(http://jackrugile.com/images/misc/noise-diagonal.png);
}

tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff;
}

tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}

tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}

tbody:hover td {
	color: transparent;
	text-shadow: 0 0 3px #aaa;
}

tbody:hover tr:hover td {
	color: #444;
	text-shadow: 0 1px 0 #fff;
}

th {
	text-align: center;
}

td {
	text-align: center;
}

td {
	text-align: center;
}

#aa {
	margin-left: 200px;
	margin-top: 50px;
}

#fu {
	margin-left: 34%;
}

#fuhead {
	margin-left: 220px;
}

body {
	background: #fafafa
		url(http://jackrugile.com/images/misc/noise-diagonal.png);
	color: #444;
	font: 100%/30px 'Helvetica Neue', helvetica, arial, sans-serif;
	text-shadow: 0 1px 0 #fff;
}

strong {
	font-weight: bold;
}

em {
	font-style: italic;
}
s
</style>
<script src="<c:url value="/resource/js/jquery/jquery-2.1.4.js"/>"></script>
<script src="<c:url value="/resource/js/angular/angular.js"/>"></script>
<script src="<c:url value="/resource/js/util.js"/>"></script>
<script>
	angular
			.module("orderModule", [])
			.controller(
					"OrderController",
					function($scope, $http) {
						// Initialization
						$scope.orderData = [];
						$scope.ticketData = [];
						$http({
							method : "GET",
							url : "/MyRTS/member/orderData",
						})
								.success(
										function(data) {
											//alert(data);
											$scope.orderData = data;
											for ( var i = 0; i < $scope.orderData.length; i++) {
												$scope.orderData[i].date = formatDate(
														new Date(
																$scope.orderData[i].orderDate),
														true, false);
												$scope.orderData[i].status = "Error";
												if ($scope.orderData[i].orderStatus == 0){
													$scope.orderData[i].status = "Pending";
												}
												else if ($scope.orderData[i].orderStatus == 1) {
													$scope.orderData[i].status = "Success";
												}
												else if ($scope.orderData[i].orderStatus == 2) {
													$scope.orderData[i].status = "Cancelled";
												}				
												//alert($scope.scheduleData[i].date);
											}

										}).error(function(data) {
									alert("AJAX Error!");
								});

						$scope.showDetail = function(order,index) {
							$scope.order = order;
							$scope.index = index;
							var params = $.param({
								orderNo : order.orderNo
							});
							$http(
									{
										method : "POST",
										url : "/MyRTS/member/getticketbyorder/",
										data : params,
										headers : {
											'Content-Type' : 'application/x-www-form-urlencoded'
										}
									})
									.success(
											function(status) {
												$scope.ticketData = status;
												for ( var i = 0; i < $scope.ticketData.length; i++) {
													$scope.ticketData[i].date = formatDate(
															new Date(
																	$scope.ticketData[i].executeDate),
															true, false);

													$scope.ticketData[i].time = formatDate(
															new Date(
																	$scope.ticketData[i].departureTransit.arrivalTime),
															false, true);
													//alert($scope.scheduleData[i].date);
												}

												$scope.visible = true;
												//alert($scope.visible);
											}).error(function() {
										alert('ERROR');
									});

						};

						
						
						$scope.cancel = function() {
							var index = $scope.index;
							var params = $.param({
								orderNo : $scope.orderData[index].orderNo
							});
							$http(
									{
										method : "POST",
										url : "/MyRTS/member/cancel/",
										data : params,
										headers : {
											'Content-Type' : 'application/x-www-form-urlencoded'
										}
									})
									.success(
											function(status) {
												$scope.orderData[index].orderStatus == 0;
												$scope.orderData[index].status = "Cancelled";
												$scope.visible = false;
											}).error(function() {
										alert('ERROR');
									});

						};

						$scope.hideDetail = function() {
							$scope.visible = false;
						};
					});
</script>
</head>
<body class="hold-transition skin-yellow sidebar-mini">
	<div class="wrapper">

		<header class="main-header"> <!-- Logo --> <a
			href="/MyRTS/main.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
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
			<div></div>
			<li class="header">MAIN NAVIGATION</li>
			<li class="active treeview"><a href="/MyRTS/profile.html"> <i
					class="fa fa-dashboard"></i> <span>Dashboard</span> <i
					class="fa fa-angle-left pull-right"></i>
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
			<li class="treeview"><a
				href="<c:url value='/j_spring_security_logout'/>"> <i
					class="fa fa-sign-out"></i> <span>Sign Out</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Order History<small>Version 2.0</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="/MyRTS/main.html"><i class="fa fa-dashboard"></i>
						Home</a></li>
				<li class="active">creditcard</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content"> <!-- Info boxes -->
			<div ng-app="orderModule" ng-controller="OrderController">
				<div ng-hide="visible">
					<table id="orderList" class="table table-bordered table-hover">

						<tr>
							<th>Order ID</th>
							<th>Order Date</th>
							<th>Credit Card Number</th>
							<th>Order Status</th>
							<th>Details</th>
						</tr>
						<tr ng-repeat="order in orderData">
							<td>{{order.orderNo}}</td>
							<td>{{order.date}}</td>
							<td>{{order.creditCardNo}}</td>
							<td>{{order.status}}</td>
							<td><button type="submit"
									ng-click="showDetail(order,$index);">Details</button></td>
						</tr>
					</table>
				</div>
				<div ng-show="visible">
					<h3>Order Details</h3>
					<table id="orderDetail" class="table table-bordered table-hover">
						<tr>
							<th>Train Number</th>
							<th>Ticket Number</th>
							<th>Departure Date</th>
							<th>Departure Time</th>
						</tr>

						<tr ng-repeat="ticket in ticketData">
							<td>{{ticket.departureTransit.train.trainNo}}</td>
							<td>{{ticket.ticketNo}}</td>
							<td>{{ticket.date}}</td>
							<td>{{ticket.time}}</td>
						</tr>

						<tr>
							<td>
							<span>
							<button type="submit" ng-click="hideDetail()">Hide</button>
							<button type="submit" ng-click="cancel()">Cancel</button>
							</span>
								

							</td>
						</tr>
					</table>
				</div>
			</div>
			</section>
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
	<!-- DataTables -->
	<script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="../../plugins/datatables/dataTables.bootstrap.min.js"></script>
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



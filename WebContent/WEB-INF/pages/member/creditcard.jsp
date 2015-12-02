<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creditcard Page</title>
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
th {
	text-align: center;
}

#fu {
	margin-left: 36%;
}

#fuhead {
	margin-left: 170px;
}

body {
	background: #d2d6de;
	margin: 0;
	/* padding: 0 20px 20px 20px; */
}

li.logout1 {
	margin-top: 20px;
}
</style>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular.js"></script>
<script>
	angular
			.module("creditcardModule", [])
			.controller(
					"creditcardController",
					function($scope, $http) {
						// Initialization
						$scope.creditcardData = [];
						$http({
							method : "GET",
							url : "/MyRTS/member/creditcarddata",
						}).success(function(data) {
							//alert(data);
							$scope.creditcardData = data;
						}).error(function(data) {
							alert("AJAX Error!");
						});

						$scope.removeCard = function(selected, index) {
							//alert(selected.cardId);		
							var params = $.param({
								cardId : selected.cardId
							});
							$http(
									{
										method : "POST",
										url : "/MyRTS/member/removecreditcard/",
										data : params,
										headers : {
											'Content-Type' : 'application/x-www-form-urlencoded'
										}
									}).success(function(status) {
								console.log(status);
								$scope.creditcardData.splice(index, 1);
								$scope.selected = null;
							}).error(function() {
								alert('ERROR');
							});

						};

						$scope.saveCard = function(selected) {
							//alert(selected.cardNo);
							var params = $.param({
								paymentBrand : selected.paymentBrand,
								cardId : selected.cardId,
								cardNo : selected.cardNo,
								firstName : selected.firstName,
								lastName : selected.lastName,
								expiration : selected.expiration,
								billingAddr : selected.billingAddr,
								city : selected.city,
								state : selected.state,
								zipCode : selected.zipCode
							});
							//alert(station.stationNo);
							$http(
									{
										method : "POST",
										url : "/MyRTS/member/editcreditcard/",
										data : params,
										headers : {
											'Content-Type' : 'application/x-www-form-urlencoded'
										}
									}).success(function(status) {
								console.log(status);
							}).error(function() {
								alert('ERROR');
							});
						};

						$scope.editCard = function(selected,$index) {
							//alert(selected.cardNo);
							$scope.editing = $scope.creditcardData.indexOf($index);
						};

						$scope.saveField = function(selected,$index) {
							if ($scope.editing !== false) {
								$scope.editing = false;
							}
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
				Creditcard<small>Version 2.0</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="/MyRTS/main.html"><i class="fa fa-dashboard"></i>
						Home</a></li>
				<li class="active">creditcard</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content"> <!-- Info boxes -->
			<div ng-app="creditcardModule" ng-controller="creditcardController">
				<select class="OptionCtrl" ng-model="selected"
					ng-options="creditcard.cardNo for creditcard in creditcardData">
					<option value="">Please choose a card</option>
				</select>
				<table id="card" class="table table-bordered table-striped dataTable" role="grid";>
					<tr>
						<th>Payment Brand</th>
						<th>Card No</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Expiration Date</th>
						<th>Billing Address</th>
						<th>City</th>
						<th>State</th>
						<th>ZIP Code</th>
					</tr>
					<tr ng-hide="!selected">
						<td><span ng-hide="editMode">{{selected.paymentBrand}}</span>
							<select ng-show="editMode" ng-model="selected.paymentBrand">
								<option value="visa">Visa</option>
								<option value="master">Master Card</option>
								<option value="discover">Discover</option>
								<option value="amex">American Express</option>
						</select></td>
						<td><span ng-hide="editMode">{{selected.cardNo}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.cardNo" /></td>

						<td><span ng-hide="editMode">{{selected.firstName}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.firstName" /></td>

						<td><span ng-hide="editMode">{{selected.lastName}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.lastName" /></td>


						<td><span ng-hide="editMode">{{selected.expiration}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.expiration" /></td>


						<td><span ng-hide="editMode">{{selected.billingAddr}}</span>
							<input type="text" ng-show="editMode"
							ng-model="selected.billingAddr" /></td>


						<td><span ng-hide="editMode">{{selected.city}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.city" /></td>


						<td><span ng-hide="editMode">{{selected.state}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.state" /></td>

						<td><span ng-hide="editMode">{{selected.zipCode}}</span> <input
							type="text" ng-show="editMode" ng-model="selected.zipCode" /></td>

						<td><span>
								<button type="submit" ng-hide="editMode"
									ng-click="editMode=true;editCard(selected,$index)">Edit</button>
						</span> <span>
								<button type="submit" ng-show="editMode"
									ng-click="editMode=false;saveCard(selected,$index)">Save</button>
						</span> <span>
								<button ng-click="removeCard(selected,$index)">Remove</button>
						</span></td>
					</tr>
				</table>
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


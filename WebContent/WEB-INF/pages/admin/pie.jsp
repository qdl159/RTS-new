<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pie Chart</title>
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
<link rel="stylesheet"
	href="<c:url value="/resource/dist/css/skins/_all-skins.min.css"/>">
<style>
#zyc{
margin-left: 35%;
background: #ecf0f5;
}
body {
	background: #333;
	margin: 0;
	text-align: center;
	/* padding: 0 20px 20px 20px; */
}
#visualization{

}
</style>
<script type="text/javascript" src="http://www.google.com/jsapi">
	
</script>

<script type="text/javascript">
	function drawVisualization($scope) {
		// Create and populate the data table.  
		//var data = new google.visualization.DataTable();

		count = ${count};
		actived = ${actived};
		newUser = count - actived;
		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'User count' ], [ 'Actived', actived ],
				[ 'Not Actived', newUser ] ]);

		// Create and draw the visualization.  
		new google.visualization.PieChart(document
				.getElementById('visualization')).draw(data, {
			is3D : true
		});

	}
	google.setOnLoadCallback(drawVisualization);
</script>

<script type="text/javascript">
	google.load('visualization', '1', {
		packages : [ 'piechart' ]
	});
</script>


</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue sidebar-collapse sidebar-mini">
	<div class="wrapper" >
		<header class="main-header"> <nav
			class="navbar navbar-static-top" role="navigation">
		<div class="container">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
			</a>
			<div class="navbar-header">
				<a href="/MyRTS/main.html" class="navbar-brand"><b>Railway</b>SYSTEM</a>
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse">
					<i class="fa fa-bars"></i>
				</button>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse pull-left" id="navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a
						href="<c:url value='/admin/dashboard.html'/>">Dashboard<span
							class="sr-only">(current)</span></a></li>
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">User Information</a></li>
							<li><a href="<c:url value='/admin/schedule.html'/>">Schedule</a></li>
							<li><a href="<c:url value='/admin/order.html'/>">Order</a></li>
							<li class="divider"></li>
							<li><a href="<c:url value='/admin/station.html'/>">Station</a></li>
							<li class="divider"></li>
							<li><a href="<c:url value='/admin/train.html'/>">Train</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<!-- Messages: style can be found in dropdown.less-->
					<li class="dropdown messages-menu">
						<!-- Menu toggle button -->
					</li>
					<li class="dropdown user user-menu">
						<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <!-- The user image in the navbar--> <img
							src="<c:url value="/resource/dist/img/user2-160x160.jpg"/>"
							class="user-image" alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
							<span class="hidden-xs">Admin</span>
					</a>
						<ul class="dropdown-menu">
							<!-- The user image in the menu -->
							<li class="user-header"><img
								src="<c:url value="/resource/dist/img/user2-160x160.jpg"/>"
								class="img-circle" alt="User Image">
								<p>
									Admin - Web Developer <small>Member since Oct. 2015</small>
								</p></li>
							<!-- Menu Body -->
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="#" class="btn btn-default btn-flat">Profile</a>
								</div>
								<div class="pull-right">
									<a href="<c:url value='/j_spring_security_logout'/>"
										class="btn btn-default btn-flat">Sign out</a>
								</div>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<!-- /.navbar-custom-menu -->
		</div>
		</nav> </header>

		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="/MyRTS/resource/dist/img/user2-160x160.jpg"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Admin</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form --> <!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>
			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i>
					<span>Dashboard</span> <i class="fa fa-angle-left pull-right"></i>
			</a>
				<ul class="treeview-menu">
					<li><a href="/MyRTS/admin/dashboard.html"><i
							class="fa fa-circle-o"></i> Dashboard</a></li>
				</ul></li>
			<li class="treeview"><a href="/MyRTS/admin/order.html"> <i
					class="fa fa-calendar-minus-o"></i> <span>Order</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a></li>

			<li class="treeview"><a href="/MyRTS/admin/train.html"> <i
					class="fa fa-train"></i> <span>Train</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a href="/MyRTS/admin/schedule.html"> <i
					class="fa fa-edit"></i> <span>Schedule</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a href="/MyRTS/admin/station.html"> <i
					class="fa fa-table"></i> <span>Station</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a
				href="<c:url value='/j_spring_security_logout'/>"> <i
					class="fa fa-sign-out"></i> <span>Sign Out</span> <i
					class="fa fa-angle-left pull-right"></i>
			</a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" >
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Pie Chart <small>Hello Admin</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="/MyRTS/main.html"><i class="fa fa-dashboard"></i>
						Home</a></li>
				<li class="active">Pie</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content" id="zyc" > <!-- Small boxes (Stat box) -->
			<div id="visualization" style="width:500px;height:500px;background: #ecf0f5;">
			</div>
			</section>


			<!-- /. tools -->
		</div >
		<!-- /.box-header -->
		<div class="box-body no-padding" >
		</div>
		<!-- /.box-body -->
		<div class="box-footer text-black">
			<div class="row"></div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.box -->
	<footer class="main-footer-wrapper">
	<div class="pull-right hidden-xs">
		<b>Version</b> 2.3.0
	</div>
	<strong>Copyright &copy; 2014-2015 <a
		href="http://almsaeedstudio.com">Almsaeed Studio</a>.
	</strong> All rights reserved. </footer>
	<!-- ./wrapper -->
	<!-- <iframe src="/MyRTS/admin/schedule.html" name="iframe_a"></iframe> -->
	<!-- jQuery 2.1.4 -->
	<script
		src="<c:url value="/resource/plugins/jQuery/jQuery-2.1.4.min.js"/>"></script>
	<!-- Bootstrap 3.3.5 -->
	<script
		src="<c:url value="/resource/js/bootstrap/js/bootstrap.min.js"/>"></script>
	<!-- SlimScroll -->
	<script
		src="<c:url value="/resource/plugins/slimScroll/jquery.slimscroll.min.js"/>"></script>
	<!-- FastClick -->
	<script
		src="<c:url value="/resource/plugins/fastclick/fastclick.min.js"/>"></script>
	<!-- AdminLTE App -->
	<script src="<c:url value="/resource/dist/js/app.min.js"/>"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<c:url value="/resource/dist/js/demo.js"/>"></script>
</body>
</html>

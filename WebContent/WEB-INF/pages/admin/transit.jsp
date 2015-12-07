<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RailwayTicketingSystem || Transit</title>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/newSource/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/newSource/font-awesome/css/font-awesome.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/newSource/css/local.css" />">

    <script type="text/javascript" src="<c:url value="/resource/newSource/js/jquery-1.10.2.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resource/newSource/bootstrap/js/bootstrap.min.js"/>"></script>

    <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
    <script>
	$(document).ready(function() {
		$("#f").on("submit", validateForm);
	});
	function validateForm() {
		if ($("#trainNo").val() == 0) {
			return false;
		}
		return true;
	}
</script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="dashboard.html">Administrator Page</a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li><a href="dashboard.html"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                    <li><a href="order.html"><i class="fa fa-tasks"></i> Order</a></li>                    
                    <li><a href="train.html"><i class="fa fa-globe"></i> Train</a></li>
                    <li><a href="schedule.html"><i class="fa fa-list-ol"></i> Schedule</a></li>
                    <li><a href="station.html"><i class="fa fa-font"></i> Station</a></li> 
                    <li><a href="userTable.html"><i class="fa fa-list-ul"></i> UserTable</a></li>                   
                </ul>
                <ul class="nav navbar-nav navbar-right navbar-user">
                    <li class="dropdown messages-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">2 New Messages</li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
                        </ul>
                    </li>
                    <li class="dropdown user-dropdown">
                       <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Administrator<b class="caret"></b></a>
                       <ul class="dropdown-menu">
                           <li><a href="/MyRTS/main.html"><i class="fa fa-user"></i> MainPage</a></li>
                           <li class="divider"></li>
                           <li><a href="/MyRTS/j_spring_security_logout"><i class="fa fa-power-off"></i> Log Out</a></li>
                       </ul>
                   </li>
                </ul>
            </div>
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Administrator Page <small>Transit </small></h1>
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        Welcome to RailwayTicketingSystem! 
                        <br />
                    </div>
                </div>
            </div>
            	<section class="content">
			<div>
				<form id="f" action="submitTransit.html" method="POST">
					<table class="table table-bordered table-striped dataTable" role="grid";>
						<tr>
							<td>trainNo:</td>
							<td><input type="text" name="trainNo" id="trainNo"
								value=<%=request.getParameter("trainNo")%> readonly /></td>
						</tr>
						<tr>
							<td>seqNo:</td>
							<td><input type="text" name="seqNo" id="seqNo" /></td>
						</tr>
						<tr>
							<td>stationNo:</td>
							<td><input type="text" name="stationNo" id="stationNo" /></td>
						</tr>
						<tr>
							<td>arrivalTime:</td>
							
							<td>
							<span><input type="text" name="hour" id="hour" size="8"/>:
							<input type="text" name="minute" id="minute" size="8" /></span></td>
						</tr>
						<tr>
							<td>stopDuration:</td>
							<td><input type="text" name="stopDuration" id="stopDuration" />
							</td>
						</tr>
						<tr>
							<td>price:</td>
							<td><input type="text" name="price" id="price" /></td>
						<tr>
							<td></td>
							<td><span>
									<button id="add" type="submit" name="add" size="300">Add</button>
									<button id="end" type="submit" name="end">End</button>
							</span></td>

						</tr>
					</table>
				</form>
			</div>
			</section>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
        
    </div>
    
</body>
</html>

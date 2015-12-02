<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Railway Ticketing System</title>
		
		<link href="<c:url value="/resource/js/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="<c:url value="/resource/templates/template1/css/styles.css"/>" rel="stylesheet">
		<link rel="stylesheet" href="<c:url value="/resource/js/angular-datepicker/dist/angular-datepicker.min.css"/>" rel="stylesheet">
		
	    <link rel="stylesheet" href="<c:url value="/resource/js/angucomplete-alt/angucomplete-alt.css"/>" />
		<link rel="stylesheet" href="<c:url value="/resource/js/font-awesome/css/font-awesome.css"/>" />

		
		<!-- script references -->
		<script src="<c:url value="/resource/js/jquery/jquery-2.1.4.js"/>" ></script>
		<script src="<c:url value="/resource/js/bootstrap/js/bootstrap.min.js"/>"></script>
		<script src="<c:url value="/resource/js/angular/angular.js"/>"></script>
		<script src="<c:url value="/resource/templates/template1/js/scripts.js"/>"></script>
             
             
        <script src="<c:url value="/resource/js/angucomplete-alt/angucomplete-alt.js"/>"></script>
      	<script src="<c:url value="/resource/js/angular-datepicker/dist/angular-datepicker.min.js"/>"></script>
      	
      	<script src="<c:url value="/resource/js/angular/angular-touch.min.js"/>"></script>
        <script src="<c:url value="/resource/js/util.js"/>"></script>
        

        <script src="<c:url value="/resource/js/myrts/checkout.js"/>"></script>

</head>
<body ng-app="mainModule">
	<!-- Wrap all page content here -->
	<div id="wrap"  ng-controller="mainController">
		<header class="masthead">
		    <div class="container">
		    <div class="row">
		      <div class="col-sm-6">
		        <h1><a href="#" title="Bootstrap Template">MyRTS </a>
		          <p class="lead">Railway Ticketing System</p></h1>
		      </div>
		      <div class="col-sm-6">
		        <div class="pull-right  hidden-xs">    
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><h3><i class="glyphicon glyphicon-cog"></i></h3></a>
		          <ul class="dropdown-menu">
		              	<li>
		              		<a href="<c:url value="/index.html"/>">
		              			<i class="glyphicon glyphicon-home"></i>Home Page
		              		</a>
		              	</li>
		              	<li>
		              		<a href="<c:url value="/viewcart.html"/>">
		              			<i class="glyphicon glyphicon-shopping-cart"></i>Shopping Cart
		              		</a>
		              	</li>
		              	<li>
		              		<a href="<c:url value="/searchbydate.html"/>">
		              			<i class="glyphicon glyphicon-search"></i>Book Tickets
		              		</a>
		              	</li>
		              	<sec:authorize access="isAnonymous()">
						<li>
		              		<a href="<c:url value="/login.html"/>">
		              			<i class="glyphicon glyphicon-log-in"></i>Sign In
							</a>
						</li>
						</sec:authorize>
		              
		              	<sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
		              	<li>
		              		<a href="<c:url value="/profile.html"/>">
		              			<i class="glyphicon glyphicon-user"></i>My Profile
		              		</a>
		              	</li>
		              	<li>
		              		<a href="<c:url value="/member/order.html"/>">
		              			<i class="glyphicon glyphicon-menu-hamburger"></i>Order History
		              		</a>
		              	</li>
		              	<li>
			              	<a href="<c:url value='/j_spring_security_logout'/>"/>
			              		<i class="glyphicon glyphicon-log-out"></i>Log Out
			              	</a>
			            </li>
		              	</sec:authorize>
		          </ul>
		        </div>
		      </div>
		    </div>
		    </div>
		</header>
		<!-- Fixed navbar -->
		<div class="navbar navbar-custom navbar-inverse navbar-static-top" id="nav">
		    <div class="container">
		      <div class="navbar-header">
		        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		          <span class="icon-bar"></span>
		          <span class="icon-bar"></span>
		          <span class="icon-bar"></span>
		        </button>
		      </div>
		      <div class="collapse navbar-collapse">
		        <ul class="nav navbar-nav nav-justified">
		          <li><a href="<c:url value="/index.html#"/>"/>Home</a></li>
		          <li><a href="<c:url value="/index.html#section1"/>">Book Ticket</a></li>
		          <li><a href="<c:url value="/index.html#section2"/>">Plan Trip</a></li>
		          <li><a href="<c:url value="/index.html#section3"/>"/>Check Stock</a></li>
		          <li><a href="<c:url value="/index.html#section4"/>"/>Contact</a></li>
		         <li>
		          	<a href="<c:url value="/viewcart.html"/>">
		              			<i class="glyphicon glyphicon-shopping-cart"></i>Shopping Cart
		              			<div class="numberCircle">{{cartqty}}</div>
		            </a> 
		          </li>
		          <!--  
		          <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">More <b class="caret"></b></a>
		            <ul class="dropdown-menu">
		              <li><a href="#">Action</a></li>
		              <li><a href="#">Another action</a></li>
		              <li><a href="#">Something else here</a></li>
		              <li><a href="#">Separated link</a></li>
		              <li><a href="#">One more separated link</a></li>
		            </ul>
		          </li>
		          -->
		        </ul>
		      </div><!--/.nav-collapse -->
		    </div><!--/.container -->
		</div><!--/.navbar -->
		
		
	

	
	<div>
		<div class="row">
			<h3 class="col-sm-10 col-sm-offset-1 text-left">${title}</h3>
		</div>
		<div ng-show="canShowCart" class="row">
			<div class="col-sm-10 col-sm-offset-1 text-left">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>Sequence</th>
						<th>Departure Date</th>
						<th>Train No</th>
						<th>Departure Station</th>
						<th>Departure Time</th>
						<th>Arrival Station</th>
						<th>Arrival Time</th>
						<th>Quantity</th>
						<th>Unit Price</th>
						<th>Sub Total</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="ct in cart ">
						<td>{{$index+1}}</td>
						<td>{{ct.key.departureDate}}</td>
						<td># {{ct.key.departureTransit.train.trainNo}}</td>
						<td>{{ct.key.departureTransit.station.name+', '+ct.key.departureTransit.station.city +', '+ct.key.departureTransit.station.state}}</td>
						<td>{{ct.key.departureTime}}</td>
						<td>{{ct.key.arrivalTransit.station.name+', '+ct.key.arrivalTransit.station.city +', '+ct.key.arrivalTransit.station.state}}</td>
						<td>{{ct.key.arrivalTime}}</td>
						<td>{{ct.value}}</td>
						<td>$ {{ct.key.price.toFixed(2)}}</td>
						<td>$ {{(ct.key.price*ct.value).toFixed(2)}}</td>
					</tr>
				</tbody>	
			</table>
			</div>
		</div>
		<div id="divTotal" class="row">
			<div class="col-sm-3 col-sm-offset-8 lead text-left">
			<table class="table table-striped table-bordered">
				<tbody>
					<tr>
						<td>Quantity:</td>
						<td>{{getTotalCount()}}</td>
					</tr>
					<tr>
						<td>Total Charge: </td>
						<td>$ {{getTotalPrice().toFixed(2)}}</td>
					</tr>
				</tbody>
			</table>
			</div>
		</div>
		
		
		<div id="divCreditCard" class="row">
			<div class="col-sm-5 col-sm-offset-3  text-left">
			<form id="fmCheckout" name="fmCheckout"  ng-submit="checkout()">
				<h3>Payment Method</h3>
				<br>
				
				<h4>Credit Card Information</h4>
				<br>
				<table class="table table-striped table-bordered">
					<tbody>
						<tr>
							<td class="col-sm-4">First Name:</td>
							<td><input type="text" ng-model="cc.firstName" maxlength=50 placeholder="input first name" required/></td>
						</tr>
						<tr>
							<td>Last Name:</td>
							<td><input type="text" ng-model="cc.lastName" maxlength=50 placeholder="input last name" required/></td>
						</tr>
						<tr>
							<td>Credit Card Type</td>
							<td>
								<select ng-model="cc.cardType" required>
								  <option value="visa">Visa</option>
								  <option value="master">Master</option>
								  <option value="discover">Discover</option>
								  <option value="amex">American Express</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>Credit Card No:</td>
							<td><input type="text" name="cardNo" id = "cardNo" ng-model="cc.cardNo" maxlength=20 placeholder="input credit card no" required /></td>
						</tr>
						<tr>
							<td>Expiration Date:</td>
							<td>
								<input type="text" ng-model="cc.exp" maxlength=7 placeholder="MM/YYYY" required/>
							</td>
						</tr>
							<td>CVV:</td>
							<td><input type="text" ng-model="cc.cvv" maxlength=4 placeholder="CVV" required/></td>
						</tr>
					</tbody>
				</table>
				<br>
				<h4>Billing Address</h4>
				<br>
				<table class="table table-striped table-bordered">
					<tbody>
						<tr >
							<td class="col-sm-4">Address:</td>
							<td><input type="text" ng-model="cc.billingAddr" maxlength=100 placeholder="input billing address" required/></td>
						</tr>
						<tr>
							<td>City:</td>
							<td><input type="text" ng-model="cc.city" maxlength=30 placeholder="input city" required/></td>
						</tr>
						<tr>
							<td>State:</td>
							<td>
								<select ng-model="cc.state" required>
									<option value="AL">Alabama</option>
									<option value="AK">Alaska</option>
									<option value="AZ">Arizona</option>
									<option value="AR">Arkansas</option>
									<option value="CA">California</option>
									<option value="CO">Colorado</option>
									<option value="CT">Connecticut</option>
									<option value="DE">Delaware</option>
									<option value="DC">District Of Columbia</option>
									<option value="FL">Florida</option>
									<option value="GA">Georgia</option>
									<option value="HI">Hawaii</option>
									<option value="ID">Idaho</option>
									<option value="IL">Illinois</option>
									<option value="IN">Indiana</option>
									<option value="IA">Iowa</option>
									<option value="KS">Kansas</option>
									<option value="KY">Kentucky</option>
									<option value="LA">Louisiana</option>
									<option value="ME">Maine</option>
									<option value="MD">Maryland</option>
									<option value="MA">Massachusetts</option>
									<option value="MI">Michigan</option>
									<option value="MN">Minnesota</option>
									<option value="MS">Mississippi</option>
									<option value="MO">Missouri</option>
									<option value="MT">Montana</option>
									<option value="NE">Nebraska</option>
									<option value="NV">Nevada</option>
									<option value="NH">New Hampshire</option>
									<option value="NJ">New Jersey</option>
									<option value="NM">New Mexico</option>
									<option value="NY">New York</option>
									<option value="NC">North Carolina</option>
									<option value="ND">North Dakota</option>
									<option value="OH">Ohio</option>
									<option value="OK">Oklahoma</option>
									<option value="OR">Oregon</option>
									<option value="PA">Pennsylvania</option>
									<option value="RI">Rhode Island</option>
									<option value="SC">South Carolina</option>
									<option value="SD">South Dakota</option>
									<option value="TN">Tennessee</option>
									<option value="TX">Texas</option>
									<option value="UT">Utah</option>
									<option value="VT">Vermont</option>
									<option value="VA">Virginia</option>
									<option value="WA">Washington</option>
									<option value="WV">West Virginia</option>
									<option value="WI">Wisconsin</option>
									<option value="WY">Wyoming</option>
								</select>		
							</td>
						</tr>
						<tr>
							<td>Zip:</td>
							<td><input type="text" ng-model="cc.zip" maxlength=5 placeholder="zip" required/></td>
						</tr>
					</tbody>
				
				</table>
				<button type="submit" ng-disabled="isSubmitOrder || (!checkCard(cc.cardNo))" class="col-sm-3 col-sm-offset-8 btn btn-primary btn-md" >Submit order</button>
			</form>
			</div>
		</div>
	</div>
		
	</div><!--/wrap-->
	
	<!-- Begin footer -->
	<div id="footer" >
	  <div class="container">
	    <p class="text-muted">MyRTS Railway Ticketing System</p>
	    <p class="text-muted">Design & Managed by Mercury System .Inc</p>
	  </div>
	</div><!-- End footer -->
	
	<!-- Begin of Nav-->
	<ul class="nav pull-right scroll-top">
	  <li><a href="#" title="Scroll to top"><i class="glyphicon glyphicon-chevron-up"></i></a></li>
	</ul>
	<!-- End of nav -->
	
</body>
</html>
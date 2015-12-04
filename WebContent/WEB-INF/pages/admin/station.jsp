<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RailwayTicketingSystem || Station</title>
	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resource/newSource/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/newSource/font-awesome/css/font-awesome.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/newSource/css/local.css" />">

    <script type="text/javascript" src="<c:url value="/resource/newSource/js/jquery-1.10.2.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resource/newSource/bootstrap/js/bootstrap.min.js"/>"></script>
   <!--  <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/local.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script> -->
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
                  <!--   <li><a href="index.html"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                    <li><a href="portfolio.html"><i class="fa fa-tasks"></i> Portfolio</a></li>
                    <li><a href="blog.html"><i class="fa fa-globe"></i> Blog</a></li>
                    <li><a href="forms.html"><i class="fa fa-list-ol"></i> Forms</a></li>
                    <li><a href="typography.html"><i class="fa fa-font"></i> Typography</a></li>
                    <li class="active"><a href="bootstrap-elements.html"><i class="fa fa-list-ul"></i> Bootstrap Elements</a></li>
                    <li><a href="bootstrap-grid.html"><i class="fa fa-table"></i> Bootstrap Grid</a></li> -->
                    <li><a href="dashboard.html"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                    <li><a href="order.html"><i class="fa fa-tasks"></i> Order</a></li>                    
                    <li><a href="train.html"><i class="fa fa-globe"></i> Train</a></li>
                    <li><a href="schedule.html"><i class="fa fa-list-ol"></i> Schedule</a></li>
                    <li class="active"><a href="station.html"><i class="fa fa-font"></i> Station</a></li> 
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
                            <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
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
                    <h1 id="buttons" class="page-header">Buttons</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6">

                    <p>
                        <button type="button" class="btn btn-default">Default</button>
                        <button type="button" class="btn btn-primary">Primary</button>
                        <button type="button" class="btn btn-success">Success</button>
                        <button type="button" class="btn btn-info">Info</button>
                        <button type="button" class="btn btn-warning">Warning</button>
                        <button type="button" class="btn btn-danger">Danger</button>
                        <button type="button" class="btn btn-link">Link</button>
                    </p>

                    <p>
                        <button type="button" class="btn btn-default disabled">Default</button>
                        <button type="button" class="btn btn-primary disabled">Primary</button>
                        <button type="button" class="btn btn-success disabled">Success</button>
                        <button type="button" class="btn btn-info disabled">Info</button>
                        <button type="button" class="btn btn-warning disabled">Warning</button>
                        <button type="button" class="btn btn-danger disabled">Danger</button>
                        <button type="button" class="btn btn-link disabled">Link</button>
                    </p>

                    <p>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default">Default</button>
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                        <!-- /btn-group -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">Primary</button>
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                        <!-- /btn-group -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-success">Success</button>
                            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                        <!-- /btn-group -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-info">Info</button>
                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                        <!-- /btn-group -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-warning">Warning</button>
                            <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                        <!-- /btn-group -->
                    </p>

                    <p>
                        <button type="button" class="btn btn-primary btn-lg">Large button</button>
                        <button type="button" class="btn btn-primary">Default button</button>
                        <button type="button" class="btn btn-primary btn-sm">Small button</button>
                        <button type="button" class="btn btn-primary btn-xs">Mini button</button>
                    </p>

                </div>

                <div class="col-lg-6">

                    <p>
                        <button type="button" class="btn btn-default btn-lg btn-block">Block level button</button>
                    </p>

                    <p>
                        <div class="btn-group btn-group-justified">
                            <a href="#" class="btn btn-default">Left</a>
                            <a href="#" class="btn btn-default">Right</a>
                            <a href="#" class="btn btn-default">Middle</a>
                        </div>
                    </p>

                    <p>
                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default">1</button>
                                <button type="button" class="btn btn-default">2</button>
                                <button type="button" class="btn btn-default">3</button>
                                <button type="button" class="btn btn-default">4</button>
                            </div>
                            <div class="btn-group">
                                <button type="button" class="btn btn-default">5</button>
                                <button type="button" class="btn btn-default">6</button>
                                <button type="button" class="btn btn-default">7</button>
                            </div>
                            <div class="btn-group">
                                <button type="button" class="btn btn-default">8</button>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                        Dropdown
                      <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Dropdown link</a></li>
                                        <li><a href="#">Dropdown link</a></li>
                                        <li><a href="#">Dropdown link</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </p>

                    <p>
                        <div class="btn-group-vertical">
                            <button type="button" class="btn btn-default">Button</button>
                            <button type="button" class="btn btn-default">Button</button>
                            <button type="button" class="btn btn-default">Button</button>
                            <button type="button" class="btn btn-default">Button</button>
                        </div>
                    </p>

                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h1 id="navs">Navs</h1>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-4">
                    <h2 id="nav-tabs">Tabs</h2>
                    <div class="bs-example">
                        <ul class="nav nav-tabs" style="margin-bottom: 15px;">
                            <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
                            <li><a href="#profile" data-toggle="tab">Profile</a></li>
                            <li class="disabled"><a>Disabled</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Dropdown <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#dropdown1" data-toggle="tab">Action</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#dropdown2" data-toggle="tab">Another action</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane fade active in" id="home">
                                <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
                            </div>
                            <div class="tab-pane fade" id="profile">
                                <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit.</p>
                            </div>
                            <div class="tab-pane fade" id="dropdown1">
                                <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork.</p>
                            </div>
                            <div class="tab-pane fade" id="dropdown2">
                                <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <h2 id="nav-pills">Pills</h2>
                    <div class="bs-example">
                        <ul class="nav nav-pills">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">Profile</a></li>
                            <li class="disabled"><a href="#">Disabled</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Dropdown <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <br>
                    <div class="bs-example">
                        <ul class="nav nav-pills nav-stacked" style="max-width: 300px;">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">Profile</a></li>
                            <li class="disabled"><a href="#">Disabled</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Dropdown <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <h2 id="nav-breadcrumbs">Breadcrumbs</h2>
                    <div class="bs-example">
                        <ul class="breadcrumb">
                            <li class="active">Home</li>
                        </ul>
                        <ul class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="active">Library</li>
                        </ul>
                        <ul class="breadcrumb" style="margin-bottom: 5px;">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Library</a></li>
                            <li class="active">Data</li>
                        </ul>
                    </div>

                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-4">
                    <h2 id="pagination">Pagination</h2>
                    <div class="bs-example">
                        <ul class="pagination">
                            <li class="disabled"><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                        <ul class="pagination pagination-lg">
                            <li class="disabled"><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                        <ul class="pagination pagination-sm">
                            <li class="disabled"><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <h2 id="pager">Pager</h2>
                    <div class="bs-example">
                        <ul class="pager">
                            <li><a href="#">Previous</a></li>
                            <li><a href="#">Next</a></li>
                        </ul>
                    </div>
                    <div class="bs-example">
                        <ul class="pager">
                            <li class="previous disabled"><a href="#">&larr; Older</a></li>
                            <li class="next"><a href="#">Newer &rarr;</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h1 id="indicators">Indicators</h1>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <h2>Alerts</h2>
                    <div class="bs-example">
                        <div class="alert alert-dismissable alert-warning">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <h4>Warning!</h4>
                            <p>Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-4">
                    <div class="alert alert-dismissable alert-danger">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>Oh snap!</strong> <a href="#" class="alert-link">Change a few things up</a> and try submitting again.
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="alert alert-dismissable alert-success">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>Well done!</strong> You successfully read <a href="#" class="alert-link">this important alert message</a>.
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="alert alert-dismissable alert-info">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>Heads up!</strong> This <a href="#" class="alert-link">alert needs your attention</a>, but it's not super important.
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-4">
                    <h2>Labels</h2>
                    <div class="bs-example" style="margin-bottom: 40px;">
                        <span class="label label-default">Default</span>
                        <span class="label label-primary">Primary</span>
                        <span class="label label-success">Success</span>
                        <span class="label label-warning">Warning</span>
                        <span class="label label-danger">Danger</span>
                        <span class="label label-info">Info</span>
                    </div>
                </div>
                <div class="col-lg-4">
                    <h2>Badges</h2>
                    <div class="bs-example">
                        <ul class="nav nav-pills">
                            <li class="active"><a href="#">Home <span class="badge">42</span></a></li>
                            <li><a href="#">Profile <span class="badge"></span></a></li>
                            <li><a href="#">Messages <span class="badge">3</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h1 id="progress">Progress bars</h1>
                    </div>

                    <h3 id="progress-basic">Basic</h3>
                    <div class="bs-example">
                        <div class="progress">
                            <div class="progress-bar" style="width: 60%;"></div>
                        </div>
                    </div>

                    <h3 id="progress-alternatives">Contextual alternatives</h3>
                    <div class="bs-example">
                        <div class="progress" style="margin-bottom: 9px;">
                            <div class="progress-bar progress-bar-info" style="width: 20%"></div>
                        </div>
                        <div class="progress" style="margin-bottom: 9px;">
                            <div class="progress-bar progress-bar-success" style="width: 40%"></div>
                        </div>
                        <div class="progress" style="margin-bottom: 9px;">
                            <div class="progress-bar progress-bar-warning" style="width: 60%"></div>
                        </div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-danger" style="width: 80%"></div>
                        </div>
                    </div>

                    <h3 id="progress-striped">Striped</h3>
                    <div class="bs-example">
                        <div class="progress progress-striped" style="margin-bottom: 9px;">
                            <div class="progress-bar progress-bar-info" style="width: 20%"></div>
                        </div>
                        <div class="progress progress-striped" style="margin-bottom: 9px;">
                            <div class="progress-bar progress-bar-success" style="width: 40%"></div>
                        </div>
                        <div class="progress progress-striped" style="margin-bottom: 9px;">
                            <div class="progress-bar progress-bar-warning" style="width: 60%"></div>
                        </div>
                        <div class="progress progress-striped">
                            <div class="progress-bar progress-bar-danger" style="width: 80%"></div>
                        </div>
                    </div>

                    <h3 id="progress-animated">Animated</h3>
                    <div class="bs-example">
                        <div class="progress progress-striped active">
                            <div class="progress-bar" style="width: 45%"></div>
                        </div>
                    </div>

                    <h3 id="progress-stacked">Stacked</h3>
                    <div class="bs-example">
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 35%"></div>
                            <div class="progress-bar progress-bar-warning" style="width: 20%"></div>
                            <div class="progress-bar progress-bar-danger" style="width: 10%"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h1 id="container">Containers</h1>
                    </div>
                    <div class="bs-example">
                        <div class="jumbotron">
                            <h1>Jumbotron</h1>
                            <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                            <p><a class="btn btn-primary btn-lg">Learn more</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <h2>List groups</h2>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-4">
                    <div class="bs-example">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <span class="badge">14</span>
                                Cras justo odio
                            </li>
                            <li class="list-group-item">
                                <span class="badge">2</span>
                                Dapibus ac facilisis in
                            </li>
                            <li class="list-group-item">
                                <span class="badge">1</span>
                                Morbi leo risus
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bs-example">
                        <div class="list-group">
                            <a href="#" class="list-group-item active">Cras justo odio
                            </a>
                            <a href="#" class="list-group-item">Dapibus ac facilisis in
                            </a>
                            <a href="#" class="list-group-item">Morbi leo risus
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bs-example">
                        <div class="list-group">
                            <a href="#" class="list-group-item">
                                <h4 class="list-group-item-heading">List group item heading</h4>
                                <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                            </a>
                            <a href="#" class="list-group-item">
                                <h4 class="list-group-item-heading">List group item heading</h4>
                                <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <h2>Panels</h2>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            Basic panel
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">Panel heading</div>
                        <div class="panel-body">
                            Panel content
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            Panel content
                        </div>
                        <div class="panel-footer">Panel footer</div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Panel primary</h3>
                        </div>
                        <div class="panel-body">
                            Panel content
                        </div>
                    </div>
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">Panel success</h3>
                        </div>
                        <div class="panel-body">
                            Panel content
                        </div>
                    </div>
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <h3 class="panel-title">Panel warning</h3>
                        </div>
                        <div class="panel-body">
                            Panel content
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h3 class="panel-title">Panel danger</h3>
                        </div>
                        <div class="panel-body">
                            Panel content
                        </div>
                    </div>
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title">Panel info</h3>
                        </div>
                        <div class="panel-body">
                            Panel content
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <h2>Wells</h2>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-4">
                    <div class="well">
                        Look, I'm in a well!
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="well well-sm">
                        Look, I'm in a small well!
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="well well-lg">
                        Look, I'm in a large well!
                    </div>
                </div>
            </div>

        </div>

    </div>
</body>
</html>

<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Station Page</title>

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
<!-- iCheck -->
<link rel="stylesheet"
	href="<c:url value="/resource/plugins/iCheck/square/blue.css"/>">

<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="<c:url value="/resource/dist/css/skins/_all-skins.min.css"/>">

<!-- DataTables -->
<link rel="stylesheet"
	href="<c:url value="/resource/plugins/datatables/dataTables.bootstrap.css"/>">

<style>
#add{
margin-left:50px;
}


</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular.js"></script>


<script>
	angular
			.module("stationModule", [])
			.controller(
					"stationController",
					function($scope, $http) {
						// Initialization
						$scope.stationData = [];
						$http({
							method : "GET",
							url : "/MyRTS/resource/station/get/all",
						}).success(function(data) {
							// 			alert(data);
							$scope.stationData = data;
						}).error(function(data) {
							alert("AJAX Error!");
						});

						$scope.removeStation = function(index) {
							var station = $scope.stationData[index];
							var params = $.param({
								stationNo : station.stationNo
							});
							//alert(station.stationNo);
							$http(
									{
										method : "POST",
										url : "/MyRTS/admin/removeStation/",
										data : params,
										headers : {
											'Content-Type' : 'application/x-www-form-urlencoded'
										}
									}).success(function(status) {
								console.log(status);
								$scope.stationData.splice(index, 1);
							}).error(function() {
								alert('ERROR');
							});
						};

						$scope.saveStation = function(station) {
							var params = $.param({
								stationNo : station.stationNo,
								name : station.name,
								address : station.address,
								city : station.city,
								zipCode : station.zipCode,
								state : station.state,
								enable : station.enable
							});
							//alert(station.stationNo);
							$http(
									{
										method : "POST",
										url : "/MyRTS/admin/editStation/",
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

						$scope.editStation = function(index) {
							$scope.editing = $scope.stationData.indexOf(index);
						};

						$scope.saveField = function(index) {
							if ($scope.editing !== false) {
								$scope.editing = false;
							}
						};

						$scope.addStation = function(s) {
							var params = $.param({
								name : s.name,
								address : s.address,
								city : s.city,
								zipCode : s.zipCode,
								state : s.state,
								enable : s.enable
							});
							//alert(station.stationNo);
							$http(
									{
										method : "POST",
										url : "/MyRTS/admin/addStation/",
										data : params,
										headers : {
											'Content-Type' : 'application/x-www-form-urlencoded'
										}
									}).success(function(status) {
								console.log(status);
								s.stationNo = status;
								$scope.stationData.push(s);
							}).error(function() {
								alert('ERROR');
							});

						};
					});
</script>
</head>

<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue sidebar-collapse sidebar-mini">
	<div class="wrapper">
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
			<li class="treeview"><a href="/MyRTS/admin/order.html"> <i class="fa fa-calendar-minus-o"></i>
					<span>Order</span> <i class="fa fa-angle-left pull-right"></i>
			</a></li>

			<li class="treeview"><a href="/MyRTS/admin/train.html"> <i class="fa fa-train"></i>
					<span>Train</span> <i class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a href="/MyRTS/admin/schedule.html"> <i class="fa fa-edit"></i>
					<span>Schedule</span> <i class="fa fa-angle-left pull-right"></i>
			</a></li>
			<li class="treeview"><a href="/MyRTS/admin/station.html"> <i class="fa fa-table"></i>
					<span>Station</span> <i class="fa fa-angle-left pull-right"></i>
			</a></li>
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
				Stations<small>Hello Admin</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="/MyRTS/main.html"><i class="fa fa-dashboard"></i>
						Home</a></li>
				<li class="active">Stations</li>
			</ol>
			</section>


			<!-- Main content -->
			<section class="content">
			<div ng-app="stationModule" ng-controller="stationController">
				<!-- Station -->
				<table  class="table table-bordered table-hover">
					<tr>
						<td>name:</td>
						<td><input type="text" ng-model="s.name" /></td>
					</tr>
					<tr>
						<td>address:</td>
						<td><input type="text" ng-model="s.address" /></td>
					</tr>
					<tr>
						<td>city:</td>
						<td><input type="text" ng-model="s.city" /></td>
					</tr>
					<tr>
						<td>zipCode:</td>
						<td><input type="text" ng-model="s.zipCode" /></td>
					</tr>
					<tr>
						<td>state:</td>
						<td><input type="text" ng-model="s.state" /></td>
					</tr>
					<tr>
						<td>enable:</td>
						<td><input type="text" ng-model="s.enable" /></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<button id="add" type="submit" name="add"
								ng-click="addStation(s)">Add</button>
						</td>
					</tr>
				</table>
				<div>
					<h3>All Stations</h3>
					<table id="stationList"  class="table table-bordered table-striped dataTable" role="grid";>
						<tr>
							<th>Station ID</th>
							<th>Station name</th>
							<th>Station address</th>
							<th>Station city</th>
							<th>Station zipCode</th>
							<th>Station state</th>
							<th>Station enable</th>
							<th>Station controller</th>
						</tr>
						<tr ng-repeat="station in stationData">
							<td>{{station.stationNo}}</td>
							<td><span ng-hide="editMode">{{station.name}}</span> <input
								type="text" ng-show="editMode" ng-model="station.name" /></td>
							<td><span ng-hide="editMode">{{station.address}}</span> <input
								type="text" ng-show="editMode" ng-model="station.address" /></td>
							<td><span ng-hide="editMode">{{station.city}}</span> <input
								type="text" ng-show="editMode" ng-model="station.city" /></td>
							<td><span ng-hide="editMode">{{station.zipCode}}</span> <input
								type="number" ng-show="editMode" ng-model="station.zipCode" /></td>
							<td><span ng-hide="editMode">{{station.state}}</span> <input
								type="text" ng-show="editMode" ng-model="station.state" /></td>
							<td><span ng-hide="editMode">{{station.enable}}</span> <input
								type="number" ng-show="editMode" ng-model="station.enable" /></td>

							<td><span>
									<button type="submit" ng-hide="editMode"
										ng-click="editMode=true;editStation(station)">Edit</button>
							</span> <span>
									<button type="submit" ng-show="editMode"
										ng-click="editMode=false;saveStation(station)">Save</button>
							</span> <span>
									<button ng-click="removeStation($index)">Remove</button>
							</span></td>
						</tr>
					</table>
				</div>
			</div>
			</section>

			<!-- /. tools -->
		</div>
		<!-- /.box-header -->
		<div class="box-body no-padding">
			<!--The calendar -->
			<div id="calendar" style="width: 100%"></div>
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
	<!-- DataTables -->
	<script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="../../plugins/datatables/dataTables.bootstrap.min.js"></script>
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
 --%>
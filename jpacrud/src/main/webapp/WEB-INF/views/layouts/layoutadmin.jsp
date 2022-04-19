<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>
	<title>Admin Home Page</title>
	<link href="<c:url value="/web/admin/bootstrap/css/bootstrap.min.css" />" rel="stylesheet" media="screen"/>
    <link href="<c:url value="/web/admin/bootstrap/css/bootstrap-responsive.min.css" />" rel="stylesheet" media="screen"/>
    <link href="<c:url value="/web/admin/vendors/easypiechart/jquery.easy-pie-chart.css" />" rel="stylesheet" media="screen"/>
    <link href="<c:url value="/web/admin/assets/styles.css" />" rel="stylesheet" media="screen"/>
    <link href="<c:url value="/web/admin/vendors/modernizr-2.6.2-respond-1.1.0.min.js" />" rel="stylesheet" media="screen"/>
    <link href="<c:url value="/web/admin/assets/DT_bootstrap.css" />" rel="stylesheet" media="screen"/>
</head>
<body>
	<div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">Admin Panel</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i> Vincent Gabriel <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="#">Profile</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="login.html">Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav">
                            <li class="active">
                                <a href="#">Dashboard</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle">Settings <b class="caret"></b>

                                </a>
                                <ul class="dropdown-menu" id="menu1">
                                    <li>
                                        <a href="#">Tools <i class="icon-arrow-right"></i>

                                        </a>
                                        <ul class="dropdown-menu sub-menu">
                                            <li>
                                                <a href="#">Reports</a>
                                            </li>
                                            <li>
                                                <a href="#">Logs</a>
                                            </li>
                                            <li>
                                                <a href="#">Errors</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">SEO Settings</a>
                                    </li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Content <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="#">Blog</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">News</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">Custom Pages</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">Calendar</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="#">FAQ</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Users <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="#">User List</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">Search</a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="#">Permissions</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3" id="sidebar">
                    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                        <li class="active">
                            <a href="index.html"><i class="icon-chevron-right"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="form.html"><i class="icon-chevron-right"></i> Forms</a>
                        </li>
                        <li>
                        	<c:url var="urlcategory"  value="/danh-muc"></c:url>
                            <a href="${urlcategory}"><i class="icon-chevron-right"></i> Danh mục</a>
                        </li>
                    </ul>
                </div>
                <decorator:body />
            </div>
            <hr>
            <footer>
                <p>&copy; Vincent Gabriel 2013</p>
            </footer>
        </div>
        <!--/.fluid-container-->
        <script src=" <c:url value="/web/admin/vendors/datatables/js/jquery.dataTables.min.js" />"></script>
        <script src=" <c:url value="/web/admin/assets/DT_bootstrap.js" />"></script>
        <script src=" <c:url value="/web/admin/vendors/jquery-1.9.1.min.js" />"></script>
        <script src=" <c:url value="/web/admin/bootstrap/js/bootstrap.min.js" />"></script>
        <script src=" <c:url value="/web/admin/vendors/easypiechart/jquery.easy-pie-chart.js" />"></script>
        <script src=" <c:url value="/web/admin/assets/scripts.js" />"></script>
        <script src="assets/scripts.js"></script>
        <script src="assets/DT_bootstrap.js"></script>
        <script>
        $(function() {
            // Easy pie charts
            $('.chart').easyPieChart({animate: 1000});
        });
        </script>
</body>

</html>
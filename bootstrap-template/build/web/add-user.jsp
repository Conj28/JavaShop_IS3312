<%-- 
    Document   : product-list
    Created on : 01-Nov-2018, 12:54:17
    Author     : 112376091
--%>
<%@page import="com.bsapp.model.User"%>
<%@page import="java.util.Vector"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Shop Homepage - Start Bootstrap Template</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    </head>

    <body>

        <!-- Navigation -->
             <nav class="navbar navbar-expand-lg navbar-dark bg-gre fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.html"><i class="fas fa-map-signs"> The Sign-Age</i></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                         <li class="nav-item">
                            <a class="nav-link" href="adminHome.jsp">Admin Home
                            <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">Home
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="ProductManagementServlet">Shop</a>
                        </li>
                     
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <div class="container">

            <div class="row">



                <h1 class="my-2">Edit User</h1>
                <p>


                <!-- /.col-lg-3 -->


                <!-- /.col-lg-9 -->

            </div>
                <form action="AddUsersServlet" method="POST">
                    <div class="form-group">
                        <label for="email">Email address:</label>
                        <input type="email" required="required" class="form-control" id="email" name = "email">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="password" required="required" class="form-control" id="pwd" name="password">
                    </div>
                    <div class="form-group">
                        <label for="fName">First Name:</label>
                        <input type ="text" required="required" class ="form-control" name ="fName">
                    </div>
                    <div class="form-group">
                        <label for="fName">Last Name:</label>
                        <input type ="text" required="required" class ="form-control" name ="lName">
                    </div>
                    
                    <div class="form-group">
                        <label for="userType">User Type:</label>
                        <input type ="text" required="required" class ="form-control" name ="userType">
                    </div>
                    
                    <div class="checkbox">
                        <label><input type="checkbox"> Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            <br/>
            
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- Footer -->
       <footer class="py-3 bg-gre fixed-bottom">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Conor Murphy</p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>


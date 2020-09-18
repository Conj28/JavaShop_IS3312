<%-- 
    Document   : edit-User
    Created on : 11-Jan-2019, 10:40:27
    Author     : Conor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bsapp.model.User" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <div class="container topDiv">

            



                <h1 class="my-2">Update User</h1>
               


                <!-- /.col-lg-3 -->


                <!-- /.col-lg-9 -->
                
            

                        
<!--                
                <% User user=(User)session.getAttribute("currentUser"); %>
                <%=user.getFirstName() %>
                <c:out value="${sessionScope.currentUser.firstName}"/>
                <c:out value="${sessionScope.currentUser.userType}"/>
              -->
            
            <div>
                <form action="UpdateUserServlet" method="POST">
<!--                    <div class="form-group">
                        
                        <label name="currentID" value ="${sessionScope.currentUser.id}">Change Information for USer ID ${sessionScope.currentUser.id}</label>
                    </div>-->
                    <div class ="form-group">
                        <label for="id">USER ID:</label>
                        <input type="text" required="required" class="form-control" id="id" readonly ="readonly" name = "currentID" value = "${sessionScope.currentUser.id}">
                    </div>
                    <div class ="form-group">
                        <label for="email">Email address:</label>
                        <input type="email" required="required" class="form-control" id="email" name = "email" value = "${sessionScope.currentUser.email}">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="text" required="required" class="form-control" id="pwd" name="password" value = "${sessionScope.currentUser.password}">
                    </div>
                    <div class="form-group">
                        <label for="fName">First Name:</label>
                        <input type ="text" required="required" class ="form-control" name = "firstName" value = "${sessionScope.currentUser.firstName}">
                    </div>
                    <div class="form-group">
                        <label for="fName">Last Name:</label>
                        <input type ="text" required="required" class ="form-control" name ="lastName" value = "${sessionScope.currentUser.lastName}">
                    </div>
                    <div class="form-group">
                        <label for="fName">User Type:</label>
                        <input type ="text" required="required" class ="form-control" name ="userType" value = "${sessionScope.currentUser.userType}">
                    </div>
                    
                    <div class="checkbox">
                        <label><input type="checkbox"> Remember me</label>
                    </div>
            
                    <button type="submit" class="btn btn-default">Submit</button>
                    
                </form>
            <br/>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- Footer -->
      <footer class="py-3 bg-gre" Style = "padding-top:15px">
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


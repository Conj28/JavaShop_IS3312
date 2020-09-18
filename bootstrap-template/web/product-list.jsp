<%-- 
    Document   : product-list
    Created on : 01-Nov-2018, 12:54:17
    Author     : 112376091
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bsapp.utils.IConstants"%>
<%@page import="com.bsapp.dao.ProductDAO" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
                            <a class="nav-link" href="index.html">Home
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="product-list.jsp">Shop</a>
                            <span class="sr-only">(current)</span>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="ShowCartServlet"><i class="fas fa-shopping-cart"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


 <div class = "container topDiv">
        <header class="jumbotron bg-gre whiteText">
                <div class = "container">
<!--                    <h1>Shop  <span><i class="fas fa-store"></i></span></h1>-->
<h1>Welcome to The Sign-Age</h1>
                    <h4>Browse our fantastic range of signs</h4>
    
            </div>
        </header>

     
       <c:if test="${empty sessionScope.SKUSER.firstName}">
           <div class ="alert alert-grey">
           <h5>You are not logged in, log in <a href = "index.html">Here</a></h5>
       </diV>
</c:if>
<c:if test="${not empty sessionScope.SKUSER.firstName}">
    <div class ="alert alert-grey">
<h5>Logged in as ${sessionScope.SKUSER.firstName}</h5>
    </div>

</c:if>
</div>
        <!-- Page Content -->
        <div class="container ">

            <!--
                  <div class="row">
            
                    
            <!-- /.col-lg-3 -->

            <div class="col-lg-12">

                

                <div class="row text-center" style = "display:flex; flex-wrap: wrap">


                    <c:forEach items="${allProducts}" var="tempProduct">    
                       
                        
                             <div class="thumbnail col-md-3 col-sm-4" style="padding-bottom:15px">
                                <div class="card h-100 ">
                                    <a href="ShowProductItem?currentID=${tempProduct.id}"><img class="card-img-top img-med " src="${tempProduct.img}"alt=""></a>
                                    <div class="card-body thumbNail">
                                        <h5 class="card-title">
                                            <a href="ShowProductItem?currentID=${tempProduct.id}">${tempProduct.name}</a>
                                        </h5>
                                        <hr>
                                        <h5>€${tempProduct.price}</h5>
                                        <div class="card-footer">
                                        <form action ="ShowProductItem?currentID=${tempProduct.id}" method ="POST">
                                        <button class = "btn btn-md" type = "submit">View</button>
                                        </form>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>

                        </c:forEach>


                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.col-lg-9 -->

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- Footer -->
        <footer class="py-3 bg-gre">
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


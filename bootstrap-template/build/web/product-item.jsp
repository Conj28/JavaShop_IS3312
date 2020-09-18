<%-- 
    Document   : product-item
    Created on : 01-Nov-2018, 13:10:53
    Author     : 112376091
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.bsapp.model.Cart" %>
<%@page import="com.bsapp.dao.CartDAO" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Shop Item - Start Bootstrap Template</title>

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
            </div>s
        </nav>     <a class="navbar-brand" href="index.html"><i class="fas fa-map-signs"> The Sign-Age</i></a>
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

        <!-- Page Content -->
        <div class="container" style="padding-top:30px">

            <div class="row">

                <div class="col-lg-6">
                    <form action ="AddToCartServlet?productID=${sessionScope.ProductItem.id}&name=${sessionScope.ProductItem.name}&img=${sessionScope.ProductItem.img}&price=${sessionScope.ProductItem.price}" method ="POST">
                        <div class ="card">
                            <div class="card body">
                                <img name = "img"class="card-img-top img-fluid" src="${sessionScope.ProductItem.img}" alt="" value = "${sessionscope.ProductItem.img}">
                            </div>
                        </div>
                </div>
                <div class ="col-lg-6">
                    <div class="card">
                        <div class="card-mt-4 pad-about">
                            <h3 name ="name"  class="card-title">${sessionScope.ProductItem.name}</h3>
                            <h4 name = "price" >Price: €${sessionScope.ProductItem.price}</h4>
                            <ul>
                                <li>Sign Type: ${sessionScope.ProductItem.type}</li>
                                <li>Dimension: ${sessionScope.ProductItem.dimensions}</li>
                                <li>Material: ${sessionScope.ProductItem.material}</li>
                                <li>Product ID: ${sessionScope.ProductItem.id}</li>
                            </ul>

                            <p>${sessionScope.ProductItem.description}</p>
<!--                                    <h4 name = "type" >Sign Type${sessionScope.ProductItem.type}</h4>
                        <h4 name ="productID" >${sessionScope.ProductItem.id}</h4>-->
                        </div>
                    </div>
                    </br>

                    <div class ="card" style="height:120px">
                        <div class ="card-mt-4 pad-about">

                            <label>Quantity:</label>
                            <input type ="number" name ="quantity" class = "numInput" required="required">
                            </br>
                            

                            <c:if test="${empty sessionScope.SKUSER.firstName}">
                                <div class ="alert alert-danger" style = "padding-top:10px">
                                    <h5>you must login to add to cart, login here <a href = "index.html">Here</a></h5>
                                </div>
                            </c:if>
                            <c:if test="${not empty sessionScope.SKUSER.firstName}">
                                <button type ="sumbit">Add To Cart</button>
                            </c:if>


<!--                            <button type ="sumbit">Add To Cart</button>-->
                        </div>
                    </div>
                </div>
                <!--                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente dicta fugit fugiat hic aliquam itaque facere, soluta. Totam id dolores, sint aperiam sequi pariatur praesentium animi perspiciatis molestias iure, ducimus!</p>
                                            <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
                                            4.0 stars-->
            </div>
        </div>
    </div>
</div>
</form>
<!-- /.card -->


<!-- /.card -->

</div>
<!-- /.col-lg-9 -->

</div>

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="page-footer bg-dark fixed-bottom py-2">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

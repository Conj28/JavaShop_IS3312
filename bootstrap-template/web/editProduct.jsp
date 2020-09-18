<%-- 
    Document   : editProduct
    Created on : 12-Jan-2019, 13:35:57
    Author     : Conor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/main.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

    </head>
    <body>
        
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
        <div class ="container topDiv">
           
                <form action="UpdateProductServlet" method="POST">
                   <div class="form-group">
                        <label for="id">Product ID: </label>
                        <input type="text" required="required" class="form-control" id="id" name = "currentID" value = "${sessionScope.currentProd.id}" readonly="readonly">
                    </div>
                    <div class="form-group">
                        <label for="name">Product Name:</label>
                        <input type="text" required="required" class="form-control" id="email" name = "name" value = "${sessionScope.currentProd.name}">
                    </div>
                    <div class="form-group">
                        <label for="img">Image</label>
                        <input type="text" required="required" class="form-control" id="img" name="img" value = "${sessionScope.currentProd.img}">
                    </div>
                    <div class="form-group">
                        <label for="price">Price:</label>
                        <input type ="text" required="required" class ="form-control" name ="price" value = "${sessionScope.currentProd.price}">
                    </div>
                    <div class="form-group">
                        <label for="desc">Description</label></br>
                        <textarea name = "description" required="required" value = "${sessionScope.currentProd.description}"rows ="5" cols="150">${sessionScope.currentProd.description}</textarea>
                    </div>
                    
                    <div class="form-group">
                        <label for="userType">Dimensions</label>
                        <input type ="text" required="required" class ="form-control" name ="dimensions" placeholder = "e.g. 500 x 500" value = "${sessionScope.currentProd.dimensions}">
                    </div>
                    <div class="form-group">
                        <label for="price">Material</label>
                        <input type ="text" required="required" class ="form-control" name ="material" value = "${sessionScope.currentProd.material}">
                    </div>
                     <div class="form-group">
                        <label for="price">Type</label>
                        <input type ="text" required="required" class ="form-control" name ="type" value = "${sessionScope.currentProd.type}">
                    </div>
                    
                    
                    <div class="checkbox">
                        <label><input type="checkbox"> Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            <br/>
        
        </div>
                       <footer class="py-3 bg-gre" Style = "padding-top:15px">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Conor Murphy</p>
            </div>
            <!-- /.container -->
        </footer>
    </body>
</html>

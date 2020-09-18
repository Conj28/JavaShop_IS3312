<%-- 
    Document   : cart
    Created on : 13-Jan-2019, 10:58:08
    Author     : Conor
--%>
<%@page import="com.bsapp.model.Cart" %>
<%@page import="com.bsapp.dao.CartDAO" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/main.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                            <a class="nav-link" href="index.html">Home
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="product-list.jsp">Shop</a>
                            
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="ShowCartServlet"><i class="fas fa-shopping-cart"></i></a>
                            <span class="sr-only">(current)</span>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
       
<!--        <c:forEach items="${cart}" var="tempCart">
            <h3>${tempCart.id}</h3>
        <h3>${tempCart.productID}</h3>
        <h3>${tempCart.name}</h3>
        <h3>${tempCart.price}</h3>
        <h3>${tempCart.quantity}</h3>
        
            
        </c:forEach>
        -->
        <div class="row">


<div class ="container">
          <h1 class="my-2">Your Cart</h1>
          <p><table class="table">
                            <thead>
                                <tr>
                                    
                                    <th>Product ID</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>img</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${cart}" var="tempCart">    
                                    <tr>
                                        <td scope="row"><c:out value="${tempCart.id}"/></td>
                                        <td>${tempCart.name}</td>
                                        <td>${tempCart.price}</td>
                                        <td>${tempCart.quantity}</td>
<!--                                        <td>${tempCart.id}</td>-->
                                        <td><img src ="${tempCart.img}" class ="img-verySmall"></td>
                                        <!--<td><form action="UserEditServlet" method = "POST"><button action="currentID" value="dog"> link to edit </button></form> </td>-->
<!--                                        <td><a href="EditProductServlet?currentID=${tempProd.getId()}">EDIT USER</td>
-->                                        <td><a href ="DeleteCartItemServlet?currentID=${tempCart.id}">Remove Item</td>
                                        <c:set var="price" scope="page" value="${price + (tempCart.price * tempCart.quantity)}"/>
                                        
                                      
                                        <div class="table"></div>
                                    </tr>
                                </c:forEach>                                    
                            </tbody>
                            <c:set var="totalPrice" scope="page" value="${price + 7.50}"/>
                            
                            <c:if test="${totalPrice != 7.50}">
                            <table class ="table table-bordered">
                                <tbody>
                                    <tr>
                                <td>Products total:</td>
                                <td>€${price}</td>
                                    </tr>
                               
                                <tr>
                                    <td>Shipping</td>
                                    <td> €7.50</td>
                                    
                                </tr>
                                <tr>
                                    <td>Order Total</td>
                                    <td>€${totalPrice}</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><button>Checkout</button>
                                </tr>
                                </c:if>
                                <c:if test="${totalPrice == 7.50}">
                                    <tr><h5>Cart Is Empty</h5>
                            </c:if>
                                </tbody>
                                
                            </table>
                           
                                <form action ="ProductManagementServlet" method = "GET"> 
                                <button type = "sumbit" class = "btn btn-Large">Continue Shopping</button>
                                </form>
                        </table>
        </div>
        </div>
                                
      
    </body>
</html>

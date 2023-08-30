<!-- product-list.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .product-card {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 20px;
        }
        .product-card img {
            max-height: 100px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Product List</h2>
        <div class="row">
            <c:forEach items="${products}" var="product" varStatus="loop">
                <div class="col-md-4">
                    <div class="product-card">
                        <a href="f?productId=${product.getProdId()}">
    <img src="${product.getImageUrl()}" alt="Product Image">
   
</a>
 <p>${product.getName()}</p>
    <p>${product.getPrice()}</p>

                        
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>

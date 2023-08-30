<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script>
        function storeSelectedProduct(product) {
            sessionStorage.setItem("selectedProduct", product);
        }
    </script>
</head>
<body style="text-align:center">
<form action="customer">
    <h2>Product Details</h2>
    <c:forEach items="${Products}" var="product">
        <c:if test="${product.getProdId() eq param.productId}">
            <div class="container">
                <img src="${product.getImageUrl()}" style="height:150px" alt="Product Image">
                <p>Name: ${product.getName()}</p> 
                <p>Description: ${product.getDescription()}</p>
                <p>HSN Code: ${product.getHsncode()}</p>
                <p>Category: ${product.getCategory()}</p>
                <p>Price: ${product.getPrice()}</p>
                <br> <br> <br>
                <button class="btn btn-primary" onclick="storeSelectedProduct(${productAsJson})">Buy now</button>
            </div>
        </c:if>
    </c:forEach>

    <script>
        // Convert the product object to a JSON string
        var productAsJson = JSON.stringify({
            prodId: "${product.getProdId()}",
            name: "${product.getName()}",
            description: "${product.getDescription()}",
            hsncode: "${product.getHsncode()}",
            category: "${product.getCategory()}",
            price: ${product.getPrice()},
            imageUrl: "${product.getImageUrl()}"
        });
    </script>
    </form>
</body>
</html>

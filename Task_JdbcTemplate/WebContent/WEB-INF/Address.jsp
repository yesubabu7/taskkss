<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Address List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script>
        function storeSelectedAddress(selectedAddressId) {
            sessionStorage.setItem("selectedAddressId", selectedAddressId);
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Choose an Address</h2>
        <form action="ProcessSelectedAddress" method="post">
            <c:forEach items="${a}" var="address">
                <div class="form-check">
                    <input type="radio" class="form-check-input" name="selectedAddressId" value="${address.getAddressId()}" onclick="storeSelectedAddress(this.value)">
                    <label class="form-check-label">
                        ${address.getStreetAddress()}, ${address.getCity()}, ${address.getState()} ${address.getPostalCode()}
                    </label>
                </div>
            </c:forEach>
            <button type="submit" class="btn btn-primary mt-3">Select Address</button>
        </form>
    </div>
</body>
</html>

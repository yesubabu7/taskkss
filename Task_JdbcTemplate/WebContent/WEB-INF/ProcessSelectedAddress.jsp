<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Selected Address Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>Selected Address Details</h2>
        
        <!-- Display Customer Information -->
        <h3>Customer Information:</h3>
        <p><strong>Name:</strong> <span id="customerName"></span></p>
        <p><strong>Email:</strong> <span id="customerEmail"></span></p>
        <!-- ... Other customer details ... -->
        
        <!-- Display Selected Address Information -->
        <h3>Selected Address:</h3>
        <p><strong>Street Address:</strong> <span id="addressStreet"></span></p>
        <!-- ... Other address details ... -->
        
        <!-- Display Product Information -->
        <h3>Product Information:</h3>
        <p><strong>Name:</strong> <span id="productName"></span></p>
        <p><strong>Description:</strong> <span id="productDescription"></span></p>
        <p><strong>HSN Code:</strong> <span id="productHsnCode"></span></p>
        <p><strong>Category:</strong> <span id="productCategory"></span></p>
        <p><strong>Price:</strong> <span id="productPrice"></span></p>
        <!-- ... Other product details ... -->
    </div>

    <script>
        // Retrieve data from session storage
        var selectedCustomer = JSON.parse(sessionStorage.getItem('selectedCustomer'));
        var selectedAddress = JSON.parse(sessionStorage.getItem('selectedAddress'));
        var selectedProduct = JSON.parse(sessionStorage.getItem('selectedProduct'));
        
        // Update the HTML content with retrieved data
        document.getElementById('customerName').textContent = selectedCustomer;
        document.getElementById('customerEmail').textContent = selectedCustomer;
        // ... Update other fields similarly ...

        document.getElementById('addressStreet').textContent = selectedAddress.streetAddress;
        // ... Update other fields similarly ...

        document.getElementById('productName').textContent = selectedProduct.name;
        document.getElementById('productDescription').textContent = selectedProduct.description;
        document.getElementById('productHsnCode').textContent = selectedProduct.hsncode;
        document.getElementById('productCategory').textContent = selectedProduct.category;
        document.getElementById('productPrice').textContent = selectedProduct.price;
        // ... Update other fields similarly ...
    </script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script>
        function storeCustomerID(customerId) {
            sessionStorage.setItem("selectedCustomerId", customerId);
        }
    </script>
</head>
<body>
    <h2>Customer Details</h2>
    <form action="AddressDetails">
        <label for="id">Enter Customer Id:</label>
        <input type="text" id="id" name="customer_id" required><br>
        
        <button type="submit" onclick="storeCustomerID(document.getElementById('id').value)">Next</button>
    </form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: paboda
  Date: 1/21/25
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String alertType = (String) request.getAttribute("alertType");
    String alertMessage = (String) request.getAttribute("alertMessage");
%>
<html>
<head>
    <title>Add Product</title>
    <link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffe6f2;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #ff66a3;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        input[type="file"] {
            padding: 5px;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #ff66a3;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            text-align: center;
            line-height: 1.5;
        }

        .btn:hover {
            background-color: #e05590;
        }

        .card-content {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Add New Product</h1>
    <form id="addProductForm" action="ProductAddServlet" method="post">
        <label for="ProductID" class="form-label">Product ID:</label>
        <input type="number" class="form-control" name="ProductID" id="ProductID" placeholder="Enter Product ID" required>

        <label for="productName">Product Name:</label>
        <input type="text" id="productName" name="name" placeholder="Enter product name" required>

        <label for="productDescription">Description:</label>
        <textarea id="productDescription" name="description" rows="4" placeholder="Enter product description" required></textarea>

        <label for="categoryId">Category ID:</label>
        <input type="number" id="categoryId" name="categoryId" placeholder="Enter category id" required>

        <label for="productPrice">Price:</label>
        <input type="number" id="productPrice" name="price" placeholder="Enter product price" required>

        <label for="productQuantity">Quantity:</label>
        <input type="number" id="productQuantity" name="quantity" placeholder="Enter product quantity" required>

        <label for="productImage">Product Image:</label>
        <input id="productImage" type="file" name="image" class="form-control" accept="image/*" required>

        <button type="submit" class="btn">Add Product</button><br><br>
        <a href="adminDashBoard.jsp" class="btn">Back to Dashboard</a>
    </form>
</div>

<script>
    <%if (alertType != null && alertMessage != null){%>

    Swal.fire({
        icon: '<%= alertType %>',
        title: '<%= alertMessage %>',
        confirmButtonText: 'OK'
    });
    <%}%>
</script>
</body>
</html>

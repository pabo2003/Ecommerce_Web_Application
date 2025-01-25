<%--
  Created by IntelliJ IDEA.
  User: paboda
  Date: 1/25/25
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String alertType = (String) request.getAttribute("alertType");
    String alertMessage = (String) request.getAttribute("alertMessage");
%>

<html>
<head>
    <title>Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffe6f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .delete-container {
            background-color: #ffccdd;
            border: 2px solid #ff99bb;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }

        .delete-container h1 {
            font-size: 1.5rem;
            color: #ff6699;
            margin-bottom: 20px;
        }

        .delete-container input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ff99bb;
            border-radius: 8px;
            margin-bottom: 15px;
            outline: none;
            font-size: 1rem;
        }

        .delete-container button {
            background-color: #ff6699;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .delete-container button:hover {
            background-color: #ff3366;
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

    </style>
</head>
<body>
<div class="delete-container">
    <h1>Delete Product</h1>
    <form id="deleteProductForm" action="ProductDeleteServlet" method="post">
        <label for="ProductID" class="form-label">Product ID <i class="bi bi-info-circle" title="Enter the Product ID to delete."></i></label>
        <input type="text" id="productId" name="productId" placeholder="Enter Product ID" required>
        <button type="submit">Delete</button>
        <a href="adminDashBoard.jsp" class="btn">Back to Dashboard</a>
    </form>
</div>

<script>
    <% if (alertType != null && alertMessage != null) { %>
    Swal.fire({
        icon: '<%= alertType %>', // success, error, warning, info
        title: '<%= alertMessage %>',
        confirmButtonText: 'OK'
    });
    <% } %>
</script>
</body>
</html>

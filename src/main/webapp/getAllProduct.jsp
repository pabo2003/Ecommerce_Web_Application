<%@ page import="lk.ijse.DTO.ProductDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: paboda
  Date: 1/25/25
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String alertType = (String) request.getAttribute("alertType");
    String alertMessage = (String) request.getAttribute("alertMessage");
    List<ProductDTO> dataList = (List<ProductDTO>) request.getAttribute("products");
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

        .table-container {
            background-color: #ffccdd;
            border: 2px solid #ff99bb;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 80%;
        }

        .table-container h1 {
            font-size: 1.5rem;
            color: #ff6699;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 1rem;
        }

        table thead {
            background-color: #ff99bb;
        }

        table th, table td {
            border: 1px solid #ff99bb;
            padding: 10px;
            text-align: left;
        }

        table th {
            color: white;
            background-color: #ff6699;
        }

        table tr:nth-child(even) {
            background-color: #ffe6f0;
        }

        table tr:hover {
            background-color: #ffccd9;
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
<div class="table-container">
    <h1>Product Details</h1>
    <% if (dataList != null && !dataList.isEmpty()) { %>
    <table>
        <thead>
        <tr>
            <th>Product ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Quantity</th>
            <th>Image Path</th>
            <th>Category</th>
        </tr>
        </thead>
        <tbody id="productTableBody">
        <%for (ProductDTO productDTO : dataList){%>
        <tr>
            <td><%= productDTO.getProductId() %></td>
            <td><%= productDTO.getName() %></td>
            <td>$<%= String.format("%.2f", productDTO.getPrice()) %></td>
            <td><%= productDTO.getDescription() %></td>
            <td><%= productDTO.getQuantity() %></td>
            <td><%= productDTO.getCategory().getName() %></td>
            <td><img src="<%= productDTO.getImagePath() %>" alt="<%= productDTO.getName() %>" width="50" height="50"></td>
        </tr>
        <% } %>
        </tbody>
    </table>

    <% } else { %>
    <p class="text-center no-products">No products found. Please add products to see them listed here.</p>
    <% } %>

    <a href="adminDashBoard.jsp" class="btn">Back to Dashboard</a>
</div>

</body>
</html>

<%@ page import="lk.ijse.DTO.CategoryDTO" %>
<%@ page import="lk.ijse.Entity.User" %>
<%@ page import="lk.ijse.Entity.Login" %>
<%@ page import="lk.ijse.DAO.DAOFactory" %>
<%@ page import="lk.ijse.DAO.LoginDAO" %>
<%@ page import="lk.ijse.DAO.UserDAO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: paboda
  Date: 1/25/25
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String alertType = (String) request.getAttribute("alertType");
    String alertMessage = (String) request.getAttribute("alertMessage");
    List<CategoryDTO> dataList = (List<CategoryDTO>) request.getAttribute("categories");
    UserDAO userDAO = (UserDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DaoType.User);
    LoginDAO loginDAO = (LoginDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DaoType.Login);
    Login login = loginDAO.getLastLogin();
    User user = userDAO.searchByEmail(login.getUserMail());
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
            flex-direction: column;
        }

        .table-responsive {
            background-color: #ffccdd;
            border: 2px solid #ff99bb;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 80%;
            margin-bottom: 20px;
        }

        .table-responsive table {
            width: 100%;
            border-collapse: collapse;
        }

        .table-responsive th, .table-responsive td {
            border: 1px solid #ff99bb;
            padding: 10px;
            text-align: left;
        }

        .table-responsive th {
            background-color: #ff6699;
            color: white;
        }

        .table-responsive tbody tr:nth-child(even) {
            background-color: #ffe6f0;
        }

        .table-responsive tbody tr:hover {
            background-color: #ffccd9;
        }

        .btn {
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            font-size: 0.9rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-warning {
            background-color: #ffa07a;
            color: white;
        }

        .btn-warning:hover {
            background-color: #ff7f50;
        }

        .btn-danger {
            background-color: #ff6b6b;
            color: white;
        }

        .btn-danger:hover {
            background-color: #ff4c4c;
        }

        .text-muted {
            color: #888;
        }

        .btn-back {
            padding: 10px 20px;
            background-color: #ff6699;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            font-size: 1rem;
            transition: background-color 0.3s;
        }

        .btn-back:hover {
            background-color: #ff4c80;
        }
    </style>
</head>
<body>
<% if (dataList != null && !dataList.isEmpty()) { %>
<div class="table-responsive">
    <table class="table table-striped table-bordered shadow-sm">
        <thead class="table-header">
        <tr>
            <th>#</th>
            <th>Category</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <% for (CategoryDTO categoryDTO : dataList) { %>
        <tr>
            <td><%= categoryDTO.getCategoryId() %></td>
            <td><%= categoryDTO.getName() %></td>
            <td>
                <button class="btn btn-warning btn-sm btn-custom" onclick="editCategory(<%= categoryDTO.getCategoryId() %>, '<%= categoryDTO.getName() %>')">
                    <i class="bi bi-pencil"></i> Edit
                </button>
                <button class="btn btn-danger btn-sm btn-custom" onclick="deleteCategory(<%= categoryDTO.getCategoryId() %>)">
                    <i class="bi bi-trash"></i> Delete
                </button>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
<a href="adminDashBoard.jsp" class="btn-back">Back to Dashboard</a>
<% } else { %>
<p class="text-center text-muted">No categories found.</p>
<a href="adminDashBoard.jsp" class="btn-back">Back to Dashboard</a>
<% } %>

<script>
    Swal.fire({
        icon: '<%= alertType %>',
        title: '<%= alertMessage %>',
        showConfirmButton: false,
        timer: 2000
    });
</script>
</body>
</html>

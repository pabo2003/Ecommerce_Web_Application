<%@ page import="java.util.Objects" %>
<%--
  Created by IntelliJ IDEA.
  User: paboda
  Date: 1/22/25
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String alertType = (String) request.getAttribute("alertType");
  String alertMessage = (String) request.getAttribute("alertMessage");
%>

<html>
<head>
  <title>Add Category</title>
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

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ddd;
      border-radius: 4px;
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
      text-align: center;
      text-decoration: none;
    }

    .btn:hover {
      background-color: #e05590;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Add Category</h1>
  <form id="addCategoryForm" action="CategoryServlet" method="post">
    <label for="categoryID" class="form-label">Category ID:</label>
    <input type="number" class="form-control" name="categoryID" id="categoryID" placeholder="Enter category ID" required>

    <label for="categoryName">Category Name:</label>
    <input type="text" id="categoryName" name="categoryName" placeholder="Enter category name" required>

    <input type="hidden" name="action" id="action" value="add">
    <button type="submit" class="btn btn-success px-4" onclick="setAction('add')">Add</button><br>
    <button type="submit" class="btn btn-primary px-4" onclick="setAction('update')">Update</button><br>
    <button type="submit" class="btn btn-danger px-4" onclick="setAction('delete')">Delete</button><br>

    <a href="adminDashBoard.jsp" class="btn">Back to Dashboard</a>
  </form>
</div>

<script>
  function setAction(action) {
    document.getElementById('action').value = action;
  }

  <% if (!Objects.isNull(alertType) && !Objects.isNull(alertMessage)) { %>
  Swal.fire({
    icon: '<%= alertType %>',
    title: '<%= alertMessage %>',
    confirmButtonColor: '#3085d6',
    confirmButtonText: 'OK'
  });
  <% } %>
</script>
</body>
</html>

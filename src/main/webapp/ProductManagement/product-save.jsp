<%--
  Created by IntelliJ IDEA.
  User: paboda
  Date: 1/16/25
  Time: 9:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Save</title>
</head>
<body>
<h1>Save Product</h1>

<%
    String message = request.getParameter("message");
    String error = request.getParameter("error");

%>
<%
    if (message!=null){
%>
<div style="color: greenyellow"><%=message%></div>
<%
    }
%>

<%
    if (error!=null){
%>
<div style="color: red"><%=error%></div>
<%

    }
%>


<form action="product-save" method="post">
    <label>Name:</label>
    <input type="text" id="name" name="Product_name"/><br><br><br>

    <label>Description:</label>
    <input type="text" id="description" name="description"/><br><br><br>

    <label>Price:</label>
    <input type="text" id="price" name="price"/><br><br><br>

    <label>Category id:</label>
    <input type="text" id="category_id" name="category_id"><br><br><br>
    <button type="submit">Save Product</button>
</form>
</body>
</html>

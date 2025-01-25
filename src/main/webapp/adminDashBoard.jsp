<%--
  Created by IntelliJ IDEA.
  User: paboda
  Date: 1/21/25
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin-Dashboard</title>
    <link rel="stylesheet" href="StyleSheet/adminDashboardStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
<div class="dashboard-container">
    <aside class="sidebar">
        <h2>Admin Dashboard</h2>
        <ul class="menu">
            <li><a href="#products"><i class="fa fa-box"></i> Product Management</a></li>
            <li><a href="#categories"><i class="fa fa-tags"></i> Category Management</a></li>
            <li><a href="#orders"><i class="fa fa-shopping-cart"></i> Order Management</a></li>
            <li><a href="#users"><i class="fa fa-users"></i> User Management</a></li>
            <li><a href="index.jsp"><i class="fa fa-home"></i> Home </a></li>
        </ul>
    </aside>
    <main class="content">
        <!-- Product Management -->
        <section id="products" class="dashboard-section">
            <h3>Product Management</h3>
            <div class="card">
                <div class="card-content">
                    <a href="productAdd.jsp" class="btn">Add Product</a>
                    <a href="${pageContext.request.contextPath}/ProductListServlet" class="btn">View Products</a>
                    <a href="productUpdate.jsp" class="btn">Update Product</a>
                    <a href="productDelete.jsp" class="btn">Delete Product</a>
                </div>
            </div>
        </section>
        <!-- Category Management -->
        <section id="categories" class="dashboard-section">
            <h3>Category Management</h3>
            <div class="card">
                <div class="card-content">
                    <a href="CategoryManage.jsp" class="btn">Manage Category</a>
                    <a href="${pageContext.request.contextPath}/CategoryListServlet" class="btn">View Categories</a>
                </div>
            </div>
        </section>
        <!-- Order Management -->
        <section id="orders" class="dashboard-section">
            <h3>Order Management</h3>
            <div class="card">
                <div class="card-content">
                    <p>View and manage customer orders here.</p>
                    <a href="#" class="btn">View Orders</a>
                </div>
            </div>
        </section>
        <!-- User Management -->
        <section id="users" class="dashboard-section">
            <h3>User Management</h3>
            <div class="card">
                <div class="card-content">
                    <p>Activate or deactivate customer accounts here.</p>
                    <a href="" class="btn">Manage Users</a>
                    <a href="UserView.jsp" class="btn">View Users</a>
                </div>
            </div>
        </section>
    </main>
</div>
</body>
</html>

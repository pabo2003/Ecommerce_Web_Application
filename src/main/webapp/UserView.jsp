<%--
  Created by IntelliJ IDEA.
  User: paboda
  Date: 1/24/25
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>

        body {
            font-family: Arial, sans-serif;
            background-color: #ffe4e1; /* Light pink background */
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border: 2px solid #ffb6c1;
        }

        .title {
            text-align: center;
            color: #ff69b4;
            font-size: 2em;
            margin-bottom: 20px;
        }

        /* Table styles */
        .user-table {
            width: 100%;
            border-collapse: collapse;
        }

        .user-table thead {
            background-color: #ffb6c1;
            color: #fff;
        }

        .user-table th, .user-table td {
            border: 1px solid #ff69b4;
            padding: 10px;
            text-align: left;
        }

        .user-table tr:nth-child(even) {
            background-color: #ffe4e1;
        }

        .user-table tr:hover {
            background-color: #ff99c8;
        }

    </style>
</head>
<body>
<div class="container">
    <h1 class="title">User Details</h1>
    <table class="user-table">
        <thead>
        <tr>
            <th>User ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Role</th>
        </tr>
        </thead>
        <tbody id="user-table-body">
        </tbody>
    </table>
</div>
<script>

    const users = [
        { userId: 1, username: 'john_doe', email: 'john@example.com', role: 'Admin' },
        { userId: 2, username: 'jane_doe', email: 'jane@example.com', role: 'User' },
        { userId: 3, username: 'alex_smith', email: 'alex@example.com', role: 'Moderator' },
    ];

    const tableBody = document.getElementById('user-table-body');

    users.forEach(user => {
        const row = document.createElement('tr');
        row.innerHTML = `
        <td>${user.userId}</td>
        <td>${user.username}</td>
        <td>${user.email}</td>
        <td>${user.role}</td>
    `;
        tableBody.appendChild(row);
    });

</script>
</body>
</html>

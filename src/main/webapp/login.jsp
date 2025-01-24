<%--
  Created by IntelliJ IDEA.
  User: paboda
  Date: 1/20/25
  Time: 4:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String error = request.getParameter("error");
    String success = request.getParameter("success");
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="StyleSheet/loginStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.25/dist/sweetalert2.min.css" rel="stylesheet">

</head>
<body>

<% if (error != null) { %>
<script>
    Swal.fire({
        icon: 'error',
        title: 'Error',
        text: '<%= error %>'
    });
</script>
<% } %>
<% if (success != null) { %>
<script>
    Swal.fire({
        icon: 'success',
        title: 'Success',
        text: '<%= success %>'
    });
</script>
<% } %>

<div class="container" id="container">
    <div class="form-container sign-up">
        <form action="AddUserServlet" method= "post">
            <h1 class="title">Sign Up</h1>
            <div class="input-field">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Username" name="username" id="usernameU">
            </div>
            <div class="input-field">
                <i class="fas fa-envelope"></i>
                <input type="text" placeholder="Email" name="email" id="emailU">
            </div>
            <div class="input-field">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Password" name="password" id="passwordU">
            </div>
            <div class="input-field">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Conform Password" name="confirmPassword" id="confirmPasswordU">
            </div>
            <input type="submit" value="Sign up" class="btn" >
            <p class="social-text">Or Sign in with social platform</p>
            <div class="social-media">
                <a href="#" class="social-icon">
                    <i class="fab fa-facebook"></i>
                </a>
                <a href="" class="social-icon">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="" class="social-icon">
                    <i class="fab fa-google"></i>
                </a>
                <a href="" class="social-icon">
                    <i class="fab fa-linkedin-in"></i>
                </a>
            </div>
        </form>
    </div>
    <div class="form-container sign-in">
        <form action="loginServlet" method="post">
            <h1 class="title">Sign In</h1>
            <div class="input-field">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Username" name="username" id="usernameI">
            </div>

            <div class="input-field">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Password"  name="password" id="passwordI">
            </div>
            <input type="submit" value="Sign in" class="btn" >
            <p class="social-text">Or Sign in with social platform</p>
            <div class="social-media">
                <a href="#" class="social-icon">
                    <i class="fab fa-facebook"></i>
                </a>
                <a href="" class="social-icon">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="i" class="social-icon">
                    <i class="fab fa-google"></i>
                </a>
                <a href="" class="social-icon">
                    <i class="fab fa-linkedin-in"></i>
                </a>
            </div>
        </form>
    </div>
    <div class="toggle-container">
        <div class="toggle">
            <div class="toggle-panel toggle-left">
                <div class="content">
                    <h3>Member of ForeverFloral?</h3>
                    <p>Welcome back! Sign in to access your personalized floral collections, exclusive deals, and a blooming world of possibilities. We’re thrilled to have you as part of our ForeverFloral family—let’s make every moment beautiful together!<br>💐💐💐💐💐💐</p>
                    <button class="hidden btn" id="login">Sign In</button>
                </div>
                <img src="images/signin.png" alt="" class="image">
            </div>
            <div class="toggle-panel toggle-right">
                <div class="content">
                    <h3>New ot ForeverFloral?</h3>
                    <p>Welcome to ForeverFloral, where beauty blooms all year round! Join our community to explore timeless floral collections, exclusive offers, and a seamless shopping experience. Sign up today and let us help you celebrate life’s moments with elegance and grace!<br>💐💐💐💐💐💐</p>
                    <button class="hidden btn" id="register">Sign Up</button>
                </div>
                <img src="images/signup.png" alt="" class="image">
            </div>
        </div>
    </div>
</div>
<script>const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');

registerBtn.addEventListener('click', () => {
    container.classList.add('active');
});

loginBtn.addEventListener('click', () => {
    container.classList.remove('active');
});
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.25/dist/sweetalert2.all.min.js"></script>

</body>
</html>

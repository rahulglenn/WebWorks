<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22-01-2021
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <title>Login Form</title>
    <link rel="stylesheet" type="text/css" href="login.css">
    <link rel="stylesheet" href="header.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<div class="banner">
    <div class="navbar">
        <img src="" class="logo">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="aboutus.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="registration.jsp">Sign Up</a></li>
        </ul>
    </div>
    <img class="wave" src="">
    <div class="container">
        <div class="img">
            <img src="">
        </div>
        <div class="login-content">
            <form action="index.html">
                <img src="avatar.svg">
                <h2 class="title">Welcome</h2>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <h5>Email</h5>
                        <input type="text" class="input">
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <h5>Password</h5>
                        <input type="password" class="input">
                    </div>
                </div>
                <br>
                <a href="#">Forgot Password?</a>
                <input type="submit" class="btn" value="Login">
                <h6>Don't have an account?</h6><br>
                <a href="registration.jsp" style="text-align: center;">Sign Up</a>

            </form>
        </div>
    </div>
</div>
<script type="text/javascript" src="login.js"></script>
</body>

</html>

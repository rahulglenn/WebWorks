<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 28-01-2021
  Time: 00:22
  To change this template use File | Settings | File Templates.
--%>
<html>

<head>
    <title>Rewinding Works</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<style>
    * {
        margin: 0;
        padding: 0;
        font-family: sans-serif;
        background-color: white;
    }
    .navbar {
        overflow: hidden;
        position: sticky;
        top:0;
        width: 100%;
        margin: auto;
        padding: 35px 0;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .logo {
        widows: 0;
        cursor: pointer;
    }
    .navbar ul li {
        list-style: none;
        display: inline-block;
        margin: 0 20px;
        position: relative;
    }
    .navbar ul li a {
        text-decoration: none;
        color: rgb(5, 0, 0);
        text-transform: uppercase;
    }
    .navbar ul li::after {
        content: "";
        height: 3px;
        width: 0;
        background: #0353bb;
        position: absolute;
        left: 0;
        bottom: -10px;
        transition: 0.5s;
    }
    .navbar ul li:hover::after {
        width: 100%;
    }
</style>

<body>
    <div class="navbar">
        <img src="" class="logo" alt="">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="registration.jsp">Sign Up</a></li>
        </ul>
    </div>
</body>

</html>

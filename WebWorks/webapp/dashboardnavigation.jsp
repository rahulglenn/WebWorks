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
        font-family: sans-serif;
    }
    .navbar {
        overflow: hidden;
        position: sticky;
        top:0;
        width: 100%;
        height: 10%;
        bottom: 0;
        display: flex;
        align-items: center;
        justify-content: space-between;
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

<div class="banner">
    <div class="navbar">
        <a class="navbar-brand" href="#"><img src="avatar.svg" width="30" height="30" class="d-inline-block align-top" alt=""></a>
        <ul>
            <li><label>Welcome,<span id="rockers"></span></label></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="index.jsp">Logout</a></li>
        </ul>
    </div>
</div>
<script>
    <%@include file="AddOnServices/DBconnect.jsp"%>
    <sql:query var="rs" dataSource="${db}">select * from customerlogin where cusid=<%= session.getAttribute("cusid") %></sql:query>
    <c:forEach var="row" items="${rs.rows}">
    var x = '${row.Name}';
    </c:forEach>
    document.getElementById("rockers").innerHTML=x;
</script>


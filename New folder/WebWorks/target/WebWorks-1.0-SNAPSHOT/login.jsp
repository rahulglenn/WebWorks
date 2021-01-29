<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 24-01-2021
  Time: 01:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
<div class="container">
    <div class="jumbotron">
        <form action="LoginServlet" method="post">
        <div class="form-group">
            <label for="email">Enter Email ID : </label>
            <input type="email" class="form-control" id="uname" name="uname">
        </div>
        <div class="form-group">
            <label for="password">Password :</label>
            <input type="password" class="form-control" id="pass" name="pass">
        </div>
        <input type="submit" value="Login" class="btn">
        <h6>Don't have an account? <a href="registration.jsp">Sign Up</a></h6>
        <button type="button" class="btn btn-primary" onclick="location.href='index.jsp'">Back</button>
        </form>
    </div>
</div>
</div>
</div>
</body>

</html>
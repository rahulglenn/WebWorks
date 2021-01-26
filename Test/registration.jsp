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
        <form method="post" action="RegisterServlet">
        <div class="form-group">
            <label for="Name">Owner Name : </label>
            <input type="text" class="form-control" id="name">
        </div>
        <div class="form-group">
            <label for="Key">Activation Key : </label>
            <input type="text" class="form-control" id="key">
        </div>
        <h6>Don't have an activation key? <a href="activation.jsp">Buy now</a></h6>
        <div class="form-group">
            <label for="cname">Company Name : </label>
            <input type="text" class="form-control" id="cname" name="cname">
        </div>
        <div class="form-group">
            <label for="email">Enter Email ID : </label>
            <input type="email" class="form-control" id="email" name="email">
        </div>
        <div class="form-group">
            <label for="number">Phone Number : </label>
            <input type="tele" class="form-control" id="number" name="phone">
        </div>
        <div class="form-group">
            <label for="dob">Date of Birth : </label>
            <input type="date" class="form-control" id="dob" name="dob">
        </div>
        <div class="form-group">
            <label for="password">Password :</label>
            <input type="password" class="form-control" id="password" name="pass">
        </div>
        <div class="form-group">
            <label for="repassword">Re-type Password :</label>
            <input type="password" class="form-control" id="repassword" name="repass">
        </div>
        <input type="submit" value="Register">
        <button type="button" class="btn btn-primary" onclick="location.href='index.jsp'">Back</button>
    </div>
</div>
</form>
</div>
</div>
</body>

</html>
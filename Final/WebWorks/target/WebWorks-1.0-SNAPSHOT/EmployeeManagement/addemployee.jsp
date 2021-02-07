<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 29-01-2021
  Time: 06:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="../AddOnServices/errorpage.jsp" %>

<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
<div class="container">
    <div class="jumbotron">
        <form method="post" action="EmployeeValidation">
        <div class="form-group">
            <label for="ename">Employee Name : </label>
            <input type="text" class="form-control" id="ename" name="ename" required>
        </div>
        <div class="form-group">
            <label for="address">Address :</label>
            <textarea class="form-control" rows="5" id="address" name="address" required></textarea>
        </div>
        <div class="form-group">
            <label for="dob">Date of Birth : </label>
            <input type="date" class="form-control" id="dob" name="dob" required>
        </div>
        <div class="form-group">
            <label for="number">Phone Number : </label>
            <input type="tele" class="form-control" id="number" name="number" required>
        </div>
        <div class="form-group">
            <label for="salary">Salary : </label>
            <input type="text" class="form-control" id="salary" name="salary" required>
        </div>
        <input type="submit" class="btn btn-primary" value="Enter">

        <button type="button" class="btn btn-primary" onclick="location.href='employeedashboard.jsp'">Back</button>
    </div>
    </form>
</div>

</body>

</html>
<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 29-01-2021
  Time: 06:24 PM
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
        <h1>Employeedashboard...</h1>
        <button type="button" class="btn btn-primary" onclick="location.href='addemployee.jsp'">Add Employee
            Details</button>
        <button type="button" class="btn btn-primary" onclick="location.href='editemployee.jsp'">Edit
            Employee
            Details</button>
        <button type="button" class="btn btn-primary" onclick="location.href='leaveentry.jsp'">Leave entry
            Details</button>
        <button type="button" class="btn btn-primary" onclick="location.href='viewemployee.jsp'">View Employee</button>
        <button type="button" class="btn btn-primary" onclick="location.href='../dashboard.jsp'">Back</button>
    </div>
</div>
</body>

</html>
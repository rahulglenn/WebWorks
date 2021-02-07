<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 24-01-2021
  Time: 01:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Dashboard</title>
</head>

<body>
<div class="container">
    <div class="jumbotron">
        <h1>Welcome...</h1>
        <div class="form-group">
            <label for="lastlogin">Last Login : </label>
            <input type="text" class="form-control" id="lastlogin">
        </div>
        <button type="button" class="btn btn-primary" onclick="location.href='RewindNotes/rewindingdashboard.jsp'">Rewinding
            Details</button>
        <button type="button" class="btn btn-primary" onclick="location.href='StockDetails/stockdashboard.jsp'">Stock Management</button>
        <button type="button" class="btn btn-primary" onclick="location.href='EmployeeManagement/employeedashboard.jsp'">Employee Management</button>
        <button type="button" class="btn btn-primary">Record Management</button>
        <button type="button" class="btn btn-primary" onclick="location.href='index.jsp'">Logout</button>
    </div>
</div>
</body>

</html>

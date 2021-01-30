<%--
  Created by IntelliJ IDEA.
  User: MAHESH
  Date: 28-01-2021
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="../AddOnServices/errorpage.jsp"%>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>

<body>
<div class="container">
    <div class="jumbotron">
        <h1>Recorddashboard...</h1>
        <button type="button" class="btn btn-primary" onclick="location.href='addRecordDetails.jsp'">Add Record</button>
        <button type="button" class="btn btn-primary" onclick="location.href='viewRecordDetails.jsp'">View Record</button>
        <button type="button" class="btn btn-primary" onclick="location.href='updateRecordDetails.jsp'">Update
            Record</button>
        <button type="button" class="btn btn-primary" onclick="location.href='../dashboard.jsp'">Back</button>
    </div>
</div>
</body>

</html>

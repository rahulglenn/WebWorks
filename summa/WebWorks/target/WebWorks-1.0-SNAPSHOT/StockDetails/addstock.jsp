<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 29-01-2021
  Time: 04:57 PM
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
        <form action="AddStockServlet" method="post">
        <div class="form-group">
            <label for="swg">Enter SWG value :</label>
            <input type="text" class="form-control" id="swg" name="swg">
        </div>
        <div class="form-group">
            <label for="amount">Enter weight :</label>
            <input type="text" class="form-control" id="weight" name="weight">
        </div>
        <input type="submit" class="btn btn-primary" value="Add">

        <button type="button" class="btn btn-primary" onclick="location.href='stockdashboard.jsp'">Back</button>
        </form>
    </div>
</div>

</body>

</html>
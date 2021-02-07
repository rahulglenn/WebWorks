<%--
  Created by IntelliJ IDEA.
  User: MAHESH
  Date: 28-01-2021
  Time: 23:26
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
        <form method="post" action="AddRecordDetailsServlet">
        <div class="form-group">
            <label for="rid">Enter Record ID : </label>
            <input type="text" class="form-control" id="rid" name="rid" required>
        </div>
        <div class="form-group">
            <label for="recdetails">Record Details :</label>
            <textarea class="form-control" rows="5" id="recdetails" name="recdetails" required></textarea>
        </div>
            <input type="submit" class="btn btn-primary" value="Add">
            <button type="button" class="btn btn-primary" onclick="location.href='recordDashboard.jsp'">Back</button>
        </form>
    </div>
</div>

</body>

</html>
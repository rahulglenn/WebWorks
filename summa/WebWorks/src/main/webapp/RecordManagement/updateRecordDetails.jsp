<%--
  Created by IntelliJ IDEA.
  User: MAHESH
  Date: 28-01-2021
  Time: 23:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../AddOnServices/DBconnect.jsp"%>

<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
<sql:query var="rs" dataSource="${db}">select recname from recordmanagement where cusid=<%= session.getAttribute("cusid") %></sql:query>
<div class="container">
    <div class="jumbotron">
        <form method="post" action="UpdateRecordDetailsServlet">
        <div class="form-group">
            <label for="rid">Record ID :</label>
            <select class="form-control" id="rid" name="rid">
                <c:forEach items="${rs.rows}" var="record">
                    <option><c:out value="${record.recname}"></c:out></option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="recdetails">Record Details :</label>
            <textarea class="form-control" rows="5" id="recdetails" name="recdetails" readonly></textarea>
        </div>
        <button type="button" class="btn btn-primary">Edit</button>
        <button type="button" class="btn btn-primary">Update</button>
        <button type="button" class="btn btn-primary">Delete</button>
        <button type="button" class="btn btn-primary" onclick="location.href='recordDashboard.jsp'">Back</button>
        </form>
    </div>
</div>

</body>

</html>
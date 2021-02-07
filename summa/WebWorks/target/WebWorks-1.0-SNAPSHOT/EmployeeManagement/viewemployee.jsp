<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 29-01-2021
  Time: 09:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../AddOnServices/DBconnect.jsp"%>
<html>
<head>

</head>
<body>
<sql:query var="rs" dataSource="${db}">select * from employeedetails where cusid=<%= session.getAttribute("cusid") %></sql:query>
<table>
    <thead>
    <th>
        Emp. Id
    </th>
    <th>
        Emp. Name
    </th>
    <th>
        Address
    </th>
    <th>
        D.O.B
    </th>
    <th>
        Phone No
    </th>
    <th>
        Salary
    </th>
    <th>
        Current Salary
    </th>
    </thead>
<c:forEach items="${rs.rows}" var="emp">
    <tr>
        <td>${emp.empid}</td>
        <td>${emp.Name}</td>
        <td>${emp.Address}</td>
        <td>${emp.DOB}</td>
        <td>${emp.Phone}</td>
        <td>${emp.Salary}</td>
        <td>${emp.CurSalary}</td>
    </tr>
</c:forEach>
</table>
<button type="button" class="btn btn-primary" onclick="location.href='employeedashboard.jsp'">Back</button>
</body>
</html>

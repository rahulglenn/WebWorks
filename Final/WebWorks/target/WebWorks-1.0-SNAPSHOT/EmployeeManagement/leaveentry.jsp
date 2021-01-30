<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 29-01-2021
  Time: 06:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="../AddOnServices/errorpage.jsp"%>
<%@ include file="../AddOnServices/DBconnect.jsp"%>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
<sql:query var="rs" dataSource="${db}">select empid from employeedetails where cusid=<%= session.getAttribute("cusid") %></sql:query>
<div class="container">
    <div class="jumbotron">
        <form method="post" action="LeaveEntryServlet">
        <div class="form-group">
            <label for="hp">Emplooyee ID :</label>
            <<select class="form-control" id="empid" name="empid" onclick="getEmpDetails(this.value)">
            <c:forEach items="${rs.rows}" var="emp">
                <option><c:out value="${emp.empid}"></c:out></option>
            </c:forEach>
        </select>
        </div>
        <div class="form-group">
            <label for="ename">Employee Name : </label>
            <input type="text" class="form-control" id="ename" name="ename" readonly>
        </div>
        <div class="form-group">
            <label for="salary">Salary : </label>
            <input type="text" class="form-control" id="salary" name="salary" readonly>
        </div>
        <div class="form-group">
            <label for="cursalary">Current Salary : </label>
            <input type="text" class="form-control" id="cursalary" name="cursalary" readonly>
        </div>
        <div class="form-group">
            <label for="nodays">No of Days : </label>
            <input type="number" class="form-control" id="nodays" name="nodays" required>
        </div>
        <input type="submit" class="btn btn-primary" value="Enter">
        <button type="button" class="btn btn-primary" onclick="location.href='employeedashboard.jsp'">Back</button>
    </div>
    </form>
</div>
<script type="text/javascript">
    function getEmpDetails(str)
    {
        var ob=new XMLHttpRequest();
        ob.onreadystatechange=function ss()
        {
            if(ob.readyState==4)
            {
                var details=ob.responseText.split("||");
                document.getElementById("ename").value=details[0];
                document.getElementById("salary").value=details[4];
                document.getElementById("cursalary").value=details[5];
            }
        }
        var path="GetDetails?empid="+str;
        ob.open("GET",path,false);
        ob.send();
        return true;
    }
</script>
</body>

</html>
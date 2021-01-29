<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 27-01-2021
  Time: 02:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../AddOnServices/DBconnect.jsp"%>
<html>


<%@include file="../head.jsp"%>

<body>
<%@include file="../dashboardnavigation.jsp"%>
<%@include file="../mainsidebar.jsp"%>
<sql:query var="rs" dataSource="${db}">select hp from rewinddetails where cusid=<%= session.getAttribute("cusid") %></sql:query>
<div class="container">
    <div class="jumbotron">
        <form method="post" action="UpdateRdetailsServlet">
        <div class="form-group">
            <label for="hp">HP :</label>
            <select class="form-control" id="hp" name="hp">
                <c:forEach items="${rs.rows}" var="rewind">
                    <option><c:out value="${rewind.hp}"></c:out></option>
                </c:forEach>
            </select>
        </div>
            <input type="submit" class="btn btn-primary" value="Fetch" name="button">

            <div class="form-group">
            <label for="swg">SWG value :</label>
            <input type="text" class="form-control" id="swg" name="swg" readonly>
        </div>
        <div class="form-group">
            <label for="amount">Amount of wire Needed :</label>
            <input type="text" class="form-control" id="amount" name="amount" readonly>
        </div>
        <div class="form-group">
            <label for="rdetails">Rewinding Details :</label>
            <textarea class="form-control" rows="5" id="rdetails" name="rdetails" readonly></textarea>
        </div>
            <input type="submit" class="btn btn-primary" value="Edit" name="button">
            <input type="submit" class="btn btn-primary" value="Update" name="button">
        <input type="submit" class="btn btn-primary" value="Delete" name="button">
        <button type="button" class="btn btn-primary"
                onclick="location.href='rewindingdashboard.jsp'">Back</button>
        </form>
    </div>
</div>

</body>

</html>

<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 24-01-2021
  Time: 01:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<%@include file="../head.jsp"%>
<body>

<%@include file="../mainsidebar.jsp"%>
<div class="container">
    <div class="jumbotron">
        <form method="post" action="AddRdetailsServlet">
        <div class="form-group">
            <label for="hp">Enter HP : </label>
            <input type="text" class="form-control" id="hp" name="hp">
        </div>
        <div class="form-group">
            <label for="swg">Enter SWG value :</label>
            <input type="text" class="form-control" id="swg" name="swg">
        </div>
        <div class="form-group">
            <label for="amount">Amount of wire Needed :</label>
            <input type="text" class="form-control" id="amount" name="amount">
        </div>
        <div class="form-group">
            <label for="rdetails">Rewinding Details :</label>
            <textarea class="form-control" rows="5" id="rdetails" name="rdetails"></textarea>
        </div>
        <input type="submit" class="btn btn-primary" value="Add">
        <button type="button" class="btn btn-primary"
                onclick="location.href='rewindingdashboard.jsp'">Back</button>
        </form>
    </div>
</div>

</body>

</html>

<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 27-01-2021
  Time: 02:46 AM
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
<sql:query var="rs" dataSource="${db}">select hp from rewinddetails where cusid=<%= session.getAttribute("cusid") %></sql:query>
<div class="container">
    <div class="jumbotron">
        <div class="form-group">
            <label for="hp">HP :</label>
            <select class="form-control" id="hp" name="hp" onclick="getRewindDetails(this.value)">
                <c:forEach items="${rs.rows}" var="rewind">
                    <option><c:out value="${rewind.hp}"></c:out></option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="swg">SWG value :</label>
            <input type="text" class="form-control" id="swg" value="" readonly>
        </div>
        <div class="form-group">
            <label for="amount">Amount of wire Needed :</label>
            <input type="text" class="form-control" id="amount" readonly>
        </div>
        <div class="form-group">
            <label for="rdetails">Rewinding Details :</label>
            <textarea class="form-control" rows="5" id="rdetails" readonly></textarea>
        </div>
        <h3>Stock Availability : </h3>
        <div class="form-group">
            <label for="weight">Weight :</label>
            <input type="text" class="form-control" id="weight" readonly>
        </div>
        <h3>Alternate Options : </h3>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="swg">SWG : </label>
                <input type="text" class="form-control" id="SWG" readonly>
            </div>
            <div class="form-group col-md-6">
                <label for="weight">Weight</label>
                <input type="text" class="form-control" id="weight" readonly>
            </div>
        </div>
        <button type="button" class="btn btn-primary"
                onclick="location.href='rewindingdashboard.jsp'">Back</button>
    </div>
</div>
<script type="text/javascript">
    function getRewindDetails(str)
    {
        var ob=new XMLHttpRequest();
        ob.onreadystatechange=function ss()
        {
            if(ob.readyState==4)
            {
                var details=ob.responseText.split("||");
                document.getElementById("swg").value=details[0];
                document.getElementById("amount").value=details[1];
                document.getElementById("rdetails").value=details[2];
            }
        }
        var path="GetDetails?hp="+str;
        ob.open("GET",path,false);
        ob.send();
        return true;
    }
</script>
</body>

</html>

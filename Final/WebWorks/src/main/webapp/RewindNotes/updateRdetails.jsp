<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 27-01-2021
  Time: 02:45 AM
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
<c:set var="editable" value="readonly"></c:set>
<sql:query var="rs" dataSource="${db}">select hp from rewinddetails where cusid=<%= session.getAttribute("cusid") %></sql:query>
<div class="container">
    <div class="jumbotron">
        <form method="post" action="UpdateRdetailsServlet">
        <div class="form-group">
            <label for="hp">HP :</label>
            <select class="form-control" id="hp" name="hp" onchange='getRewindDetails(this.value)'>
                <c:forEach items="${rs.rows}" var="rewind">
                    <option><c:out value="${rewind.hp}"></c:out></option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="swg">SWG value :</label>
            <span id="change">
            <input type="text" class="form-control" id="swg" name="swg" required>
            </span>
        </div>
        <div class="form-group">
            <label for="amount">Amount of wire Needed :</label>
            <span id="change2">
            <input type="text" class="form-control" id="amount" name="amount" required>
            </span>
        </div>
        <div class="form-group">
            <label for="rdetails">Rewinding Details :</label>
            <span id="change3">
            <textarea class="form-control" rows="5" id="rdetails" name="rdetails" required></textarea>
            </span>
        </div>
            <input type="submit" class="btn btn-primary" value="Update" name="button">
        <input type="submit" class="btn btn-primary" value="Delete" name="button">
        <button type="button" class="btn btn-primary"
                onclick="location.href='rewindingdashboard.jsp'">Back</button>
        </form>
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
</div>

</body>

</html>

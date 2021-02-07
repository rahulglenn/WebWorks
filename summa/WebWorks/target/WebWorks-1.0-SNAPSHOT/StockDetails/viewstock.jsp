<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 29-01-2021
  Time: 04:55 PM
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
<sql:query var="rs" dataSource="${db}">select swg from stockdetails where cusid=<%= session.getAttribute("cusid") %></sql:query>
<div class="container">
    <div class="jumbotron">
        <form method="post" action="ViewStockServlet">
        <div class="form-group">
            <label for="swg">Select SWG value :</label>
            <select class="form-control" id="swg" name="swg" onclick="getStockDetails(this.value)">
                <c:forEach items="${rs.rows}" var="stock">
                    <option><c:out value="${stock.SWG}"></c:out></option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="cstock">Current stock :</label>
            <input type="text" class="form-control" id="cstock" name="cstock" readonly>
        </div>
        <div class="form-group">
            <label for="amountused">Amount used :</label>
            <textarea class="form-control" rows="5" id="amountused" name="amountused"></textarea>
        </div>
        <input type="submit" class="btn btn-primary" value="Update">
        <button type="button" class="btn btn-primary" onclick="location.href='stockdashboard.jsp'">Back</button>
    </div>
    </form>
</div>
<script type="text/javascript">
    function getStockDetails(str)
    {
        var ob=new XMLHttpRequest();
        ob.onreadystatechange=function ss()
        {
            if(ob.readyState==4)
            {
                var details=ob.responseText.split("||");
                document.getElementById("swg").value=details[0];
                document.getElementById("cstock").value=details[1];
            }
        }
        var path="GetDetails?swg="+str;
        ob.open("GET",path,false);
        ob.send();
        return true;
    }
</script>
</body>

</html>
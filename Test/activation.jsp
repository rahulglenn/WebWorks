<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 24-01-2021
  Time: 01:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Activation key</title>
</head>

<body>
<div class="container">
    <div class="jumbotron">
        <div class="form-group">
            <label for="email">Enter Email ID : </label>
            <input type="email" class="form-control" id="email">
        </div>
        <div class="form-group">
            <label for="cname">Enter Company name :</label>
            <input type="text" class="form-control" id="cname">
        </div>
        <div class="form-group">
            <label for="Platform">Platform Needed:</label>
            <select class="form-control" id="platform" onclick="serviceadder()">
                <option value="r">Rewinding</option>
                <option value="o">Others</option>
            </select>
        </div>
        <div id="service"></div>
        <br>
        <button type="button" class="btn btn-primary">Buy an activation key</button>
        <br><br>
        <button type="button" class="btn btn-primary" onclick="location.href='index.jsp'">Home</button>
    </div>
</div>
</div>
</div>
<script>
    function serviceadder(){
        var service = document.getElementById("service");
        if(document.getElementById("platform").value=='o'){
            service.innerHTML="";
            service.innerHTML ="<div class='form-group'><label for='platname'>Enter Platform name :</label><input type='text' placeholder='platform name here' id='platname' class='form-control'></div><label for='services'>Services Needed : </label> <form> <div class='checkbox'><label><input type='checkbox' value='1' name='record'>Record Management</label></div> <div class='checkbox'> <label><input type='checkbox' value='2' name='employee'> Employee Management</label> </div> <div class='checkbox disabled'> <label><input type='checkbox' value='3'> Stock Management</label> </div> </form>";
        }
        else{
            service.innerHTML="";
        }

    }
</script>
</body>

</html>

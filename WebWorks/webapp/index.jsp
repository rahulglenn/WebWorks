<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Rewinding Works</title>
</head>
<style>
    .content {
        width: 100%;
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        text-align: center;
        color: rgb(8, 0, 0);
    }
    .content h1 {
        font-size: 70px;
        margin-top: 80px;
    }
    .content p {
        margin: 20px auto;
        font-weight: 100;
        line-height: 25px;
    }
    button {
        width: 200px;
        padding: 15px 0;
        text-align: center;
        margin: 20px 10px;
        border-radius: 25px;
        font-weight: bold;
        border: 2px solid #000000;
        background: transparent;
        color: rgb(0, 0, 0);
        cursor: pointer;
        position: relative;
        overflow: hidden;
    }
    span {
        background: #5882b9;
        height: 100%;
        width: 0;
        border-radius: 25px;
        position: absolute;
        left: 0;
        bottom: 0;
        z-index: -1;
        transition: 0.5s;
    }
    button:hover span {
        width: 100%;
    }
    button:hover {
        border: none;
    }

</style>
<body>
<%@include file="navigation.jsp"%>

<%--        <button type="button" class="btn btn-primary" onclick="location.href='login.jsp'">Login</button>--%>
<%--        <button type="button" class="btn btn-primary" onclick="location.href='registration.jsp'">Register</button>--%>
    <div class="content">
        <h1>Welcome to Web Works</h1>
        <button type="button" onclick="location.href='activation.jsp'"><span></span>Buy an Activation
            Key</button>
    </div>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 07-02-2021
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
    }

    body {
        background: #55ffe5;
        font-size: 14px;
        font-family: 'Poppins', sans-serif;
    }

    .container {
        width: 200%;
        
    }

    .contact-box {
        background: white;
        display: flex;
    }

    .contact-left {
        flex-basis: 60%;
        width: 100%;
        padding: 40px 60px;
    }

    .contact-right {
        flex-basis: 40%;
        padding: 40px;
        background: white;
        color: #fff;
    }


    .container p {
    }

    .input-row {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
        width: -100%;
    }

    .input-row .input-group {
        flex-basis: 45%;
    }

    input {
        width: 100%;
        border: none;
        border-bottom: 1px solid #ccc;
        outline: none;
        padding-bottom: 5px;
    }

    textarea {
        width: 100%;
        border: 1px solid #ccc;
        outline: none;
        padding: 10px;
        box-sizing: border-box;
    }

    label {
        margin-bottom: 6px;
        display: block;
        color: #1c00b5;
    }

    button {
        background: #1c00b5;
        width: 100px;
        border: none;
        outline: none;
        color: #fff;
        height: 35px;
        border-radius: 30px;
        margin-top: 20px;
        box-shadow: 0px 5px 15px 0px rgba(28, 0, 181, 0.3);
    }

    .contact-left h3 {
        color: #1c00b5;
        font-weight: 600;
        margin-bottom: 30px;
    }

    .contact-right h3 {
        font-weight: 600;
        margin-bottom: 30px;
    }

    tr td:first-child {
        padding-right: 20px;
    }

    tr td {
        padding-top: 20px;
    }
</style>
<%@include file="maincss.jsp"%>
<body style="background: white;">
<div class="banner">
    <%@include file="navigation.jsp"%>
    <div class="container">
        <h1>Connect with us</h1><br>
        <p>We would love to respond to your queries and help you succeed. <br> Feel free to get in touch with us</p><br>
        <div class="login-content" style="margin-top: 50px">
        <div class="contact-box">
            <div class="contact-left">
                <h3>Sent your request</h3>
                <form action="">
                        <div class="input-div one">
                            <div class="i">
                                <i class="fas fa-user"></i>
                            </div>
                            <div class="div">
                                <h5>Owner name</h5>
                                <input type="text" class="input" id="name" name="name" autocomplete="off" pattern="[A-Za-z]" style="width: 100px;">
                            </div>
                        </div>
                        <div class="input-div one">
                            <div class="i">
                                <i class="fas fa-mobile"></i>
                            </div>
                            <div class="div">
                                <h5>Phone No</h5>
                                <input type="tel" class="input" id="number" name="phone" autocomplete="off" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}">
                            </div>
                        </div>
                    </div>
                        <div class="input-div one">
                            <div class="i">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="div">
                                <h5>Enter your Email ID</h5>
                                <input type="email" class="input" id="email" name="email" autocomplete="off" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
                            </div>
                        </div>
                        <div class="input-div one">
                            <div class="i">
                                <i class="fas fa-users"></i>
                            </div>
                            <div class="div">
                                <h5>Subject</h5>
                                <input type="text" class="input" id="cname" name="cname" autocomplete="off" pattern="[A-Za-z]">
                            </div>
                        </div>
                    </div>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-users"></i>
                        </div>
                        <div class="div">
                            <h5>Message</h5>
                            <input type="text" class="input" id="cname" name="cname" autocomplete="off" pattern="[A-Za-z]">
                        </div>
                    </div>
                    <button type="submit">Send Message</button>
                </form>
            </div>
            <div class="contact-right">
                <h3>Reach us</h3>
                <table>
                    <tr>
                        <td>Email</td>
                        <td>contactus@example.com</td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td>123456789</td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>7g rainbow colony,vadachennai</td>
                    </tr>
                </table>
            </div>
        </div>
        </div>
    </div>
</div>
<script>
    const inputs = document.querySelectorAll(".input");

    function addcl() {
        let parent = this.parentNode.parentNode;
        parent.classList.add("focus");
    }

    function remcl() {
        let parent = this.parentNode.parentNode;
        if (this.value === "") {
            parent.classList.remove("focus");
        }
    }

    inputs.forEach(input => {
        input.addEventListener("focus", addcl);
        input.addEventListener("blur", remcl);
    });
</script>
</body>
</html>

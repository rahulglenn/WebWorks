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
        background: linear-gradient(to left, #ad5389, #3c1053);
        display: flex;
    }

    .contact-left {
        flex-basis: 60%;
        padding: 40px 60px;
    }

    .contact-right {
        flex-basis: 40%;
        padding: 40px;
        background: linear-gradient(to left, #ad5389, #3c1053);
        color: #fff;
    }


    .container p {
        margin-bottom: 40px;
    }

    .input-row {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
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
<body>
<div class="banner">
    <%@include file="navigation.jsp"%>
    <div class="container">
        <h1>Connect with us</h1><br>
        <p>We would love to respond to your queries and help you succeed. <br> Feel free to get in touch with us</p><br>
        <div class="contact-box">
            <div class="contact-left">
                <h3>Sent your request</h3>
                <form action="">
                    <div class="input-row">
                        <div class="input-group">
                            <label>Name</label>
                            <input type="text" name="" id="" placeholder="Name here">
                        </div>
                        <div class="input-group">
                            <label>Phone</label>
                            <input type="text" name="" id="" placeholder="Phone Number here">
                        </div>
                    </div>
                    <div class="input-row">
                        <div class="input-group">
                            <label>Email</label>
                            <input type="email" name="" id="" placeholder="Email@here">
                        </div>
                        <div class="input-group">
                            <label>Subject</label>
                            <input type="text" name="" id="" placeholder="Any subject">
                        </div>
                    </div>
                    <label>Message</label>
                    <textarea name="" id="" rows="5" placeholder="Your message"></textarea>
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
</body>
</html>

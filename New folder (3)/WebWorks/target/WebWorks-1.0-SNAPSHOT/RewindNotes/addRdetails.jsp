<%--
  Created by IntelliJ IDEA.
  User: rahul
  Date: 24-01-2021
  Time: 01:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<style>
    * {
        padding: 0;
        margin: 0;
        font-family: sans-serif;
    }

    body {
        font-family: "Poppins", sans-serif;
        overflow-x: hidden;
    }
    .banner {
    }
    .wave {
        position: fixed;
        bottom: 0;
        left: 0;
        height: 100%;
        z-index: -1;
        border: 1px solid #ddd;
        border-radius: 4px;
        padding: 5px;
        width: 150px;
    }

    .container {
        position: absolute;
        margin-top: 50px;
        width: 100vw;
        height: 75vh;
        margin-left: 400px;
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        grid-gap: 7rem;
        padding: 0 2rem;
    }


    .login-content {
        display: block;
        justify-content: flex-start;
        align-items: center;
        text-align: center;
    }



    form {
        width: 360px;
        display: block;
    }

    .login-content img {
        height: 100px;
    }

    .login-content h2 {
        margin: 15px 0;
        color: black;
        text-transform: uppercase;
        font-size: 2.9rem;
    }

    .login-content .input-div {
        position: relative;
        display: grid;
        grid-template-columns: 7% 93%;
        margin: 25px 0;
        padding: 5px 0;
        border-bottom: 2px solid #d9d9d9;
    }

    .login-content .input-div.one {
        margin-top: 0;
    }

    .i {
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .i i {
        transition: 0.3s;
    }

    .input-div > div {
        position: relative;
        height: 45px;
    }

    .input-div > div > h5 {
        position: absolute;
        left: 10px;
        top: 50%;
        transform: translateY(-50%);
        color: black;
        font-size: 18px;
        transition: 0.3s;
    }

    .input-div:before,
    .input-div:after {
        content: "";
        position: absolute;
        bottom: -2px;
        width: 0%;
        height: 2px;
        background-color: white;
        transition: 0.4s;
    }

    .input-div:before {
        right: 50%;
    }

    .input-div:after {
        left: 50%;
    }

    .input-div.focus:before,
    .input-div.focus:after {
        width: 50%;
    }

    .input-div.focus > div > h5 {
        top: -5px;
        font-size: 15px;
    }

    .input-div.focus > .i > i {
        color: #333333;
    }

    .input-div > div > input {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        border: none;
        outline: none;
        background: none;
        padding: 0.5rem 0.7rem;
        font-size: 1.2rem;
        color: white;
        font-family: "poppins", sans-serif;
    }

    .input-div.pass {
        margin-bottom: 4px;
    }

    a {
        display: block;
        text-align: right;
        text-decoration: none;
        color: #999;
        font-size: 0.9rem;
        transition: 0.3s;
    }

    a:hover {
        color: #38d39f;
    }

    .btn {
        display: block;
        margin-left: 80px;
        width: 50%;
        height: 50px;
        border-radius: 25px;
        outline: none;
        border: none;
        background-image: linear-gradient(to right, #ad5389, #3c1053, #32be8f);
        background-size: 200%;
        font-size: 1.2rem;
        color: #fff;
        font-family: "Poppins", sans-serif;
        text-transform: uppercase;
        cursor: pointer;
        transition: 0.5s;
    }
    .btn:hover {
        background-position: right;
    }

    @media screen and (max-width: 1050px) {
        .container {
            grid-gap: 5rem;
        }
    }

    @media screen and (max-width: 1000px) {
        form {
            width: 290px;
        }

        .login-content h2 {
            font-size: 2.4rem;
            margin: 8px 0;
        }

        .img img {
            width: 400px;
        }
    }

    @media screen and (max-width: 900px) {
        .container {
            grid-template-columns: 1fr;
        }

        .img {
            display: none;
        }

        .wave {
            display: none;
        }

        .login-content {
            justify-content: center;
        }
    }
</style>
<%@include file="rewindingdashboard.jsp"%>

<body style="background: linear-gradient(to left, #ad5389, #3c1053);">
<div class="banner">
    <div class="container">
        <div class="jumbotron">
            <h2>Add Your Rewinding Details Here...</h2><br><br>
            <div class="login-content">
                <form method="post" action="AddRdetailsServlet">
                    <div class="input-div one">
                        <div class="i">
                            <i class="fab fa-superpowers"></i>
                        </div>
                        <div class="div">
                            <h5>Enter HP of the Motor</h5>
                            <input type="text" class="input" id="hp" name="hp">
                        </div>
                    </div>
                    <div class="input-div one">
                        <div class="i">
                            <i class=""></i>
                        </div>
                        <div class="div">
                            <h5>Enter SWG value</h5>
                            <input type="text" class="input" id="swg" name="swg">
                        </div>
                    </div>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fa fa-balance-scale"></i>
                        </div>
                        <div class="div">
                            <h5>Enter Amount needed</h5>
                            <input type="text" class="input" id="amount" name="amount">
                        </div>
                    </div>
                    <div class="input-div one">
                        <div class="i">
                            <i class=""></i>
                        </div>
                        <div class="div">
                            <h5>Rewinding Details</h5>
                            <input class="input" id="rdetails" name="rdetails" style="border: white;">
                        </div>
                    </div>
                    <input type="submit" class="btn btn-primary" value="Add">
                </form>
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

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
</head>
<%@include file="maincss.jsp"%>
<body style="background: linear-gradient(to left, #ad5389, #3c1053);">
<div class="banner">
    <%@include file="navigation.jsp"%>
    <div class="container">
        <div class="img">
            <img src="RegistrationAvatar.JPG" alt="" style="border: none;
            margin-left: 250px;
            margin-top: 30px;
            border-radius: 0%;
            padding: 5px;
            height: 600px;
            width: 600px;">
        </div>
        <div class="login-content">
            <form method="get" action="RegisterServlet">
                <img src="Capture.JPG" alt="">
                <h2 class="title" style="font-family: 'Comic Sans MS'">Register</h2><br>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-key"></i>
                    </div>
                    <div class="div">
                        <h5 style="top: -5px; font-size: 15px;">Please Enter your Activation key</h5><input type="submit" value="verify" class="btn btn-success" style="display: block;
                        width: 30%;
                        height: 40px;
                        border-radius: 25px;
                        outline: none;
                        border: none;
                        background-image: linear-gradient(to right, #ad5389, #3c1053, #32be8f);
                        background-size: 200%;
                        font-size: 1.2rem;
                        color: #fff;
                        text-transform: uppercase;
                        margin-left: 350px;
                        margin-top:12px;
                        cursor: pointer;
                        transition: 0.5s;
                        font-family: "Poppins", sans-serif;">
                        <input type="text" class="input" id="key" name="key" value="${Key}" autocomplete="off" ><br>
                    </div>
                </div>
                <h6 style="margin-right: 70px;">Don't have an activation key?<a href="activation.jsp" style="margin-top: -15px; margin-right: 10px;">Buy now</a></h6><br>
            </form>
            <form method="post" action="RegisterServlet">
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-users"></i>
                    </div>
                    <div class="div">
                        <h5 style="top: -5px; font-size: 15px;">Company Name</h5>
                        <input type="text" class="input" id="cname" name="cname" value="${Org}" readonly>
                    </div>
                </div>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <div class="div">
                        <h5 style="top: -5px; font-size: 15px;">Email</h5>
                        <input type="email" class="input" id="email" name="email" value="${Email}" readonly>
                    </div>
                </div>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <h5>Owner name</h5>
                        <input type="text" class="input" id="name" name="name" autocomplete="off">
                    </div>
                </div>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-mobile"></i>
                    </div>
                    <div class="div">
                        <h5>Phone No</h5>
                        <input type="tel" class="input" id="number" name="phone" autocomplete="off">
                    </div>
                </div>
                <div class=" input-div one">
                    <div class="i">
                        <i class="fa fa-birthday-cake"></i>
                    </div>
                    <div class="div">
                        <h5 style="top: -5px; font-size: 15px;">Date Of Birth</h5>
                        <input type="date" class="input" id="dob" name="dob" autocomplete="off">
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <h5>Password</h5>
                        <input type="password" class="input" id="password" name="pass" autocomplete="off">
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <h5>Re-type Password</h5>
                        <input type="password" class="input" id="repassword" name="repass" autocomplete="off">
                    </div>
                </div><br>
                <input type="submit" class="btn btn-primary" value="Register"><br><br>
            </form>
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

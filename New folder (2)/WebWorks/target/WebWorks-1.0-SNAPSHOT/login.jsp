<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title></title>
</head>

<%@include file="maincss.jsp"%>
<body style="background: linear-gradient(to left, #ad5389, #3c1053);">
<div class="banner" id="grad">
    <%@include file="navigation.jsp"%>
    <div class="container">
        <div class="img">
            <img src="LoginImg.JPG" alt="" style="border: none;
    margin-left: 30px;
    border-radius: 0%;
    padding: 5px;
    height: 600px;
    width: 600px;">
        </div>
        <div class="login-content" style="margin-top: 100px;">
            <form action="LoginServlet" method="post">
                <img src="LoginAvatar.JPG" alt="">
                <h2 class="title" style="font-family: 'Comic Sans MS'">Login In</h2>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <div class="div">
                        <h5>Email</h5>
                        <input type="text" class="input" id="uname" name="uname" autocomplete="off" onfocus="if(this.value===this.defaultValue)this.value=''" onblur="if(this.value==='')this.value=this.defaultValue" >
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <h5>Password</h5>
                        <input type="password" class="input" id="pass" name="pass" autocomplete="off">
                    </div>
                </div>
                <br>
                <input type="submit" value="Sign In" class="btn"><br>
                <h6 style="margin-right: 70px">Don't have an account? <a href="registration.jsp" style="margin-top: -15px; margin-right: 30px;">Sign Up</a></h6>
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
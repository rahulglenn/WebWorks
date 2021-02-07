<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>

<head>
    <title>Error page</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">

</head>
<style>
    @import url("https://fonts.googleapis.com/css?family=Cabin+Sketch");

    html {
        height: 100%;
    }

    body {
        min-height: 100%;
    }

    body {
        display: flex;
    }

    h1 {
        font-family: "Cabin Sketch", cursive;
        font-size: 3em;
        text-align: center;
        opacity: 0.8;
        order: 1;
    }

    h1 small {
        display: block;
    }

    .site {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -webkit-align-items: center;
        -ms-flex-align: center;
        align-items: center;
        flex-direction: column;
        margin: 0 auto;
        -webkit-box-pack: center;
        -webkit-justify-content: center;
        -ms-flex-pack: center;
        justify-content: center;
    }

    .sketch {
        position: relative;
        height: 400px;
        min-width: 400px;
        margin: 0;
        overflow: visible;
        order: 2;
    }

    .bee-sketch {
        height: 100%;
        width: 100%;
        position: absolute;
        top: 0;
        left: 0;
    }

    .red {
        background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-1.png)
        no-repeat center center;
        opacity: 1;
        animation: red 3s linear infinite, opacityRed 5s linear alternate infinite;
    }

    .blue {
        background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-1.png)
        no-repeat center center;
        opacity: 0;
        animation: blue 3s linear infinite, opacityBlue 5s linear alternate infinite;
    }

    @media only screen and (min-width: 780px) {
        .site {
            flex-direction: row;
            padding: 1em 3em 1em 0em;
        }

        h1 {
            text-align: right;
            order: 2;
            padding-bottom: 2em;
            padding-left: 2em;
        }

        .sketch {
            order: 1;
        }
    }

    @keyframes blue {
        0% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-1.png);
        }
        9.09% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-2.png);
        }
        27.27% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-3.png);
        }
        36.36% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-4.png);
        }
        45.45% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-5.png);
        }
        54.54% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-6.png);
        }
        63.63% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-7.png);
        }
        72.72% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-8.png);
        }
        81.81% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-9.png);
        }
        100% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/blue-1.png);
        }
    }

    @keyframes red {
        0% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-1.png);
        }
        9.09% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-2.png);
        }
        27.27% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-3.png);
        }
        36.36% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-4.png);
        }
        45.45% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-5.png);
        }
        54.54% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-6.png);
        }
        63.63% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-7.png);
        }
        72.72% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-8.png);
        }
        81.81% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-9.png);
        }
        100% {
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/198554/red-1.png);
        }
    }

    @keyframes opacityBlue {
        from {
            opacity: 0;
        }
        25% {
            opacity: 0;
        }
        75% {
            opacity: 1;
        }
        to {
            opacity: 1;
        }
    }

    @keyframes opacityRed {
        from {
            opacity: 1;
        }
        25% {
            opacity: 1;
        }
        75% {
            opacity: 0.3;
        }
        to {
            opacity: 0.3;
        }
    }
    .btn {
        display: block;
        width: 25%;
        height: 50px;
        border-radius: 25px;
        outline: none;
        border: none;
        background-image: linear-gradient(to right, #32be8f, #38d39f, #32be8f);
        background-size: 200%;
        font-size: 1.2rem;
        color: #fff;
        font-family: "Poppins", sans-serif;
        text-transform: uppercase;
        margin: 1rem 0;
        cursor: pointer;
        transition: 0.5s;
    }
    .btn:hover {
        background-position: right;
    }

</style>
<body>
<div class="site">
    <div class="sketch">
        <div class="bee-sketch red"></div>
        <div class="bee-sketch blue"></div>
    </div>

    <h1>Error!
        <small>Oops....Sorry! Something went wrong! </small>
        <a href="index.jsp"><input type="submit" class="btn" value="HOME"></a>
    </h1>
</div>
</body>

</html>


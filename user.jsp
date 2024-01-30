<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
</head>
<body>
    <img src="https://media.tenor.com/FAIxgHJ6oX4AAAAj/white-chicken.gif" class="a">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h3 class="animate-charcter">"LUCK UNLEASHED WITH YOUR CLICK"</h3>
            </div>
        </div>
    </div>
</body>

<style>
    .a {
        margin-top: 100px;
        margin-left: 570px;
        width: 350px;
    }

    body {
        background-color: #99cae7; /* Light gray background color */
    }

    @keyframes fadeIn {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    .fade-in-text {
        animation: fadeIn 2s forwards; /* Change 2s to the desired duration */
    }

    .animate-charcter {
        text-transform: uppercase;
        background-image: linear-gradient(
            -225deg,
            #231557 0%,
            #44107a 29%,
            #ff1361 67%,
            #fff800 100%
        );
        background-size: auto auto;
        background-clip: border-box;
        background-size: 200% auto;
        color: #fff;
        background-clip: text;
        text-fill-color: transparent;
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        animation: textclip 2s linear infinite;
        display: inline-block;
        font-size: 50px;
        margin-left: 250px;
    }

    @keyframes textclip {
        to {
            background-position: 200% center;
        }
    }
</style>
</html>

<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#f4f6f9;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.login-box{
    width:380px;
    background:white;
    padding:35px;
    border-radius:10px;
    box-shadow:0 0 15px rgba(0,0,0,.15);
}

h1{
    text-align:center;
    margin-bottom:25px;
    color:#333;
}

input{
    width:100%;
    padding:10px;
    margin-top:8px;
    margin-bottom:18px;
    border:1px solid #ccc;
    border-radius:6px;
    font-size:15px;
}

input[type=submit]{
    background:#007bff;
    color:white;
    border:none;
    cursor:pointer;
    transition:.3s;
}

input[type=submit]:hover{
    background:#0056b3;
}

.error{
    color:red;
    text-align:center;
    margin-bottom:15px;
}

</style>

    </head>

    <body>

<div class="login-box">

    <h1>Login Account</h1>

    <p class="error">${error}</p>

    <form action="login" method="post">

        <label>Username</label>

        <input type="text" name="user">

        <label>Password</label>

        <input type="password" name="pass">

        <input type="submit" value="LOGIN">

    </form>

</div>

</body>

</html>
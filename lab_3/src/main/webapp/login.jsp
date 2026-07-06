<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>

    <body>
        <h1>Login Account</h1>

        <p style="color:red">${error}</p>

        <form action="${pageContext.request.contextPath}/login" method="post">

        Username

        <input type="text" name="user">

        <br><br>

        Password

        <input type="password" name="pass">

        <br><br>

        <input type="submit" value="LOGIN">

        </form>

    </body>

</html>
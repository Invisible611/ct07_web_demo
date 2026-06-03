<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Validator</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container">
        <form id="registration_form">

            <h1>Register</h1>

            <!--username-->
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" type="text"  placeholder="Enter Username">
                <!--""-->
                <small></small>
            </div>

            <!--email-->
            <div class="form-group">
                <label for="email">Email</label>
                <input id="email" type="email"  placeholder="Enter Email">
                <!--""-->
                <small></small>
            </div>
            
            <!--password-->
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" type="password"  placeholder="Enter Password">
                <!--""-->
                <small></small>
            </div>

            <!--confirmpassword-->
            <div class="form-group">
                <label for="confirmPassword">Confirm Password</label>
                <input id="confirmPassword" type="password"  placeholder="Confirm your password">
                <!---->
                <small></small>
            </div>

            <!--Register-->

                <button type="submit">Register</button>

        </form>
        

    </div>

    <script src="register.js"></script>
            
    

</body>


</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>

/*
    div
    {
        background-color: rgb(198, 211, 162);
    }
        */

    .container
    {
        padding: 5px;
        font-family: Verdana, Geneva, Tahoma, sans-serif;


    }

    .kieu1
    {
        width: 300px;
        height: 20px;
        border: rgb(120, 18, 129) 1px solid;
        border-radius: 5%;

    }


</style>

<script>
    function kiemtra()
    {
        alert('Success');

    }

</script>

<body>

    <form id="register_form" onsubmit="kiemtra();">

    <div id="container1" style="width: 100%; display: flex; justify-content: center;">

        <div id="noidung" style="width: 1000px; height: 500px; background-color: beige; ">

            <h1>Register Form</h1>

            <div class="container">
            <input id="username" type="text" class="kieu1"></input>

            </div>

            <div class="container">

            <input id="email" type="text" class="kieu1"></input>
            </div>

            <div class="container">

            <input id="password" type="password" class="kieu1"></input>
            </div>


            <div class="container">

            <input id="confirmpassword" type="password" class="kieu1" ></input>
            </div>

             <div class="container">

            <button id="bntregister" type="submit" value="Register">Register</button>

            </div>
        </div>
        

    </div>

    </form>
            


</body>


</html>

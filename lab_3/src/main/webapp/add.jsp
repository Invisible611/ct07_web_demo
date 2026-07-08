<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Thêm sản phẩm</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#eef2f7;
    display:flex;
    justify-content:center;
    align-items:center;
    min-height:100vh;
}

.container{
    width:500px;
    background:white;
    padding:35px;
    border-radius:10px;
    box-shadow:0 5px 20px rgba(0,0,0,.15);
}

h2{
    text-align:center;
    margin-bottom:25px;
    color:#2c3e50;
}

.form-group{
    margin-bottom:18px;
}

label{
    display:block;
    margin-bottom:8px;
    font-weight:bold;
}

input{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:6px;
}

.button-group{
    display:flex;
    justify-content:space-between;
    margin-top:20px;
}

.btn{
    padding:10px 20px;
    border:none;
    border-radius:6px;
    text-decoration:none;
    color:white;
    cursor:pointer;
}

.save{
    background:#0d6efd;
}

.back{
    background:#6c757d;
}

</style>

</head>

<body>

<div class="container">

<h2>THÊM SẢN PHẨM</h2>

<form action="add" method="post">

<div class="form-group">
<label>Tên sản phẩm</label>
<input type="text" name="name">
</div>

<div class="form-group">
<label>Supplier ID</label>
<input type="number" name="supplier">
</div>

<div class="form-group">
<label>Category ID</label>
<input type="number" name="category">
</div>

<div class="form-group">
<label>Quantity Per Unit</label>
<input type="text" name="quantity">
</div>

<div class="form-group">
<label>Unit Price</label>
<input type="number" step="0.01" name="price">
</div>

<div class="form-group">
<label>Units In Stock</label>
<input type="number" name="stock">
</div>

<div class="button-group">

<input class="btn save" type="submit" value="THÊM">

<a href="product" class="btn back">
Quay lại
</a>

</div>

</form>

</div>

</body>
</html>
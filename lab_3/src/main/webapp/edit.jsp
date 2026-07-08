<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="model.Product"%>

<%
Product p = (Product)request.getAttribute("product");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>Sửa sản phẩm</title>

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
    margin-bottom:30px;
    color:#2c3e50;
}

.form-group{
    margin-bottom:18px;
}

label{
    display:block;
    margin-bottom:8px;
    font-weight:bold;
    color:#444;
}

input{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:6px;
    font-size:15px;
}

input:focus{
    border-color:#0d6efd;
    outline:none;
}

.button-group{
    display:flex;
    justify-content:space-between;
    margin-top:25px;
}

.btn{
    padding:12px 22px;
    border:none;
    border-radius:6px;
    text-decoration:none;
    color:white;
    font-weight:bold;
    cursor:pointer;
}

.save{
    background:#0d6efd;
}

.back{
    background:#6c757d;
}

.btn:hover{
    opacity:.85;
}
.error{
    background:#fdecea;
    color:#c62828;
    border:1px solid #f5c2c7;
    padding:12px;
    border-radius:6px;
    margin-bottom:20px;
    text-align:center;
    font-weight:bold;
}
</style>

</head>

<body>

<div class="container">

<h2>SỬA SẢN PHẨM</h2>
<%
    String error = (String) request.getAttribute("error");
    if (error != null) {
%>

<div class="error">
    <%= error %>
</div>

<%
    }
%>

<form action="edit" method="post">

<input type="hidden"
       name="id"
       value="<%=p.getProductID()%>">

<div class="form-group">
<label>Tên sản phẩm</label>
<input type="text"
       name="name"
       value="<%=p.getProductName()%>">
</div>

<div class="form-group">
<label>Supplier ID</label>
<input type="number"
       name="supplier"
       value="<%=p.getSupplierID()%>">
</div>

<div class="form-group">
<label>Category ID</label>
<input type="number"
       name="category"
       value="<%=p.getCategoryID()%>">
</div>

<div class="form-group">
<label>Quantity Per Unit</label>
<input type="text"
       name="quantity"
       value="<%=p.getQuantityPerUnit()%>">
</div>

<div class="form-group">
<label>Unit Price</label>
<input type="number"
       step="0.01"
       name="price"
       value="<%=p.getUnitPrice()%>">
</div>

<div class="form-group">
<label>Units In Stock</label>
<input type="number"
       name="stock"
       value="<%=p.getUnitsInStock()%>">
</div>

<div class="button-group">

<input class="btn save"
       type="submit"
       value="CẬP NHẬT">

<a href="product" class="btn back">
Quay lại
</a>

</div>

</form>

</div>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>

<html>

<head>

    <title>Thêm sản phẩm</title>

</head>

<body>

<h2>THÊM SẢN PHẨM</h2>

<form action="add" method="post">

    Tên sản phẩm

    <input type="text"
           name="name"
           required>

    <br><br>

    Supplier ID

    <input type="number"
           name="supplier"
           required>

    <br><br>

    Category ID

    <input type="number"
           name="category"
           required>

    <br><br>

    Quantity Per Unit

    <input type="text"
           name="quantity"
           required>

    <br><br>

    Unit Price

    <input type="number"
           step="0.01"
           name="price"
           required>

    <br><br>

    Units In Stock

    <input type="number"
           name="stock"
           required>

    <br><br>

    <input type="submit"
           value="THÊM">

</form>

<br>

<a href="product">Quay lại danh sách</a>

</body>

</html>
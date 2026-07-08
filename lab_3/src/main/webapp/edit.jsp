<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="model.Product"%>

<%
Product p = (Product)request.getAttribute("product");
%>

<html>
<head>
    <title>Sửa sản phẩm</title>
</head>
<body>

<h2>SỬA SẢN PHẨM</h2>

<form action="edit" method="post">

    <input type="hidden"
           name="id"
           value="<%= p.getProductID() %>">

    Tên sản phẩm

    <input type="text"
           name="name"
           value="<%= p.getProductName() %>">

    <br><br>

    Supplier ID

    <input type="number"
           name="supplier"
           value="<%= p.getSupplierID() %>">

    <br><br>

    Category ID

    <input type="number"
           name="category"
           value="<%= p.getCategoryID() %>">

    <br><br>

    Quantity Per Unit

    <input type="text"
           name="quantity"
           value="<%= p.getQuantityPerUnit() %>">

    <br><br>

    Unit Price

    <input type="number"
           step="0.01"
           name="price"
           value="<%= p.getUnitPrice() %>">

    <br><br>

    Units In Stock

    <input type="number"
           name="stock"
           value="<%= p.getUnitsInStock() %>">

    <br><br>

    <input type="submit"
           value="CẬP NHẬT">

</form>

<a href="product">Quay lại danh sách</a>

</body>
</html>
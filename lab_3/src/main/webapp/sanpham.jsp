<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm</title>

    <style>
        table{
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        th, td{
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }

        th{
            background-color: #f2f2f2;
        }

        h2{
            text-align: center;
        }
    </style>
</head>
<body>
<%
    // Kiểm tra đã đăng nhập chưa
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    // Lấy danh sách sản phẩm
    List<Product> list = (List<Product>) request.getAttribute("list");

    if (list == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<div style="width:80%;margin:20px auto;text-align:right;">

    Xin chào:
    <b><%= session.getAttribute("user") %></b>
    <a href="add.jsp">➕ Thêm sản phẩm</a>

    |

    <a href="logout">Đăng xuất</a>

</div>

<h2>DANH SÁCH SẢN PHẨM</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Tên sản phẩm</th>
        <th>Supplier ID</th>
        <th>Category ID</th>
        <th>Quantity Per Unit</th>
        <th>Unit Price</th>
        <th>Units In Stock</th>
        <th>Action</th>
    </tr>

<%
    for (Product p : list) {
%>

    <tr>
        <td><%= p.getProductID() %></td>
        <td><%= p.getProductName() %></td>
        <td><%= p.getSupplierID() %></td>
        <td><%= p.getCategoryID() %></td>
        <td><%= p.getQuantityPerUnit() %></td>
        <td><%= p.getUnitPrice() %></td>
        <td><%= p.getUnitsInStock() %></td>
    </tr>

<%
    }
%>

</table>

</body>

</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>

<%
    if(session.getAttribute("user")==null){
        response.sendRedirect("login.jsp");
        return;
    }

    List<Product> list = (List<Product>)request.getAttribute("list");

    if(list==null){
        response.sendRedirect("product");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách sản phẩm</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}

body{
    background:#eef2f7;
    padding:30px;
}

.container{
    width:95%;
    margin:auto;
}

.header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:25px;
}

.header h2{
    color:#2c3e50;
}

.user{
    font-size:18px;
}

.btn{
    padding:10px 18px;
    border-radius:6px;
    text-decoration:none;
    color:white;
    font-weight:bold;
    margin-left:10px;
}

.add{
    background:#28a745;
}

.logout{
    background:#dc3545;
}

.edit{
    background:#0d6efd;
    color:white;
    text-decoration:none;
    padding:6px 12px;
    border-radius:5px;
}

.delete{
    background:#dc3545;
    color:white;
    text-decoration:none;
    padding:6px 12px;
    border-radius:5px;
}

.btn:hover,
.edit:hover,
.delete:hover{
    opacity:.8;
}

table{
    width:100%;
    border-collapse:collapse;
    background:white;
    box-shadow:0 5px 15px rgba(0,0,0,.15);
}

th{
    background:#0d6efd;
    color:white;
}

th,td{
    padding:12px;
    border:1px solid #ddd;
    text-align:center;
}

tr:nth-child(even){
    background:#f8f9fa;
}

tr:hover{
    background:#e9f5ff;
}

.action{
    display:flex;
    justify-content:center;
    gap:10px;
}

</style>

</head>

<body>

<div class="container">

    <div class="header">

        <h2>DANH SÁCH SẢN PHẨM</h2>

        <div class="user">
            Xin chào <b><%=session.getAttribute("user")%></b>

            <a href="add" class="btn add">
                + Thêm sản phẩm
            </a>

            <a href="logout" class="btn logout">
                Đăng xuất
            </a>

        </div>

    </div>

    <table>

        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Supplier</th>
            <th>Category</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Stock</th>
            <th>Action</th>
        </tr>

<%
for(Product p:list){
%>

        <tr>

            <td><%=p.getProductID()%></td>
            <td><%=p.getProductName()%></td>
            <td><%=p.getSupplierID()%></td>
            <td><%=p.getCategoryID()%></td>
            <td><%=p.getQuantityPerUnit()%></td>
            <td>$ <%=p.getUnitPrice()%></td>
            <td><%=p.getUnitsInStock()%></td>

            <td class="action">

                <a class="edit"
                   href="edit?id=<%=p.getProductID()%>">
                    Sửa
                </a>

                <a class="delete"
                   href="delete?id=<%=p.getProductID()%>"
                   onclick="return confirm('Bạn có chắc muốn xóa?')">
                    Xóa
                </a>

            </td>

        </tr>

<%
}
%>

    </table>

</div>

</body>
</html>
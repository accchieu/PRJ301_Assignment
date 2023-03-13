<%-- 
    Document   : header
    Created on : Feb 28, 2023, 12:04:59 PM
    Author     : vuhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/header.css">
<header>
    <div class="top_header">
        <div class="logo">
            <a href="home">
                <img class="content-img"
                     src="https://i.pinimg.com/564x/2b/01/dc/2b01dc596383c3a3208559aa7c372fae.jpg" alt="Chỉnh"
                     width="200" height="100">
            </a>
        </div>



        <div class="item">
            <a href="updateProduct?ProductId=${list.productId}"><p style="color: white;font-size:18px;">Home</p></a>
        </div>
        <div class="item">
            <a href="updateProduct?ProductId=${list.productId}"><p style="color: white;font-size:18px;">About</p></a>
        </div>
        <div class="item">
            <a href="updateProduct?ProductId=${list.productId}"><p style="color: white;font-size:18px;">adf</p></a>
        </div>
        <div class="logout">
            <button>logout</button>
        </div>

    </div>

</header>


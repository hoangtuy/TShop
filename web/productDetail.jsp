<%-- 
    Document   : productDetail
    Created on : Aug 24, 2022, 5:39:25 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.text.DecimalFormat" %>
<%@ page import="org.T_shop.model.*" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProductCard Page</title>
        <link rel="stylesheet" href="./public/CSS/base.css">
        <link rel="stylesheet" href="./public/CSS/pcard.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    </head>
    <body>
        <form action="OrderServlet" method="post">
            <input type="hidden" name="action" value="creat"/>
            <input type="hidden" name="productId" value="${product.id}"/>
            <input type="hidden" name="productName" value="${product.name}"/>
            <input type="hidden" name="price" value="${product.price}"/>
            <input type="hidden" name="img" value="${product.img}"/>
            <div class="card">

                <div class="thumb">
                    <img src="${product.img}" alt="">
                </div>
                <div class="desc">
                    <h3>THÔNG TIN SẢN PHẨM</h3>
                    <div class="name">${product.name}</div>
                    <p>${product.desc}</p>

                    <div class="quantity">
                        <p style="font-weight:bold;">Số lượng:</p>
                        <input name='quantity' type="number" min="0" value="1">
                    </div>
                    <div class="other-info">
                        <span class="price">Giá: 
                            <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${product.price}" type="currency"/>
                        </span>
                        <button class="btn btn--primary" type="submit">Thêm vào giỏ hàng</button>
                    </div>
                </div>
            </div>
        </form>

    </body>
</html>

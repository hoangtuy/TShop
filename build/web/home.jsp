<%-- 
    Document   : home
    Created on : Aug 6, 2022, 5:40:52 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>T Shop Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
        <link rel="stylesheet" href="./public/CSS/base.css">
        <link rel="stylesheet" href="./public/CSS/main.css">
        <link rel="stylesheet" href="./public/CSS/menu.css">
    </head>

    <body> 
        <%@include file="./inc/header.jsp" %>
        <div class="app">
            <div class="row">
                <div class="banner-header">
                    <div class="site-title">
                        <a href="CategoryServlet"><img src="./public/img/banner/banner04.jpg" width="100%" alt="Ảnh banner" class="site-logo" ></a> 
                    </div>
                </div>
            </div>

            <!-- -----Modal layout------ -->
            <!-- <div class="modal">
            <div class="modal__overlay"></div> -->
            <!-- Write form this -->
        </div>
        <%@include file="./inc/footer.jsp" %>
    </body>
</html>

<%-- 
    Document   : Category
    Created on : Aug 6, 2022, 7:17:44 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.text.DecimalFormat" %>
<%@ page import="org.T_shop.model.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
        <link rel="stylesheet" href="./public/CSS/base.css">
        <link rel="stylesheet" href="./public/CSS/main.css">
        <link rel="stylesheet" href="./public/CSS/menu.css">
    </head>
    <body>
        <%@include file="./inc/header.jsp" %>
        <div class="app">
            

            <div class="app__container">
                <div class="grid">
                    <div class="row app__content">
                        <div class="grid__column-2">
                            <nav class="category">
                                <h3 class="category__heading">SẢN PHẨM</h3>

                                <ul class="category-list">
                                    <li class="category-item category-item--active">
                                        <a href="CategoryServlet?categoryId=1" class="category-item__link">Xe số</a>
                                    </li>
                                    <li class="category-item">
                                        <a href="CategoryServlet?categoryId=2" class="category-item__link">Xe tay ga</a>
                                    </li>
                                    <li class="category-item">
                                        <a href="CategoryServlet?categoryId=3" class="category-item__link">Xe côn tay</a>
                                    </li>
                                    <li class="category-item">
                                        <a href="CategoryServlet?categoryId=4" class="category-item__link">Xe mô tô</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>

                        <div class="grid__column-10">
                            <div class="home-filter">
                                <span class="home-filter__label">Sắp xếp theo</span>
                                <button class="home-filter__btn btn">Phổ biến</button>
                                <button class="home-filter__btn btn btn--primary">Mới nhất</button>
                                <button class="home-filter__btn btn">Bán chạy</button>

                                <div class="select-input">
                                    <span class="select-input__label">Giá</span>
                                    <i class="select-input__icon fa-solid fa-angle-down"></i>
                                    <!-- List option  -->
                                    <ul class="select-input__list">
                                        <li class="select-input__item">
                                            <a href="" class="select-input__link">Giá: Thấp đến cao</a>  
                                        </li>
                                        <li class="select-input__item">                      
                                            <a href="" class="select-input__link">Giá: Cao đến thấp</a>    
                                        </li>
                                    </ul>
                                </div>

                                <div class="home-filter__page">
                                    <span class="home-filter__page-num">
                                        <span class="home-filter__page-current">1</span>/9
                                    </span>

                                    <div class="home-filter__page-control">
                                        <a href="" class="home-filter__page-btn home-filter__page-btn--disabled">
                                            <i class="home-filter__page-icon fa-solid fa-angle-left"></i>    
                                        </a>
                                        <a href="" class="home-filter__page-btn">
                                            <i class="home-filter__page-icon fa-solid fa-angle-right"></i>    
                                        </a>
                                    </div>
                                </div>
                            </div>


                            <div class="home-product">
                                <div class="row">
                                    <!-- Product item  -->
                                    <c:forEach items="${productList}" var="product">
                                        <div class="grid__column-2-4">                                        
                                            <a class="home-product-item" href="ProductDetailServlet?productId=${product.id}">
                                                <div class="home-product-item__img" style="background-image: url(${product.img});"></div>
                                                <h4 class="home-product-item__name">${product.name}</h4>
                                                <div class="home-product-item__price">                                        
                                                    <span class="home-product-item__price-current">
                                                        <% DecimalFormat formatter = new DecimalFormat("###,###,###");
                                                    Product product = (Product)pageContext.getAttribute("product");%>
                                                    <%= formatter.format(product.getPrice())+" VNĐ" %>
                                                    </span>
                                                </div>
                                                <div class="home-product-item__action">
                                                    <span class="home-product-item__like home-product-item__like--liked">
                                                        <i class="home-product-item__like-icon-empty fa-regular fa-heart"></i>
                                                        <i class="home-product-item__like-icon-fill fa-solid fa-heart"></i>
                                                    </span>
                                                    <div class="home-product-item__rating">
                                                        <i class="home-product-item__star--gold fa-solid fa-star"></i>
                                                        <i class="home-product-item__star--gold fa-solid fa-star"></i>
                                                        <i class="home-product-item__star--gold fa-solid fa-star"></i>
                                                        <i class="fa-solid fa-star"></i>
                                                        <i class="fa-solid fa-star"></i>
                                                    </div>
                                                    <span class="home-product-item__sold">8 đã bán</span>   
                                                </div>
                                                <div class="home-product-item__origin">
                                                    <span class="home-product-item__brand">T&T</span>
                                                    <span class="home-product-item__origin-name">Việt Nam</span>    
                                                </div>
                                            </a>
                                           </div>
                                        </c:forEach>

                                   
                                </div>

                                <ul class="pagination home-product__pagination">
                                    <li class="pagination-item">
                                        <a href="" class="pagination-item__link">
                                            <i class="pagination-item__icon fa-solid fa-angle-left"></i>    
                                        </a>    
                                    </li>
                                    <li class="pagination-item pagination-item--active">
                                        <a href="" class="pagination-item__link">1</a>    
                                    </li>
                                    <li class="pagination-item">
                                        <a href="" class="pagination-item__link">2</a>    
                                    </li>
                                    <li class="pagination-item">
                                        <a href="" class="pagination-item__link">3</a>    
                                    </li>
                                    <li class="pagination-item">
                                        <a href="" class="pagination-item__link">...</a>    
                                    </li>
                                    <li class="pagination-item">
                                        <a href="" class="pagination-item__link">9</a>    
                                    </li>

                                    <li class="pagination-item">
                                        <a href="" class="pagination-item__link">
                                            <i class="pagination-item__icon fa-solid fa-angle-right"></i>    
                                        </a>    
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-------footer------> 
                <footer class="footer">
                    <div class="grid">
                        <div class="row">
                            <div class="grid__column-2-4">
                                <h3 class="footer__heading">CHĂM SÓC KHÁCH HÀNG</h3>
                                <ul class="footer-list">
                                    <li class="footer-item">
                                        <a href="" class="footer-item__link">Trung tâm trợ giúp</a>
                                    </li>
                                    <li class="footer-item">
                                        <a href="" class="footer-item__link">T-shop mall</a>
                                    </li>
                                    <li class="footer-item">
                                        <a href="" class="footer-item__link">Hướng dẫn mua hàng</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="grid__column-2-4">
                                <h3 class="footer__heading">GIỚI THIỆU</h3>
                                <ul class="footer-list">
                                    <li class="footer-item">
                                        <a href="" class="footer-item__link">Giới thiệu</a>
                                    </li>
                                    <li class="footer-item">
                                        <a href="" class="footer-item__link">Tuyển dụng</a>
                                    </li>
                                    <li class="footer-item">
                                        <a href="" class="footer-item__link">Điều khoản</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="grid__column-2-4">
                                <h3 class="footer__heading">DANH MỤC SẢN PHẨM</h3>
                                <ul class="footer-list">
                                    <li class="footer-item">
                                        <a href="" class="footer-item__link">Xe đạp, xe điện</a>
                                    </li>
                                    <li class="footer-item">
                                        <a href="" class="footer-item__link">Mô tô, xe máy</a>
                                    </li>
                                    <li class="footer-item">
                                        <a href="" class="footer-item__link">Mũ bảo hiểm</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="grid__column-2-4">
                                <h3 class="footer__heading">THEO DÕI</h3>
                                <ul class="footer-list">
                                    <li class="footer-item">                                   
                                        <a href="" class="footer-item__link">
                                            <i class="footer-item__icon fa-brands fa-facebook"></i>
                                            Facebook
                                        </a>
                                    </li>
                                    <li class="footer-item">                                   
                                        <a href="" class="footer-item__link">
                                            <i class="footer-item__icon fa-brands fa-instagram-square"></i>
                                            Instagram
                                        </a>
                                    </li>
                                    <li class="footer-item">                                   
                                        <a href="" class="footer-item__link">
                                            <i class="footer-item__icon fa-brands fa-linkedin"></i>
                                            Linkedin
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="grid__column-2-4">
                                <h3 class="footer__heading">TẢI ỨNG DỤNG</h3>
                                <div class="footer__dowload">
                                    <img src="./public/img/QRcode.png" alt="Dowload QR" class="footer__dowload-qr">
                                    <div class="footer__dowload-apps">
                                        <a href="" class="footer__dowload-app-link">
                                            <img src="./public/img/googleplay.png" alt="Google play" class="footer__dowload-app-img">
                                        </a>
                                        <a href="" class="footer__dowload-app-link">
                                            <img src="./public/img/appstore.png" alt="App store" class="footer__dowload-app-img">
                                        </a>   
                                    </div>
                                </div>
                            </div>
                        </div>            
                    </div>

                    <div class="footer__bottom">
                        <div class="grid">
                            <p class="footer__text">Công ty TNHH T&T</p>
                            <p class="footer__text">Địa chỉ: Tầng 1, Tòa nhà T&T, Phường Đông Ba, Thành phố Huế, Việt Nam. Tổng đài hỗ trợ: 19009999 - Email: cskh@hotro.tshop.vn</p>
                            <p class="footer__text">Mã số doanh nghiệp: 0101010101 do Sở Kế hoạch & Đầu tư TP Huế cấp lần đầu ngày 10/02/2020</p>
                            <p class="footer__text">© 2020 - Bản quyền thuộc về Công ty T&T</p>
                        </div>   
                    </div>
                </footer>  
            </div>
    </body>
</html>

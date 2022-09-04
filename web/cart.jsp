<%-- 
    Document   : cart
    Created on : Aug 13, 2022, 5:45:53 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.text.DecimalFormat" %>
<%@ page import="org.T_shop.entity.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    </head>
    <body>
        <section class="h-100" style="background-color: #eee">
            <div class="container h-100 py-5">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-10">
                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <h3 class="fw-normal mb-0 text-black">Giỏ hàng</h3>
                            <div>
                                <p class="mb-0">
                                    <span class="text-muted">Lọc:</span>
                                    <a href="#!" class="text-body">giá <i class="fas fa-angle-down mt-1"></i>
                                    </a>
                                </p>
                            </div>
                        </div>

                        <div class="card rounded-3 mb-4">
                            <div class="card-body p-4">
                                <c:forEach items="${cart}" var="orderDetailSession">
                                    <div class="row d-flex justify-content-between align-items-center">
                                        <div class="col-md-2 col-lg-2 col-xl-2">
                                            <img
                                                src="${orderDetailSession.img}"
                                                class="img-fluid rounded-3"
                                                alt="Ten"
                                                />
                                        </div>
                                        <div class="col-md-3 col-lg-3 col-xl-3">
                                            <p class="lead fw-normal mb-2">${orderDetailSession.productName}</p>
                                            <p>
                                                <span class="text-muted">Màu: </span>Đỏ-Xanh-Đen
                                            </p>
                                        </div>
                                        <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                            <button
                                                class="btn btn-link px-2"
                                                onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                >
                                                <i class="fas fa-minus"></i>
                                            </button>

                                            <input id="form1" min="0" name="quantity" value="${orderDetailSession.quantity}"
                                                   type="number"
                                                   class="form-control form-control-sm"
                                                   />

                                            <button
                                                class="btn btn-link px-2"
                                                onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                >
                                                <i class="fas fa-plus"></i>
                                            </button>
                                        </div>
                                        <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                            <h5 class="mb-0">
                                                <% DecimalFormat formatter = new DecimalFormat("###,###,###");
                                                    OrderDetailSession orderDetailSession = (OrderDetailSession)pageContext.getAttribute("orderDetailSession");%>
                                                <%= formatter.format(orderDetailSession.getPrice())+" VNĐ" %></h5>
                                        </div>
                                        <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                            <form action="OrderServlet" method="post">
                                                <input type="hidden" name="action" value="delete"/>
                                                <input type="hidden" name="productId" value="${orderDetailSession.productId}"/>
                                                <button type="submit"><i class="fas fa-trash fa-lg"></i
                                                    ></button>
                                            </form>

                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>


                        <div class="card mb-4">
                            <div class="card-body p-4 d-flex flex-row">
                                <div class="form-outline flex-fill">
                                    <input
                                        type="text"
                                        id="form1"
                                        class="form-control form-control-lg"
                                        />
                                    <label class="form-label" for="form1">Mã giảm giá</label>
                                </div>
                                <button
                                    type="button"
                                    class="btn btn-outline-warning btn-lg ms-3"
                                    >
                                    Sử dụng
                                </button>
                            </div>
                        </div>

                        <div class="card">
                            <div class="card-body">
                                <a href="CheckoutServlet" class="btn btn-warning btn-block btn-lg">
                                    Thanh toán
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>

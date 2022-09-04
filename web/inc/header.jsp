<%-- 
    Document   : header
    Created on : Aug 3, 2022, 11:00:18 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header class="header">
                <div class="grid">
                    <nav class="header__navbar">
                        <ul class="header__navbar-list">
                            <li class="header__navbar-item header__navbar-item--has-qr header__navbar-item-separate">
                                Vào cửa hàng trên ứng dụng T-Shop
                                <!-- -------- Header QR code ----------- -->
                                <div class="header__qr">
                                    <img src="./public/img/QRcode.png" alt="QR code" class="header__qr-img">
                                    <div class="header__qr-apps">
                                        <a href="https://play.google.com/store/games?utm_source=apac_med&utm_medium=hasem&utm_content=Oct0121&utm_campaign=Evergreen&pcampaignid=MKT-EDR-apac-vn-1003227-med-hasem-py-Evergreen-Oct0121-Text_Search_BKWS-BKWS%7CONSEM_kwid_43700059410158879_creativeid_485748576608_device_c&gclid=Cj0KCQjw8amWBhCYARIsADqZJoVNX2MZVIz7_WWWemBzBWqarB6rBC0K9ZqZH_WICoCSqR7XejJzAnsaAhHVEALw_wcB&gclsrc=aw.ds" class="header__qr-link">
                                            <img src="./public/img/googleplay.png" alt="Google Play" class="header__qr-dowload-img">
                                        </a>
                                        <a href="https://apps.apple.com/vn/app/shopee-7-7-mua-s%E1%BA%AFm-h%C3%A0ng-hi%E1%BB%87u/id959841449" class="header__qr-link">
                                            <img src="./public/img/appstore.png" alt="App Store" class="header__qr-dowload-img">
                                        </a>
                                    </div>
                                </div>
                            </li>
                            <li class="header__navbar-item">
                                <span class="header__navbar-tittle--no-pointer">Kết nối</span>
                                <a href="" class="header__navbar-icon-link">
                                    <i class="header__navbar-icon fab fa-facebook"></i>
                                </a>
                                <a href="" class="header__navbar-icon-link">
                                    <i class="header__navbar-icon fab fa-instagram"></i>
                                </a>
                            </li>
                        </ul>
                        <ul class="header__navbar-list">
                            <li class="header__navbar-item header__navbar-item--has-notify">
                                <a href="" class="header__navbar-item-link">
                                    <i class="header__navbar-icon fa-regular fa-bell"></i>
                                    Thông báo</a>
                                <div class="header__notify">
                                    <header class="header__notify-header">
                                        <h3>Thông Báo Mới Nhận</h3>
                                    </header>
                                    <ul class="header__notify-list">
                                        <li class="header__notify-item header__notify-item--viewed">
                                            <a href="" class="header__notify-link">
                                                <img src="./public/img/xs-blade110.png" alt="" class="header__notify-img">
                                                <div class="header__notify-info">
                                                    <span class="header__notify-name">Blade 110</span>
                                                    <span class="header__notify-description">Phiên bản thể thao (Phanh đĩa, vành đúc)</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="header__notify-item">
                                            <a href="" class="header__notify-link">
                                                <img src="./public/img/xg-ariblade-125-160.png" alt="" class="header__notify-img">
                                                <div class="header__notify-info">
                                                    <span class="header__notify-name">AirBlade 125/160</span>
                                                    <span class="header__notify-description">AirBlade 125 phiên bản Đặc Biệt</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="header__notify-item">
                                            <a href="" class="header__notify-link">
                                                <img src="./public/img/xct-winnerx.png" alt="" class="header__notify-img">
                                                <div class="header__notify-info">
                                                    <span class="header__notify-name">Winner X</span>
                                                    <span class="header__notify-description">Phiên bản Đặc Biệt</span>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    <footer class="header__notify-footer">
                                        <a href="" class="header__notify-footer-btn">Xem tất cả</a>
                                    </footer>
                                </div>
                            </li>
                            <li class="header__navbar-item">
                                <a href="" class="header__navbar-item-link">
                                    <i class="header__navbar-icon far fa-question-circle"></i>
                                    Trợ giúp</a>
                            </li>

                            <c:if test="${sessionScope.user == null}">
                                <li><a href="RegisterServlet" class="header__navbar-item header__navbar-item-strong header__navbar-item-separate">Đăng ký</a></li>
                                <li><a href="LoginServlet" class="header__navbar-item header__navbar-item-strong">Đăng nhập</a></li>
                                </c:if>
                                <c:if test="${sessionScope.user != null}">
                                <li><a href="LogoutServlet" class="header__navbar-item header__navbar-item-strong">Đăng xuất</a></li>
                                </c:if>
                            <!-- <li class="header__navbar-item header__navbar-user">
                                <img src="./public/img/avatar.jpg" alt="" class="header__navbar-user-img">
                                <span class="header__navbar-user-name">Hoàng Tuy</span>

                                <ul class="header__navbar-user-menu">
                                    <li class="header__navbar-user-item">
                                        <a href="">Tài khoản của tôi</a>
                                    </li>
                                    <li class="header__navbar-user-item">
                                        <a href="">Địa chỉ của tôi</a>
                                    </li>
                                    <li class="header__navbar-user-item">
                                        <a href="">Đơn mua</a>
                                    </li>
                                    <li class="header__navbar-user-item header__navbar-user-item--separate">
                                        <a href="">Đăng xuất</a>
                                    </li>
                                </ul>
                            </li> -->
                        </ul>
                    </nav>
                    <!-- ---- Head with search ----- -->
                    <div class="header-with-search">
                        
                        <div class="header__logo">
                            <a href="HomeServlet" class="header__logo-link">
                                <img src="./public/img/Logo.png" alt="" class="header__logo-img">
                            </a>
                        </div>
                        <form action="SearchServlet" method="get" style="width:850px";>
                            <div class="header__search">
                                <input name="productName" type="text" class="header__search-input" placeholder="Nhập để tìm kiếm sản phẩm">

                                <button class="header__search-btn" type="submit">
                                    <i class="header__search-btn-icon fa-solid fa-magnifying-glass"></i>
                                </button>
                            </div>
                        </form>

                        <!-- -----Cart layout------- -->
                        <div class="header__cart">
                            <div class="header__cart-wrap">
                                <a href="CartServlet" class="header__cart-icon fa-solid fa-cart-shopping"></a>
                                <span class="header__cart-notice"></span>
                                <!-- No cart: header__cart-list--no-cart -->
                                <div class="header__cart-list">
                                    <img src="./public/img/no-cart.png" alt="" class="header__cart-no-cart-img">
                                    <span class="header__cart-list-no-cart-msg">
                                        Chưa có sản phẩm
                                    </span>

                                    <h4 class="header__cart-heading">Sản phẩm đã thêm</h4>
                                    <ul class="header__cart-list-item">
                                        <!-- --Cart-item-- -->

                                    </ul>
                                    <a href="CartServlet" class="header__cart-view-cart btn btn--primary">Xem giỏ hàng</a>
                                </div>
                            </div>
                        </div>                                               
                    </div>
                </div>
                <!-- -----menu-----  -->                 
                <nav id="main-nav">
                    <ul>
                        <li>
                            <a href="#">Giới thiệu</a>
                        </li>
                        <li>
                            <a href="#">Xe máy</a>
                            <ul class="submenu">
                                <li>
                                    <a href="CategoryServlet">Sản phẩm</a>
                                    <ul class="submenu-2">
                                        <li>
                                            <a href="#">Xe số</a>
                                        </li>
                                        <li>
                                            <a href="#">Xe tay ga</a>
                                        </li>
                                        <li>
                                            <a href="#">Xe côn tay</a>
                                        </li>
                                        <li>
                                            <a href="#">Xe mô tô</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Phụ tùng</a>
                                </li>
                                <li>
                                    <a href="#">Phụ kiện</a>
                                </li>
                                <li>
                                    <a href="#">Dịch vụ bán hàng</a>
                                </li>
                                <li>
                                    <a href="#">Tin tức</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Ô tô</a>
                            <ul class="submenu">
                                <li>
                                    <a href="">Sản phẩm</a>
                                    <ul class="submenu-2">
                                        <li>
                                            <a href="#">Brio</a>
                                        </li>
                                        <li>
                                            <a href="#">City</a>
                                        </li>
                                        <li>
                                            <a href="#">Civic</a>
                                        </li>
                                        <li>
                                            <a href="#">HR-V</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Phụ tùng</a>
                                </li>
                                <li>
                                    <a href="#">Phụ kiện</a>
                                </li>
                                <li>
                                    <a href="#">Dịch vụ bán hàng</a>
                                </li>
                                <li>
                                    <a href="#">Tin tức</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Đóng góp xã hội</a>
                        </li>
                        <li>
                            <a href="#">Lái xe an toàn</a>
                        </li>
                        <li>
                            <a href="#">Tin tức</a>
                            <ul class="submenu">
                                <li>
                                    <a href="">Tin tức chung</a>
                                <li>
                                    <a href="#">Tin tức xe máy</a>
                                </li>
                                <li>
                                    <a href="#">Tin tức ô tô</a>
                                </li>
                                <li>
                                    <a href="#">Khuyến mại</a>
                                </li>
                                <li>
                                    <a href="#">Tin khác</a>
                                </li>
                            </ul>
                        </li>
                    </ul> 
                </nav>
            </header>

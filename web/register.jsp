<%-- 
    Document   : register
    Created on : Aug 13, 2022, 6:22:08 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="./public/CSS/base.css">
        <link rel="stylesheet" href="./public/CSS/main.css">
        <link rel="stylesheet" href="./public/fonts/fontawesome-free-6.1.1-web/css/all.min.css">
    </head>
    <body>
        <div class="modal">
            <div class="modal__overlay"></div>

            <div class="modal__body">
                <!---Register form---->
                <div class="auth-form">
                    <div class="auth-form__container">
                        <div class="auth-form__header">
                            <h3 class="auth-form__heading">Đăng ký</h3>
                            <span class="auth-form__switch-btn">Đăng nhập</span>
                        </div>
                        <form action="RegisterServlet" method="post">
                            <div class="auth-form__form">
                                <div class="auth-form__group">
                                    <input type="email" class="auth-form__input" id="email" placeholder="Email của bạn" name="email">
                                </div>
                                <div class="auth-form__group">
                                    <input type="password" class="auth-form__input" id="password" placeholder="Mật khẩu của bạn" name="password">
                                </div>
                            </div>
                              <div class="auth-form__controls">
                            <button class="btn btn--normal auth-form__controls-back">TRỞ LẠI</button>
                            <button class="btn btn--primary" type="submit">ĐĂNG KÝ</button>
                        </div>
                        </form>
                        <div class="auth-form__aside">
                            <p class="auth-form__policy-text">
                                Bằng việc đăng ký bạn đã đồng ý với Tshop về
                                <a href="" class="auth-form__text-link">Điều khoản dịch vụ</a> &
                                <a href="" class="auth-form__text-link">Chính sách bảo mật</a>
                            </p>
                        </div> 

                        
                    </div>

                    <div class="auth-form__socials">
                        <a href="" class="auth-form__socials--fb btn btn--size-s btn--with-icon">
                            <i class="auth-form__socials-icon fa-brands fa-facebook-square"></i>
                            <span class="auth-form__socials-title">
                                Kết nối với Facebook
                            </span> 
                        </a>
                        <a href="" class="auth-form__socials--gg btn btn--size-s btn--with-icon">
                            <i class="auth-form__socials-icon fa-brands fa-google"></i>
                            <span class="auth-form__socials-title">
                                Kết nối với Google
                            </span> 
                        </a>    
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

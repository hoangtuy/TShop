<%-- 
    Document   : login
    Created on : Jul 29, 2022, 12:41:35 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="./public/CSS/base.css">
        <link rel="stylesheet" href="./public/CSS/main.css">
        <link rel="stylesheet" href="./public/fonts/fontawesome-free-6.1.1-web/css/all.min.css">

    </head>
    <body>
        <div class="modal">
            <div class="modal__overlay"></div>
            <div class="modal__body">
                <form action="LoginServlet" method="post">
                    <div class="auth-form">
                        <div class="auth-form__container">
                            <div class="auth-form__header">
                                <h3 class="auth-form__heading">Đăng nhập</h3>
                                <span class="auth-form__switch-btn">Đăng ký</span>
                            </div>
                            <div class="auth-form__form">
                                <div class="auth-form__group">
                                    <input type="email" class="auth-form__input" placeholder="Email của bạn" name="email">
                                </div>
                                <div class="auth-form__group">
                                    <input type="password" class="auth-form__input" placeholder="Mật khẩu của bạn" name="password">
                                </div>
                            </div>
                            <div class="auth-form__aside">
                                <div class="auth-form__help">
                                    <a href="" class="auth-form__help-link auth-form__help-forgot">Quên mật khẩu</a>
                                    <span class="auth-form__help-separate"></span>
                                    <a href="" class="auth-form__help-link">Cần trợ giúp?</a>
                                </div>
                            </div> 

                            <div class="auth-form__controls">
                                <button class="btn btn--normal auth-form__controls-back">TRỞ LẠI</button>
                                <button type="submit" class="btn btn--primary">ĐĂNG NHẬP</button>
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
                </form>
            </div>
        </div>
    </body>
</html>

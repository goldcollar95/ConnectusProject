<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="path" value="${pageContext.request.contextPath}" />

    <!DOCTYPE html>
    <html>
    
    <head>
        <meta charset="UTF-8">
        <title>LOGIN</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <link rel="stylesheet" href="${path}/css/header.css">
        <link rel="stylesheet" href="${path}/css/login.css">
        <script src="${path}/js/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function () {
    
            });
        </script>
    </head>
    
    <body>
        <div class="main-container">
    
            <div class="login-container">
                <div class="login-box">
                    <div class="login-box-title">
                        <span>Connect Us</span>
                    </div>
                    <div class="login-box-sign-box">
                        <div class="login-box-signin-button">
                            로그인
                        </div>
                        <div class="login-box-signup-button">
                            <a href="register" id="btn">회원가입</a>
                        </div>
                    </div>
                    <form class="login-box-form" action="login" method="post">
                        <input class="login-input" type="text" name="userid" id="userid" autocomplete="off" placeholder="ID"><br>
                        <input class="login-input" type="password" name="pw" id="pw" autocomplete="off" placeholder="PASSWORD"><br>
                        <input class="login-button" type="submit" id="btn" value="login">
                    </form>
                    <div class="login-box-find-box mt-2">                  
                            <button class="find-idpw-button" id="btn" type="button"><a href="findid">아이디 찾기</a></button>
                            <button class="find-idpw-button" id="btn" type="button"><a href="findpw">비밀번호 찾기</a></button>              
                    </div>
                    <div class="login-box-kakao-naver">
                        <img src="${path}/pictures/Kakao_logo.jpg">
                        <img src="${path}/pictures/naver-logo.png">
                    </div>
                </div>
    
            </div>
        </div>
    
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
            integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
            crossorigin="anonymous"></script>
    </body>
    
    </html>
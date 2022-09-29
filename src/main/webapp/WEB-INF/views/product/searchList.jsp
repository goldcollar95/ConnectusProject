<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="${path}/css/product.css">
    <script src="${path}/js/jquery-3.6.0.min.js"></script>
    <script src="${path}/js/navbar.js"></script>
    <script>
        $(document).ready(function () {

        });
    </script>

</head>

<body>
    <!-- <jsp:include page="/WEB-INF/views/header.jsp" /> -->
    <div class="container-box">
        <div class="main-container">
            <custom-navbar></custom-navbar>

            <h1 class="mt-5"> ConnectUS 찾으시는 물품 </h1>

            <a href="http://localhost:8090/registerProduct">물품등록</a>
            <br>
            <div class="allproduct-container">
                <!-- 검색기능 -->
                <form class="allproduct-search-box" action="searchproduct">
                    <select name="item">
                        <option value="title">제목</option>
                        <option value="boardRegion">지역</option>
                        <option value="userId">오너이름</option>
                        <option value="contents">내용</option>
                    </select>

                    <input class="search-box-search-input" type="text" name="search">
                    <input class="search-box-search-button" type="submit" value="검색">
                </form>


                <div class="allproduct-product-box">

                    <c:forEach items="${searchList}" var="board">
                        <div class="product-box-item">
                            <fmt:parseDate value="${board.createdAt}" var="uploadDate" pattern="yyyy-MM-dd" />

                            <c:set var="current" value="<%=new java.util.Date()%>" />
                            <fmt:formatDate value="${current}" pattern="yyyy-MM-dd" var="currentForm" />
                            <fmt:parseDate value="${currentForm}" var="now" pattern="yyyy-MM-dd" />

                            <fmt:parseNumber value="${ (now.time - uploadDate.time)/(1000*60*60*24)}" integerOnly="true"
                                var="dateDiff"></fmt:parseNumber>
                            <c:set var="dateDiffShow" value="${dateDiff}일전" />

                            <c:if test="${dateDiffShow == '0일전'}">
                                <c:set var="dateDiffShow" value="오늘" />
                            </c:if>



                            <img alt="사진이 없어요" width=200 height=200 src="http://localhost:8090/upload/${board.img1}">
                            <div class="product-item-num" id="boardid${vs.index}" style="display:none">${board.id}</div>
                            <div class="product-item-title"><a href="/product/${board.id}">${board.title}</a></div>
                            <div class="product-item-location">${board.boardRegion}</div>
                            <div class="product-item-owner">${board.userId}</div>
                            <div class="product-item-date">${dateDiffShow}</div>




                        </div>
                    </c:forEach>
                </div>
                <br>
            </div>


            <br>
            <a href="http://localhost:8090/">홈으로</a>

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
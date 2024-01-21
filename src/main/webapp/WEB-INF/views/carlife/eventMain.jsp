<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>복사해서 사용하세요</title>
    <!-- 추가 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <!-- 스타일 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <!-- 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
            integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
            crossorigin="anonymous"></script>

    <!-- 공통 css 파일 -->
    <link rel="stylesheet" type="text/css" href="/styles/content.css"/>
    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <style>
        .nav-pills .nav-link.active,
        .nav-pills .show > .nav-link {
                background-color: #41087c !important;
                color: white;
        }
    </style>
</head>
<body>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
            class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="${contextPath}/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">CAR뮤니티</li>
                <li class="breadcrumb-item active" aria-current="page">이벤트</li>
                <li class="breadcrumb-item active" aria-current="page">진행중 이벤트</li>
            </ol>
        </nav>
    </div>
                   
    <div class="carLife-container">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">지니카 이벤트</h1>
                <p class="txt">지니카의 다양한 이벤트를 지금 바로 만나보세요!</p>
            </section>

            <nav class="mt-5 nav nav-pills flex-column flex-sm-row">
                <a class="flex-sm-fill text-sm-center nav-link active" aria-current="page" href="${contextPath}/carlife/eventMain.do">진행중 이벤트</a>
                <a class="flex-sm-fill text-sm-center nav-link" href="${contextPath}/carlife/winnerEventMain.do">당첨자 발표</a>
            </nav>
         
            <div class="tab-cont tab-normal">
                <div class="mb-5 sorting-box" style="float: right;">
                    <select class="select-normal" name="listType" id="listType" onchange="changeListType()">
                        <option value="ongoing" selected="selected">최근등록순</option>
                        <option value="soonEnd">마감임박순</option>
                        <option value="expired">지난이벤트</option>
                    </select>
                </div>
                <div class="pt-5 row" style="text-align: center;">
                        <div class="col">
                            <a href="${contextPath}/carlife/eventDetail.do" style="text-decoration: none; color: #41087c;">
                            <img alt="" src="/images/events/evt1.jpg">    
                            <p class="tit"><strong>지니카 이용객 전용 eSIM 최저가 이벤트</strong></p>
                            <span class="date">2023.11.28 ~ 2024.02.29</span></a>
                        </div>
                        <div class="col">
                            <a href="${contextPath}/carlife/eventDetail.do" style="text-decoration: none; color: #41087c;">
                            <img alt="" src="/images/events/evt2.jpg">    
                            <p class="tit"><strong>대한민국 No.1 지니카와 골프코스를!</strong></p>
                            <span class="date">2023.12.01 ~ 2024.05.31</span></a>
                        </div>
                        <div class="col">
                            <a href="${contextPath}/carlife/eventDetail.do" style="text-decoration: none; color: #41087c;">
                            <img alt="" src="/images/events/evt3.jpg">    
                            <p class="tit"><strong>지니카에서 따뜻한 커피와 함께 포근한 여행 되세요!</strong></p>
                            <span class="date">2023.11.28 ~ 2024.02.29</span></a>
                        </div>  
                        <div class="col">
                            <a href="${contextPath}/carlife/eventDetail.do" style="text-decoration: none; color: #41087c;">
                            <img alt="" src="/images/events/evt4.jpg">    
                            <p class="tit"><strong>공항철도 이용한다면 지니카 회원전용 특별할인!</strong></p>
                            <span class="date">2023.10.01 ~ 2024.03.31</span></a>
                        </div>  
                        <div class="col">
                            <a href="${contextPath}/carlife/eventDetail.do" style="text-decoration: none; color: #41087c;">
                            <img alt="" src="/images/events/evt5.jpg">    
                            <p class="tit"><strong>제주 자연을 품은 프라이빗한 공간에서 즐기는 펫캉스!</strong></p>
                            <span class="date">2024.01.19 ~ 2024.12.31</span></a>
                        </div>  
                        <div class="col">
                            <a href="${contextPath}/carlife/eventDetail.do" style="text-decoration: none; color: #41087c;">
                            <img alt="" src="/images/events/evt6.jpg">    
                            <p class="tit"><strong>지니카 회원전용 아이스크림 홈런 무료체험 이벤트</strong></p>
                            <span class="date">2023.07.17 ~ 2024.07.16</span></a>
                        </div>                                 
                    </div>
                </div>
            </div>
        </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

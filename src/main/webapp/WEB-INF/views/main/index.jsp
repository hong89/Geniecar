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


    </style>
</head>
<body>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="2000">
                <img src="/images/main/main1.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="/images/main/main2.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="/images/main/main3.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="/images/main/main4.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="/images/main/main5.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="/images/main/main6.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="/images/main/main7.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="/images/main/main8.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="/images/main/main9.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="pt-5">
        <div class="explain-header">
            <h2 class="tit-size-big">서비스 바로가기</h2><hr/>
        </div>
        <div class="row" style="text-align: center;">
            <div class="p-3 col-3">
                <a class="page-link" href="#">
                <img src="/images/icons/ico-main-new-quick02.png" alt="">
                <p>예약확인</p>
                </a>
            </div>
            <div class="p-3 col-3">
                <a class="page-link" href="#">
                <img src="/images/icons/ico-main-new-quick05.png" alt="">
                <p>지점안내</p>
                </a>
            </div>
            <div class="p-3 col-3">
                <a class="page-link" href="#">
                <img src="/images/icons/ico-main-new-quick06.png" alt="">
                <p>제주오토하우스</p>
                </a>
            </div>
            <div class="p-3 col-3">
                <a class="page-link" href="#">
                <img src="/images/icons/ico-main-new-quick08.png" alt="">
                <p>고객 센터</p>
                </a>
            </div>
        </div>
    </div><hr/>

    <section class="pt-5">
        <div class="explain-header">
            <p>즐겨보세요</p>
            <h2>매거진</h2><hr/>
        </div>
        <div class="row">
            <div class="col">
                <div class="infos-header">
                    <div class="infos-header-row">
                        <p><strong>지니카를 탄다. 내 삶이 달린다.<br/>
                        신규 모델 이효리! 지니카 TVCF 온에어!</strong></p>
                    </div>
                </div>
            </div>
            <div class="col">
                <img src="/images/main/main-sub.png" width="600" height="150" alt="">
            </div>
        </div>
    </section>

    <section class="pt-5">
        <div class="explain-header">
            <a class="page-link" href="#">
                <img src="/images/icons/ico-main-notice.png" alt="">   
            알려드려요
            <h2>따끈따끈한 공지사항</h2></a><hr/>
        </div>
        <div class="container">
            <div class="row row-cols-2">
                <div class="p-3 col">이용약관 변경에 대한 공지</div>
                <div class="p-3 col">2024 대한민국 퍼스트브랜드 대상 20년 연속 수상</div>
                <div class="p-3 col">수탁사 변경에 따른 개인정보 처리방침 변경에 대한 공지</div>
                <div class="p-3 col">IoT서비스 명칭 변경 및 롯데렌탈회원(자체회원) 도입에 따른 개인정보 처리방침 및 이용약관 변경 공지</div>
            </div>
        </div>
    </section>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

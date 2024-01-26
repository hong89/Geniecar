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
    <!-- 폰트어썸 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <!-- 공통 css 파일 -->
    <link rel="stylesheet" type="text/css" href="/styles/content.css"/>
    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <style>
        .breadcrumb-item a {
            text-decoration: none;
            color: #41087c;
        }

        .location-name {
            align-self: center;
            border-radius: 30px;
            height: 50px;
            padding-top: 10px;
            margin: 10px;
            font-size: 20px;
        }

        .location-name > a, #searchName > a {
            color: black;
            text-decoration-line: none;
        }

        #searchName {
            align-self: center;
            text-align: center;
            border-radius: 30px;
            height: 50px;
            padding-top: 10px;
            font-size: 18px;
        }

        #mainContainer {
            margin-top: -50px;
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
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">빠른 예약</li>
                <li class="breadcrumb-item active" aria-current="page">내륙 예약</li>
            </ol>
        </nav>
    </div>
</div>

<div id="carouselExampleAutoplaying" class="carousel slide d-flex justify-content-center" data-bs-ride="carousel">
    <div class="carousel-outer">
        <div class="carousel-item active">
            <img src="/images/banner_01.png" class="d-block w-110" alt="event">
        </div>
        <div class="carousel-item">
            <img src="/images/banner_03.png" class="d-block w-110" alt="event">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<div class="container-xl" id="mainContainer">
    <div class="container text-center">
        <div class="row">
            <div class="col">
                <div class="card" style="width: 100%;">

                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" style="height: 70px;">
                            <div class="row">
                                <div class="col-1 location-name" style="background: #f8f7fd;">
                                    <a href="#">
                                        제주
                                    </a>
                                </div>
                                <div class="col-1 location-name" style="background: #f8f7fd;">
                                    <a href="#">
                                        내륙
                                    </a>
                                </div>
                                <div class="col-1 location-name">
                                    <a href="#">
                                        <i class="fa-solid fa-rotate-left"></i>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item" style="height: 70px; text-align: left">
                            <div class="row">
                                <div class="col-3">
                                    <p class="card-text"><small><strong>대여장소</strong></small><br/>
                                        어디서 대여할까요?</p>
                                </div>
                                <div class="col-3">
                                    <p class="card-text"><small><strong>반납장소</strong></small><br/>
                                        어디로 반납할까요?</p>
                                </div>
                                <div class="col-4">
                                    <p class="card-text"><small><strong>대여기간</strong></small><br/>
                                        얼마 동안 대여할까요?</p>
                                </div>
                                <div class="col-2" id="searchName" style="background: #f8f7fd;">
                                    <a href="#">
                                        차량 검색하기
                                    </a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row" style="padding-top: 50px;">
            <div class="col-2" style="height: 300px; border-right: 1px solid #23093d">
                <h5><strong>대여 장소를 <br/>선택해 주세요</strong></h5>
            </div>
            <div class="col-3">
                <div class="card mb-3" style="height: 300px; border: none;">
                    <div class="card-body">
                        <div class="row">
                            <c:forEach var="code" items="${codeList}">
                                <div class="col-6">${code.groupCodeName}</div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-7">
                <div class="card mb-3" style="height: 300px; background: #f8f7fd;">
                    <div class="card-body">
                        <div class="row">
                            <c:forEach var="code" items="${codeList}">
                                <div class="col-3">${code.codeName}</div>
                            </c:forEach>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

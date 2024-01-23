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
    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
            class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="${contextPath}/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">지점안내</li>
                <li class="breadcrumb-item active" aria-current="page">전국지점</li>
            </ol>
        </nav>
    </div>

    <div class="carLife-container">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">전국지점안내</h1>
            </section>


<form class="pt-5 row g-3 align-items-center" style="text-align: center;">
    <div class="col-6">
        <label class="visually-hidden" for="inlineFormInputGroupUsername">Use</label>
        <div class="input-group">
            <input type="text" class="form-control" id="inlineFormInputGroupUsername" placeholder="지역, 지점명을 검색하시면 가까운 매장을 찾으실 수 있습니다.">
        </div>
    </div>
    <div class="col-3">
        <div class="d-flex">
            <button type="submit" class="btn" style="background-color: #41087c; color: white;">검색</button>
        </div>
    </div>
    <div class="col-3 text-right">
        <label class="visually-hidden" for="inlineFormSelectPref">Preference</label>
        <select class="form-select" id="inlineFormSelectPref">
            <option value="">지역-전체보기</option>
            <option value="290">24시간지점</option>
            <option value="280">역사지점</option>
            <option value="270">공항지점</option>
            <option value="100">서울</option>
            <option value="110,120">인천/경기</option>
            <option value="130">강원</option>
            <option value="140,150,160,170">충청/대전/세종</option>
            <option value="180,190,200">전라/광주</option>
            <option value="210,220,230,240,250">경상/대구/부산/울산</option>
            <option value="260">제주</option>
        </select>
    </div>
</form><hr/>

<section class="pt-3">
    <div class="row">
        <div class="col">
            <div class="step-infos">
                <ul>
                    <li class="listCardPC" style="text-decoration: none;">
                        <strong>가산디지털</strong>
                        <p>서울시 금천구 가산디지털1로 186 제이플라츠 지하 1층 B106호<br/>
                        02-3664-8000</p>
                    </li>
                    <li class="listCardPC" style="text-decoration: none;">
                        <strong>강남</strong>
                        <p>서울특별시 강남구 테헤란로81길53, 1층<br/>
                        02-3443-8000</p>
                    </li>
                    <li class="listCardPC" style="text-decoration: none;">
                        <strong>개양터미널(픽업존)</strong>
                        <p>경남 진주시 진주대로 594 개양정류장 하차장 롯데리아 앞<br/>
                        055-753-8000</p>
                    </li>
                    <li class="listCardPC" style="text-decoration: none;">
                        <strong>거제</strong>
                        <p>경상남도 거제시 거제중앙로 1930-10, 골든 아틀란티스 115호<br/>
                        055-637-8009</p>
                    </li>
                    <li class="listCardPC" style="text-decoration: none;">
                        <strong>공덕</strong>
                        <p>서울시 마포구 마포대로 109(공덕동), 롯데시티호텔 2F<br/>
                        02-714-8001</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col">
            <img src="/images/Map.png" width="500" height="500" alt="">
        </div>
    </div>
</section>





    





























    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

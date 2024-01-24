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
        .join-container > div {
            padding: 10px;
        }
    </style>
</head>
<body>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <h4>사업자 등록</h4>
    <div class="row g-3 align-items-center join-container">
        <div class="col-2"></div>
        <div class="col-2">
            <label for="companyNumber" class="col-form-label">등록번호</label>
        </div>
        <div class="col-auto">
            <input type="text" id="companyNumber" class="form-control">
        </div>
    </div>

    <div class="row g-3 align-items-center join-container">
        <div class="col-2"></div>
        <div class="col-2">
            <label for="companyName" class="col-form-label">상호</label>
        </div>
        <div class="col-auto">
            <input type="text" id="companyName" class="form-control">
        </div>
    </div>
    <div class="row g-3 align-items-center join-container">
        <div class="col-2"></div>
        <div class="col-2">
            <label for="name" class="col-form-label">대표자명</label>
        </div>
        <div class="col-auto">
            <input type="text" id="name" class="form-control">
        </div>
    </div>
    <div class="row g-3 align-items-center join-container">
        <div class="col-2"></div>
        <div class="col-2">
            <label for="birth" class="col-form-label">생년월일</label>
        </div>
        <div class="col-auto">
            <input type="text" id="birth" class="form-control">
        </div>
    </div>
    <div class="row g-3 align-items-center join-container">
        <div class="col-2"></div>
        <div class="col-2">
            <label for="companyDate" class="col-form-label">개업년월일</label>
        </div>
        <div class="col-auto">
            <input type="text" id="companyDate" class="form-control">
        </div>
    </div>
    <div class="row g-3 align-items-center join-container">
        <div class="col-2"></div>
        <div class="col-2">
            <label for="tel" class="col-form-label">전화번호</label>
        </div>
        <div class="col-auto">
            <input type="tel" id="tel" class="form-control">
        </div>
    </div>
    <div class="row g-3 align-items-center join-container">
        <div class="col-2"></div>
        <div class="col-2">
            <label for="address" class="col-form-label">사업장소재지</label>
        </div>
        <div class="col-auto">
            <input type="text" id="address" class="form-control">
        </div>
    </div>
    <div class="row g-3 align-items-center join-container">
        <div class="col-2"></div>
        <div class="col-2">
            <label for="businessType" class="col-form-label">사업의종류</label>
        </div>
        <div class="col-auto">
            <input type="text" id="businessType" class="form-control">
        </div>
    </div>
    <div class="row g-3 align-items-center join-container">
        <div class="col-2"></div>
        <div class="col-2">
            <label for="taxOffice" class="col-form-label">발급처</label>
        </div>
        <div class="col-auto">
            <input type="text" id="taxOffice" class="form-control">
        </div>
    </div>

    <div class="row g-3 align-items-center join-container">
        <div class="col-2"></div>
        <div class="col-2">

        </div>
        <div class="col-auto">
            <button type="button" class="btn" style="border: 1px solid #41087c; width: 110px;">취소</button>
            <button type="button" class="btn text-white" style="background: #41087c; width: 110px;">다음</button>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

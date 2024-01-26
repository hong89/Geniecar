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

    <form action="/member/doJoin.do" method="post" name="doJoin">
        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="id" class="col-form-label">아이디</label>
            </div>
            <div class="col-auto">
                <input type="text" id="id" class="form-control" name ="id">
            </div>
            <div class="col-2">
                <button type="button" class="btn text-white" style="background: #41087c; width: 110px;">중복확인</button>
            </div>
        </div>

        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="pw" class="col-form-label">비밀번호</label>
            </div>
            <div class="col-auto">
                <input type="password" id="pw" name="pw" class="form-control" aria-describedby="passwordHelpInline">
            </div>
            <div class="col-auto">
                <span id="passwordHelpInline" class="form-text">
                8~20자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.
                </span>
            </div>
        </div>
        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="pwCheck" class="col-form-label">비밀번호 확인</label>
            </div>
            <div class="col-auto">
                <input type="password" id="pwCheck" name="pwCheck" class="form-control">
            </div>
        </div>
        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="name" class="col-form-label">이름</label>
            </div>
            <div class="col-auto">
                <input type="text" id="name" name="name" class="form-control">
            </div>
        </div>
        
        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="gender" class="col-form-label">성별</label>
            </div>
            <div class="col-auto">
                <input type="text" id="gender" name="gender" class="form-control">
            </div>
        </div>
        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="birthday" class="col-form-label">생일</label>
            </div>
            <div class="col-auto">
                <input type="date" id="birthday" name="birthday" class="form-control">
            </div>
        </div>
        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="hp" class="col-form-label">전화번호</label>
            </div>
            <div class="col-auto">
                <input type="tel" id="hp" name="hp" class="form-control">
            </div>
        </div>
        
        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="zipcode" class="col-form-label">주소</label>
            </div>
            <div class="col-auto">
                <input type="address" id="zipcode" name="zipCode" class="form-control">
            </div>
        </div>
        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="address" class="col-form-label"></label>
            </div>
            <div class="col-auto">
                <input type="address" id="address" name="address" class="form-control">
            </div>
        </div>
        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="addressDetail" class="col-form-label"></label>
            </div>
            <div class="col-auto">
                <input type="address" id="addressDetail" name="addressDetail" class="form-control">
            </div>
        </div>
        
        <div class="row g-3 align-items-center join-container">
            <div class="col-2"></div>
            <div class="col-2">
            </div>
            <div class="col-auto">
                <button type="button" class="btn" style="border: 1px solid #41087c; width: 110px;">취소</button>
                <button type="submit" class="btn text-white" style="background: #41087c; width: 110px;">다음</button>
            </div>
        </div>
    </form>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

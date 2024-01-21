<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>aside</title>
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
        .accordion-body a {
            text-decoration: none;
            color: black;
            padding: 5px;
        }
    </style>
</head>
<body>
<div class="accordion" id="accordionExample">
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
                    aria-expanded="true" aria-controls="collapseOne">
                차량 등록
            </button>
        </h2>
        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne">
            <div class="accordion-body">
                <a href="/business/car/list.do">차량 목록</a><br/>
                <a href="/business/car/register.do">차량 등록</a><br/>
                <a href="/business/car/modify.do">차량 수정</a><br/>
                <a href="/business/car/remove.do">차량 삭제</a>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingTwo">
            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                예약 목록
            </button>
        </h2>
        <div id="collapseTwo" class="accordion-collapse show" aria-labelledby="headingTwo">
            <div class="accordion-body">
                <a href="/business/rental/shortRent.do">단기 렌터카</a><br/>
                <a href="/business/rental/monthRent.do">월단기 렌터카</a><br/>
                <a href="/business/rental/commuteRent.do">출퇴근 렌터카</a>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingThree">
            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                이벤트
            </button>
        </h2>
        <div id="collapseThree" class="accordion-collapse show" aria-labelledby="headingThree">
            <div class="accordion-body">
                <a href="/business/event/list.do">이벤트 목록</a><br/>
                <a href="/business/event/register.do">이벤트 등록</a><br/>
                <a href="/business/event/modify.do">이벤트 수정</a><br/>
                <a href="/business/event/remove.do">이벤트 삭제</a>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingFour">
            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
                상담내역
            </button>
        </h2>
        <div id="collapseFour" class="accordion-collapse show" aria-labelledby="headingFour">
            <div class="accordion-body">
                <a href="/business/consult/one.do">1:1 내역</a><br/>
                <a href="/business/consult/review.do">이용 후기 확인</a><br/>
                <a href="/business/consult/consult.do">상담 내역</a><br/>
                <a href="/business/consult/register.do">상담 내역 등록</a>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingFive">
            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
                주문결제
            </button>
        </h2>
        <div id="collapseFive" class="accordion-collapse show" aria-labelledby="headingFive">
            <div class="accordion-body">
                <a href="/business/payment/shortRent.do">단기 결제 내역</a><br/>
                <a href="/business/payment/monthRent.do">월단기 결제 내역</a><br/>
                <a href="/business/payment/commuteRent.do">출퇴근 결제 내역</a>
            </div>
        </div>
    </div>
</div>



</body>
</html>

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
        .list-group-item p a {
            text-decoration: none;
            color: black;
        }
        .list-group-item p {
            line-height: 120%;
        }
        .list-group-item p:first-child {
            background: #41087c;
            color: white;
            padding: 7px;
        }

    </style>
</head>
<body>
<div>
    <ul class="list-group">
        <li class="list-group-item"><p>차량 등록</p>
            <p><a href="/business/car/list.do">차량 목록</a></p>
            <p><a href="/business/car/register.do">차량 등록</a></p>
        </li>
        <li class="list-group-item"><p>예약 목록</p>
            <p><a href="/business/rental/shortRent.do">단기 렌터카</a></p>
            <p><a href="/business/rental/monthRent.do">월단기 렌터카</a></p>
            <p><a href="/business/rental/commuteRent.do">출퇴근 렌터카</a></p>
        </li>
        <li class="list-group-item"><p>이벤트</p>
            <p><a href="/business/event/list.do">이벤트 목록</a></p>
            <p><a href="/business/event/register.do">이벤트 등록</a></p>
        </li>
        <li class="list-group-item"><p>상담 내역</p>
            <p><a href="/business/consult/one.do">1:1 내역</a></p>
            <p><a href="/business/consult/review.do">이용 후기 확인</a></p>
            <p><a href="/business/consult/consult.do">상담 내역</a></p>
            <p><a href="/business/consult/register.do">상담 내역 등록</a></p>
        </li>
        <li class="list-group-item"><p>주문 결제</p>
            <p><a href="/business/payment/shortRent.do">단기 결제 내역</a></p>
            <p><a href="/business/payment/monthRent.do">월단기 결제 내역</a></p>
            <p><a href="/business/payment/commuteRent.do">출퇴근 결제 내역</a></p>
        </li>
    </ul>
</div>


</body>
</html>

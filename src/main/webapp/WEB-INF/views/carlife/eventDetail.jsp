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
        .bot-row {
                display: flex;
                justify-content: space-between;
        }

        .ntc-tit-container {
                display: flex;
                align-items: center;
        }

        .ntc-tit {
                margin-right: auto;
        }

        .ntc-date {
                margin-left: auto;
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
                <li class="breadcrumb-item active" aria-current="page">고객지원</li>
                <li class="breadcrumb-item active" aria-current="page">이벤트</li>
                <li class="breadcrumb-item active" aria-current="page">진행중 이벤트</li>
            </ol>
        </nav>
    </div>

    <form id="defaultFrm" name="defaultFrm" action="/hp/kor/carLife/eventDetail.do?pageIndex=1&amp;contSeq=597&amp;listType=ongoing" method="get">
        <input type="hidden" name="contSeq" id="contSeq" />
        <input type="hidden" name="listType" id="listType" value="ongoing" />
    <main id="wrap" data-id="template-container">               
        <div class="carLife-container">
            <div class="inner-type2">
                <section class="text-center">
                    <h2 class="tit">지니카 이벤트</h2>
                    <p class="txt">지니카의 다양한 이벤트를 지금 바로 만나보세요!</p>
                </section>
                <div class="ntc-view-header">
                    <div class="top-row">
                        <span class="flag-purple">제휴</span>
                    </div>
                    <div class="bot-row">
                        <div class="ntc-tit-container">
                            <p class="ntc-tit">
                                지니카 이용객 전용 eSIM최저가 이벤트
                            </p>
                        </div>
                        <span class="ntc-date">2024-01-05</span>
                    </div>
                </div><hr/>

                <div class="text-center">
                    <div class="mb-4">
                        <a href="https://esimeasy.co.kr/partnership/link/v1/main/C7FEA16F4D924DB7 "><img
                                src="/images/eventDetail.png" alt="" width="1000" height="2155"></a>
                    </div>
                </div>

                <div class="ntc-view-footer">
                    <ul class="ntc-list">
                        <li>
                            <a href="#">
                                <strong>이전 글</strong>
                                지니카에서 따듯한 커피와 함께 포근한 여행 되세요!
                                <span class="ntc-date" style="float: right;">
                                    2024.01.15
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <strong>다음 글</strong>
                                대한민국 No.1 지니카와 베트남 No.1 골프 코스 스카이레이크 제휴할인(~20%할인)
                                <span class="ntc-date" style="float: right;">
                                    2023.12.12
                                </span>
                            </a>
                        </li>
                    </ul>
                    <div class="pt-5" style="text-align: center;">
                        <a href="${contextPath}/carlife/eventMain.do" class="btn btn-purple"
                            style="background-color: #41087c; color:white;">목록</a>
                    </div>
                </div>
            </div>
        </div>          
    </main>
        <input type="hidden" id="sessionMemberNo" name="sessionMemberNo" value="">
    </form>

           
          



















    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <html>

            <head>
                <meta charset="UTF-8">
                <title>복사해서 사용하세요</title>
                <!-- 추가 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                    crossorigin="anonymous">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                    crossorigin="anonymous"></script>
                <!-- 스타일 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
                    crossorigin="anonymous">
                <!-- 자바스크립트 -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
                    integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
                    crossorigin="anonymous"></script>

                <!-- 공통 css 파일 -->
                <link rel="stylesheet" type="text/css" href="/styles/content.css" />
                <!-- 제이쿼리 -->
                <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
                <style>
                    .breadcrumb-item a {
                        text-decoration: none;
                        color: #41087c;
                    }
                </style>
            </head>

            <body>
                <div class="container-xl">
                    <!--------------------------------------------------상단---------------------------------------------------------->

                    <div class="pb-5 position-relative">
                        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
                            class="position-absolute top-0 end-0">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">단기렌터카</li>
                                <li class="breadcrumb-item active" aria-current="page">서비스안내</li>
                                <li class="breadcrumb-item active" aria-current="page">체크인서비스</li>
                            </ol>
                        </nav>
                    </div>
                    <div>
                        <div>
                            <section class="text-center pb-4">
                                <h1>체크인 서비스</h1>
                                <p>온라인 사전 체크인으로 지점 방문 시 빠른 차량 픽업이 가능합니다.</p>
                            </section>
                            <div class="mb-5 "
                                style="min-height: 140px; background-repeat: no-repeat;background-position: 0 0;background-image:url('/images/bg-shortInfoChechin.png'); background-size: auto;">
                                <p class="text-white pt-5 p-4">
                                    온라인에서 대여에 필요한 사항을 확인하고, 계약서 상 동의절차를 진행하여<br>
                                    지점 도착 후 차량의 상태확인과 주요 안내를 받고 빠르게 픽업하여 차량 이용을 시작할 수 있습니다.
                                </p>
                            </div>
                            <section class="">
                                <div class="mb-5">
                                    <h2>서비스 안내</h2>
                                </div>
                                <div class="mb-5">
                                    <p>
                                        지니카는 [여객자동차 운수사업법 시행규칙 제 67조]에 의거 15인승 이하 차량만 대여가 가능합니다.<br>
                                        운전면허증에 원동기가 함께 기재되어 있는 경우 운전경력증명서를 지참하셔야 차량대여가 가능합니다.
                                    </p>
                                </div>
                            </section>
                            <section class="mb-5">
                                <div class="mb-4">
                                    <h2>온라인 절차 안내</h2>
                                </div>
                                <div class="">
                                    <ol class="list-group list-group-horizontal row">
                                        <li class="list-group-item p-3 col">
                                            <span>01</span>
                                            <strong>예약 정보 확인</strong>
                                            <ul>
                                                <li>
                                                    예약내역에서 사전체크인할<br>
                                                    예약의 예약정보를 확인해 주세요.
                                                </li>
                                                <li>
                                                    수정이 필요한 경우 예약수정을 통해<br>
                                                    예약정보를 변경하시기 바랍니다.
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="list-group-item p-3 col">
                                            <span>02</span>
                                            <strong>사전 체크인 시작</strong>
                                            <p>
                                                내용에 변경사항이 없는 경우<br>
                                                예약정보 하단의 사전체크인<br>
                                                버튼을 눌러 체크인을 시작하세요.
                                            </p>
                                        </li>
                                        <li class="list-group-item p-3 col">
                                            <span>03</span>
                                            <strong>예약자 연락처 확인</strong>
                                            <ul>
                                                <li>
                                                    대여 중 연락드릴 예약자 정보의<br>
                                                    연락처를 확인해 주세요.
                                                </li>
                                                <li>
                                                    대여기간 동안 사용하실 연락처가<br>
                                                    변경된 경우연락처정보를<br>
                                                    수정해주시기 바랍니다.
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="list-group-item p-3 col">
                                            <span>04</span>
                                            <strong>추가 운전자 등록</strong>
                                            <ul>
                                                <li>
                                                    대여 중 동승자와 함께 운전하는<br>
                                                    경우 추가운전자 등록을 해주세요.
                                                </li>
                                                <li>
                                                    추가운전자는 최대 2명<br>
                                                    (제2운전자, 공동임차인)까지<br>
                                                    등록이 가능합니다.
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="list-group-item p-3 col">
                                            <span>05</span>
                                            <strong>이용자동의</strong>
                                            <ul>
                                                <li>
                                                    사전체크인을 위한<br>
                                                    이용자 동의를 해주세요.
                                                </li>
                                                <li>
                                                    방문 전 미리 차량을 준비하기 위해<br>
                                                    고객님의 예약정보와 <br>
                                                    운전자정보 조회를 위한 동의입니다.
                                                </li>
                                            </ul>
                                        </li>
                                    </ol>
                                </div>
                            </section>
                            <section class="mb-5">
                                <div class="mb-4">
                                    <h2 class="tit-size-big">내륙 대여절차 안내</h2>
                                </div>
                                <div class="">
                                    <ol class="list-group list-group-horizontal row">
                                        <li class="list-group-item p-3 col">
                                            <span>01</span>
                                            <strong>지점 방문</strong>
                                            <p>
                                                지점에 방문하면 직원에게<br>
                                                예약자명을 말씀해 주세요.
                                            </p>
                                        </li>
                                        <li class="list-group-item p-3 col">
                                            <span>02</span>
                                            <strong>예약자 확인</strong>
                                            <p>
                                                예약사항을 확인 후, 면허증을<br>
                                                담당직원에게 제시해 주세요.
                                            </p>
                                        </li>
                                        <li class="list-group-item p-3 col">
                                            <span>03</span>
                                            <strong>차량 안내</strong>
                                            <p>
                                                대여기간 및 차종, 옵션 등<br>
                                                최종 확인하세요.
                                            </p>
                                        </li>
                                        <li class="list-group-item p-3 col">
                                            <span>04</span>
                                            <strong>차량 이용</strong>
                                            <p>
                                                직원의 안내에 따라 미리 준비된<br>
                                                차량의 상태 및 유류량 확인 후<br>
                                                바로 차량을 이용하세요.
                                            </p>
                                        </li>
                                    </ol>
                                    <ul class="lst dot">
                                        <li>지니카 홈페이지 또는 모바일웹/APP으로 예약하는 경우 결제를 완료하셔야 예약이 완료됩니다.</li>
                                    </ul>
                                </div>
                            </section>
                            <section class="mb-5">
                                <div class="mb-4">
                                    <h2>제주 대여절차 안내</h2>
                                </div>
                                <div class="">
                                    <ol class="list-group list-group-horizontal row">
                                        <li class="list-group-item p-3 col">
                                            <span>01</span>
                                            <strong>지니카 제주공항 데스크 방문</strong>
                                            <p>
                                                제주공항에 도착하면 GATE 2에 위치한<br>
                                                지니카 데스크에 방문하여<br>
                                                제주도착을 알려 주세요.
                                            </p>
                                        </li>
                                        <li class="list-group-item p-3 col">
                                            <span>02</span>
                                            <strong>지니카 셔틀버스 탑승</strong>
                                            <p>
                                                GATE 5번으로 나가셔서<br>
                                                셔틀버스 탑승장 1구역 중 4번에서<br>
                                                지니카 셔틀버스에 탑승하세요
                                            </p>
                                        </li>
                                        <li class="list-group-item p-3 col">
                                            <span>03</span>
                                            <strong>지점도착 및 예약자 확인</strong>
                                            <p>
                                                지니카 제주오토하우스에<br>
                                                도착하면 직원에게<br>
                                                예약자명을 말씀해 주세요.
                                            </p>
                                        </li>
                                        <li class="list-group-item p-3 col">
                                            <span>04</span>
                                            <strong>차량안내 및 이용</strong>
                                            <p>
                                                직원의 안내에 따라 주차장으로<br>
                                                이동하여 차량 상태 및 유류량을<br>
                                                확인 후 바로 차량을 이용하세요.
                                            </p>
                                        </li>
                                    </ol>
                                </div>
                            </section>
                            <div class="row">
                                <div class="col">
                                    <img alt="" src="/images/img-jejuAirport-location.png">
                                </div>
                                <div class="col">
                                    <div>
                                        <dl>
                                            <div class="row">
                                                <dt class="col-4">제주공항 데스크 위치</dt>
                                                <dd class="col">
                                                    <p>2번 게이트</p>
                                                </dd>
                                            </div>
                                            <div class="row">
                                                <dt class="col-4">
                                                    셔틀버스 탑승장 위치
                                                </dt>
                                                <dd class="col">
                                                    1구역 중 4번
                                                </dd>
                                            </div>
                                            <div class="row">
                                                <dt class="col-4">셔틀버스 운영시간 및 배차</dt>
                                                <dd class="col">07:00 ~ 23:00 / 약 8분</dd>
                                            </div>
                                        </dl>
                                    </div>
                                    <div>
                                        <ul>
                                            <li>
                                                <span>1</span>
                                                예약 완료 고객님께서는 2번 게이트에 있는 공항데스크 직원에게 <br>
                                                예약자명을 제시하고 공항에 도착했음을 알려주세요
                                                <ul class="mb-3">
                                                    <li style="color: #41087c;">
                                                        사전체크인 완료 고객님은 셔틀버스 탑승 시 해당 QR코드를 태깅하면 고객님께서 <br>
                                                        이용하실 차량에 대한 준비가 완료됩니다.
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="mb-3">
                                                <span>2</span>
                                                제주공항 5번 게이트로 나온 후 정면 횡단보도를 건너세요.
                                            </li>
                                            <li class="mb-3">
                                                <span>3</span>
                                                렌터카 셔틀버스 승차장 표지판을 따라 오른쪽 보행자 통로를 이용하세요.
                                            </li>
                                            <li class="mb-3">
                                                <span>4</span>
                                                렌터카 하우스 1구역 중 4번에서 지니카 셔틀버스에 탑승하세요.
                                                <ul class="row mt-3">
                                                    <li class="col-4">
                                                        <strong>셔틀버스 운영시간</strong>
                                                        <p>06:00 ~ 22:40</p>
                                                    </li>
                                                    <li class="col">
                                                        <strong>배차간격</strong>
                                                        <p>06:00 ~ 07:30 [10분~15분]</p>
                                                        <p>07:30 ~ 19:30 [8분]</p>
                                                        <p>19:30 ~ 22:40 [10분~15분]</p>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

























                    <!--------------------------------------------------하단---------------------------------------------------------->
                </div>
            </body>

            </html>
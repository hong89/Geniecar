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
    <link rel="stylesheet" type="text/css" href="/styles/content.css"/>
    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <style>
        .breadcrumb-item a {
            text-decoration: none;
            color: #41087c;
        }

        .mypage-header {
            background-color: #41087c;
            color: #f8f7fd;
        }

        ul {
            list-style: none;
        }

        .btn-goLink {
            color: #f8f7fd;
        }

        .underline {
            color: #f8f7fd;
        }

        aside {
            width: 300px;
            background-color: #f8f7fd;
        }

        aside .nav-link {

            color: #41087c;
        }

        .reservationTable tr th {
            background: #f8f7fd;
        }

        .reservationTable tr th, .reservationTable tr td {
            height: 70px;
            vertical-align: middle;
            padding-left: 25px;
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
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">마이페이지</li>
            </ol>
        </nav>
    </div>

    <div id="mypageheader" class="mb-5">
        <section class="text-center pb-4">
            <h1 class="fw-bolder">마이페이지</h1>
            <p>지니카 회원을 위한 다양한 혜택이 준비되어 있습니다.</p>
        </section>
        <div class="mypage-header p-5">
            <div class="myInfos-area">
                <div class="border-bottom mb-5 row">
                    <h3 class="mb-4 col">
                        <strong class="name" id='commonMemberName'>홍경영님</strong>
                        <span>일반회원&nbsp;</span>
                    </h3>
                    <div class="btns text-end col">
                        <a href="/mypage/license.do" class="btn-goLink me-3">운전면허증</a>
                    </div>
                </div>
                <ul class="row text-center">
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel02.png">
                        <p>포인트</p>
                        <a href="/mypage/point.do" class="underline" id="myCommonRentalPoint">0</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel03.png">
                        <p>할인쿠폰</p>
                        <a href="/mypage/coupon.do" class="underline" id="myCommonRentalCoupon">0장</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel05.png">
                        <p>결제 내역</p>
                        <a href="/mypage/carSeller.do" class="underline"
                           id="commonMyCarSellCount">0건</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel06.png">
                        <p>렌터카 상담</p>
                        <a href="/mypage/rentCarConsulting.do" class="underline"
                           id="commonRentalConsultCount">0건</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="d-flex flex-row bd-highlight mb-3">
        <aside class="p-3 fs-5">
            <ul class="nav flex-column">
                <li class="nav-item mb-4">
                    <a href="/mypage/reservation.do" class="nav-link" data-link-area="마이페이지"
                       data-link-name="메뉴" data-link-text="단기렌터카 예약">단기렌터카 예약</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/reservationMonth.do" class="nav-link" data-link-area="마이페이지"
                       data-link-name="메뉴" data-link-text="월간단기렌터카 예약">월간단기렌터카 예약</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/rentCarConsulting.do" class="nav-link">렌터카 상담 </a>
                </li>

                <li class="nav-item mb-4">
                    <a href="/mypage/point.do" class="nav-link">포인트</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/coupon.do" class="nav-link">할인쿠폰</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/license.do" class="nav-link">운전면허증</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/customer/question.do" class="nav-link">1:1 고객센터</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="#" class="nav-link">회원</a>
                    <ul>
                        <li class="nav-item mb-4">
                            <a href="/mypage/member/modify.do" class="nav-link">회원정보 변경</a>
                        </li>
                        <li class="nav-item mb-4">
                            <a href="/mypage/member/password.do" class="nav-link">비밀번호 변경</a>
                        </li>
                        <li class="nav-item mb-4">
                            <a href="/mypage/member/leave.do" class="nav-link">회원탈퇴</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </aside>
        <article class="p-5 container-fluid">
            <div class="border-bottom pb-5">
                <h2 class="fw-bolder">단기 렌터카예약</h2>
            </div>
            <br/><br/>
            <table class="table table-bordered reservationTable">
                <tr>
                    <th scope="row">예약자명</th>
                    <td>홍경영</td>
                    <th scope="row">전화번호</th>
                    <td>010-0000-0000</td>
                </tr>
                <tr>
                    <th scope="row">예약일자</th>
                    <td>2024-01-23</td>
                    <th scope="row">예약번호</th>
                    <td>2422443764</td>
                </tr>
                <tr>
                    <th scope="row">대여일시</th>
                    <td>2024-01-27(토) 14:00</td>
                    <th scope="row">반납일시</th>
                    <td>2024-01-28(일) 14:00</td>
                </tr>
                <tr>
                    <th scope="row">대여지점</th>
                    <td>강남</td>
                    <th scope="row">반납지점</th>
                    <td>강남</td>
                </tr>
                <tr>
                    <th scope="row">대여주소</th>
                    <td>서울시 강남구 테헤란로81기로 53, 1층</td>
                    <th scope="row">반납주소</th>
                    <td>서울시 강남구 테헤란로81기로 53, 1층</td>
                </tr>
            </table>
            <br/>
            <br/>

            <h4 class="fw-bolder">자차손해 면책제도 (CDW)</h4>
            <table class="table table-bordered reservationTable">
                <tr>
                    <th scope="row">보험 미적용</th>
                </tr>
            </table>
            <br/>
            <br/>
            <h4 class="fw-bolder">예약자 운전면허 정보</h4>
            <table class="table table-bordered reservationTable">
                <tr>
                    <th scope="row">이름</th>
                    <td colspan="3">홍경영</td>
                </tr>
                <tr>
                    <th scope="row">성별</th>
                    <td>여</td>
                    <th scope="row">법정생년월일</th>
                    <td>1997-09-13</td>
                </tr>
                <tr>
                    <th scope="row">휴대전화번호</th>
                    <td>010-0000-0000</td>
                    <th scope="row">이메일</th>
                    <td>hong@test.com</td>
                </tr>
                <tr>
                    <th scope="row">면허종류</th>
                    <td>2종오토</td>
                    <th scope="row">면허증정보</th>
                    <td>***********</td>
                </tr>
                <tr>
                    <th scope="row">갱신기간</th>
                    <td>0000-00-00</td>
                    <th scope="row">발급일</th>
                    <td>0000-00-00</td>
                </tr>
            </table>
            <ul class="mt-3 lh-lg">
                <li>최근 90일 이내 예약건만 확인이 가능합니다.</li>
                <li>90일 이전 예약내역은 고객센터(1588-1230)로 문의해주시기 바랍니다.</li>
            </ul>
        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>

</html>
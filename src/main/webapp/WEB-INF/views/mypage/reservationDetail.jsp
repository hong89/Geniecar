<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                        <strong class="name" id='commonMemberName'>${member.name}님</strong>
                        <span>일반회원&nbsp;</span>
                    </h3>
                </div>
                <ul class="row text-center">
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel02.png">
                        <p>포인트</p>
                        <a href="/mypage/point.do" class="underline" id="myCommonRentalPoint">${mypage.point}P</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel05.png">
                        <p>결제 내역</p>
                        <a href="/mypage/carSeller.do" class="underline"
                           id="commonMyCarSellCount">0건</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel06.png">
                        <p>1:1문의</p>
                        <a href="/mypage/qna.do?typeCode=QNA" class="underline"
                           id="commonRentalConsultCount">${mypage.qna}건</a>
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
                       data-link-name="메뉴" data-link-text="렌터카 예약">렌터카 예약</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/point.do" class="nav-link">포인트</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/license.do" class="nav-link">운전면허증</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/myReview.do?typeCode=REVIEW" class="nav-link">이용 후기</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/qna.do?typeCode=QNA" class="nav-link">1:1 문의</a>
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
                    <th class="col-1">예약자명</th>
                    <td class="col-3">${member.name}</td>
                    <th class="col-1">전화번호</th>
                    <td class="col-3">${member.hp}</td>
                </tr>
                <tr>
                    <th>예약일자</th>
                    <td><fmt:formatDate value="${reservation.regDate}" pattern="yyyy-MM-dd"/></td>
                    <th>예약번호</th>
                    <td>${reservation.reservationNo}</td>
                </tr>
                <tr>
                    <th>대여일시</th>
                    <td><fmt:formatDate value="${reservation.rentalDate}" pattern="yyyy-MM-dd(E) HH:mm"/></td>
                    <th>반납일시</th>
                    <td><fmt:formatDate value="${reservation.returnDate}" pattern="yyyy-MM-dd(E) HH:mm"/></td>
                </tr>
                <tr>
                    <th>대여지점</th>
                    <td>${reservation.rentalPlaceName}</td>
                    <th>반납지점</th>
                    <td>${reservation.returnPlaceName}</td>
                </tr>
                <tr>
                    <th>대여주소</th>
                    <td>${reservation.rentalPlaceAddress}</td>
                    <th>반납주소</th>
                    <td>${reservation.returnPlaceAddress}</td>
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
                    <td colspan="3">${license.driverName}</td>
                </tr>
                <tr>
                    <th scope="row">법정생년월일</th>
                    <td><fmt:formatDate value="${license.driverBirth}" pattern="yyyy-MM-dd"/></td>
                    <th scope="row">휴대전화번호</th>
                    <td>${member.hp}</td>
                </tr>
                <tr>
                    <th scope="row">면허종류</th>
                    <td>${license.licenseGradeCode}</td>
                    <th scope="row">면허증번호</th>
                    <td>${license.licenseNumber}</td>
                </tr>
                <tr>
                    <th scope="row">갱신기간</th>
                    <td><fmt:formatDate value="${license.licenseTestDate}" pattern="yyyy-MM-dd"/></td>
                    <th scope="row">발급일</th>
                    <td><fmt:formatDate value="${license.licenseIssueDate}" pattern="yyyy-MM-dd"/></td>
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
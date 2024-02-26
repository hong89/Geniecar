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
    ul a{
        color: #f8f7fd;
        text-decoration: none;
    }
    aside {
        width: 300px;
        background-color: #f8f7fd;
    }

    aside .nav-link {

        color: #41087c;
    }

    .nav-item button {
        color: #41087c;
    }

    .nav-item button:hover {
        color: #41087c;
    }

    .nav-pills .nav-link.active,
    .nav-pills .show > .nav-link {
        background-color: #41087c !important;
        color: white;
    }

    #shortRental tr td {
        text-align: left;
    }

    .tab-content > div {
        padding: 30px;
    }
    .card-footer a{
        color: #23093d;
        text-decoration: none;
    }
    .cnacel {
        color: white;
        background-color: #41087c;
        opacity:0.8;
    }
    .card-header{
        background-color: #f8f7fd;
        min-height: 50px;
    }
    .card-footer{
        background-color: #f8f7fd;
        min-height: 50px;
    }
</style>
<script>
    $(function () {
        var now = new Date();
    })
</script>
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
                        <a href="/mypage/reservation.do" class="underline" id="commonMyCarSellCount">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel05.png">
                        <p>예약 내역</p>
                        <span class ="text-decoration-underline">${mypage.reservation}건</span></a>
                    </li>
                    <li class="col">
                        <a href="/mypage/point.do" class="underline" id="myCommonRentalPoint">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel02.png">
                        <p>포인트</p>
                        <span class ="text-decoration-underline">${mypage.point}P</span></a>
                    </li>
                    <li class="col">
                        <a href="/mypage/payment.do" class="underline" id="commonMyCarSellCount">
                        <img alt="" class="mb-1 " src="/images/icons/ico-receipt.png" width="57px">
                        <p>결제 내역</p>
                        <span class ="text-decoration-underline">${mypage.payment}건</span></a>
                    </li>
                    <li class="col">
                        <a href="/mypage/qna.do?typeCode=QNA" id="commonRentalConsultCount">
                        <img alt="" class="mb-2 pt-2" src="/images/icons/ico-myPannel06.png">
                        <p>1:1문의</p>
                        <span class ="text-decoration-underline">${mypage.qna}건</span></a>
                    </li>
                    <li class="col">
                        <a href="/mypage/license.do" id=""><img alt="" class="mb-2 pt-2" src="/images/icons/ico-driver-license.png" width="65px">
                        <p>운전면허증</p>
                        <span class ="text-decoration-underline">${mypage.license}</span></a>
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
                    <a href="/mypage/payment.do" class="nav-link">결제내역</a>
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
                <h2 class="fw-bolder">렌터카 예약</h2>
            </div>
            <div class="p-3">
                <ul class="nav nav-pills pb-3 border-bottom" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="contact-tab1" data-bs-toggle="tab"
                                data-bs-target="#contact1" type="button" role="tab" aria-controls="contact1"
                                aria-selected="true">전체
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab3" data-bs-toggle="tab" data-bs-target="#contact3"
                                type="button" role="tab" aria-controls="contact3" aria-selected="false">계약완료
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab4" data-bs-toggle="tab" data-bs-target="#contact4"
                                type="button" role="tab" aria-controls="contact4" aria-selected="false">이용중
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab5" data-bs-toggle="tab" data-bs-target="#contact5"
                                type="button" role="tab" aria-controls="contact5" aria-selected="false">이용완료
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab6" data-bs-toggle="tab" data-bs-target="#contact6"
                                type="button" role="tab" aria-controls="contact6" aria-selected="false">취소
                        </button>
                    </li>
                </ul>
                <c:set var="now" value="<%=new java.util.Date()%>" />
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active border-bottom text-center" id="contact1" role="tabpanel" aria-labelledby="contact-tab1">
                        <c:if test="${reservationList == []}">
                            <h5 class="mt-5 pt-3">이용중인 렌터카 차량이 없습니다.</h5>
                            <button type="button" class="btn m-3 mb-5" onClick="location.href='/reservation/index.do?regionType=1'" style="background-color: #41087c; color: #f8f7fd;">제주/내륙 렌터카 예약하기 </button>
                        </c:if>
                        <c:forEach var="reservation" items="${reservationList }">
                            <div class="card text-center mb-3" style="width: 80%">
                                <div class="card-header position-relative">
                                    <span class="position-absolute top-50 start-50 translate-middle">${reservation.carName}</span>
                                <c:if test="${reservation.cancelYn eq 'Y'}">
                                    <span class="rounded-pill p-1 ps-3 pe-3 me-3 position-absolute top-1 end-0 cnacel" >취소완료</span>
                                </c:if>
                                </div>
                                <div class="card-body">
                                    <div class="text-body-secondary">
                                        <table id="shortRental">
                                            <tr>
                                                <td style="width: 150px;">예약일자</td>
                                                <td><fmt:formatDate value="${reservation.regDate}" pattern="yyyy-MM-dd"/></td>
                                            </tr>
                                            <tr>
                                                <td>예약번호</td>
                                                <td>${reservation.reservationNo}</td>
                                            </tr>
                                            <tr>
                                                <td>대여일시/지점</td>
                                                <td><fmt:formatDate value="${reservation.rentalDate}" pattern="yyyy-MM-dd(E) HH:mm"/> / ${reservation.rentalPlaceName} </td>
                                            </tr>
                                            <tr>
                                                <td>반납일시/지점</td>
                                                <td><fmt:formatDate value="${reservation.returnDate}" pattern="yyyy-MM-dd(E) HH:mm"/> / ${reservation.rentalPlaceName}</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="card-footer position-relative">
                                    <a href="/mypage/reservationDetail.do?no=${reservation.reservationNo}" class="position-absolute top-50 start-50 translate-middle">상세정보 확인하기</a>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                    <div class="tab-pane fade border-bottom text-center" id="contact3" role="tabpanel" aria-labelledby="contact-tab3">
                        <c:if test="${reservationList == []}">
                            <h5 class="mt-5 pt-3">이용중인 렌터카 차량이 없습니다.</h5>
                            <button type="button" class="btn m-3 mb-5" onClick="location.href='/reservation/index.do?regionType=1'" style="background-color: #41087c; color: #f8f7fd;">제주/내륙 렌터카 예약하기 </button>
                        </c:if>
                        <c:forEach var="reservation" items="${reservationList }">
                            <c:if test="${reservation.cancelYn eq 'N' and reservation.rentalDate > now}">
                                <div class="card text-center mb-3" style="width: 80%">
                                    <div class="card-header position-relative">
                                        <span class="position-absolute top-50 start-50 translate-middle">${reservation.carName}</span>
                                    </div>
                                    <div class="card-body">
                                        <div class="text-body-secondary">
                                            <table id="shortRental">
                                                <tr>
                                                    <td style="width: 150px;">예약일자</td>
                                                    <td><fmt:formatDate value="${reservation.regDate}" pattern="yyyy-MM-dd"/></td>
                                                </tr>
                                                <tr>
                                                    <td>예약번호</td>
                                                    <td>${reservation.reservationNo}</td>
                                                </tr>
                                                <tr>
                                                    <td>대여일시/지점</td>
                                                    <td><fmt:formatDate value="${reservation.rentalDate}" pattern="yyyy-MM-dd(E) HH:mm"/> / ${reservation.rentalPlaceName} </td>
                                                </tr>
                                                <tr>
                                                    <td>반납일시/지점</td>
                                                    <td><fmt:formatDate value="${reservation.returnDate}" pattern="yyyy-MM-dd(E) HH:mm"/> / ${reservation.rentalPlaceName}</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="card-footer position-relative">
                                        <a href="/mypage/reservationDetail.do?no=${reservation.reservationNo}" class="position-absolute top-50 start-50 translate-middle">상세정보 확인하기</a>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                    <div class="tab-pane fade border-bottom text-center" id="contact4" role="tabpanel" aria-labelledby="contact-tab4">
                        <c:if test="${reservationList == []}">
                            <h5 class="mt-5 pt-3">이용중인 렌터카 차량이 없습니다.</h5>
                            <button type="button" class="btn m-3 mb-5" onClick="location.href='/reservation/index.do?regionType=1'" style="background-color: #41087c; color: #f8f7fd;">제주/내륙 렌터카 예약하기 </button>
                        </c:if>
                        <c:forEach var="reservation" items="${reservationList }">
                            <c:if test="${reservation.cancelYn eq 'N' and reservation.rentalDate < now and now < reservation.returnDate }">
                                <div class="card text-center mb-3" style="width: 80%">
                                    <div class="card-header position-relative">
                                        <span class="position-absolute top-50 start-50 translate-middle">${reservation.carName}</span>
                                    </div>
                                    <div class="card-body">
                                        <div class="text-body-secondary">
                                            <table id="shortRental">
                                                <tr>
                                                    <td style="width: 150px;">예약일자</td>
                                                    <td><fmt:formatDate value="${reservation.regDate}" pattern="yyyy-MM-dd"/></td>
                                                </tr>
                                                <tr>
                                                    <td>예약번호</td>
                                                    <td>${reservation.reservationNo}</td>
                                                </tr>
                                                <tr>
                                                    <td>대여일시/지점</td>
                                                    <td><fmt:formatDate value="${reservation.rentalDate}" pattern="yyyy-MM-dd(E) HH:mm"/> / ${reservation.rentalPlaceName} </td>
                                                </tr>
                                                <tr>
                                                    <td>반납일시/지점</td>
                                                    <td><fmt:formatDate value="${reservation.returnDate}" pattern="yyyy-MM-dd(E) HH:mm"/> / ${reservation.rentalPlaceName}</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="card-footer position-relative">
                                        <a href="/mypage/reservationDetail.do?no=${reservation.reservationNo}" class="position-absolute top-50 start-50 translate-middle">상세정보 확인하기</a>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                    <div class="tab-pane fade border-bottom text-center" id="contact5" role="tabpanel" aria-labelledby="contact-tab5">
                        <c:if test="${reservationList == []}">
                            <h5 class="mt-5 pt-3">이용중인 렌터카 차량이 없습니다.</h5>
                            <button type="button" class="btn m-3 mb-5" onClick="location.href='/reservation/index.do?regionType=1'" style="background-color: #41087c; color: #f8f7fd;">제주/내륙 렌터카 예약하기 </button>
                        </c:if>
                        <c:forEach var="reservation" items="${reservationList }">
                            <c:if test="${reservation.cancelYn eq 'N' and now > reservation.returnDate}">
                                <div class="card text-center mb-3" style="width: 80%">
                                    <div class="card-header position-relative">
                                        <span class="position-absolute top-50 start-50 translate-middle">${reservation.carName}</span>
                                    </div>
                                    <div class="card-body">
                                        <div class="text-body-secondary">
                                            <table id="shortRental">
                                                <tr>
                                                    <td style="width: 150px;">예약일자</td>
                                                    <td><fmt:formatDate value="${reservation.regDate}" pattern="yyyy-MM-dd"/></td>
                                                </tr>
                                                <tr>
                                                    <td>예약번호</td>
                                                    <td>${reservation.reservationNo}</td>
                                                </tr>
                                                <tr>
                                                    <td>대여일시/지점</td>
                                                    <td><fmt:formatDate value="${reservation.rentalDate}" pattern="yyyy-MM-dd(E) HH:mm"/> / ${reservation.rentalPlaceName} </td>
                                                </tr>
                                                <tr>
                                                    <td>반납일시/지점</td>
                                                    <td><fmt:formatDate value="${reservation.returnDate}" pattern="yyyy-MM-dd(E) HH:mm"/> / ${reservation.rentalPlaceName}</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="card-footer position-relative">
                                        <a href="/mypage/reservationDetail.do?no=${reservation.reservationNo}" class="position-absolute top-50 start-50 translate-middle">상세정보 확인하기</a>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                    <div class="tab-pane fade border-bottom text-center" id="contact6" role="tabpanel" aria-labelledby="contact-tab6">
                        <c:if test="${reservationList == []}">
                            <h5 class="mt-5 pt-3">이용중인 렌터카 차량이 없습니다.</h5>
                            <button type="button" class="btn m-3 mb-5" onClick="location.href='/reservation/index.do?regionType=1'" style="background-color: #41087c; color: #f8f7fd;">제주/내륙 렌터카 예약하기 </button>
                        </c:if>
                        <c:forEach var="reservation" items="${reservationList }">
                            <c:if test="${reservation.cancelYn eq 'Y'}">
                                <div class="card text-center mb-3" style="width: 80%">
                                    <div class="card-header position-relative">
                                        <span class="position-absolute top-50 start-50 translate-middle">${reservation.carName}</span>
                                        <span class="float-end ">취소</span>
                                    </div>
                                    <div class="card-body">
                                        <div class="text-body-secondary">
                                            <table id="shortRental">
                                                <tr>
                                                    <td style="width: 150px;">예약일자</td>
                                                    <td><fmt:formatDate value="${reservation.regDate}" pattern="yyyy-MM-dd"/></td>
                                                </tr>
                                                <tr>
                                                    <td>예약번호</td>
                                                    <td>${reservation.reservationNo}</td>
                                                </tr>
                                                <tr>
                                                    <td>대여일시/지점</td>
                                                    <td><fmt:formatDate value="${reservation.rentalDate}" pattern="yyyy-MM-dd(E) HH:mm"/> / ${reservation.rentalPlaceName} </td>
                                                </tr>
                                                <tr>
                                                    <td>반납일시/지점</td>
                                                    <td><fmt:formatDate value="${reservation.returnDate}" pattern="yyyy-MM-dd(E) HH:mm"/> / ${reservation.rentalPlaceName}</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="card-footer position-relative">
                                        <a href="/mypage/reservationDetail.do?no=${reservation.reservationNo}" class="position-absolute top-50 start-50 translate-middle">상세정보 확인하기</a>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                    <ul class="mt-3 lh-lg">
                        <li>최근 90일 이내 예약건만 확인이 가능합니다.</li>
                        <li>90일 이전 예약내역은 고객센터(1588-1230)로 문의해주시기 바랍니다.</li>
                    </ul>
                </div>
            </div>
        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
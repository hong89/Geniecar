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
    .table thead tr td {
        border-bottom:#41087c solid 3px;
        padding: 15px;
        font-size: 1.2em;
    }
    .table tbody tr td {
        border-bottom:#d1c9ff solid 2px;
        padding: 15px;
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
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel03.png">
                        <p>할인쿠폰</p>
                        <a href="/mypage/coupon.do" class="underline" id="myCommonRentalCoupon">${mypage.coupons}장</a>
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
                       data-link-name="메뉴" data-link-text="단기렌터카 예약">렌터카 예약</a>
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
            <section>
                <div class="pt-5">
                    <div class="inner-type2">
                        <p style="font-size:20px;">
                            <strong>${notice.title}</strong>
                            <span style="float: right; font-size:15px;">${notice.regDate}</span>
                        </p><hr/>
                        <div class="text-center">
                            <p>${notice.content}</p>
                            <div class="text-center">
                            <c:if test="${not empty imageFiles}">
                                <c:forEach var="imageFile" items="${imageFiles}">
                                    <c:if test="${not empty imageFile.saveName}">
                                        <div class="mb-3 row">
                                            <div class="col-sm-12">
                                                <img class="responsive-image" src="/downloadFile/${imageFile.saveName}" alt="images" width="300px" height="auto" aria-readonly="true">
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </c:if>
                        </div>
                    </div>
                    <div>
                        <div class="p-5" style="text-align: center;">
                            <a href="javascript:history.back();" class="btn text-white"
                               style="background-color: #41087c;">목록가기</a>
                            <a href="/mypage/deleteMyReview.do?no=${notice.no}&fileNo=${notice.fileNo}" class="btn text-white"
                               style="background-color: #41087c;">삭제하기</a>
                        </div>
                    </div>
                    </div>
                </div>
            </section>
        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
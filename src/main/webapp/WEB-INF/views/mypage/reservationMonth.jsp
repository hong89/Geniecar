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
                <h2 class="fw-bolder">월간단기렌터카 예약</h2>
            </div>
            <div class="p-3">
                <ul class="nav nav-pills nav-fill pb-3 border-bottom" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="contact-tab1" data-bs-toggle="tab"
                                data-bs-target="#contact1" type="button" role="tab" aria-controls="contact1"
                                aria-selected="true">전체
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab2" data-bs-toggle="tab" data-bs-target="#contact2"
                                type="button" role="tab" aria-controls="contact2" aria-selected="false">결제대기
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
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active border-bottom" id="contact1" role="tabpanel"
                         aria-labelledby="contact-tab1">
                        <div class="text-center mt-3 mb-3 pd-5 ">
                            <h5><br><br><br><br>월간단기렌터카 예약 내역이 없습니다.<br><br><br><br></h5>
                        </div>
                    </div>
                    <div class="tab-pane fade border-bottom" id="contact2" role="tabpanel"
                         aria-labelledby="contact-tab2">.2..
                    </div>
                    <div class="tab-pane fade border-bottom" id="contact3" role="tabpanel"
                         aria-labelledby="contact-tab3">.3..
                    </div>
                    <div class="tab-pane fade border-bottom" id="contact4" role="tabpanel"
                         aria-labelledby="contact-tab4">.4..
                    </div>
                    <div class="tab-pane fade border-bottom" id="contact5" role="tabpanel"
                         aria-labelledby="contact-tab5">.5..
                    </div>
                    <div class="tab-pane fade border-bottom" id="contact6" role="tabpanel"
                         aria-labelledby="contact-tab6">.6..
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
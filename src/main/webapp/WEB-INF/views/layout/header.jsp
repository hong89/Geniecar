<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <div class="col-md-3 mb-2 mb-md-0">
            <a class="navbar-brand fs-3 fw-bold" href="/main/index.do">
                <img src="/images/common/logo-image.png" alt="Logo" width="35" height="50"
                     class="d-inline-block align-text-top">
                GENIECAR
            </a>
        </div>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" data-bs-toggle="dropdown" href="#" role="button"
                   aria-expanded="false">빠른 예약</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/reservation/index.do?regionType=1">내륙 예약</a></li>
                    <li><a class="dropdown-item" href="/reservation/index.do?regionType=2">제주 예약</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" data-bs-toggle="dropdown" href="#" role="button"
                   aria-expanded="false">단기 렌터카 안내</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/info/shortMonth.do">월 단기 렌터카</a></li>
                    <li><a class="dropdown-item" href="/info/commuteRent.do">출퇴근 렌터카</a></li>
                    <li><a class="dropdown-item" href="/info/pay.do">대여 및 요금 안내</a></li>
                    <li><a class="dropdown-item" href="/info/checkIn.do">체크인 서비스</a></li>
                    <li><a class="dropdown-item" href="/info/service.do">부가 서비스</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" data-bs-toggle="dropdown" href="#" role="button"
                   aria-expanded="false">지점안내</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/branch/allBranchArea.do">전국지점</a></li>
                    <li><a class="dropdown-item" href="/branch/jejuAuto.do">제주 오토 하우스</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" data-bs-toggle="dropdown" href="#" role="button"
                   aria-expanded="false">고객 지원</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/customer/noticeNewsMain.do?typeCode=NOTICE">공지사항</a></li>
                    <li><a class="dropdown-item" href="/customer/eventMain.do?typeCode=EVENT">이벤트</a></li>
                    <li><a class="dropdown-item" href="/customer/faq.do?typeCode=FAQ">FAQ</a></li>
                    <li><a class="dropdown-item" href="/customer/consult.do">상담 신청</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link text-dark" href="/customer/reviewMain.do?typeCode=REVIEW" role="button"
                   aria-expanded="false">이용후기</a>
            </li>

        </ul>


        <!-- c:if 임시 처리 / 추후 결정나면 변경 -->
        <!-- 비회원 -->
        <c:if test="${memberInfo == null}">
            <div class="col-md-3 text-end">
                <button type="button" class="btn" style="border: 1px solid #41087c"
                        onclick="location.href='/login/login.do'">로그인
                </button>
                <button type="button" class="btn text-white" style="background: #41087c"
                        onclick="location.href='/member/join.do'">회원가입
                </button>
            </div>
        </c:if>
        <div class="b-example-divider"></div>
        <!-- 회원 -->
        <c:if test="${memberInfo != null}">
            <div class="col-md-3 text-end">
                <button type="button" class="btn" style="border: 1px solid #41087c"
                        onclick="location.href='/login/logout.do'">로그아웃
                </button>
                <button type="button" class="btn text-white" style="background: #41087c"
                        onclick="location.href='/mypage/reservation.do'">마이페이지

                <c:if test="${memberInfo.type eq 'B'}">
                    <button type="button" class="btn text-white" style="background: #41087c; margin-left: 4px;"
                            onclick="location.href='/business/rental/rentReservation.do'">사업자전용
                    </button>
                </c:if>
                <c:if test="${memberInfo.type eq 'A'}">
                    <button type="button" class="btn text-white" style="background: #41087c; margin-left: 4px;"
                            onclick="location.href='/admin/rental/rentReservation.do'">관리자전용
                    </button>
                </c:if>
            </div>
        </c:if>

    </header>
</div>
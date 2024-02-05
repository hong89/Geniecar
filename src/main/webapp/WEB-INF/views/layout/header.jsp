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
                    <li><a class="dropdown-item" href="/reservation/index.do">내륙 예약</a></li>
                    <li><a class="dropdown-item" href="/reservation/index.do">제주 예약</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" data-bs-toggle="dropdown" href="#" role="button"
                   aria-expanded="false">단기 렌터카 상품</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/reservation/shortMonth/info.do">월 단기 렌터카</a></li>
                    <li><a class="dropdown-item" href="/carlife/commuteRent.do">출퇴근 렌터카</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" data-bs-toggle="dropdown" href="#" role="button"
                   aria-expanded="false">단기 렌터카 안내</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/reservation/shortInfo/pay.do">대여 및 요금 안내</a></li>
                    <li><a class="dropdown-item" href="/reservation/shortInfo/checkIn.do">체크인 서비스</a></li>
                    <li><a class="dropdown-item" href="/reservation/shortInfo/service.do">부가 서비스</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" data-bs-toggle="dropdown" href="#" role="button"
                   aria-expanded="false">지점안내</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/info/allBranchArea.do">전국지점</a></li>
                    <li><a class="dropdown-item" href="/carlife/jejuAuto.do">제주 오토 하우스</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-dark" data-bs-toggle="dropdown" href="#" role="button"
                   aria-expanded="false">고객 지원</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="/info/noticeNewsMain.do?typeCode=NOTICE">공지사항</a></li>
                    <li><a class="dropdown-item" href="/carlife/eventMain.do">이벤트</a></li>
                    <li><a class="dropdown-item" href="/customer/question.do">1:1 고객센터</a></li>
                    <li><a class="dropdown-item" href="/customer/faq.do?typeCode=FAQ">자주하는 질문</a></li>
                </ul>
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
                        onclick="location.href='/mypage/main.do'">마이페이지
                </button>
                <c:if test="${null}">
                    <button type="button" class="btn text-white" style="background: #41087c"
                            onclick="location.href='#'">사업자전용
                    </button>
                </c:if>
                <c:if test="${!null}">
                    <button type="button" class="btn text-white" style="background: #41087c"
                            onclick="location.href='/admin/main/index.do'">관리자전용
                    </button>
                </c:if>
            </div>
        </c:if>

    </header>
</div>
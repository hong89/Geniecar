<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    function oninputPhone(target) {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
    }
    function submitForm() {
        alert("상담신청이 정상적으로 접수 되었습니다.");
        document.registerForm.submit();
    }
</script>
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
                       data-link-name="메뉴" data-link-text="단기렌터카 예약">렌터카 예약</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/point.do" class="nav-link">포인트</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/license.do" class="nav-link">운전면허증</a>
                </li>
                <li class="nav-item mb-4">
<<<<<<< HEAD
                    <a href="/mypage/myReview.do?typeCode=REVIEW" class="nav-link">이용 후기</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/consult.do" class="nav-link">상담 신청</a>
                </li>
                <li class="nav-item mb-4">
=======
>>>>>>> HKY
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
        <div id="registerForm">
            <div class="border-bottom pb-3">
                <h2 class="fw-bolder">상담 신청</h2>
                <p>※ 성함과 연락처를 남겨 주시면 전문 상담사가 빠른 시일 내에 연락드리겠습니다.
                </p>
            </div>            
                <%--<form name = "registerForm" action="/admin/board/insertBoard.do?returnUrl=/mypage/consult.do" method="post" enctype="multipart/form-data">--%>
                <form name = "registerForm" action="/mypage/insertBoard.do" method="post" enctype="multipart/form-data">
                    <div class="row p-1 m-2">
                        <div class="col-6">
                            <input type="hidden" id="typeCode" name="typeCode" class="form-control" value="CONSULTING">
                        </div>
                    </div>
                    <div class="row p-1 m-2">
                        <div class="col-2">
                            <label for="title" class="col-form-label">성함</label>
                        </div>
                        <div class="col-6">
                            <input type="text" id="title" name="title" class="form-control">
                        </div>
                    </div>
                    <div class="row p-1 m-2">
                        <div class="col-2">
                            <label for="content" class="col-form-label">연락처</label>
                        </div>
                        <div class="col-6">
                            <input type="text" id="content" name="content" class="form-control" oninput="oninputPhone(this)" maxlength="13">
                        </div>
                    </div>
                    <div class="mb-3 row" style="display: none;">
                        <label for="fileMultiple" class="col-sm-2 col-form-label">파일</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="file" id="fileMultiple" name="file" multiple>
                        </div>
                    </div>
                    <div class="text-center m">
                        <button type="button" class="btn" style="border: 1px solid #41087c; width: 120px;" onclick="history.back()">취소</button>
                        <button type="button" class="btn text-white" style="background: #41087c; width: 120px;" onclick="submitForm();">상담 신청하기</button>
                    </div>
                </form>
            </div>
        </article>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
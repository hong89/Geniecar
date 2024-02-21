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
</style>
<script>
    $(function() {
        
        let msg = "${msg}";
        if(msg ==="ok") {alert("비밀번호가 변경되었습니다.")};
        if(msg ==="not") {alert("현재 비밀번호가 일치하지 않습니다.")};

        var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*?_]).{8,16}$/;

        $('#btnSubmit').click(function () {
            var currentPw = $('#currentPw').val();
            var password1 = $('#password1').val();
            var password2 = $('#password2').val();
            if (currentPw === "") {
                alert("현재 비밀번호를 입력하세요");
                $("#currentPw").focus();
                return false;
            }else if (password1 === "") {
                alert("새 비밀번호를 입력하세요");
                $("#password1").focus();
                return false;
            } else if (!passwordRegex.test(password1)) {
                    alert("비밀번호는 8~20자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.");
                    return false;
            }else if(password2 === "") {
                alert("새 비밀번호 확인을 입력하세요");
                $("#password2").focus();
                return false;
            } else if (password1 !== password2) {
                alert("비밀번호가 일치하지 않습니다.");
                return false;
            }
            $('#pw').val(password1);
            $('#passwordForm').submit();
            
        });
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
                       data-link-name="메뉴" data-link-text="단기렌터카 예약">단기렌터카 예약</a>
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
            <div class="border-bottom pb-5">
                <h2 class="fw-bolder">비밀번호 변경</h2>
            </div>
            <form name = "passwordForm" id ="passwordForm" action="/mypage/member/changepw.do" method="post">
                <div class="row p-1 m-2">
                    <div class="col-2">
                        <label for="currentPw" class="col-form-label">현재 비밀번호</label>
                    </div>
                    <div class="col-6">
                        <input type="password" id="currentPw" name="currentPw" class="form-control">
                    </div>
                </div>
                <div class="row p-1 m-2">
                    <div class="col-2">
                        <label for="password1" class="col-form-label">새 비밀번호</label>
                    </div>
                    <div class="col-6">
                        <input type="password" id="password1" name="password1" class="form-control">
                    </div>
                </div>
                <div class="row p-1 m-2">
                    <div class="col-2">
                        <label for="password2" class="col-form-label">새 비밀번호 확인</label>
                    </div>
                    <div class="col-6">
                        <input type="password" id="password2" name="password2" class="form-control">
                        <input type="hidden" name="id" value="${member.id}" >
                        <input type="hidden" id="pw" name="pw">
                    </div>
                </div>
                <div class="text-center m">
                    <button type="button" class="btn" style="border: 1px solid #41087c; width: 110px;" onclick="history.back()">취소</button>
                    <button type="" class="btn text-white" id="btnSubmit" style="background: #41087c; width: 110px;">변경하기</button>
                </div>
            </form>
        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
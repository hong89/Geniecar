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
    $(function () {
        $('#submitBtn').click(function () {
            var check = $('input:checkbox[name="check"]:checked').val();
            if(check == null||check != 'on'){
                alert("탈퇴하시기 전 유의사항을 확인해주세요.");
                return false;
            } else if(check === 'on') {
                if(confirm("탈퇴하시겠습니까?")){
                    $("#leave").submit();
                }else{
                    alert("오류");
                }
            }
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


    <header>
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
    </header>

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
                <h2 class="fw-bolder">회원탈퇴</h2>
            </div>
            <div class="mt-4 mb-4 p-3 text-center" style="background-color: #f8f7fd;">
                <h3 class="fw-bolder mt-4 p-3">그동안 지니카를 이용해 주셔서 감사합니다.</h3>
                <p class="sub-txt mt-4 mb-5">유의사항을 확인바랍니다.</p>
            </div>
            <ul class="lst dot mt-20 lh-base">
                <li>최초 가입 시 이용약관에 명시되어 있듯이 고객님의 가입정보는 탈퇴하셔도 추후 발생할 후 있는 사항(교통범칙금 및 법규위반, 가입포인트 외) 으로
                    인해 지속적으로 보존되오니 참고하시기 바랍니다.
                </li>
                <li>회원탈퇴를 하시면 고객님께서 보유하고 계신 포인트는 영구히 삭제됩니다.</li>
                <li>자진탈퇴 (회원자격상실제외) 후 신규가입은 48시간 이후 가능합니다.</li>
                <li class="fw-bolder" style="color: #905dbe;">그래도 탈퇴를 원하시면 아래의 사항을 기재하여 주시기 바랍니다. 감사합니다.</li>
            </ul>
            <form method="post" name="leave" id="leave" action="/mypage/leave.do">
                <div class="section-form type3 mb-3">
                    <div class="row">
                        <ul class="agree-list">
                            <li>
                                <div class="box-type2">
                                    <div class="chk-icon-box text-center">
                                        <input type="checkbox" id="check" name="check"/>
                                        <label for="check"> 위 유의사항을 모두 확인하였고 회원탈퇴에 동의합니다. </label>
                                        <input type="hidden" name="id" value="${member.id}" />
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </form>
            <div class="btn-area row">
                <div class="col-4"></div>
                <button type="button" class="btn col" onclick="history.back()">취소</button>
                <button type="button" id ="submitBtn" class="btn col" style="background-color: #41087c; color: #f8f7fd;">탈퇴</button>
                <div class="col-4"></div>
            </div>
        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
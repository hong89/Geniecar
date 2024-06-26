<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    $(document).ready(function() {
    $(".increaseHit").click(function(e) {
        e.preventDefault(); // 기본 동작 방지

        var articleUrl = $(this).attr("href"); // 해당 글의 URL 가져오기
        var no = $(this).data("no");

        $.ajax({
            type: "POST",
            url: "/admin/board/increaseHit.do",
            data: { no: no },
            success: function(response) {
                console.log("Hit increased successfully.");
                window.location.href = articleUrl;
            },
            error: function(xhr, status, error) {
                console.error("Error occurred while increasing hit:", error);
                window.location.href = articleUrl;
            }
        });
    });
});
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
    .table thead tr td {
        border-bottom:#41087c solid 3px;
        padding: 15px;
        font-size: 1.2em;
    }
    .table tbody tr td {
        border-bottom:#d1c9ff solid 2px;
        padding: 15px;
    }
    .card img {
        width: 100%;
        height: 200px;
        max-width: 100%;
        max-height: 100%;
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
                        <a href="/mypage/reservation.do" id="commonMyCarSellCount">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel05.png">
                        <p>예약 내역</p>
                        <span class ="text-decoration-underline">${mypage.reservation}건</span></a>
                    </li>
                    <li class="col">
                        <a href="/mypage/point.do" id="myCommonRentalPoint">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel02.png">
                        <p>포인트</p>
                        <span class ="text-decoration-underline">${mypage.point}P</span></a>
                    </li>
                    <li class="col">
                        <a href="/mypage/payment.do" id="commonMyCarSellCount">
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
                       data-link-name="메뉴" data-link-text="단기렌터카 예약">렌터카 예약</a>
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
            <section>
                <div class="pt-5">
                    <div class="inner-type2">
                        <section class="text-center">
                            <h1 class="tit">이용 후기</h1>
                        </section>
                        <div class="pt-3">
                            <p>
                                <span class="icon time2"></span><strong style="font-size: 30px;">이용 후기</strong>
                                <span class="icon date2"></span>
                            </p>
                        </div><hr/>
                        
                        <div class="row row-cols-1 row-cols-md-3 g-4 P-5">
                            <c:forEach var="notice" items="${boardList}">
                            <div class="col">
                              <div class="card h-100">
                                <a href="/mypage/myReviewDetail.do?no=${notice.no}" class="increaseHit" data-no="${notice.no}" style="text-decoration-line: none; color:black">
                                    <c:forEach var="imageFile" items="${notice.imageFiles}">
                                        <c:if test="${not empty imageFile.saveName}">
                                            <img src="/downloadFile/${imageFile.saveName}" alt="images">
                                        </c:if>
                                    </c:forEach>
                                <div class="card-body">
                                  <h5 class="card-title" style="overflow: hidden; height:70px;">${notice.title}</h5><hr/>
                                  <p class="card-text" style="overflow: hidden; height:70px;">${notice.content}</p>
                                </div>
                                <div class="card-footer">작성일 :&nbsp;
                                  <small class="text-muted"><fmt:formatDate value="${notice.regDate}" pattern="yyyy-MM-dd"/></small>
                                </div>
                                <div class="card-footer">조회수 :&nbsp;
                                    <small class="text-muted">${notice.hit}</small>
                                  </div>
                                </a>
                              </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </section>
        </article>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
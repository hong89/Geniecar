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
                <h2 class="fw-bolder">포인트 사용내역</h2>
            </div>
            <div class="p-5 m-3 row text-center" style="background-color: #f8f7fd;">
                <div class="col"><h4 class="fw-bold">잔여포인트  <span style="color: #41087c;"><c:if test='${!(point != null)}'>0</c:if>${point.currentPoint}P</span></h4></div>
                <div class="col"><h4 class="fw-bold">사용포인트  <span style="color: #41087c;"><c:if test='${!(point != null)}'>0</c:if>${point.totalUsePoint}P</span></h4></div>
            </div>

            <div class="p-3">
                <ul class="nav nav-bars nav-pills border-bottom" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="contact-tab1" data-bs-toggle="tab"
                                data-bs-target="#contact1" type="button" role="tab" aria-controls="contact1"
                                aria-selected="true">전체
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab2" data-bs-toggle="tab" data-bs-target="#contact2"
                                type="button" role="tab" aria-controls="contact2" aria-selected="false">적립
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab3" data-bs-toggle="tab" data-bs-target="#contact3"
                                type="button" role="tab" aria-controls="contact3" aria-selected="false">사용
                        </button>
                    </li>
                </ul>
            </div>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active p-3" id="contact1" role="tabpanel" aria-labelledby="contact-tab1">
                    <table class="table table-bordered align-middle text-center p-3 mt-3 mb-3">
                        <thead bgcolor="#f8f7fd" class="p-3">
                            <th style="width: 55.4%;">내역</th>
                            <th style="width: 22.3%;"> 적립일/사용일</th>
                            <th>포인트</th>
                        </thead>
                        <tbody class="p-3">
                            <c:forEach var="point" items="${pointList }">
                                <tr>
                                    <td>${point.history}</td>
                                    <td><fmt:formatDate value="${point.regDate}" pattern="yyyy-MM-dd" /></td>
                                    <td>${point.increase}${point.point}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <p>총 대여 포인트가 50,000 이상 적립된 경우, 지니카 전국 어느 지점에서나 차량 대여 시, 잔여 포인트 사용 가능합니다.
                        (단, 편도 반납수수료, 유류비 등 기타 비용제외)</p>
                </div>
                <div class="tab-pane fade" id="contact2" role="tabpanel" aria-labelledby="contact-tab2">
                    <table class="table table-bordered align-middle text-center p-3 mt-3 mb-3">
                        <thead bgcolor="#f8f7fd" class="p-3">
                            <th style="width: 55.4%;">사용 내역</th>
                            <th style="width: 22.3%;"> 적립일</th>
                            <th>포인트</th>
                        </thead>
                        <tbody class="p-3">
                            <c:forEach var="point" items="${pointList }">
                                <c:if test="${point.increase eq '+'}">
                                    <tr>
                                        <td>${point.history}
                                        </td>
                                        <td><fmt:formatDate value="${point.regDate}" pattern="yyyy-MM-dd" /></td>
                                        <td>${point.increase}${point.point}</td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </tbody>
                    </table>
                    <p>총 대여 포인트가 50,000 이상 적립된 경우, 지니카 전국 어느 지점에서나 차량 대여 시, 잔여 포인트 사용 가능합니다.
                        (단, 편도 반납수수료, 유류비 등 기타 비용제외)</p>
                </div>
                <div class="tab-pane fade" id="contact3" role="tabpanel" aria-labelledby="contact-tab3">
                    <table class="table table-bordered align-middle text-center p-3 mt-3 mb-3">
                        <thead bgcolor="#f8f7fd" class="p-3">
                            <th style="width: 55.4%;">사용 내역</th>
                            <th style="width: 22.3%;">사용일</th>
                            <th>포인트</th>
                        </thead>
                        <tbody class="p-3">
                            <c:forEach var="point" items="${pointList }">
                                <c:if test="${point.increase eq '-'}">
                                    <tr>
                                        <td>${point.history}
                                        </td>
                                        <td><fmt:formatDate value="${point.regDate}" pattern="yyyy-MM-dd" /></td>
                                        <td>${point.increase}${point.point}</td>
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </tbody>
                    </table>
                    <p>총 대여 포인트가 50,000 이상 적립된 경우, 지니카 전국 어느 지점에서나 차량 대여 시, 잔여 포인트 사용 가능합니다.
                        (단, 편도 반납수수료, 유류비 등 기타 비용제외)</p>
                </div>
            </div>
        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
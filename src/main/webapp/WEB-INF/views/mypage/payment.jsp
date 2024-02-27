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
            <div class="border-bottom pb-5">
                <h2 class="fw-bolder">결제 내역</h2>
            </div>
            <table class = 'table'>
                <thead>
                    <tr class="text-center">
                        <td>상태</td>
                        <td>예약번호</td>
                        <td>결제일시</td>
                        <td>결제수단</td>
                        <td>금액</td>
                        <td>예약상세내역</td>
                    </tr>
                </thead>
                <tbody>
                    <c:if test="${paymentList == []}">
                        <tr>
                            <td colspan="6" class="text-center"><h5 class="mt-5 mb-5">결제 내역이 없습니다.</h5></td>
                        </tr>
                    </c:if>
                    <c:forEach var="payment" items="${paymentList}">
                        <tr class="text-center">
                            <td>${payment.status}</td>
                            <td>${payment.merchantUid}</td>
                            <td><fmt:formatDate value="${payment.regDate}" pattern="yyyy-MM-dd hh:mm" /></td>
                            <td>${payment.cardName}</td>
                            <td>${payment.paidAmount}원</td>
                            <td><a href="/mypage/reservationDetail.do?no=${payment.merchantUid}">보러가기</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
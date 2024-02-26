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

    .reservationTable tr th {
        background: #f8f7fd;
    }

    .reservationTable tr th, .reservationTable tr td {
        height: 70px;
        vertical-align: middle;
        padding-left: 25px;
    }
</style>
<script>
    $(function() {    
        let msg = "${msg}";
        if(msg.length != 0){alert(msg);}
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
                        <a href="/mypage/reservation.do" class="underline" id="commonMyCarSellCount">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel05.png">
                        <p>예약 내역</p>
                        <span class ="text-decoration-underline">${mypage.reservation}건</span></a>
                    </li>
                    <li class="col">
                        <a href="/mypage/point.do" class="underline" id="myCommonRentalPoint">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel02.png">
                        <p>포인트</p>
                        <span class ="text-decoration-underline">${mypage.point}P</span></a>
                    </li>
                    <li class="col">
                        <a href="/mypage/payment.do" class="underline" id="commonMyCarSellCount">
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
                       data-link-name="메뉴" data-link-text="렌터카 예약">렌터카 예약</a>
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
            <div class="border-bottom pb-5 mb-5">
                <h2 class="fw-bolder">단기 렌터카예약</h2>
            </div>
            <form action="/mypage/reservationCancel.do" method="get">
                <table class="table table-bordered reservationTable mb-5">
                    <tr>
                        <th class="col-1">예약자명</th>
                        <td class="col-3">${member.name}</td>
                        <th class="col-1">전화번호</th>
                        <td class="col-3">${member.hp}</td>
                    </tr>
                    <tr>
                        <th>예약일자</th>
                        <td><fmt:formatDate value="${reservation.regDate}" pattern="yyyy-MM-dd"/></td>
                        <th>예약번호</th>
                        <td>${reservation.reservationNo}</td>
                        <input type ="hidden" name = "no" value="${reservation.reservationNo}">
                    </tr>
                    <tr>
                        <th>대여일시</th>
                        <td><fmt:formatDate value="${reservation.rentalDate}" pattern="yyyy-MM-dd(E) HH:mm"/></td>
                        <th>반납일시</th>
                        <td><fmt:formatDate value="${reservation.returnDate}" pattern="yyyy-MM-dd(E) HH:mm"/></td>
                    </tr>
                    <tr>
                        <th>대여지점</th>
                        <td>${reservation.rentalPlaceName}</td>
                        <th>반납지점</th>
                        <td>${reservation.returnPlaceName}</td>
                    </tr>
                    <tr>
                        <th>대여주소</th>
                        <td>${reservation.rentalPlaceAddress}</td>
                        <th>반납주소</th>
                        <td>${reservation.returnPlaceAddress}</td>
                    </tr>
                </table>
                <h4 class="fw-bolder mb-3">자차손해 면책제도 (CDW)</h4>
                <table class="table table-bordered reservationTable mb-5">
                    <tr>
                        <c:if test= '${reservation.addPrice eq "0" }'><th scope="row">사고시 면택금 100% 부담 <span class="ps-5" >0원</span></th></c:if>
                        <c:if test= '${reservation.addPrice eq "10000" }'><th scope="row">사고시 면책금 30만원 <span class="ps-5">10,000원</span></th></c:if>
                        <c:if test= '${reservation.addPrice eq "12000" }'><th scope="row">사고시 면책금 10만원 <span class="ps-5">12,000원</span></th></c:if>
                        <c:if test= '${reservation.addPrice eq "20000" }'><th scope="row">고객부담금 면제 <span class="ps-5">20,000원</span></th></c:if>
                    </tr>
                </table>
                <h4 class="fw-bolder mb-3">예약자 운전면허 정보</h4>
                <table class="table table-bordered reservationTable mb-5">
                    <tr>
                        <th scope="row">이름</th>
                        <td colspan="3">${license.driverName}</td>
                    </tr>
                    <tr>
                        <th scope="row" class = "col-2">법정생년월일</th>
                        <td class = "col-3"><fmt:formatDate value="${license.driverBirth}" pattern="yyyy-MM-dd"/></td>
                        <th class = "col-2" scope="row">휴대전화번호</th>
                        <td class = "col-3">${member.hp}</td>
                    </tr>
                    <tr>
                        <th scope="row">면허종류</th>
                        <td>${license.licenseGradeCode}</td>
                        <th scope="row">면허증번호</th>
                        <td>${license.licenseNumber}</td>
                    </tr>
                    <tr>
                        <th scope="row">갱신기간</th>
                        <td><fmt:formatDate value="${license.licenseTestDate}" pattern="yyyy-MM-dd"/></td>
                        <th scope="row">발급일</th>
                        <td><fmt:formatDate value="${license.licenseIssueDate}" pattern="yyyy-MM-dd"/></td>
                    </tr>
                </table>
                <h4 class="fw-bolder mb-3">결제 정보</h4>
                <table class="table table-bordered reservationTable mb-5">
                    <tr>
                        <th scope="row" class="col-2"><strong>결제금액</strong></td>
                        <td class="col-3">${payment.paidAmount}원</td>
                        <th scope="row" class="col-2"><strong>결제상태</strong></td>
                        <td class="col-3">${payment.status}</td>
                    </tr>
                    <tr>
                        <th><strong>카드종류</strong></td>
                        <td>${payment.cardName}</td>
                        <th><strong>카드번호</strong></td>
                        <td>${payment.cardNumber}</td>
                    </tr>
                    <tr>
                        <th><strong>할부개월</strong></td>
                        <td>${payment.cardQuota == null ? '' : payment.cardQuota == 0 ? '일시불' : payment.cardQuota + '개월'}</td>
                        <th><strong>결제 날짜</strong></td>
                        <td><fmt:formatDate value="${payment.regDate}" pattern="yyyy-MM-dd(E) HH:mm"/> </td>
                    </tr>
                </table>
                <ul class="mt-3 lh-lg">
                    <li>최근 90일 이내 예약건만 확인이 가능합니다.</li>
                    <li>90일 이전 예약내역은 고객센터(1588-1230)로 문의해주시기 바랍니다.</li>
                </ul>
                <div class="text-center">
                    <c:if test="${reservation.cancelYn eq 'N'}"><input type = "submit" class="btn mt-4 mb-5" value="예약 취소" style="border: 1px solid #41087c; width: 110px;"></c:if>
                    <button type="button" class="btn mt-4 mb-5 text-white" onclick='location.href="/mypage/reservation.do"' style="background-color: #41087c; width: 110px;">목록</button>
                </div>
            </form>
            
        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
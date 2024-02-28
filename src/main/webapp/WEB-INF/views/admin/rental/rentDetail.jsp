<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
    #reservationTable tr td, #paymentTable tr td {
        font-size: 18px;
        padding: 13px;
        vertical-align: middle;
    }

    #reservationTable {
        height: 360px;
    }

    #paymentTable {
        height: 240px;
    }

    #reservationTable tr td:nth-child(odd), #paymentTable tr td:nth-child(odd) {
        background: #f8f7fd;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <h1 class="pb-5 tit"> 예약 상세</h1>
            <table class="table table-bordered border-secondary p-5" id="reservationTable">
                <tr>
                    <td class="col-2"><strong>예약자명</strong></td>
                    <td class="col-3">${reservation.reservationMemberName}</td>
                    <td class="col-2"><strong>전화번호</strong></td>
                    <td class="col-3">${reservation.reservationMemberHp}</td>
                </tr>
                <tr>
                    <td><strong>예약일자</strong></td>
                    <td><fmt:formatDate value="${reservation.regDate}" pattern="yyyy-MM-dd"/></td>
                    <td><strong>예약번호</strong></td>
                    <td>${reservation.reservationNo}</td>
                </tr>
                <tr>
                    <td><strong>차량명</strong></td>
                    <td>${reservation.carName}</td>
                    <td><strong>차량번호</strong></td>
                    <td class="col">${fn:substring(reservation.carIdentificationNumber, 11, 13)}허
                        ${fn:substring(reservation.carIdentificationNumber, 13, 17)}</td>
                </tr>
                <tr>
                    <td><strong>차량타입</strong></td>
                    <td>${reservation.typeName}</td>
                    <td><strong>연료타입</strong></td>
                    <td>${reservation.fuelName}</td>
                </tr>
                <tr>
                    <td><strong>대여일시</strong></td>
                    <td><fmt:formatDate value="${reservation.rentalDate}" pattern="yyyy-MM-dd HH:mm"/></td>
                    <td><strong>반납일시</strong></td>
                    <td><fmt:formatDate value="${reservation.returnDate}" pattern="yyyy-MM-dd HH:mm"/></td>
                </tr>
                <tr>
                    <td><strong>대여지점</strong></td>
                    <td>${reservation.rentalPlaceName}</td>
                    <td><strong>반납지점</strong></td>
                    <td>${reservation.returnPlaceName}</td>
                </tr>
            </table>

            <h5 class="text-start pt-5">결제내역</h5>
            <table class="table table-bordered border-secondary p-5" id="paymentTable">
                <tr>
                    <td class="col-2"><strong>결제금액</strong></td>
                    <td class="col-3">${reservation.finalReservationPrice}원</td>
                    <td class="col-2"><strong>결제상태</strong></td>
                    <td class="col-3">${reservation.status}</td>
                </tr>
                <tr>
                    <td><strong>카드종류</strong></td>
                    <td>${reservation.cardName}</td>
                    <td><strong>카드번호</strong></td>
                    <td>${reservation.cardNumber}</td>
                </tr>
                <tr>
                    <td><strong>결제방식</strong></td>
                    <td>${reservation.pgProvider}</td>
                    <td><strong>할부개월</strong></td>
                    <td>${reservation.cardQuota == null ? '' : reservation.cardQuota == 0 ? '일시불' : reservation.cardQuota + '개월'}</td>
                </tr>
                <tr>
                    <td><strong>승인일시</strong></td>
                    <td colspan="3">${reservation.paidAt}</td>
                </tr>
            </table>

        </div>
        <div class="pt-5">
            <button type="button" class="btn text-white" style="background: #41087c"
                    onclick="history.back()">목록가기
            </button>
        </div>
    </div>
</div>

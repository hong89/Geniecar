<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
    #reservationTable tr td {
        font-size: 18px;
        padding: 13px;
        vertical-align: middle;
    }

    #reservationTable {
        height: 600px;
    }

    #reservationTable tr td:nth-child(odd) {
        background: #f8f7fd;
    }
</style>
<script>
    $(function () {
        $('#cancelBtn').on('click', function () {
            var reservationNo = $('#reservationNo').val();
            var cancel = confirm("정말로 취소하시겠습니까?");
            if (cancel) {
                $.get("/business/rental/cancel.do", {reservationNo: reservationNo}, function (res) {
                    alert('예약취소가 완료되었습니다.');
                });
                location.replace("rentReservation.do");

            } else {
                alert('예약취소가 취소되었습니다.');
            }
        });
    });
</script>
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
        </div>
        <input type="hidden" id="reservationNo" value="${reservation.reservationNo}" />
        <div class="pt-5">
            <button type="button" class="btn text-white" style="background: #41087c"
                    onclick="location.href='rentReservation.do'">목록가기
            </button>
            <c:if test="${checkBtn != null}">
                <button type="button" class="btn text-white" style="background: #41087c" id="cancelBtn">예약취소
                </button>
            </c:if>
        </div>
    </div>
</div>

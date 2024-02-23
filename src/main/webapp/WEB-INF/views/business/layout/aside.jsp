<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style>
    .list-group-item p a {
        text-decoration: none;
        color: black;
    }

    .list-group-item p {
        line-height: 120%;
    }

    .list-group-item p:first-child {
        background: #41087c;
        color: white;
        padding: 7px;
    }

</style>
<div>
    <ul class="list-group">
        <li class="list-group-item"><p>렌트 예약 관리</p>
            <p><a href="/business/rental/rentReservation.do">렌트 예약 내역</a></p>
            <p><a href="/business/rental/rentProgress.do">렌트 진행 내역</a></p>
            <p><a href="/business/rental/rentComplete.do">렌트 종료 내역</a></p>
            <p><a href="/business/rental/rentCancel.do">렌트 취소 내역</a></p>
        </li>
        <li class="list-group-item"><p>렌트 결제 관리</p>
            <p><a href="/business/pay/payment.do">결제 내역 목록</a></p>
        </li>
        <li class="list-group-item"><p>차량 관리</p>
            <p><a href="/business/car/list.do">차량 목록</a></p>
            <p><a href="/business/car/assignList.do">차량 인수 등록</a></p>
        </li>
        <li class="list-group-item"><p>상담 관리</p>
            <p><a href="/business/consult/consultList.do">상담 문의 목록</a></p>
        </li>

    </ul>
</div>



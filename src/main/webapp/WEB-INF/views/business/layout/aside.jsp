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
        <li class="list-group-item"><p>차량 등록</p>
            <p><a href="/business/car/list.do">차량 목록</a></p>
            <p><a href="/business/car/assignList.do">차량 인수 등록</a></p>
        </li>
        <li class="list-group-item"><p>예약 관리</p>
            <p><a href="/business/rental/rentReservation.do">렌터카 예약 내역</a></p>
            <p><a href="/business/rental/rentProgress.do">렌터카 진행 내역</a></p>
            <p><a href="/business/rental/rentComplete.do">렌터카 종료 내역</a></p>
        </li>
        <li class="list-group-item"><p>결제 내역</p>
            <p><a href="/business/payment/shortRent.do">렌트 결제 내역</a></p>
        </li>
        <li class="list-group-item"><p>상담 내역</p>
            <p><a href="/business/consult/consult.do?typeCode=CONSULTING">상담 문의 목록</a></p>
        </li>

    </ul>
</div>



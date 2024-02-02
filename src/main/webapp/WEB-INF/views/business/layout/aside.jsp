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
        <li class="list-group-item"><p>예약 목록</p>
            <p><a href="/business/rental/shortRent.do">단기 렌터카</a></p>
            <p><a href="/business/rental/monthRent.do">월단기 렌터카</a></p>
            <p><a href="/business/rental/commuteRent.do">출퇴근 렌터카</a></p>
        </li>
        <li class="list-group-item"><p>이벤트</p>
            <p><a href="/business/event/list.do">이벤트 목록</a></p>
            <p><a href="/business/event/register.do">이벤트 등록</a></p>
        </li>
        <li class="list-group-item"><p>상담 내역</p>
            <p><a href="/business/consult/one.do">1:1 내역</a></p>
            <p><a href="/business/consult/review.do">이용 후기 확인</a></p>
            <p><a href="/business/consult/consult.do">상담 내역</a></p>
            <p><a href="/business/consult/register.do">상담 내역 등록</a></p>
        </li>
        <li class="list-group-item"><p>주문 결제</p>
            <p><a href="/business/payment/shortRent.do">단기 결제 내역</a></p>
            <p><a href="/business/payment/monthRent.do">월단기 결제 내역</a></p>
            <p><a href="/business/payment/commuteRent.do">출퇴근 결제 내역</a></p>
        </li>
    </ul>
</div>



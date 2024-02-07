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
        <li class="list-group-item"><p>렌터카 예약 관리</p>
            <p><a href="/admin/rental/shortRent.do">단기 렌터카 관리</a></p>
            <p><a href="/admin/rental/monthRent.do">월단기 렌터카 관리</a></p>
            <p><a href="/admin/rental/commuteRent.do">출퇴근 렌터카 관리</a></p>
        </li>
        <li class="list-group-item"><p>게시판 관리</p>
            <p><a href="/admin/board/register.do">게시판 등록</a></p>
            <p><a href="/admin/board/list.do?typeCode=NOTICE">공지사항 목록</a></p>
            <p><a href="/admin/board/list.do?typeCode=FAQ">FAQ 목록</a></p>
            <p><a href="/admin/board/list.do?typeCode=EVENT">이벤트 목록</a></p>
            <p><a href="/admin/board/list.do?typeCode=EVENTWINNER">당첨자 목록</a></p>
        </li>
        <li class="list-group-item"><p>회원 관리</p>
            <p><a href="/admin/member/userList.do">회원 목록</a></p>
            <p><a href="/admin/member/businessList.do">사업자 목록</a></p>
        </li>
        <li class="list-group-item"><p>사업자 관리</p>
            <p><a href="/admin/business/reviewList.do?typeCode=REVIEW">이용 후기 목록</a></p>
            <p><a href="/admin/business/qnaList.do?typeCode=CONSULTING">1:1 문의 목록</a></p>
            <p><a href="/admin/business/qnaList.do?typeCode=CONSULTING">1:1 상담 목록</a></p>
            <p><a href="/admin/business/paymentList.do">결제 내역 목록</a></p>
        </li>
        <li class="list-group-item"><p>차량 관리</p>
            <p><a href="/admin/car/register.do">차량 등록</a></p>
            <p><a href="/admin/car/stockList.do">보유 목록</a></p>
            <p><a href="/admin/car/list.do">지점별 차량 목록</a></p>
        </li>
    </ul>
</div>



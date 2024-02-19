<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>


</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="5000">
                <img src="/images/main/main1.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="5000">
                <img src="/images/main/main2.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="5000">
                <img src="/images/main/main3.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="5000">
                <img src="/images/main/main4.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="5000">
                <img src="/images/main/main5.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="5000">
                <img src="/images/main/main6.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="5000">
                <img src="/images/main/main7.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="5000">
                <img src="/images/main/main8.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="5000">
                <img src="/images/main/main9.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="pt-5">
        <div class="explain-header">
            <h2 class="tit-size-big">서비스 바로가기</h2>
            <hr/>
        </div>
        <div class="row" style="text-align: center;">
            <div class="p-3 col">
                <a class="page-link" href="/reservation/index.do?regionType=1">
                    <img src="/images/icons/ico-main-new-quick02.png" alt="">
                    <p>예약하기</p>
                </a>
            </div>
            <div class="p-3 col">
                <a class="page-link" href="/branch/allBranchArea.do">
                    <img src="/images/icons/ico-main-new-quick05.png" alt="">
                    <p>지점안내</p>
                </a>
            </div>
            <div class="p-3 col">
                <a class="page-link" href="/branch/jejuAuto.do">
                    <img src="/images/icons/ico-main-new-quick06.png" alt="">
                    <p>제주오토하우스</p>
                </a>
            </div>
            <div class="p-3 col">
                <a class="page-link" href="/customer/eventMain.do?typeCode=EVENT">
                    <img src="/images/icons/ico-main-new-quick07.png" alt="">
                    <p>이벤트</p>
                </a>
            </div>
            <div class="p-3 col">
                <a class="page-link" href="/customer/consult.do">
                    <img src="/images/icons/ico-main-new-quick08.png" alt="">
                    <p>상담 신청</p>
                </a>
            </div>
        </div>
    </div>
    <hr/>

    <section class="p-3">
        <div class="row">
            <div class="explain-header col-3">
                <a class="page-link" href="/customer/noticeNewsMain.do?typeCode=NOTICE">
                    <img src="/images/icons/ico-main-notice.png" alt="">
                    <span style="font-size: 25px">알려드려요</span>
                    <h2>따끈따끈한 공지사항</h2></a>
            </div>
            <div class="container col-8">
                <div class="p-3">이용약관 변경에 대한 공지</div>
                <div class="p-3">2024 대한민국 퍼스트브랜드 대상 20년 연속 수상</div>
                <div class="p-3">수탁사 변경에 따른 개인정보 처리방침 변경에 대한 공지</div>
                <div class="p-3">IoT서비스 명칭 변경 및 롯데렌탈회원(자체회원) 도입에 따른 개인정보 처리방침 및 이용약관 변경 공지</div>
            </div>
        </div>
    </section>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

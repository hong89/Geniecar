<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    .breadcrumb-item a {
        text-decoration: none;
        color: #41087c;
    }

    #priceArea {
        margin: 40px 0 0 0;
    }

    #priceArea ul li {
        padding: 30px;
        background: #23093d;
    }

    .location-name {
        align-self: center;
        border-radius: 30px;
        height: 50px;
        width: 200px;
        padding-top: 10px;
        margin: 20px 10px;
        font-size: 20px;
        border: 1px solid #d1c9ff;
    }

    .location-name > a, #searchName > a {
        text-decoration-line: none;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">빠른 예약</li>
                <li class="breadcrumb-item active" aria-current="page">내륙 예약</li>
            </ol>
        </nav>
    </div>

    <div class="container text-center">
        <h2 style="padding: 50px">내륙예약</h2>
        <div class="row justify-content-md-center">
            <div class="col col-lg-2">
                <img src="/images/icons/circle-check-solid.svg" width="30px"/><br/>
                예약/약관
            </div>
            <div class="col col-lg-2">
                <img src="/images/icons/circle-check-regular.svg" width="30px"/><br/>
                할인/결제
            </div>
            <div class="col col-lg-2">
                <img src="/images/icons/circle-check-regular.svg" width="30px"/><br/>
                완료
            </div>
        </div>
    </div>

    <div class="container" style="padding-top: 50px;">
        <div class="row">
            <div class="col-8">
                <h4 style="background: #f8f7fd; padding: 20px;"><strong>예약상세내역</strong></h4>
                <div class="row" style="padding: 20px">
                    <h5 class="col-3">대여일시/지점</h5>
                    <h5 class="col-9">2024-02-06(화) 14:00 / 광주공항 지점</h5>
                </div>
                <div class="row" style="padding: 20px">
                    <h5 class="col-3">반납일시/지점</h5>
                    <h5 class="col-9">2024-02-07(수) 14:00 / 광주공항 지점</h5>
                </div>
                <div class="row" style="padding: 20px">
                    <h5 class="col-3">차량상세정보</h5>
                    <h5 class="col-9">캐스퍼(G)</h5>
                </div>
                <div class="row" style="padding: 20px">
                    <h5 class="col-3"><strong>총 대여기간</strong></h5>
                    <h3 class="col-9" style="color: red">1일 0시간 0분</h3>
                </div>

                <h4 style="background: #f8f7fd; padding: 20px;"><strong>약관동의</strong></h4>

            </div>
            <div class="col-4">
                <div class="card border-secondary">
                    <div class="card-header text-center" style="height: 70px; padding-top: 20px;"><h4>캐스퍼(G)</h4></div>
                    <div class="card-body text-secondary">
                        <img src="/images/carImage/casper.png" width="100%"/>
                        <p class="card-text">실제 대여하는 차량과 외관, 색상, 옵션 등 차이가 있을 수 있으며
                            사고 또는 고장 등 부득이한 경우 동급차종으로 변경될 수 있습니다.</p>
                    </div>
                </div>

                <div class="card" id="priceArea">
                    <ul class="list-group list-group-flush">

                        <li class="list-group-item text-white">
                            <div class="row">
                                <div class="col-6">대여정보</div>
                                <div class="col-6 text-right">광주공항지점</div>
                            </div>
                        </li>
                        <li class="list-group-item text-white">
                            <div class="row">
                                <div class="col-6">반납정보</div>
                                <div class="col-6 text-right">광주공항지점</div>
                            </div>
                        </li>
                        <li class="list-group-item text-white">
                            <div class="row">
                                <div class="col-6">차량대여요금</div>
                                <div class="col-6 text-right">120,000원</div>
                            </div>
                        </li>
                        <li class="list-group-item text-white">
                            <div class="row">
                                <div class="col-6">할인요금</div>
                                <div class="col-6 text-right">-48,000원</div>
                            </div>
                        </li>
                        <li class="list-group-item text-white">
                            <div class="row">
                                <div class="col-6">총금액</div>
                                <div class="col-6 text-right">72,000원</div>
                            </div>
                        </li>
                    </ul>
                </div>
                <span style="color:red">
                    다음 단계에서 할인의 변경, 보험 및 옵션의 선택에 따라 총금액은 달라질 수 있으니 결제 전 꼭 확인바랍니다.
                </span>
                <div class="row">
                    <div class="col location-name text-center" style="background: #f8f7fd;">
                        <a class="text-dark" href="#">이 전</a>
                    </div>
                    <div class="col location-name text-center" style="background: #41087c;">
                        <a class="text-white" href="#">다 음</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
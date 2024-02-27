<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    .breadcrumb-item a {
        text-decoration: none;
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
                <li class="breadcrumb-item active" aria-current="page">단기 렌터카 상품</li>
                <li class="breadcrumb-item active" aria-current="page">월 단기 렌터카</li>
            </ol>
        </nav>
    </div>
    <div>
        <div class="text-center pb-4">
            <h1 class="fw-bolder">월단기렌터카안내</h1>
            <p>일정기간 차량이 필요할 때!</p>
        </div>
        <div class="mb-5"
             style="min-height: 140px; background-repeat: no-repeat;background-position: 0 0;background-image:url('/images/bg-shortMonthlyInfo.png'); background-size: auto;">
            <p class="text-white pt-5 p-4">
                1개월 이상 차량 대여가 필요하신 고객님이라면 차량 관리부터<br> 사후관리까지 믿고 이용할 수 있는 지니카 월단기 서비스를 이용해 보세요.
            </p>
        </div>
    </div>
    <section class="section-explain">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bolder">서비스 장점</h2>
        </div>
        <div class="explain-cont">
            <ul class="row">
                <li class="col-6 d-flex align-items-center mb-4">
                    <div class="flex-shrink-0">
                        <img src="/images/icon-mon01.jpg" alt="">
                    </div>
                    <div class="flex-grow-1 ms-3 p-3">
                        <p class="fw-bolder">토탈 차량 정비 서비스 포함</p>
                        <ul class="lst dot">
                            <li>지니카가 일반 정비, 순회 정비 등의 서비스 부담</li>
                            <li>차량 고장으로 8시간 이상 정비 입고 시 대차 서비스 제공</li>
                        </ul>
                    </div>
                </li>
                <li class="col-6 d-flex align-items-center mb-4">
                    <div class="flex-shrink-0">
                        <img src="/images/icon-mon02.jpg" alt="">
                    </div>
                    <div class="flex-grow-1 ms-3 p-3">
                        <p class="fw-bolder">약정 주행거리 무제한</p>
                        <ul class="lst dot">
                            <li>약정 주행거리 없이 무제한 주행 가능</li>
                            <li>장거리 주행해도 패널티 및 추가비용 없음</li>
                        </ul>
                    </div>
                </li>
                <li class="col-6 d-flex align-items-center mb-4">
                    <div class="flex-shrink-0">
                        <img src="/images/icon-mon03.jpg" alt="">
                    </div>
                    <div class="flex-grow-1 ms-3 p-3">
                        <p class="fw-bolder">장기간 계약의 부담 NO</p>
                        <ul class="lst dot">
                            <li>장기렌터카 대여를 고려중이나 중도해지 위약금이 부담된다면, 월단기렌터카로 몇 달 간 이용해보고 결정 가능</li>
                        </ul>
                    </div>
                </li>
                <li class="col-6 d-flex align-items-center mb-4">
                    <div class="flex-shrink-0">
                        <img src="/images/icon-mon04.jpg" alt="">
                    </div>
                    <div class="flex-grow-1 ms-3 p-3">
                        <p class="fw-bolder">B2B 법인고객 비용처리 가능</p>
                        <ul class="lst dot">
                            <li>법인고객의 월간단기렌터카 대여 시 세금계산서 발행 가능<br>
                                <p style="font-size: 12px;">※「업무전용자동차보험특별약관」에 가입한 자동차를 대여한 법인에 한함</p>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <section class="section-explain">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bolder">상품 종류 및 추천 고객</h2>
        </div>
        <div class="explain-cont row">
            <div class="col">
                <div class="position-relative text-center mb-3">
                    <img src="/images/img_premium.png" class="img-fluid" alt="">
                    <div class="position-absolute bottom-0 "  style="background-color: #f8f7fd; opacity:0.5; width: 100%; height:18%;"></div>
                    <span class="position-absolute bottom-0 start-50 translate-middle">Premium</span>
                </div>
                <p class="fw-bolder">운행 36개월 미만 & 주행거리 6만 km 미만 차량</p>
                <div class="txt">
                    <em class="bgc">추천고객</em>
                    <ul class="lst dot mt-10">
                        <li>가족들과 함께 이용할 예정인 고객입니다.</li>
                        <li>(법인) 비즈니스 목적으로 이용할 예정입니다.</li>
                    </ul>
                </div>
            </div>
            <div class="col">
                <div class="position-relative text-center mb-3">
                    <img src="/images/img_standard.png" class="img-fluid" alt="">
                    <div class="position-absolute bottom-0 "  style="background-color: #f8f7fd; opacity:0.5; width: 100%; height:18%;"></div>
                    <span class="position-absolute bottom-0 start-50 translate-middle">Standard</span>
                </div>
                <p class="fw-bolder">주행거리 6만 km 이상 ~ 12만 km 미만 차량</p>
                <div class="txt">
                    <em>추천고객</em>
                    <ul class="lst dot mt-10">
                        <li>신차장기렌터카를 생각중이나 아직 부담이 됩니다.</li>
                        <li>적당한 가격에 좋은 퀄리티의 차를 이용하고 싶습니다.</li>
                    </ul>
                </div>
            </div>
            <div class="col">
                <div class="position-relative text-center mb-3">
                    <img src="/images/img_slim.png" class="img-fluid" alt="">
                    <div class="position-absolute bottom-0 "  style="background-color: #f8f7fd; opacity:0.5; width: 100%; height:18%;"></div>
                    <span class="position-absolute bottom-0 start-50 translate-middle">Slim</span>

                </div>
                <p class="fw-bolder">주행거리 12만 km 이상 차량</p>
                <div class="txt">
                    <em class="bgc">추천고객</em>
                    <ul class="lst dot mt-10">
                        <li>비싼 대여료의 부담을 줄이고 싶습니다.</li>
                        <li>매달 저렴하게 다양한 차량을 이용해보고 싶습니다.</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="section-explain">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bolder">차종 및 가격</h2>
        </div>
        <div class="explain-cont">
            <ul class="nav nav-pills nav-fill mb-4" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="contact-tab1" data-bs-toggle="tab" data-bs-target="#contact1"
                            type="button" role="tab" aria-controls="contact1" aria-selected="true">경차
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab2" data-bs-toggle="tab" data-bs-target="#contact2"
                            type="button" role="tab" aria-controls="contact2" aria-selected="false">소형<br>(SUV / RV 포함)
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab3" data-bs-toggle="tab" data-bs-target="#contact3"
                            type="button" role="tab" aria-controls="contact3" aria-selected="false">중형
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab4" data-bs-toggle="tab" data-bs-target="#contact4"
                            type="button" role="tab" aria-controls="contact4" aria-selected="false">준대형
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab5" data-bs-toggle="tab" data-bs-target="#contact5"
                            type="button" role="tab" aria-controls="contact5" aria-selected="false">SUV/RV<br>(중형)
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab6" data-bs-toggle="tab" data-bs-target="#contact6"
                            type="button" role="tab" aria-controls="contact6" aria-selected="false">SUV/RV<br>(준대형)
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab7" data-bs-toggle="tab" data-bs-target="#contact7"
                            type="button" role="tab" aria-controls="contact7" aria-selected="false">SUV/RV<br>(대형)
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab8" data-bs-toggle="tab" data-bs-target="#contact8"
                            type="button" role="tab" aria-controls="contact8" aria-selected="false">승합
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab9" data-bs-toggle="tab" data-bs-target="#contact9"
                            type="button" role="tab" aria-controls="contact9" aria-selected="false">고급
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab10" data-bs-toggle="tab" data-bs-target="#contact10"
                            type="button" role="tab" aria-controls="contact10" aria-selected="false">전기차
                    </button>
                </li>
            </ul>

            <ul class="mb-4">
                <li>해당 요금은 23년 5월 22일자 기준 요금입니다. (VAT 포함 가격)</li>
                <li>보험연령 만 26세 이상, 사고시 고객부담금 30만원, 대물 5천만원, 대인 무제한, 자손 5천만원 기준 대여료입니다.</li>
                <li>보험조건 및 보험연령에 따라 대여료는 변동될 수 있으며, 세부사항은 상담을 통해 확인하실 수 있습니다.</li>
                <li>아래의 표에 없는 차종은 상담 신청을 통해 확인하실 수 있습니다.</li>
            </ul>

            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="contact1" role="tabpanel" aria-labelledby="contact-tab1">
                    <table class="table align-middle text-center">
                        <colgroup>
                            <col width="25%">
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>차종명</th>
                            <th>Premium</th>
                            <th>Standard</th>
                            <th>Slim</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>기아 레이<br>기아 모닝</th>
                            <td>650,000 ~
                            </td>
                            <td> 550,000 ~
                            </td>
                            <td>450,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>GM 스파크
                            </th>
                            <td>590,000 ~
                            </td>
                            <td>500,000 ~
                            </td>
                            <td>미운영</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="contact2" role="tabpanel" aria-labelledby="contact-tab2">
                    <table class="table align-middle text-center">
                        <colgroup>
                            <col width="33%">
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>차종명</th>
                            <th>Premium</th>
                            <th>Standard</th>
                            <th>Slim</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th style="word-break: keep-all;">현대 아반떼, 기아 K3, 현대 베뉴, 현대
                                코나,<br>기아 셀토스, 현대 아이오닉, 기아 스토닉, 기아 쏘울, 기아 니로
                            </th>
                            <td>750,000 ~</td>
                            <td>630,000 ~</td>
                            <td>520,000 ~</td>
                        </tr>
                        <tr>
                            <th>KG 티볼리, GM 트랙스, GM 트레일블레이저,<br>르노 XM3, KG 코란도</th>
                            <td>680,000 ~
                            </td>
                            <td>570,000 ~
                            </td>
                            <td>미운영
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="contact3" role="tabpanel" aria-labelledby="contact-tab3">
                    <table class="table align-middle text-center">
                        <colgroup>
                            <col width="25%">
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>차종명</th>
                            <th>Premium</th>
                            <th>Standard</th>
                            <th>Slim</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>기아 K5<br>
                                현대 쏘나타
                            </th>
                            <td>850,000 ~
                            </td>
                            <td>720,000 ~
                            </td>
                            <td>590,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>GM 말리부<br>
                                르노 SM6
                            </th>
                            <td>770,000 ~
                            </td>
                            <td>650,000 ~
                            </td>
                            <td>미운영
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="contact4" role="tabpanel" aria-labelledby="contact-tab4">
                    <table class="table align-middle text-center">
                        <colgroup>
                            <col width="25%">
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>차종명</th>
                            <th>Premium</th>
                            <th>Standard</th>
                            <th>Slim</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>현대 그랜져<br>
                                기아 K7<br>
                                기아 K8
                            </th>
                            <td>1,100,000 ~
                            </td>
                            <td>930,000 ~
                            </td>
                            <td>770,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>GM 임팔라
                            </th>
                            <td>990,000 ~
                            </td>
                            <td>840,000 ~
                            </td>
                            <td>미운영
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="contact5" role="tabpanel" aria-labelledby="contact-tab5">
                    <table class="table align-middle text-center">
                        <colgroup>
                            <col width="25%">
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>차종명</th>
                            <th>Premium</th>
                            <th>Standard</th>
                            <th>Slim</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>현대 투싼<br>
                                기아 스포티지<br>
                            </th>
                            <td>900,000 ~
                            </td>
                            <td>760,000 ~
                            </td>
                            <td>630,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>르노 QM6
                            </th>
                            <td>810,000 ~
                            </td>
                            <td>680,000 ~
                            </td>
                            <td>미운영
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="contact6" role="tabpanel" aria-labelledby="contact-tab6">
                    <table class="table align-middle text-center">
                        <colgroup>
                            <col width="25%">
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>차종명</th>
                            <th>Premium</th>
                            <th>Standard</th>
                            <th>Slim</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>현대 싼타페<br>
                                기아 쏘렌토
                            </th>
                            <td>1,150,000 ~
                            </td>
                            <td>970,000 ~
                            </td>
                            <td>800,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>KG 토레스
                            </th>
                            <td>1,040,000 ~
                            </td>
                            <td>870,000 ~
                            </td>
                            <td>미운영
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="contact7" role="tabpanel" aria-labelledby="contact-tab7">
                    <table class="table align-middle text-center">
                        <colgroup>
                            <col width="25%">
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>차종명</th>
                            <th>Premium</th>
                            <th>Standard</th>
                            <th>Slim</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>현대 팰리세이드<br>
                                기아 모하비<br>
                                기아 카니발 하이리무진
                            </th>
                            <td>1,300,000 ~
                            </td>
                            <td>1,100,000 ~
                            </td>
                            <td>910,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>GM 트래버스<br>
                                KG 렉스턴
                            </th>
                            <td>1,170,000 ~
                            </td>
                            <td>990,000 ~
                            </td>
                            <td>미운영</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="contact8" role="tabpanel" aria-labelledby="contact-tab8">
                    <table class="table align-middle text-center">
                        <colgroup>
                            <col width="25%">
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>차종명</th>
                            <th>Premium</th>
                            <th>Standard</th>
                            <th>Slim</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>기아 카니발<br>
                                (리무진 제외)
                            </th>
                            <td>1,100,000 ~
                            </td>
                            <td>930,000 ~
                            </td>
                            <td>770,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>현대 그랜드 스타렉스<br>
                                현대 스타리아
                            </th>
                            <td>1,000,000 ~
                            </td>
                            <td>850,000 ~
                            </td>
                            <td>700,000 ~
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="contact9" role="tabpanel" aria-labelledby="contact-tab9">
                    <table class="table align-middle text-center">
                        <colgroup>
                            <col width="25%">
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>차종명</th>
                            <th>Premium</th>
                            <th>Standard</th>
                            <th>Slim</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>현대 제네시스 G70
                            </th>
                            <td>1,350,000 ~
                            </td>
                            <td>1,140,000 ~
                            </td>
                            <td>940,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>현대 제네시스 G80
                            </th>
                            <td>1,500,000 ~
                            </td>
                            <td>1,270,000 ~
                            </td>
                            <td>1,050,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>현대 제네시스 G90
                            </th>
                            <td>2,150,000 ~
                            </td>
                            <td>1,820,000 ~
                            </td>
                            <td>1,500,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>현대 제네시스 GV70
                            </th>
                            <td>1,450,000 ~
                            </td>
                            <td>1,230,000 ~
                            </td>
                            <td>1,010,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>현대 제네시스 GV80
                            </th>
                            <td>1,800,000 ~
                            </td>
                            <td>1,530,000 ~
                            </td>
                            <td>1,260,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>기아 스팅어</th>
                            <td>1,350,000 ~
                            </td>
                            <td>1,140,000 ~
                            </td>
                            <td>940,000 ~
                            </td>
                        </tr>
                        <tr>
                            <th>기아 K9</th>
                            <td>1,700,000 ~
                            </td>
                            <td>1,440,000 ~
                            </td>
                            <td>1,190,000 ~
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="contact10" role="tabpanel" aria-labelledby="contact-tab10">
                    <table class="table align-middle text-center">
                        <colgroup>
                            <col width="25%">
                            <col>
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>차종명</th>
                            <th>Premium</th>
                            <th>Standard</th>
                            <th>Slim</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th>기아 니로EV<br>
                                현대 코나EV
                            </th>
                            <td>1,450,000 ~</td>
                            <td>1,230,000 ~</td>
                            <td>1,010,000 ~</td>
                        </tr>
                        <tr>
                            <th>기아 EV6<br>
                                현대 아이오닉5
                            </th>
                            <td>1,650,000 ~</td>
                            <td>1,400,000 ~</td>
                            <td>1,150,000 ~</td>
                        </tr>
                        <tr>
                            <th>GM 볼트</th>
                            <td>1,310,000 ~</td>
                            <td>1,110,000 ~</td>
                            <td>미운영</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <section class="section-explain">
        <div class="pb-3 pt-3 mb-4">
            <h2 class="fw-bolder">대여 절차</h2>
        </div>
        <div class="explain-cont">
            <ol class="list-group list-group-horizontal row text-center">
                <li class="list-group-item p-3 col">
                    <div>
                        <p class="mt-3"><span class="border rounded-circle p-2" style="background-color:  #f8f7fd;">01</span></p><p><strong> 상담 신청 </strong></p>
                    </div>
                </li>
                <li class="list-group-item p-3 col">
                    <div>
                        <p class="mt-3"><span class="border rounded-circle p-2" style="background-color:  #f8f7fd;">02</span></p><p><strong> 견적 의뢰 </strong></p>
                    </div>
                </li>
                <li class="list-group-item p-3 col">
                    <div>
                        <p class="mt-3"><span class="border rounded-circle p-2" style="background-color:  #f8f7fd;">03</span></p><p><strong> 계약 </strong></p>
                    </div>
                </li>
                <li class="list-group-item p-3 col">
                    <div>
                        <p class="mt-3"><span class="border rounded-circle p-2" style="background-color:  #f8f7fd;">04</span></p><p><strong> 차량 인도 </strong></p>
                    </div>
                </li>
                <li class="list-group-item p-3 col">
                    <div>
                        <p class="mt-3"><span class="border rounded-circle p-2" style="background-color:  #f8f7fd;">05</span></p><p><strong>차량 이용</strong></p>
                    </div>
                </li>
                <li class="list-group-item p-3 col">
                    <div>
                        <p class="mt-3"><span class="border rounded-circle p-2" style="background-color:  #f8f7fd;">06</span></p><p><strong> 차량 반납 </strong></p>
                    </div>
                </li>
            </ol>
        </div>
    </section>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
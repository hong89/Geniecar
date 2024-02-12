<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    .box-between {
        display: flex;
        justify-content: space-between;
    }

    .box-between-col {
        flex: 1;
        margin-left: 10px;
    }

    .circle {
        display: inline-block;
        border-radius: 50%;
        overflow: hidden;
    }

    .circle img {
        width: 100%;
        height: auto;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">지점안내</li>
                <li class="breadcrumb-item active" aria-current="page">제주오토하우스</li>
            </ol>
        </nav>
    </div>

    <div class="carLife-container">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">제주오토하우스</h1>
                <p class="txt">제주여행! 지니카로 시작하세요</p>
            </section>

            <div id="wrap">
                <div class="p-3" style="background-color: #f8f7fd;">
                    <p>
                        <span class="icon time2"></span><strong>운영시간</strong>06:00 ~ 23:00 (평일/주말 동일, 연중무휴)
                        <span class="icon date2"></span>
                        <a href="/reservation/index.do" class="underline" style="float: right;">제주렌터카 예약하기</a>
                    </p>
                </div>
                <div class="pt-5 section-explain">
                    <div class="explain-header">
                        <h2 class="tit-size-big">Why 제주오토하우스</h2>
                        <hr/>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="img-box" style="display: inline-block; text-align: center;">
                                <img src="/images/JejuAutoHouse-img01.png" alt=""
                                     style="max-width: 100%; height: auto;">
                                <p class="p-3" style="background-color: #f8f7fd; margin: 0;">국내 최대 규모
                                    프리미엄 렌터카 하우스</p>
                            </div>
                        </div>
                        <div class="col">
                            <div class="img-box" style="display: inline-block; text-align: center;">
                                <img src="/images/JejuAutoHouse-img02.png" alt=""
                                     style="max-width: 100%; height: auto;">
                                <p class="p-3" style="background-color: #f8f7fd; margin: 0;">전용 셔틀버스 운영 배차시간 약 8분</p>
                            </div>
                        </div>
                        <div class="col">
                            <div class="img-box" style="display: inline-block; text-align: center;">
                                <img src="/images/JejuAutoHouse-img03.png" alt=""
                                     style="max-width: 100%; height: auto;">
                                <p class="p-3" style="background-color: #f8f7fd; margin: 0;">아이 안전에는 프리미엄 카시트 옵션</p>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="pt-5 section-explain">
                    <div class="explain-header">
                        <h2 class="tit-size-big">제주오토하우스를 이용해야 하는 이유</h2>
                        <hr/>
                    </div>

                    <div class="row">
                        <div class="p-3 col-2">
                            <img src="/images/icon-jeju1.jpg" alt="">
                        </div>
                        <div class="p-3 col-10">
                            <p><strong>제휴사 할인</strong></p>
                            <p>제휴사 특별 할인혜택 제공</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="p-3 col-2">
                            <img src="/images/icon-jeju1.jpg" alt="">
                        </div>
                        <div class="p-3 col-10">
                            <p><strong>정직한가격</strong></p>
                            <p>정직한 대여료 체계</p>
                            <p>차 보험료, 취등록세 없는 지니카 신차장</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="p-3 col-2">
                            <img src="/images/icon-jeju1.jpg" alt="">
                        </div>
                        <div class="p-3 col-5">
                            <p><strong>안전차량</strong></p>
                            <p>정기적인 차량 정비 및 관리</p>
                            <p>24시간 365일 사고처리, 전국 차량방문 차량관리</p>
                        </div>
                        <div class="p-3 col-5">
                            <p><strong>동절기 사고예방</strong></p>
                            <p>동절기 스노우체인 전 차량 무상 제공</p>
                        </div>
                        <div class="row">
                            <div class="p-3 col-2">
                                <img src="/images/icon-jeju1.jpg" alt="">
                            </div>
                            <div class="p-3 col-5">
                                <p><strong>사고 및 보험</strong></p>
                                <p>정기적인 차량 정비 및 관리</p>
                                <p>사고 및 정비접수 24시간 가능</p>
                                <p>차량 대여 후 사고, 고장 등 발생 시 즉시 현장 출동 처리</p>
                            </div>
                            <div class="p-3 col-5">
                                <p><strong>보험조건(CDW/완전면책 가입 시)</strong></p>
                                <p>면책한도 및 휴차료 없음</p>
                                <p>타이어 및 휠 파손 포함 (타이어 펑크비도 환불 처리)</p>
                            </div>
                        </div>

                        <section class="pt-5">
                            <div class="explain-header">
                                <h2 class="tit-size-big">지니카 제주오토하우스 대여절차 안내</h2>
                                <hr/>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <iframe width="600" height="430"
                                            src="https://www.youtube.com/embed/LvFzhEnRMHY" frameborder="0"
                                            allow="autoplay; encrypted-media" allowfullscreen=""></iframe>
                                </div>
                                <div class="col">
                                    <div class="step-infos">
                                        <ol>
                                            <li><strong class="tit">제주공항 도착</strong>
                                                <p class="txt">
                                                    렌터카 하우스의 셔틀버스 승강장으로 이동하세요.<br> (공항 GATE 5 → 렌터카 주차장 1구역 중 4번)
                                                </p>
                                            </li>
                                            <li><strong class="tit">버스 탑승 시 QR코드 스캔</strong>
                                                <p class="txt">
                                                    버스 탑승 전 모바일에서 미리 사전 체크인 했다면<br> 배정된 차량의 주차위치를 알림톡으로 보내드립니다.
                                                </p>
                                            </li>
                                            <li><strong class="tit">셀프체크인 (사전 체크인 미완료 고객)</strong>
                                                <p class="txt">
                                                    사전 체크인을 안했다면 셀프체크인을 완료하신 후<br> 차량 준비되는 동안 지점 내에서 잠시만 대기하세요.
                                                </p>
                                            </li>
                                            <li><strong class="tit">빠르게 차량 픽업해서 여행 시작!</strong>
                                                <p class="txt">
                                                    전광판에서 주차구역 확인하고 차에 탑승하신 후<br> 출구로 이동하여 운전면허증 확인을 진행합니다.
                                                </p>
                                            </li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="pt-5">
                            <div class="explain-header">
                                <h2 class="tit-size-big">제주공항 데스크 및 셔틀버스 탑승장 위치</h2>
                                <hr/>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <img src="/images/img-jejuAirport-location.png" width="600" height="650" alt="">
                                </div>
                                <div class="col">
                                    <div class="infos-header">
                                        <dl>
                                            <div class="infos-header-row">
                                                <dt>제주공항 데스크 위치</dt>
                                                <dd>
                                                    <p>2번 게이트</p>
                                                </dd>
                                            </div>
                                            <div class="infos-header-row">
                                                <dt>셔틀버스 탑승장 위치</dt>
                                                <dd>1구역 중 4번</dd>
                                            </div>
                                            <div class="infos-header-row">
                                                <dt>셔틀버스 운영시간 및 배차</dt>
                                                <dd>06:00 ~ 22:40 / 약 8분</dd>
                                            </div>
                                        </dl>
                                    </div>
                                    <div class="infos-cont">
                                        <ul class="lst num-type2">
                                            <li>
                                                <span class="bul">1</span>
                                                예약 완료 고객님께서는 2번 게이트에 있는 공항데스크 직원에게 <br>
                                                예약자명을 제시하고 공항에 도착했음을 알려주세요
                                                <ul style="color:red;">
                                                    <li>
                                                        사전체크인 완료 고객님은 셔틀버스 탑승 시 해당 QR코드를 태깅하면 고객님께서 <br>
                                                        이용하실 차량에 대한 준비가 완료됩니다.
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <span class="bul">2</span>
                                                제주공항 5번 게이트로 나온 후 정면 횡단보도를 건너세요.
                                            </li>
                                            <li>
                                                <span class="bul">3</span>
                                                렌터카 셔틀버스 승차장 표지판을 따라 오른쪽 보행자 통로를 이용하세요.
                                            </li>
                                            <li>
                                                <span class="bul">4</span>
                                                렌터카 하우스 1번 주차구역 중 4번 에서 지니카 셔틀버스에 탑승하세요.
                                                <ul class="list-type-col3">
                                                    <li class="mt-20 ml-5">
                                                        <strong>셔틀버스 운영시간</strong>
                                                        <p>06:00 ~ 22:40</p>
                                                    </li>
                                                    <li>
                                                        <strong>배차간격</strong>
                                                        <p>06:00 ~ 07:30 [10분~15분]</p>
                                                        <p>07:30 ~ 19:30 [8분]</p>
                                                        <p>19:30 ~ 22:40 [10분~15분]</p>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <div class="pt-5">
                            <div class="explain-header">
                                <h2 class="tit-size-big">제주오토하우스만의 특별한 서비스</h2>
                                <hr/>
                            </div>
                            <div class="row">
                                <div class="p-3 col-2">
                                    <img src="/images/icon-jeju1.jpg" alt="">
                                </div>
                                <div class="p-3 col-4">
                                    <p><strong>셀프체크인 서비스</strong></p>
                                    <p>대여 차량을 빠르게 픽업하고 출발하는 <br> 비대면 체크인 서비스입니다.</p>
                                </div>
                                <div class="p-3 col-2">
                                    <img src="/images/icon-jeju1.jpg" alt="">
                                </div>
                                <div class="p-3 col-4">
                                    <p><strong>다양한 전기차 보유</strong></p>
                                    <p>테슬라 모델S를 포함한 다양한 전기차 라인업 보유<br>
                                        <span style="color:red;">전기차 이용에 따른 충전비용은 고객 부담 입니다.</span>
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="p-3 col-2">
                                    <img src="/images/icon-jeju1.jpg" alt="">
                                </div>
                                <div class="p-3 col-4">
                                    <p><strong>단체 제주여행을 위한 쏠라티 운영</strong></p>
                                    <p>가족/단체여행이라면 작은 차 2대 말고 쏠라티 <br> 15인승 1대로 다 함께여행하세요.</p>
                                </div>
                                <div class="p-3 col-2">
                                    <img src="/images/icon-jeju1.jpg" alt="">
                                </div>
                                <div class="p-3 col-4">
                                    <p><strong>카시트 및 유모차 옵션</strong></p>
                                    <p>전문 관리업체와 제휴하여 클리닝 및 관리하며 별도로 <br> 렌탈업체 방문 없이 차량과 함께 대여/반납하세요.</p>
                                    <p>단, 제주 오토하우스에서만 대여가 가능합니다.</p>
                                </div>
                            </div>
                        </div>
                        <div class="pt-5">
                            <div class="explain-header">
                                <h2 class="tit-size-big">제주오토하우스 내부 안내</h2>
                                <hr/>
                            </div>
                            <div class="explain-cont">
                                <dl class="define-area2">
                                    <div class="define-row">
                                        <dt>
                                            <span class="icon location"></span> 주소
                                        </dt>
                                        <dd>제주시 용해로 92 (지번주소 : 제주시 용담2동 855)</dd>
                                    </div>
                                    <div class="define-row">
                                        <dt>
                                            <span class="icon time"></span> 운영시간
                                        </dt>
                                        <dd>06:00 ~ 23:00 (평일/주말 동일, 연중무휴)</dd>
                                    </div>
                                    <div class="define-row">
                                        <dt>
                                            <span class="icon tel2"></span> 전화번호
                                        </dt>
                                        <dd>064-751-8000</dd>
                                    </div>
                                </dl>
                                <div class="map">
                                    <img src="/images/img-jejuAutoHouse-map.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="pt-5" style="text-align: center;">
                            <a href="/reservation/index.do" class="btn btn-purple"
                               style="background-color: #41087c; color:white;">제주렌터카 예약하기</a>
                        </div>
                        <div class="pt-5">
                            <div class="explain-header">
                                <h2 class="tit-size-big">이용 중 체크사항</h2>
                                <hr/>
                            </div>
                            <div class="explain-cont">
                                <div class="tbl-box">
                                    <table class="td-align-l">
                                        <colgroup>
                                            <col style="width:15%">
                                            <col>
                                        </colgroup>
                                        <tbody>
                                        <tr>
                                            <th>유류량 체크</th>
                                            <td>
                                                <ul class="lst dot">
                                                    <li>
                                                        대여시 직원과 함께 차량계기판의 유류량을 확인해주시고, 반납하실 때 반드시
                                                        대여시와 동일하게 주유해주시기
                                                        바랍니다
                                                        <ul class="lst hypen">
                                                            <ul class="lst simple">
                                                                <li class="mt-15"><span
                                                                        class="txt-color-lightgrey">※지점 인근 주유소 및 충전소 참고</span>
                                                                </li>
                                                            </ul>
                                                            <li class="mt-10">휘발유/경유 : 성화주유소</li>
                                                            <li>LPG : 늘 푸른 충전소</li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                대여 차량의 <br>
                                                종합보험 배상한도
                                            </th>
                                            <td>
                                                <ul class="lst dot">
                                                    <li><span style="color:red;">대인 무한 / 대물 2,000만원 / 자손 1,500만원</span>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>
                                                면책제도 (CDW)<br>
                                                가입 여부 확인
                                            </th>
                                            <td>
                                                <ul class="lst dot">
                                                    <li>완전 면책 : 수리비 및 휴차보상료가 전액 면제됩니다.</li>
                                                    <li>면책 30만원 : 1건의 사고당 최대 30만원의 면책금이 부과되며, 추가 '휴차보상료'는 전액</li>
                                                    <li>면책제도 미가입 : 수리비 및 '휴차보상료' 전액 고객 부담입니다.</li>
                                                </ul>
                                                <p class="txt-color-lightgrey mt-15">※ 휴차보상료란? 사고시
                                                    수리(휴차)기간 동안 발생하는
                                                    영업손실에 대해 청구하는 금액으로, 수리(휴차)기간 동안 발생하는 대여료의 50%를
                                                    청구합니다.
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>긴급출동 및 사고처리</th>
                                            <td>
                                                <ul class="lst dot">
                                                    <li>고객센터<span style="color:red;">1588-1230</span>는
                                                        <span class="txt-color-red">24시간</span> 접수 가능합니다.
                                                    </li>
                                                    <li>'우도(牛島)' 지역은 사고현장 출동이 불가하며, 전기차량 충전소가 없습니다.</li>
                                                    <li>고객님의 안전을 위해 <span style="color:red;">안전밸트</span>는 꼭 착용해 주시고 늘
                                                        안전운전하시기 바랍니다.
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>필수 참고 사항</th>
                                            <td>
                                                <ul class="lst dot">
                                                    <li>
                                                        차량 內 네비게이션은 참고용으로만 사용하시고 교통법규는 실제 교통표지판을
                                                        준수하시기
                                                        바랍니다.<br>(네비게이션으로 인한 교통 범칙금 발생시 당사에서는 책임이
                                                        없습니다.)
                                                    </li>
                                                    <li>제주시내 대중교통 우선차로제 시행으로 위반시 과태료 부과됩니다.</li>
                                                    <li>제주공항 여객청사 1층은 버스정류장이 있어 잠시 정차만 하여도 즉시 단속이 될 수 있습니다.</li>
                                                    <li>반납시 지점 검색은 <span style="color:red;">751-8000(지니카 오토하우스)</span>로
                                                        해주시고, 차량에 두고 내리신 유실물은 없는지 꼭 챙겨주세요!
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="pt-5">
                            <div class="explain-header">
                                <h2 class="tit-size-big">Q&A</h2>
                                <hr/>
                            </div>
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingOne">
                                        <button class="accordion-button collapsed" type="button" style="background-color:#f8f7fd; box-shadow: none;"
                                                data-bs-toggle="collapse" data-bs-target="#collapseOne"
                                                aria-expanded="false" aria-controls="collapseOne">
                                            <span class="ico-q">Q.&nbsp;</span>차가 시끄럽고 속도가 안나는 느낌이에요.
                                        </button>
                                    </h2>
                                    <div id="collapseOne" class="accordion-collapse collapse show"
                                         aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            기어레버가 D모드에서 왼쪽(or 오른쪽)으로 밀려 ‘수동모드'로 전환되어 있지는 않나요?<br>
                                            <span style="color:red;">D모드에서 오른쪽(or 왼쪽)으로 밀어 ‘자동모드'로 변경해보세요!</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingTwo">
                                        <button class="accordion-button collapsed" type="button" style="background-color:#f8f7fd; box-shadow: none;"
                                                data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                aria-expanded="false" aria-controls="collapseTwo">
                                            <span class="ico-q">Q.&nbsp;</span>차에서 계속 “띵~띵~" 경고음이 나요. 왜 이러죠?
                                        </button>
                                    </h2>
                                    <div id="collapseTwo" class="accordion-collapse collapse"
                                         aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            앞차출발, 차선이탈 등의 경고음 옵션이 설정되어 발생합니다.<br>
                                            블랙박스 안전도우미기능(ADAS)에서 개별 기능 해제 가능합니다.
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingThree">
                                        <button class="accordion-button collapsed" type="button" style="background-color:#f8f7fd; box-shadow: none;"
                                                data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                                aria-expanded="false" aria-controls="collapseThree">
                                            <span class="ico-q">Q.&nbsp;</span>주행 중 갑자기 계기판에 타이어 공기압 경고등이 떴어요!
                                        </button>
                                    </h2>
                                    <div id="collapseThree" class="accordion-collapse collapse"
                                         aria-labelledby="headingThree"
                                         data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <span class="txt-color-red">고객센터(1588-1230, 사고접수 1번)</span>로 접수해주세요. 즉시 현장
                                            출동하여 문제를 해결해 드립니다!
                                            <ul class="list-type-col4 mt-20">
                                                <li class="box align-c">
                                                    <strong class="txt-bold">타이어 펑크</strong>
                                                    <p class="mt-10">
                                                        못, 유리 등 날카로운 물체에 의해 <br>
                                                        공기가 서서히 빠진 상황
                                                    </p>
                                                    <span class="txt-bold txt-color-red mt-20">현장 수리 요청</span>
                                                </li>
                                                <li class="box align-c">
                                                    <strong class="txt-bold">타이어 파스</strong>
                                                    <p class="mt-10">
                                                        타이어가 찢어져서 육안으로<br>
                                                        확인되며 공기가 빠르게 빠지는 상황
                                                    </p>
                                                    <span class="txt-bold txt-color-red mt-20">차량 교체 요청</span>
                                                </li>
                                                <li class="box align-c">
                                                    <strong class="txt-bold">날씨 변화</strong>
                                                    <p class="mt-10">
                                                        겨울철 추운 공기의 부피 감소로<br>
                                                        인한 공기압 감소
                                                    </p>
                                                    <span class="txt-bold txt-color-red mt-20">꺼지지 않을 경우 문의</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFour">
                                        <button class="accordion-button collapsed" type="button" style="background-color:#f8f7fd; box-shadow: none;"
                                                data-bs-toggle="collapse" data-bs-target="#collapseFour"
                                                aria-expanded="false" aria-controls="collapseFour">
                                            <span class="ico-q">Q.&nbsp;</span>차에 블루투스 연결은 어떻게 하나요?
                                        </button>
                                    </h2>
                                    <div id="collapseFour" class="accordion-collapse collapse"
                                         aria-labelledby="headingFour"
                                         data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <ul class="lst num-type2">
                                                <li>
                                                    <span class="bul">1</span>
                                                    모바일 기기 블루투스를 활성화시킵니다.
                                                </li>
                                                <li>
                                                    <span class="bul">2</span>
                                                    핸들의 '통화' 버튼 or 내비게이션 화면 'SET UP' 버튼을 누릅니다.
                                                </li>
                                                <li>
                                                    <span class="bul">3</span>
                                                    '신규기기 검색' 진행하고, 모바일기기에서 해당 차종을 선택합니다.
                                                </li>
                                                <li>
                                                    <span class="bul">4</span>
                                                    화면에 제시되는 인증번호 4자리를 모바일기기에서 입력합니다. ▶ 연결 완료*
                                                </li>
                                                <p class="txt-color-red mt-20">* 차종마다 연결방법은 조금씩 다를 수
                                                    있습니다. 필요 시 지점(064-751-8000)으로 연락주세요.</p>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingFive">
                                        <button class="accordion-button collapsed" type="button" style="background-color:#f8f7fd; box-shadow: none;"
                                                data-bs-toggle="collapse" data-bs-target="#collapseFive"
                                                aria-expanded="false" aria-controls="collapseFive">
                                            <span class="ico-q">Q.&nbsp;</span>차량 대여 중 추가 운전자 등록은 어떻게 하나요?
                                        </button>
                                    </h2>
                                    <div id="collapseFive" class="accordion-collapse collapse"
                                         aria-labelledby="headingFive"
                                         data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <p>지점방문 없이 지니카 APP 또는 홈페이지에서 즉시 추가할 수 있습니다. </p>
                                            <ul class="lst num-type2">
                                                <li>
                                                    <span class="bul">1</span>
                                                    지니카 APP 또는홈페이지에 접속합니다.
                                                </li>
                                                <li>
                                                    <span class="bul">2</span>
                                                    예약상세내역으로 이동합니다. [비회원: 예약조회 / 회원: 마이페이지 > 예약내역에서 확인가능]
                                                </li>
                                                <li>
                                                    <span class="bul">3</span>
                                                    예약상세정보 하단 '이용중 관리' 버튼을 누릅니다.
                                                </li>
                                                <li>
                                                    <span class="bul">4</span>
                                                    이용중 관리 화면에서 추가운전자의 면허정보 입력하여 등록합니다.
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
                <!--------------------------------------------------하단---------------------------------------------------------->

</div>
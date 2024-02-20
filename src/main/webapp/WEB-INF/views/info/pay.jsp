<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    function changeColor(element) {
        var links = document.querySelectorAll('.nav-link');
        links.forEach(function (link) {
            link.classList.remove('clicked');
        });

        element.classList.add('clicked');
    }
</script>

<style>
    .breadcrumb-item a {
        text-decoration: none;
        color: #41087c;
    }

    .nav-item a {
        color: black;
    }

    .nav-item a:hover {
        color: #41087c;
    }

    .nav-item button {
        color: #41087c;
    }

    .nav-item button:hover {
        color: #41087c;
    }

    .nav-pills .nav-link.active,
    .nav-pills .show {
        background-color: #41087c !important;
        color: white;
    }

    .nav-link.clicked {
        background-color: #d1c9ff;
        color:black;
    }

</style>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute top-0 end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">단기렌터카 안내</li>
                <li class="breadcrumb-item active" aria-current="page">대여 및 요금안내</li>
            </ol>
        </nav>
    </div>
    <div>
        <section class="text-center pb-4">
            <h1 class="fw-bolder">대여 및 요금안내</h1>
            <p>업계최초 고객만족도 3관왕! 변함없는 1위의 지니카의 서비스를 경험하세요!</p>
        </section>
    </div>
    <div class="mb-5 sticky-xl-top">
        <ul class="nav nav-pills nav-fill mb-3 bg-light" id="pills-tab" role="tablist">
            <li class="nav-item p-3">
                <a class="nav-link" href="#no1" onclick="changeColor(this)"><img alt="" src="/images/icons/ico-pannel01.png"/>
                    <p>대여 자격</p>
                </a>
            </li>
            <li class="nav-item p-3">
                <a class="nav-link" href="#no2" onclick="changeColor(this)"><img src="/images/icons/ico-pannel02.png"/>
                    <p>요금 안내</p>
                </a>
            </li>
            <li class="nav-item p-3">
                <a class="nav-link" href="#no3" onclick="changeColor(this)"><img src="/images/icons/ico-pannel03.png"/>
                    <p>추가 요금</p>
                </a>
            </li>
            <li class="nav-item p-3">
                <a class="nav-link" href="#no4" onclick="changeColor(this)"><img src="/images/icons/ico-pannel04.png"/>
                    <p>대여 절차</p>
                </a>
            </li>
            <li class="nav-item p-3">
                <a class="nav-link" href="#no5" onclick="changeColor(this)"><img src="/images/icons/ico-pannel05.png"/>
                    <p>반납 절차</p>
                </a>
            </li>
            <li class="nav-item p-3">
                <a class="nav-link" href="#no6" onclick="changeColor(this)"><img src="/images/icons/ico-pannel06.png"/>
                    <p>보험 및 보상</p>
                </a>
            </li>
            <li class="nav-item p-3">
                <a class="nav-link" href="#no7" onclick="changeColor(this)"><img src="/images/icons/ico-pannel07.png"/>
                    <p>자차손해면책제도</p>
                </a>
            </li>
            <li class="nav-item p-3">
                <a class="nav-link" href="#no8" onclick="changeColor(this)"><img src="/images/icons/ico-pannel08.png"/>
                    <p>기타안내</p>
                </a>
            </li>
        </ul>
    </div>
    <section id="no1" class="mb-5">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bold mb-4">대여 자격</h2>
        </div>
        <div class="explain-cont">
            <p class="txt">도로교통법상 유효한 운전면허증을 소지하여야 대여가 가능하며, 1종 면허의 경우 적성기간 경과 후 1년이 지나면 운전면허
                취소로 대여가 불가합니다.
            </p>

            <div class="">
                <table class="table align-middle text-center">
                    <caption>대여 자격의 차량 유형, 9인승 이하, 11~12인승, 15인승, 면허 종류, 운전자 연령, 취득 후 기간을 나타내는 표
                    </caption>
                    <thead>
                    <tr>
                        <th>차량 유형</th>
                        <th>9인승 이하</th>
                        <th>11~12인승</th>
                        <th>15인승</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>면허 종류</th>
                        <td>2종 보통 이상</td>
                        <td>1종 보통 이상</td>
                        <td>1종 보통 이상</td>
                    </tr>
                    <tr>
                        <th>운전자 연령</th>
                        <td>만 21세 이상 (대여일 기준)</td>
                        <td>만 21세 이상 (대여일 기준)</td>
                        <td>만26세 이상(대여일 기준)</td>
                    </tr>
                    <tr>
                        <th>취득 후 기간</th>
                        <td>면허 취득일로부터 1년 이상 경과</td>
                        <td>면허 취득일로부터 1년 이상 경과</td>
                        <td>면허 취득일로부터 1년 이상 경과</td>
                    </tr>
                    </tbody>
                </table>
                <ul class="lst dot">
                    <li>지니카는 [여객자동차 운수사업법 시행규칙 제 67조]에 의거 15인승 이하 차량만 대여가 가능합니다.</li>
                    <li>운전면허증에 원동기가 함께 기재되어 있는 경우 운전경력증명서를 지참하셔야 차량대여가 가능합니다.</li>
                    <li>대여 시 반드시 예약자 본인의 운전면허증을 지참하셔야 하며 모바일 PASS 면허는 불가합니다. (정보가 지점 대여 시 상이할
                        경우, 예약이 취소되거나 추가 확인이 필요할 수 있습니다.)
                    </li>
                    <li>국제운전면허증 소지자의 경우, 입국일을 증명할 수 있도록 여권을 지참해주시길 바랍니다.</li>
                    <li>만 21세 이상 나이는 생년월일이 지나야 인정됩니다.</li>
                </ul>
            </div>
        </div>

    </section>
    <section id="no2" class="mb-5">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bold mb-4">요금 안내</h2>
        </div>
        <div class="explain-cont">
            <div class="row">
                <div class="col">
                    <img alt="" src="/images/geniecar1.png" width="600">
                </div>
                <div class="col mt-5">
                    <h4 class="tit-size-big">회원가입 할인 혜택</h4>
                    <ul class="lst dot">
                        <li>주중 및 주말 최고 60% 회원 할인 혜택 (단 24시간 이상 이용 시 할인 적용)</li>
                        <li>차량 무료 업그레이드 / 무료 이용권 지급</li>
                        <li>다양한 여행정보 및 할인쿠폰 제공을 통해 알뜰한 여행 가능</li>
                    </ul>
                    <div class="">
                        <a class="btn btn-white"
                           href="http://localhost:8085/reservation/index.do"
                           data-link-area="단기렌트 서비스 안내" data-link-name="대여 및 요금안내"
                           data-link-text="내륙 예약하기">내륙
                            예약하기</a>
                        <a class="btn btn-white"
                           href="http://localhost:8085/reservation/index.do"
                           data-link-area="단기렌트 서비스 안내" data-link-name="대여 및 요금안내"
                           data-link-text="제주 예약하기">제주
                            예약하기</a>
                    </div>
                </div>
            </div>

            <ul class="nav nav-pills nav-fill mb-3" id="pills-tab1" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home"
                            aria-selected="true">내륙 요금
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-profile" type="button" role="tab"
                            aria-controls="pills-profile" aria-selected="false">제주 요금
                    </button>
                </li>
            </ul>


            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                     aria-labelledby="pills-home-tab">
                    <ul class="nav nav-pills justify-content-center mb-3" id="pills-tab2" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="SwitchNumber1-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber1" type="button" role="tab"
                                    aria-controls="SwitchNumber1" aria-selected="true">경차
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber2-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber2" type="button" role="tab"
                                    aria-controls="SwitchNumber2" aria-selected="false">소형
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber3-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber3" type="button" role="tab"
                                    aria-controls="SwitchNumber3" aria-selected="false">중형
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber4-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber4" type="button" role="tab"
                                    aria-controls="SwitchNumber4" aria-selected="false">준대형
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber5-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber5" type="button" role="tab"
                                    aria-controls="SwitchNumber5" aria-selected="false">대형
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber6-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber6" type="button" role="tab"
                                    aria-controls="SwitchNumber6" aria-selected="false">승합/RV
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber7-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber7" type="button" role="tab"
                                    aria-controls="SwitchNumber7" aria-selected="false">SUV
                            </button>
                        </li>
                        <!--<li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber8-tab" data-bs-toggle="pill"
                                data-bs-target="#SwitchNumber8" type="button" role="tab"
                                aria-controls="SwitchNumber8" aria-selected="false">수입차</button>
                        </li>-->
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber9-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber9" type="button" role="tab"
                                    aria-controls="SwitchNumber9" aria-selected="false">전기차
                            </button>
                        </li>
                    </ul>
                    <div class="tab-content" id="tabContent1">
                        <div class="tab-pane fade show active" id="SwitchNumber1" role="tabpanel"
                             aria-labelledby="SwitchNumber1-tab">
                            ※ 해당 요금은 23년 7월 13일자 기준 요금 입니다.
                            <div class="tbl-box">
                                <p>대여기간별 일일 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 기간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>1~2일</th>
                                        <th>3~4일</th>
                                        <th>5~6일</th>
                                        <th>7일 이상</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>스파크, 모닝</th>
                                        <td>
                                            <p class="txt-color-red">105,000</p>
                                        </td>
                                        <td>95,000</td>
                                        <td>89,000</td>
                                        <td>84,000</td>
                                    </tr>
                                    <tr>
                                        <th>레이, 엑센트</th>
                                        <td>
                                            <p class="txt-color-red">110,000</p>
                                        </td>
                                        <td>99,000</td>
                                        <td>94,000</td>
                                        <td>88,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tbl-box">
                                <p>대여시간별 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>6시간</th>
                                        <th>10시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>스파크, 모닝</th>
                                        <td>
                                            <p class="txt-color-red">59,000</p>
                                        </td>
                                        <td>76,000</td>
                                        <td>84,000</td>
                                    </tr>
                                    <tr>
                                        <th>레이, 엑센트</th>
                                        <td>
                                            <p class="txt-color-red">62,000</p>
                                        </td>

                                        <td>79,000</td>
                                        <td>88,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 할인이 적용 되기 전 요금이오니 자세한 대여금액은 실시간예약
                                        메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간 동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>

                            </div>
                        </div>

                        <div class="tab-pane fade" id="SwitchNumber2" role="tabpanel"
                             aria-labelledby="SwitchNumber2-tab">
                            ※ 해당 요금은 23년 7월 13일자 기준 요금 입니다.
                            <div class="tbl-box">
                                <p>대여기간별 일일 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 기간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>1~2일</th>
                                        <th>3~4일</th>
                                        <th>5~6일</th>
                                        <th>7일 이상</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>아반떼, K3, SM3, 벨로스터</th>
                                        <td>
                                            <p class="txt-color-red">121,000</p>
                                        </td>
                                        <td>109,000</td>
                                        <td>103,000</td>
                                        <td>97,000</td>
                                    </tr>
                                    <tr>
                                        <th>I30, <br>아반떼 (H), 아이오닉 (H)</th>
                                        <td>
                                            <p class="txt-color-red">132,000</p>
                                        </td>
                                        <td>119,000</td>
                                        <td>112,000</td>
                                        <td>106,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tbl-box">
                                <p>대여시간별 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption></caption>
                                    <colgroup>
                                        <col style="width: 25%;">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>6시간</th>
                                        <th>10시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>아반떼, K3, SM3, 벨로스터</th>
                                        <td>
                                            <p class="txt-color-red">68,000</p>
                                        </td>
                                        <td>87,000</td>
                                        <td>97,000</td>
                                    </tr>
                                    <tr>
                                        <th>I30,<br>아반떼 (H), 아이오닉 (H)</th>
                                        <td>
                                            <p class="txt-color-red">74,000</p>
                                        </td>
                                        <td>95,000</td>
                                        <td>106,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 할인이 적용 되기 전 요금이오니 자세한 대여금액은 실시간예약
                                        메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="SwitchNumber3" role="tabpanel"
                             aria-labelledby="SwitchNumber3-tab">
                            ※ 해당 요금은 23년 7월 13일자 기준 요금 입니다.
                            <div class="tbl-box">
                                <p>대여기간별 일일 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 기간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>1~2일</th>
                                        <th>3~4일</th>
                                        <th>5~6일</th>
                                        <th>7일 이상</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>쏘나타 , K5 , SM6 , 말리부</th>
                                        <td>
                                            <p class="txt-color-red">187,000</p>
                                        </td>
                                        <td>168,000</td>
                                        <td>159,000</td>
                                        <td>150,000</td>
                                    </tr>
                                    <tr>
                                        <th>SM6 (L) <br>쏘나타 (L,H) , K5 (L,H)</th>
                                        <td>
                                            <p class="txt-color-red">193,000</p>
                                        </td>
                                        <td>174,000</td>
                                        <td>164,000</td>
                                        <td>154,000</td>
                                    </tr>
                                    <tr>
                                        <th>G70 2.0T (G), 스팅어 2.0T (G)</th>
                                        <td>
                                            <p class="txt-color-red">350,000</p>
                                        </td>
                                        <td>315,000</td>
                                        <td>298,000</td>
                                        <td>280,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tbl-box">
                                <p>대여시간별 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>6시간</th>
                                        <th>10시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>쏘나타 , K5 , SM6 , 말리부</th>
                                        <td>
                                            <p class="txt-color-red">105,000</p>
                                        </td>
                                        <td>135,000</td>
                                        <td>150,000</td>
                                    </tr>
                                    <tr>
                                        <th>SM6 (L) <br>쏘나타(L,H) , K5 (L,H)</th>
                                        <td>
                                            <p class="txt-color-red">108,000</p>
                                        </td>
                                        <td>139,000</td>
                                        <td>154,000</td>
                                    </tr>
                                    <tr>
                                        <th>G70 2.0T (G), 스팅어 2.0T (G)</th>
                                        <td>
                                            <p class="txt-color-red">196,000</p>
                                        </td>
                                        <td>252,000</td>
                                        <td>280,000</td>

                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 할인이 적용 되기 전 요금이오니 자세한 대여금액은 실시간예약
                                        메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="SwitchNumber4" role="tabpanel"
                             aria-labelledby="SwitchNumber4-tab">
                            ※ 해당 요금은 23년 7월 13일자 기준 요금 입니다.
                            <div class="tbl-box">
                                <p>대여기간별 일일 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 기간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>1~2일</th>
                                        <th>3~4일</th>
                                        <th>5~6일</th>
                                        <th>7일 이상</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>그랜저 2.5 (G) / 2.2 (D),
                                            <br>K7 2.5 (G) / 2.2 (D)
                                        </th>
                                        <td>
                                            <p class="txt-color-red">300,000</p>
                                        </td>
                                        <td>270,000</td>
                                        <td>255,000</td>
                                        <td>240,000</td>
                                    </tr>
                                    <tr>
                                        <th>K8 2.5 (G)
                                        </th>
                                        <td>
                                            <p class="txt-color-red">314,000</p>
                                        </td>
                                        <td>283,000</td>
                                        <td>267,000</td>
                                        <td>251,000</td>
                                    </tr>
                                    <tr>
                                        <th>그랜저 GN7 2.5 (G)
                                        </th>
                                        <td>
                                            <p class="txt-color-red">333,000</p>
                                        </td>
                                        <td>300,000</td>
                                        <td>283,000</td>
                                        <td>266,000</td>
                                    </tr>
                                    <tr>
                                        <th>그랜저 3.0 (L), 3.3 (G)
                                        </th>
                                        <td>
                                            <p class="txt-color-red">341,000</p>
                                        </td>
                                        <td>307,000</td>
                                        <td>290,000</td>
                                        <td>273,000</td>
                                    </tr>
                                    <tr>
                                        <th>그랜저 GN7 3.5 (G,L)
                                        </th>
                                        <td>
                                            <p class="txt-color-red">370,000</p>
                                        </td>
                                        <td>333,000</td>
                                        <td>315,000</td>
                                        <td>296,000</td>
                                    </tr>
                                    <tr>
                                        <th>G70 3.3 (G), 스팅어 3.3 (G)</th>
                                        <td>
                                            <p class="txt-color-red">415,000</p>
                                        </td>
                                        <td>373,000</td>
                                        <td>352,000</td>
                                        <td>332,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tbl-box">
                                <p>대여시간별 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>6시간</th>
                                        <th>10시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>그랜저 2.5 (G) / 2.2 (D),
                                            <br>K7 2.5 (G) / 2.2 (D)
                                        </th>
                                        <td>
                                            <p class="txt-color-red">168,000</p>
                                        </td>
                                        <td>216,000</td>
                                        <td>240,000</td>
                                    </tr>
                                    <tr>
                                        <th>K8 2.5 (G)
                                        </th>
                                        <td>
                                            <p class="txt-color-red">176,000</p>
                                        </td>
                                        <td>226,000</td>
                                        <td>251,000</td>
                                    </tr>
                                    <tr>
                                        <th>그랜저 GN7 2.5 (G)
                                        </th>
                                        <td>
                                            <p class="txt-color-red">186,000</p>
                                        </td>
                                        <td>240,000</td>
                                        <td>266,000</td>
                                    </tr>
                                    <tr>
                                        <th>그랜저 3.0 (L), 3.3 (G)
                                        </th>
                                        <td>
                                            <p class="txt-color-red">191,000</p>
                                        </td>
                                        <td>245,000</td>
                                        <td>273,000</td>
                                    </tr>
                                    <tr>
                                        <th> 그랜저 GN7 3.5 (G,L)
                                        </th>
                                        <td>
                                            <p class="txt-color-red">207,000</p>
                                        </td>
                                        <td>266,000</td>
                                        <td>296,000</td>
                                    </tr>
                                    <tr>
                                        <th>G70 3.3 (G), 스팅어 3.3 (G)</th>
                                        <td>
                                            <p class="txt-color-red">232,000</p>
                                        </td>
                                        <td>299,000</td>
                                        <td>332,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 할인이 적용 되기 전 요금이오니 자세한 대여금액은 실시간예약
                                        메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>

                        </div>
                        <div class="tab-pane fade" id="SwitchNumber5" role="tabpanel"
                             aria-labelledby="SwitchNumber5-tab">
                            ※ 해당 요금은 23년 7월 13일자 기준 요금 입니다.
                            <div class="tbl-box">
                                <p>대여기간별 일일 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 기간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>1~2일</th>
                                        <th>3~4일</th>
                                        <th>5~6일</th>
                                        <th>7일 이상</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>G80 2.5</th>
                                        <td>
                                            <p class="txt-color-red">439,000</p>
                                        </td>
                                        <td>395,000</td>
                                        <td>373,000</td>
                                        <td>351,000</td>
                                    </tr>
                                    <tr>
                                        <th>G80 3.3 T / 3.8</th>
                                        <td>
                                            <p class="txt-color-red">492,000</p>
                                        </td>
                                        <td>443,000</td>
                                        <td>418,000</td>
                                        <td>394,000</td>
                                    </tr>
                                    <tr>
                                        <th>G90 3.3 T / 3.8</th>
                                        <td>
                                            <p class="txt-color-red">527,000</p>
                                        </td>
                                        <td>474,000</td>
                                        <td>448,000</td>
                                        <td>422,000</td>
                                    </tr>
                                    <tr>
                                        <th>G90 3.5 / 5.0</th>
                                        <td>
                                            <p class="txt-color-red">644,000</p>
                                        </td>
                                        <td>580,000</td>
                                        <td>547,000</td>
                                        <td>515,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tbl-box">
                                <p>대여시간별 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>6시간</th>
                                        <th>10시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>G80 2.5</th>
                                        <td>
                                            <p class="txt-color-red">246,000</p>
                                        </td>
                                        <td>316,000</td>
                                        <td>351,000</td>
                                    </tr>
                                    <tr>
                                        <th>G80 3.3 T, 3.5 / 3.8</th>
                                        <td>
                                            <p class="txt-color-red">276,000</p>
                                        </td>
                                        <td>354,000</td>
                                        <td>394,000</td>
                                    </tr>
                                    <tr>
                                        <th>G90 3.3 T / 3.8</th>
                                        <td>
                                            <p class="txt-color-red">295,000</p>
                                        </td>
                                        <td>379,000</td>
                                        <td>422,000</td>
                                    </tr>
                                    <tr>
                                        <th>G90 5.0</th>
                                        <td>
                                            <p class="txt-color-red">361,000</p>
                                        </td>
                                        <td>464,000</td>
                                        <td>515,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <!-- 201119 : 마크업수정 -->
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 할인이 적용 되기 전 요금이오니 자세한 대여금액은 실시간예약
                                        메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="SwitchNumber6" role="tabpanel"
                             aria-labelledby="SwitchNumber6-tab">
                            ※ 해당 요금은 23년 7월 13일자 기준 요금 입니다.
                            <div class="tbl-box">
                                <p>대여기간별 일일 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 기간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>1~2일</th>
                                        <th>3~4일</th>
                                        <th>5~6일</th>
                                        <th>7일 이상</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>스타렉스 11인승 /<br>12인승</th>
                                        <td>
                                            <p class="txt-color-red">242,000</p>
                                        </td>
                                        <td>218,000</td>
                                        <td>206,000</td>
                                        <td>194,000</td>
                                    </tr>
                                    <tr>
                                        <th>스타렉스 9인승</th>
                                        <td>
                                            <p class="txt-color-red">264,000</p>
                                        </td>
                                        <td>238,000</td>
                                        <td>224,000</td>
                                        <td>211,000</td>
                                    </tr>
                                    <tr>
                                        <th>스타리아 11인승</th>
                                        <td>
                                            <p class="txt-color-red">276,000</p>
                                        </td>
                                        <td>248,000</td>
                                        <td>235,000</td>
                                        <td>221,000</td>
                                    </tr>
                                    <tr>
                                        <th>카니발 9인승</th>
                                        <td>
                                            <p class="txt-color-red">297,000</p>
                                        </td>
                                        <td>267,000</td>
                                        <td>252,000</td>
                                        <td>238,000</td>
                                    </tr>
                                    <tr>
                                        <th>카니발 11인승, 7인승</th>
                                        <td>
                                            <p class="txt-color-red">319,000</p>
                                        </td>
                                        <td>287,000</td>
                                        <td>271,000</td>
                                        <td>255,000</td>
                                    </tr>
                                    <tr>
                                        <th>카니발 7인승 /<br>9인승 하이리무진</th>
                                        <td>
                                            <p class="txt-color-red">407,000</p>
                                        </td>
                                        <td>366,000</td>
                                        <td>346,000</td>
                                        <td>326,000</td>
                                    </tr>
                                    <tr>
                                        <th>쏠라티</th>
                                        <td>
                                            <p class="txt-color-red">580,000</p>
                                        </td>
                                        <td>522,000</td>
                                        <td>493,000</td>
                                        <td>464,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tbl-box">
                                <p>대여시간별 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>6시간</th>
                                        <th>10시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>스타렉스 11인승 / 12인승</th>
                                        <td>
                                            <p class="txt-color-red">136,000</p>
                                        </td>
                                        <td>174,000</td>
                                        <td>194,000</td>
                                    </tr>
                                    <tr>
                                        <th>스타렉스 9인승</th>
                                        <td>
                                            <p class="txt-color-red">148,000</p>
                                        </td>
                                        <td>190,000</td>
                                        <td>211,000</td>
                                    </tr>
                                    <tr>
                                        <th>스타리아 11인승</th>
                                        <td>
                                            <p class="txt-color-red">155,000</p>
                                        </td>
                                        <td>199,000</td>
                                        <td>221,000</td>
                                    </tr>
                                    <tr>
                                        <th>카니발 9인승</th>
                                        <td>
                                            <p class="txt-color-red">166,000</p>
                                        </td>
                                        <td>214,000</td>
                                        <td>238,000</td>
                                    </tr>
                                    <tr>
                                        <th>카니발 11인승, 7인승</th>
                                        <td>
                                            <p class="txt-color-red">179,000</p>
                                        </td>
                                        <td>230,000</td>
                                        <td>255,000</td>
                                    </tr>
                                    <tr>
                                        <th>카니발 7인승 / 9인승 하이리무진</th>
                                        <td>
                                            <p class="txt-color-red">228,000</p>
                                        </td>
                                        <td>293,000</td>
                                        <td>326,000</td>
                                    </tr>
                                    <tr>
                                        <th>쏠라티</th>
                                        <td>
                                            <p class="txt-color-red">325,000</p>
                                        </td>
                                        <td>418,000</td>
                                        <td>465,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 할인이 적용 되기 전 요금이오니 자세한 대여금액은 실시간예약
                                        메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="SwitchNumber7" role="tabpanel"
                             aria-labelledby="SwitchNumber7-tab">
                            ※ 해당 요금은 23년 7월 13일자 기준 요금 입니다.
                            <div class="tbl-box">
                                <p>대여기간별 일일 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 기간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>1~2일</th>
                                        <th>3~4일</th>
                                        <th>5~6일</th>
                                        <th>7일 이상</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>스토닉, 베뉴, 코나, 셀토스, 니로, QM3,
                                            티볼리, 코란도, 트랙스, XM3, 트레일블레이저
                                        </th>
                                        <td>
                                            <p class="txt-color-red">198,000</p>
                                        </td>
                                        <td>178,000</td>
                                        <td>168,000</td>
                                        <td>158,000</td>
                                    </tr>
                                    <tr>
                                        <th>투싼, 스포티지, 이쿼녹스</th>
                                        <td>
                                            <p class="txt-color-red">240,000</p>
                                        </td>
                                        <td>216,000</td>
                                        <td>204,000</td>
                                        <td>192,000</td>
                                    </tr>
                                    <tr>
                                        <th>싼타페, 쏘렌토, QM6</th>
                                        <td>
                                            <p class="txt-color-red">270,000</p>
                                        </td>
                                        <td>243,000</td>
                                        <td>230,000</td>
                                        <td>216,000</td>
                                    </tr>
                                    <tr>
                                        <th>팰리세이드</th>
                                        <td>
                                            <p class="txt-color-red">374,000</p>
                                        </td>
                                        <td>337,000</td>
                                        <td>318,000</td>
                                        <td>299,000</td>
                                    </tr>
                                    <tr>
                                        <th>모하비, GV70, 트래버스</th>
                                        <td>
                                            <p class="txt-color-red">438,000</p>
                                        </td>
                                        <td>394,000</td>
                                        <td>372,000</td>
                                        <td>350,000</td>
                                    </tr>
                                    <tr>
                                        <th>GV80</th>
                                        <td>
                                            <p class="txt-color-red">495,000</p>
                                        </td>
                                        <td>446,000</td>
                                        <td>421,000</td>
                                        <td>396,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tbl-box">
                                <p>대여시간별 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>6시간</th>
                                        <th>10시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>스토닉, 베뉴, 코나, 셀토스, 니로, QM3,
                                            티볼리, 코란도, 트랙스, XM3, 트레일블레이저
                                        </th>
                                        <td>
                                            <p class="txt-color-red">111,000</p>
                                        </td>
                                        <td>143,000</td>
                                        <td>158,000</td>
                                    </tr>
                                    <tr>
                                        <th>투싼, 스포티지, 이쿼녹스</th>
                                        <td>
                                            <p class="txt-color-red">134,000</p>
                                        </td>
                                        <td>173,000</td>
                                        <td>192,000</td>
                                    </tr>
                                    <tr>
                                        <th>싼타페, 쏘렌토, QM6</th>
                                        <td>
                                            <p class="txt-color-red">151,000</p>
                                        </td>
                                        <td>194,000</td>
                                        <td>216,000</td>
                                    </tr>
                                    <tr>
                                        <th>팰리세이드</th>
                                        <td>
                                            <p class="txt-color-red">209,000</p>
                                        </td>
                                        <td>269,000</td>
                                        <td>299,000</td>
                                    </tr>
                                    <tr>
                                        <th>모하비, GV70, 트래버스</th>
                                        <td>
                                            <p class="txt-color-red">245,000</p>
                                        </td>
                                        <td>315,000</td>
                                        <td>350,000</td>
                                    </tr>
                                    <tr>
                                        <th>GV80</th>
                                        <td>
                                            <p class="txt-color-red">277,000</p>
                                        </td>
                                        <td>356,000</td>
                                        <td>396,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 할인이 적용 되기 전 요금이오니 자세한 대여금액은 실시간예약
                                        메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--<div class="tab-pane fade" id="SwitchNumber8" role="tabpanel" aria-labelledby="SwitchNumber8-tab">
                            ※ 해당 요금은 23년 7월 13일자 기준 요금 입니다.
                            <div class="tbl-box">
                                <p>대여기간별 일일 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 기간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="30%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>차종명</th>
                                            <th>1~2일</th>
                                            <th>3~4일</th>
                                            <th>5~6일</th>
                                            <th>7일 이상</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>MINI COOPER / MINI CLUBMAN / JEEP RENEGADE /
                                                FORD KUGA /
                                                BENZ A220</th>
                                            <td>
                                                <p class="txt-color-red">385,000</p>
                                            </td>
                                            <td>347,000</td>
                                            <td>327,000</td>
                                            <td>308,000</td>
                                        </tr>
                                        <tr>
                                            <th> ACCORD / BMW 118D / BMW 320I / PASSAT 2.0</th>
                                            <td>
                                                <p class="txt-color-red">390,000</p>
                                            </td>
                                            <td>351,000</td>
                                            <td>332,000</td>
                                            <td>312,000</td>
                                        </tr>
                                        <tr>
                                            <th>MINI JCW / MINI COOPER S / TIGUAN</th>
                                            <td>
                                                <p class="txt-color-red">412,000</p>
                                            </td>
                                            <td>371,000</td>
                                            <td>350,000</td>
                                            <td>330,000</td>
                                        </tr>
                                        <tr>
                                            <th>AUDI A4 / AUDI Q3 / AUDI A6 (G) / BENZ GLA / BMW
                                                320D / BENZ
                                                C220 / BMW 520I / BMW X1 /
                                                CADILLAC XT5 / FORD EXPLORER / HONDA PILOT /
                                                JAGUAR XE /
                                                JAGUAR XF / LEXUS NX300 /
                                                PEUGEOT 5008 / TOYOTA SIENNA / LINCOLN MKZ /
                                                ARTEON / VOLVO
                                                XC90 / BENZ CLA / BENZ C</th>
                                            <td>
                                                <p class="txt-color-red">495,000</p>
                                            </td>
                                            <td>446,000</td>
                                            <td>421,000</td>
                                            <td>396,000</td>
                                        </tr>
                                        <tr>
                                            <th> BMW X3 / AUDI Q5 / AUDI A6 (D) / BENZ E220 /
                                                BENZ C250 /
                                                BENZ E300 / BMW 520D / BMW 530I /
                                                JEEP GRAND CHEROKEE / INFINITI QX60 / INFINITI
                                                Q50S / JAGUAR
                                                F-TYPE / LAND ROVER DISCOVERY /
                                                LEXUS ES300 / LEXUS NX300 / RANGE ROVER EVOQUE /
                                                VOLVO S90 /
                                                BENZ E200 / BENZ E250 </th>
                                            <td>
                                                <p class="txt-color-red">565,000</p>
                                            </td>
                                            <td>509,000</td>
                                            <td>480,000</td>
                                            <td>452,000</td>
                                        </tr>
                                        <tr>
                                            <th> AUDI A6 TFSI QU / BENZ GLC220 / BENZ GLC250 /
                                                BENZ E350 /
                                                BMW 530D / JAGUAR F-PACE </th>
                                            <td>
                                                <p class="txt-color-red">622,000</p>
                                            </td>
                                            <td>560,000</td>
                                            <td>529,000</td>
                                            <td>498,000</td>
                                        </tr>
                                        <tr>
                                            <th>AUDI Q5 / BENZ GLC300</th>
                                            <td>
                                                <p class="txt-color-red">655,000</p>
                                            </td>
                                            <td>589,000</td>
                                            <td>557,000</td>
                                            <td>524,000</td>
                                        </tr>
                                        <tr>
                                            <th>BENZ GLC350 / BENZ GLE350 / BENZ CLS300 / LEXUS
                                                RX450</th>
                                            <td>
                                                <p class="txt-color-red">678,000</p>
                                            </td>
                                            <td>610,000</td>
                                            <td>576,000</td>
                                            <td>542,000</td>
                                        </tr>
                                        <tr>
                                            <th>BMW X5 / BMW X6
                                            </th>
                                            <td>
                                                <p class="txt-color-red">693,000</p>
                                            </td>
                                            <td>624,000</td>
                                            <td>589,000</td>
                                            <td>554,000</td>
                                        </tr>
                                        <tr>
                                            <th>BMW 640D / RANGE ROVER 3.0</th>
                                            <td>
                                                <p class="txt-color-red">735,000</p>
                                            </td>
                                            <td>662,000</td>
                                            <td>625,000</td>
                                            <td>588,000</td>
                                        </tr>
                                        <tr>
                                            <th>BMW X7</th>
                                            <td>
                                                <p class="txt-color-red">756,000</p>
                                            </td>
                                            <td>680,000</td>
                                            <td>643,000</td>
                                            <td>605,000</td>
                                        </tr>
                                        <tr>
                                            <th>AUDI A8 / BMW 730LD / BENZ S350 / LEXUS ES350 /
                                                LEXUS LS500
                                                / VOLVO XC90 (K)</th>
                                            <td>
                                                <p class="txt-color-red">791,000</p>
                                            </td>
                                            <td>712,000</td>
                                            <td>672,000</td>
                                            <td>633,000</td>
                                        </tr>
                                        <tr>
                                            <th>BENZ S400 / BENZ S450 / LEXUS LS500</th>
                                            <td>
                                                <p class="txt-color-red">904,000</p>
                                            </td>
                                            <td>814,000</td>
                                            <td>768,000</td>
                                            <td>723,000</td>
                                        </tr>
                                        <tr>
                                            <th>BENZ S500 / BENZ S560</th>
                                            <td>
                                                <p class="txt-color-red">1,017,000</p>
                                            </td>
                                            <td>915,000</td>
                                            <td>864,000</td>
                                            <td>814,000</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tbl-box">
                                <p>대여시간별 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="30%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>차종명</th>
                                            <th>6시간</th>
                                            <th>10시간</th>
                                            <th>12시간</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>MINI COOPER / MINI CLUBMAN / JEEP RENEGADE /
                                                FORD KUGA /
                                                BENZ A220</th>
                                            <td>
                                                <p class="txt-color-red">215,000</p>
                                            </td>
                                            <td>277,000</td>
                                            <td>308,000</td>
                                        </tr>
                                        <tr>
                                            <th> ACCORD / BMW 118D / BMW 320I / PASSAT 2.0</th>
                                            <td>
                                                <p class="txt-color-red">218,000</p>
                                            </td>
                                            <td>280,000</td>
                                            <td>312,000</td>
                                        </tr>
                                        <tr>
                                            <th>MINI JCW / MINI COOPER S / TIGUAN</th>
                                            <td>
                                                <p class="txt-color-red">231,000</p>
                                            </td>
                                            <td>296,000</td>
                                            <td>330,000</td>
                                        </tr>
                                        <tr>
                                            <th>AUDI A4 / AUDI Q3 / AUDI A6 (G) / BENZ GLA / BMW
                                                320D / BENZ
                                                C220 / BMW 520I / BMW X1 /
                                                CADILLAC XT5 / FORD EXPLORER / HONDA PILOT /
                                                JAGUAR XE /
                                                JAGUAR XF / LEXUS NX300 /
                                                PEUGEOT 5008 / TOYOTA SIENNA / LINCOLN MKZ /
                                                ARTEON / VOLVO
                                                XC90 / BENZ CLA / BENZ C</th>
                                            <td>
                                                <p class="txt-color-red">277,000</p>
                                            </td>
                                            <td>356,000</td>
                                            <td>396,000</td>
                                        </tr>
                                        <tr>
                                            <th> BMW X3 / AUDI Q5 / AUDI A6 (D) / BENZ E220 /
                                                BENZ C250 /
                                                BENZ E300 / BMW 520D / BMW 530I /
                                                JEEP GRAND CHEROKEE / INFINITI QX60 / INFINITI
                                                Q50S / JAGUAR
                                                F-TYPE / LAND ROVER DISCOVERY /
                                                LEXUS ES300 / LEXUS NX300 / RANGE ROVER EVOQUE /
                                                VOLVO S90 /
                                                BENZ E200 / BENZ E250 </th>
                                            <td>
                                                <p class="txt-color-red">316,000</p>
                                            </td>
                                            <td>406,000</td>
                                            <td>452,000</td>
                                        </tr>
                                        <tr>
                                            <th> AUDI A6 TFSI QU / BENZ GLC220 / BENZ GLC250 /
                                                BENZ E350 /
                                                BMW 530D / JAGUAR F-PACE </th>
                                            <td>
                                                <p class="txt-color-red">348,000</p>
                                            </td>
                                            <td>448,000</td>
                                            <td>498,000</td>
                                        </tr>
                                        <tr>
                                            <th>AUDI Q5 / BENZ GLC300</th>
                                            <td>
                                                <p class="txt-color-red">367,000</p>
                                            </td>
                                            <td>472,000</td>
                                            <td>525,000</td>
                                        </tr>
                                        <tr>
                                            <th>BENZ GLC350 / BENZ GLE350 / BENZ CLS300 / LEXUS
                                                RX450</th>
                                            <td>
                                                <p class="txt-color-red">380,000</p>
                                            </td>
                                            <td>488,000</td>
                                            <td>543,000</td>
                                        </tr>
                                        <tr>
                                            <th>BMW X5 / BMW X6
                                            </th>
                                            <td>
                                                <p class="txt-color-red">388,000</p>
                                            </td>
                                            <td>499,000</td>
                                            <td>555,000</td>
                                        </tr>
                                        <tr>
                                            <th>BMW 640D / RANGE ROVER 3.0</th>
                                            <td>
                                                <p class="txt-color-red">411,000</p>
                                            </td>
                                            <td>529,000</td>
                                            <td>589,000</td>
                                        </tr>
                                        <tr>
                                            <th>BMW X7</th>
                                            <td>
                                                <p class="txt-color-red">424,000</p>
                                            </td>
                                            <td>544,000</td>
                                            <td>606,000</td>
                                        </tr>
                                        <tr>
                                            <th>AUDI A8 / BMW 730LD / BENZ S350 / LEXUS ES350 /
                                                LEXUS LS500
                                                / VOLVO XC90 (K)</th>
                                            <td>
                                                <p class="txt-color-red">443,000</p>
                                            </td>
                                            <td>569,000</td>
                                            <td>634,000</td>
                                        </tr>
                                        <tr>
                                            <th>BENZ S400 / BENZ S450 / LEXUS LS500</th>
                                            <td>
                                                <p class="txt-color-red">506,000</p>
                                            </td>
                                            <td>651,000</td>
                                            <td>724,000</td>
                                        </tr>
                                        <tr>
                                            <th>BENZ S500 / BENZ S560</th>
                                            <td>
                                                <p class="txt-color-red">570,000</p>
                                            </td>
                                            <td>732,000</td>
                                            <td>815,000</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 할인이 적용 되기 전 요금이오니 자세한 대여금액은 실시간예약
                                        메뉴에서 확인하시기 바랍니다.</li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                        </div>-->
                        <div class="tab-pane fade" id="SwitchNumber9" role="tabpanel"
                             aria-labelledby="SwitchNumber9-tab">
                            ※ 해당 요금은 23년 7월 13일자 기준 요금 입니다.
                            <div class="tbl-box">
                                <p>대여기간별 일일 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 기간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>1~2일</th>
                                        <th>3~4일</th>
                                        <th>5~6일</th>
                                        <th>7일 이상</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>볼트 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">187,000</p>
                                        </td>
                                        <td>168,000</td>
                                        <td>159,000</td>
                                        <td>150,000</td>
                                    </tr>
                                    <tr>
                                        <th>코나 (EV), 니로(EV)</th>
                                        <td>
                                            <p class="txt-color-red">198,000</p>
                                        </td>
                                        <td>178,000</td>
                                        <td>168,000</td>
                                        <td>158,000</td>
                                    </tr>
                                    <tr>
                                        <th>아이오닉 5 2WD (EV), EV6 2WD (EV)</th>
                                        <td>
                                            <p class="txt-color-red">220,000</p>
                                        </td>
                                        <td>198,000</td>
                                        <td>187,000</td>
                                        <td>176,000</td>
                                    </tr>
                                    <tr>
                                        <th>아이오닉 5 4WD (EV), EV6 4WD (EV)</th>
                                        <td>
                                            <p class="txt-color-red">300,000</p>
                                        </td>
                                        <td>270,000</td>
                                        <td>255,000</td>
                                        <td>240,000</td>
                                    </tr>
                                    <tr>
                                        <th>아이오닉 6 2WD (EV)</th>
                                        <td>
                                            <p class="txt-color-red">340,000</p>
                                        </td>
                                        <td>306,000</td>
                                        <td>289,000</td>
                                        <td>272,000</td>
                                    </tr>
                                    <tr>
                                        <th>GV60 2WD (EV)</th>
                                        <td>
                                            <p class="txt-color-red">438,000</p>
                                        </td>
                                        <td>394,000</td>
                                        <td>372,000</td>
                                        <td>350,000</td>
                                    </tr>
                                    <tr>
                                        <th>TESLA MODEL 3 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">462,000</p>
                                        </td>
                                        <td>416,000</td>
                                        <td>393,000</td>
                                        <td>370,000</td>
                                    </tr>
                                    <tr>
                                        <th>TESLA MODEL Y (EV)</th>
                                        <td>
                                            <p class="txt-color-red">517,000</p>
                                        </td>
                                        <td>465,000</td>
                                        <td>439,000</td>
                                        <td>414,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tbl-box">
                                <p>대여시간별 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th>차종명</th>
                                        <th>6시간</th>
                                        <th>10시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>볼트 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">105,000</p>
                                        </td>
                                        <td>135,000</td>
                                        <td>150,000</td>
                                    </tr>
                                    <tr>
                                        <th>코나 (EV), 니로 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">111,000</p>
                                        </td>
                                        <td>143,000</td>
                                        <td>158,000</td>
                                    </tr>
                                    <tr>
                                        <th>아이오닉 5 2WD (EV), EV6 2WD (EV)</th>
                                        <td>
                                            <p class="txt-color-red">123,000</p>
                                        </td>
                                        <td>158,000</td>
                                        <td>176,000</td>
                                    </tr>
                                    <tr>
                                        <th>아이오닉 5 4WD (EV), EV6 4WD (EV)</th>
                                        <td>
                                            <p class="txt-color-red">168,000</p>
                                        </td>
                                        <td>216,000</td>
                                        <td>240,000</td>
                                    </tr>
                                    <tr>
                                        <th>아이오닉 6 2WD (EV)</th>
                                        <td>
                                            <p class="txt-color-red">190,000</p>
                                        </td>
                                        <td>245,000</td>
                                        <td>272,000</td>
                                    </tr>
                                    <tr>
                                        <th>GV60 2WD (EV)</th>
                                        <td>
                                            <p class="txt-color-red">245,000</p>
                                        </td>
                                        <td>315,000</td>
                                        <td>350,000</td>
                                    </tr>
                                    <tr>
                                        <th>TESLA MODEL 3 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">259,000</p>
                                        </td>
                                        <td>333,000</td>
                                        <td>370,000</td>
                                    </tr>
                                    <tr>
                                        <th>TESLA MODEL Y (EV)</th>
                                        <td>
                                            <p class="txt-color-red">290,000</p>
                                        </td>
                                        <td>372,000</td>
                                        <td>414,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 할인이 적용 되기 전 요금이오니 자세한 대여금액은 실시간예약
                                        메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane fade show" id="pills-profile" role="tabpane2"
                     aria-labelledby="pills-profile-tab">
                    <ul class="nav nav-pills justify-content-center mb-3" id="pills-tab3" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="SwitchNumber11-tab"
                                    data-bs-toggle="pill" data-bs-target="#SwitchNumber11" type="button"
                                    role="tab" aria-controls="SwitchNumber11"
                                    aria-selected="true">경차
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber12-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber12" type="button" role="tab"
                                    aria-controls="SwitchNumber12" aria-selected="false">소형
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber13-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber13" type="button" role="tab"
                                    aria-controls="SwitchNumber13" aria-selected="false">중형
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber14-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber14" type="button" role="tab"
                                    aria-controls="SwitchNumber14" aria-selected="false">준대형
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber15-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber15" type="button" role="tab"
                                    aria-controls="SwitchNumber15" aria-selected="false">대형
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber16-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber16" type="button" role="tab"
                                    aria-controls="SwitchNumber16" aria-selected="false">승합/RV
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber17-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber17" type="button" role="tab"
                                    aria-controls="SwitchNumber17" aria-selected="false">SUV
                            </button>
                        </li>
                        <!--<li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber18-tab" data-bs-toggle="pill"
                                data-bs-target="#SwitchNumber18" type="button" role="tab"
                                aria-controls="SwitchNumber18" aria-selected="false">수입차</button>
                        </li>-->
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="SwitchNumber19-tab" data-bs-toggle="pill"
                                    data-bs-target="#SwitchNumber19" type="button" role="tab"
                                    aria-controls="SwitchNumber19" aria-selected="false">전기차
                            </button>
                        </li>
                    </ul>

                    <div class="tab-content" id="tabContent2">
                        <div class="tab-pane fade show active" id="SwitchNumber11" role="tabpane2"
                             aria-labelledby="SwitchNumber11-tab">
                            <div class="tbl-box">
                                <p class="tit">일반 회원 대여 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>

                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>스파크, 모닝</th>
                                        <td>
                                            <p class="txt-color-red">30,800</p>
                                        </td>
                                        <td>4,200</td>
                                        <td>17,150</td>
                                        <td>24,500</td>
                                    </tr>
                                    <tr>
                                        <th>레이</th>
                                        <td>
                                            <p class="txt-color-red">33,950</p>
                                        </td>
                                        <td>4,900</td>
                                        <td>18,900</td>
                                        <td>27,300</td>
                                    </tr>
                                    <tr>
                                        <th>캐스퍼</th>
                                        <td>
                                            <p class="txt-color-red">38,500</p>
                                        </td>
                                        <td>5,600</td>
                                        <td>21,700</td>
                                        <td>30,800</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 롯데렌터카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                            <div class="tbl-box">
                                <p class="tit">제주 신고 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>스파크, 모닝</th>
                                        <td>
                                            <span class="txt-color-red">88,000</span>
                                        </td>
                                        <td>12,000</td>
                                        <td>49,000</td>
                                        <td>70,000</td>
                                    </tr>
                                    <tr>
                                        <th>레이</th>
                                        <td>
                                            <span class="txt-color-red">97,000</span>
                                        </td>
                                        <td>14,000</td>
                                        <td>54,000</td>
                                        <td>78,000</td>
                                    </tr>
                                    <tr>
                                        <th>캐스퍼</th>
                                        <td>
                                            <span class="txt-color-red">110,000</span>
                                        </td>
                                        <td>16,000</td>
                                        <td>62,000</td>
                                        <td>88,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="SwitchNumber12" role="tabpane2"
                             aria-labelledby="SwitchNumber12-tab">
                            <div class="tbl-box">
                                <p class="tit">일반 회원 대여 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>아반떼, K3, 벨로스터</th>
                                        <td>
                                            <p class="txt-color-red">42,000</p>
                                        </td>
                                        <td>5,950</td>
                                        <td>23,450</td>
                                        <td>33,600</td>
                                    </tr>
                                    <tr>
                                        <th>올 뉴 아반떼, 쏘울</th>
                                        <td>
                                            <p class="txt-color-red">45,500</p>
                                        </td>
                                        <td>6,300</td>
                                        <td>25,550</td>
                                        <td>36,400</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 롯데렌터카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                            <div class="tbl-box">
                                <p class="tit">제주 신고 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>아반떼, K3, 벨로스터</th>
                                        <td>
                                            <span class="txt-color-red">120,000</span>
                                        </td>
                                        <td>17,000</td>
                                        <td>67,000</td>
                                        <td>96,000</td>
                                    </tr>
                                    <tr>
                                        <th>올 뉴 아반떼, 쏘울</th>
                                        <td>
                                            <span class="txt-color-red">130,000</span>
                                        </td>
                                        <td>18,000</td>
                                        <td>73,000</td>
                                        <td>104,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="SwitchNumber13" role="tabpane2"
                             aria-labelledby="SwitchNumber13-tab">
                            <div class="tbl-box">
                                <p>일반 회원 대여 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>쏘나타, K5, SM6, 말리부</th>
                                        <td>
                                            <p class="txt-color-red">56,000</p>
                                        </td>
                                        <td>8,050</td>
                                        <td>31,500</td>
                                        <td>44,800</td>
                                    </tr>


                                    <tr>
                                        <th>쏘나타 DN8, INTERACTIVE K5</th>
                                        <td>
                                            <p class="txt-color-red">59,500</p>
                                        </td>
                                        <td>8,400</td>
                                        <td>33,250</td>
                                        <td>47,600</td>
                                    </tr>


                                    <tr>
                                        <th>G70 2.0 T, 스팅어 2.0 T</th>
                                        <td>
                                            <p class="txt-color-red">78,400</p>
                                        </td>
                                        <td>10,850</td>
                                        <td>43,750</td>
                                        <td>62,650</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                            <div class="tbl-box">
                                <p>제주 신고 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>쏘나타, K5, SM6, 말리부</th>
                                        <td>
                                            <span class="txt-color-red">160,000</span>
                                        </td>
                                        <td>23,000</td>
                                        <td>90,000</td>
                                        <td>128,000</td>
                                    </tr>

                                    <tr>
                                        <th>쏘나타 DN8, INTERACTIVE K5</th>
                                        <td>
                                            <p class="txt-color-red">170,000</p>
                                        </td>
                                        <td>24,000</td>
                                        <td>95,000</td>
                                        <td>136,000</td>
                                    </tr>

                                    <tr>
                                        <th>G70 2.0 T, 스팅어 2.0 T</th>
                                        <td>
                                            <span class="txt-color-red">224,000 </span>
                                        </td>
                                        <td>31,000</td>
                                        <td>125,000</td>
                                        <td>179,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="SwitchNumber14" role="tabpane2"
                             aria-labelledby="SwitchNumber14-tab">
                            <div class="tbl-box">
                                <p>일반 회원 대여 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>그랜저 IG 2.4 (G)</th>
                                        <td>
                                            <p class="txt-color-red">70,700</p>
                                        </td>
                                        <td>9,800</td>
                                        <td>39,550</td>
                                        <td>56,700</td>
                                    </tr>

                                    <tr>
                                        <th>그랜저 IG 3.0, K7 3.0 (G,L)</th>
                                        <td>
                                            <p class="txt-color-red">78,400</p>
                                        </td>
                                        <td>10,850</td>
                                        <td>43,750</td>
                                        <td>62,650</td>
                                    </tr>

                                    <tr>
                                        <th>더 뉴 그랜저, K7 2.5 (G)</th>
                                        <td>
                                            <p class="txt-color-red">81,900</p>
                                        </td>
                                        <td>7,350</td>
                                        <td>40,250</td>
                                        <td>59,150</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                            <div class="tbl-box">
                                <p>제주 신고 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>그랜저 IG 2.4 (G)</th>
                                        <td>
                                            <span class="txt-color-red">202,000</span>
                                        </td>
                                        <td>28,000</td>
                                        <td>113,000</td>
                                        <td>162,000</td>
                                    </tr>

                                    <tr>
                                        <th>그랜저 IG 3.0, K7 3.0 (G,L)</th>
                                        <td>
                                            <span class="txt-color-red">224,000</span>
                                        </td>
                                        <td>31,000</td>
                                        <td>125,000</td>
                                        <td>179,000</td>
                                    </tr>

                                    <tr>
                                        <th>더 뉴 그랜저, K7 2.5 (G)</th>
                                        <td>
                                            <span class="txt-color-red">234,000</span>
                                        </td>
                                        <td>33,000</td>
                                        <td>131,000</td>
                                        <td>187,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="SwitchNumber15" role="tabpane2"
                             aria-labelledby="SwitchNumber15-tab">
                            <div class="tbl-box">
                                <p class="tit">일반 회원 대여 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>G80</th>
                                        <td>
                                            <p class="txt-color-red">105,000</p>
                                        </td>
                                        <td>14,700</td>
                                        <td>58,800</td>
                                        <td>84,000</td>
                                    </tr>
                                    <tr>
                                        <th>K9</th>
                                        <td>
                                            <p class="txt-color-red">133,000</p>
                                        </td>
                                        <td>18,550</td>
                                        <td>74,550</td>
                                        <td>106,400</td>
                                    </tr>
                                    <tr>
                                        <th>G90</th>
                                        <td>
                                            <p class="txt-color-red">171,500</p>
                                        </td>
                                        <td>24,150</td>
                                        <td>95,900</td>
                                        <td>137,200</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 롯데렌터카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                            <div class="tbl-box">
                                <p class="tit">제주 신고 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>G80</th>
                                        <td>
                                            <p class="txt-color-red">300,000</p>
                                        </td>
                                        <td>42,000</td>
                                        <td>168,000</td>
                                        <td>240,000</td>
                                    </tr>
                                    <tr>
                                        <th>K9</th>
                                        <td>
                                            <p class="txt-color-red">380,000</p>
                                        </td>
                                        <td>53,000</td>
                                        <td>213,000</td>
                                        <td>304,000</td>
                                    </tr>
                                    <tr>
                                        <th>G90</th>
                                        <td>
                                            <p class="txt-color-red">490,000</p>
                                        </td>
                                        <td>69,000</td>
                                        <td>274,000</td>
                                        <td>392,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="SwitchNumber16" role="tabpane2"
                             aria-labelledby="SwitchNumber16-tab">
                            <div class="tbl-box">
                                <p>일반 회원 대여 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>스타렉스 (9,11,12인승),<br>카니발 (9, 11인승)</th>
                                        <td>
                                            <p class="txt-color-red">77,000</p>
                                        </td>
                                        <td>10,850</td>
                                        <td>43,050</td>
                                        <td>61,600</td>
                                    </tr>

                                    <tr>
                                        <th>카니발 KA4 9인승</th>
                                        <td>
                                            <p class="txt-color-red">80,500</p>
                                        </td>
                                        <td>11,200</td>
                                        <td>45,150</td>
                                        <td>64,400</td>
                                    </tr>

                                    <tr>
                                        <th>카니발 하이리무진</th>
                                        <td>
                                            <p class="txt-color-red">115,500</p>
                                        </td>
                                        <td>16,100</td>
                                        <td>64,750</td>
                                        <td>92,400</td>
                                    </tr>
                                    <tr>
                                        <th>카니발 KA4 하이리무진</th>
                                        <td>
                                            <p class="txt-color-red">126,000</p>
                                        </td>
                                        <td>17,850</td>
                                        <td>70,700</td>
                                        <td>100,000</td>
                                    </tr>
                                    <tr>
                                        <th>쏠라티</th>
                                        <td>
                                            <p class="txt-color-red">192,500</p>
                                        </td>
                                        <td>26,950</td>
                                        <td>107,800</td>
                                        <td>154,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                            <div class="tbl-box">
                                <p>제주 신고 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>스타렉스 (9,11,12인승),<br>카니발 (9, 11인승)</th>
                                        <td>
                                            <span class="txt-color-red">220,000</span>
                                        </td>
                                        <td>31,000</td>
                                        <td>123,000</td>
                                        <td>176,000</td>
                                    </tr>

                                    <tr>
                                        <th>카니발 KA4 9인승</th>
                                        <td>
                                            <span class="txt-color-red">230,000</span>
                                        </td>
                                        <td>32,000</td>
                                        <td>129,000</td>
                                        <td>184,000</td>
                                    </tr>

                                    <tr>
                                        <th>카니발 하이리무진</th>
                                        <td>
                                            <span class="txt-color-red">330,000</span>
                                        </td>
                                        <td>46,000</td>
                                        <td>185,000</td>
                                        <td>264,000</td>
                                    </tr>

                                    <tr>
                                        <th>카니발 KA4 하이리무진</th>
                                        <td>
                                            <span class="txt-color-red">360,000</span>
                                        </td>
                                        <td>51,000</td>
                                        <td>202,000</td>
                                        <td>288,000</td>
                                    </tr>
                                    <tr>
                                        <th>쏠라티</th>
                                        <td>
                                            <span class="txt-color-red">550,000</span>
                                        </td>
                                        <td>77,000</td>
                                        <td>308,000</td>
                                        <td>440,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="SwitchNumber17" role="tabpanel"
                             aria-labelledby="SwitchNumber17-tab">
                            <div class="tbl-box">
                                <p>일반 회원 대여 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>코나, 스토닉, QM3, 올란도</th>
                                        <td>
                                            <p class="txt-color-red">49,000</p>
                                        </td>
                                        <td>7,000</td>
                                        <td>27,300</td>
                                        <td>39,200</td>
                                    </tr>
                                    <tr>
                                        <th>티볼리, XM3, 셀토스</th>
                                        <td>
                                            <p class="txt-color-red">52,500</p>
                                        </td>
                                        <td>7,350</td>
                                        <td>29,400</td>
                                        <td>42,000</td>
                                    </tr>
                                    <tr>
                                        <th>투싼, 스포티지</th>
                                        <td>
                                            <p class="txt-color-red">63,000</p>
                                        </td>
                                        <td>8,750</td>
                                        <td>35,350</td>
                                        <td>50,400</td>
                                    </tr>
                                    <tr>
                                        <th>싼타페, 쏘렌토, QM6</th>
                                        <td>
                                            <p class="txt-color-red">73,500</p>
                                        </td>
                                        <td>10,500</td>
                                        <td>41,300</td>
                                        <td>58,800</td>
                                    </tr>

                                    <tr>
                                        <th>더 뉴 싼타페, 쏘렌토 MQ4</th>
                                        <td>
                                            <p class="txt-color-red">77,000</p>
                                        </td>
                                        <td>10,850</td>
                                        <td>43,050</td>
                                        <td>61,600</td>
                                    </tr>

                                    <tr>
                                        <th>팰리세이드</th>
                                        <td>
                                            <p class="txt-color-red">115,500</p>
                                        </td>
                                        <td>16,100</td>
                                        <td>64,750</td>
                                        <td>92,400</td>
                                    </tr>

                                    <tr>
                                        <th>GV80</th>
                                        <td>
                                            <p class="txt-color-red">140,000</p>
                                        </td>
                                        <td>19,600</td>
                                        <td>78,400</td>
                                        <td>112,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                            <div class="tbl-box">
                                <p>제주 신고 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>코나, 스토닉, QM3, 올란도</th>
                                        <td>
                                            <p class="txt-color-red">140,000</p>
                                        </td>
                                        <td>20,000</td>
                                        <td>78,000</td>
                                        <td>112,000</td>
                                    </tr>
                                    <tr>
                                        <th>티볼리, XM3, 셀토스</th>
                                        <td>
                                            <p class="txt-color-red">150,000</p>
                                        </td>
                                        <td>21,000</td>
                                        <td>84,000</td>
                                        <td>120,000</td>
                                    </tr>
                                    <tr>
                                        <th>투싼, 스포티지</th>
                                        <td>
                                            <p class="txt-color-red">180,000</p>
                                        </td>
                                        <td>25,000</td>
                                        <td>108,000</td>
                                        <td>144,000</td>
                                    </tr>
                                    <tr>
                                        <th>싼타페, 쏘렌토, QM6</th>
                                        <td>
                                            <p class="txt-color-red">210,000</p>
                                        </td>
                                        <td>29,000</td>
                                        <td>118,000</td>
                                        <td>168,000</td>
                                    </tr>

                                    <tr>
                                        <th>더 뉴 싼타페, 쏘렌토 MQ4</th>
                                        <td>
                                            <p class="txt-color-red">220,000</p>
                                        </td>
                                        <td>31,000</td>
                                        <td>123,000</td>
                                        <td>176,000</td>
                                    </tr>

                                    <tr>
                                        <th>팰리세이드</th>
                                        <td>
                                            <p class="txt-color-red">330,000</p>
                                        </td>
                                        <td>46,000</td>
                                        <td>185,000</td>
                                        <td>264,000</td>
                                    </tr>

                                    <tr>
                                        <th>GV80</th>
                                        <td>
                                            <p class="txt-color-red">400,000</p>
                                        </td>
                                        <td>56,000</td>
                                        <td>224,000</td>
                                        <td>320,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!--<div class="tab-pane fade" id="SwitchNumber18" role="tabpanel"
                            aria-labelledby="SwitchNumber18-tab">
                            <div class="tbl-box">
                                <p>일반 회원 대여 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th rowspan="2">차종명</th>
                                            <th>대여 요금</th>
                                            <th colspan="3">대여 추가 요금</th>
                                        </tr>
                                        <tr>
                                            <th>24시간</th>
                                            <th>1시간</th>
                                            <th>6시간</th>
                                            <th>12시간</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>미니 컨버터블</th>
                                            <td>
                                                <p class="txt-color-red">122,500</p>
                                            </td>
                                            <td>17,150</td>
                                            <td>68,600</td>
                                            <td>98,000</td>
                                        </tr>
                                        <tr>
                                            <th>머스탱 컨버터블</th>
                                            <td>
                                                <p class="txt-color-red">140,000</p>
                                            </td>
                                            <td>19,600</td>
                                            <td>78,400</td>
                                            <td>112,000</td>
                                        </tr>
                                        <tr>
                                            <th>430i 컨버터블</th>
                                            <td>
                                                <p class="txt-color-red">157,500</p>
                                            </td>
                                            <td>22,050</td>
                                            <td>88,200</td>
                                            <td>126,000</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                            <div class="tbl-box">
                                <p>제주 신고 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th rowspan="2">차종명</th>
                                            <th>대여 요금</th>
                                            <th colspan="3">대여 추가 요금</th>
                                        </tr>
                                        <tr>
                                            <th>24시간</th>
                                            <th>1시간</th>
                                            <th>6시간</th>
                                            <th>12시간</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>미니 컨버터블</th>
                                            <td>
                                                <span class="txt-color-red">350,000</span>
                                            </td>
                                            <td>49,000</td>
                                            <td>196,000</td>
                                            <td>280,000</td>
                                        </tr>
                                        <tr>
                                            <th>머스탱 컨버터블</th>
                                            <td>
                                                <span class="txt-color-red">400,000</span>
                                            </td>
                                            <td>56,000</td>
                                            <td>224,000</td>
                                            <td>320,000</td>
                                        </tr>
                                        <tr>
                                            <th>430i 컨버터블</th>
                                            <td>
                                                <span class="txt-color-red">450,000</span>
                                            </td>
                                            <td>63,000</td>
                                            <td>252,000</td>
                                            <td>360,000</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>-->
                        <div class="tab-pane fade" id="SwitchNumber19" role="tabpanel"
                             aria-labelledby="SwitchNumber19-tab">
                            <div class="tbl-box">
                                <p>일반 회원 대여 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>볼트, 코나 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">56,000</p>
                                        </td>
                                        <td>8,050</td>
                                        <td>31,500</td>
                                        <td>44,800</td>
                                    </tr>
                                    <tr>
                                        <th>니로 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">59,500</p>
                                        </td>
                                        <td>8,400</td>
                                        <td>33,250</td>
                                        <td>47,600</td>
                                    </tr>
                                    <tr>
                                        <th>아이오닉5, EV6 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">77,000</p>
                                        </td>
                                        <td>10,850</td>
                                        <td>43,050</td>
                                        <td>61,600</td>
                                    </tr>
                                    <tr>
                                        <th>GV60 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">98,000</p>
                                        </td>
                                        <td>13,650</td>
                                        <td>54,950</td>
                                        <td>78,400</td>
                                    </tr>
                                    <tr>
                                        <th>GV70 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">105,000</p>
                                        </td>
                                        <td>14,700</td>
                                        <td>58,800</td>
                                        <td>84,000</td>
                                    </tr>
                                    <tr>
                                        <th>G80 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">150,500</p>
                                        </td>
                                        <td>21,000</td>
                                        <td>84,350</td>
                                        <td>120,400</td>
                                    </tr>
                                    <tr>
                                        <th>TESLA MODEL 3 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">115,500</p>
                                        </td>
                                        <td>16,100</td>
                                        <td>64,750</td>
                                        <td>92,400</td>
                                    </tr>
                                    <tr>
                                        <th>TESLA S 90D (EV)</th>
                                        <td>
                                            <p class="txt-color-red">210,000</p>
                                        </td>
                                        <td>29,400</td>
                                        <td>117,600</td>
                                        <td>168,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <ul class="lst dot">
                                    <li>위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기 바랍니다.
                                    </li>
                                    <li>성수기 및 특별기간동안 요금이 변경될 수 있으며, 지니카 회원은 회원등급에 따라 더 저렴하게
                                        이용하실 수 있습니다.
                                    </li>
                                </ul>
                            </div>
                            <div class="tbl-box">
                                <p>제주 신고 요금</p>
                                <table class="table table-bordered align-middle text-center">
                                    <caption>차종명과 시간별 대여 요금을 나타내는 표</caption>
                                    <colgroup>
                                        <col width="25%">
                                        <col>
                                        <col>
                                        <col>
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th rowspan="2">차종명</th>
                                        <th>대여 요금</th>
                                        <th colspan="3">대여 추가 요금</th>
                                    </tr>
                                    <tr>
                                        <th>24시간</th>
                                        <th>1시간</th>
                                        <th>6시간</th>
                                        <th>12시간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th>볼트, 코나 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">160,000 </p>
                                        </td>
                                        <td>23,000</td>
                                        <td>90,000</td>
                                        <td>128,000</td>
                                    </tr>
                                    <tr>
                                        <th>니로 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">170,000 </p>
                                        </td>
                                        <td>24,000</td>
                                        <td>95,000</td>
                                        <td>136,000</td>
                                    </tr>
                                    <tr>
                                        <th>아이오닉 5, EV6 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">220,000 </p>
                                        </td>
                                        <td>31,000</td>
                                        <td>123,000</td>
                                        <td>176,000</td>
                                    </tr>
                                    <tr>
                                        <th>GV60 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">280,000 </p>
                                        </td>
                                        <td>39,000</td>
                                        <td>157,000</td>
                                        <td>224,000</td>
                                    </tr>
                                    <tr>
                                        <th>GV70 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">300,000 </p>
                                        </td>
                                        <td>42,000</td>
                                        <td>168,000</td>
                                        <td>240,000</td>
                                    </tr>
                                    <tr>
                                        <th>G80 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">430,000 </p>
                                        </td>
                                        <td>60,000</td>
                                        <td>241,000</td>
                                        <td>344,000</td>
                                    </tr>
                                    <tr>
                                        <th>TESLA MODEL 3 (EV)</th>
                                        <td>
                                            <p class="txt-color-red">330,000</p>
                                        </td>
                                        <td>46,000</td>
                                        <td>185,000</td>
                                        <td>264,000</td>
                                    </tr>
                                    <tr>
                                        <th>TESLA S 90D (EV)</th>
                                        <td>
                                            <p class="txt-color-red">600,000</p>
                                        </td>
                                        <td>84,000</td>
                                        <td>336,000</td>
                                        <td>480,000</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <section id="no3" class="mb-5">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bold mb-4">추가 요금</h2>
        </div>
        <div class="explain-cont">
            <ul class="grid-row type2">
                <li class="row">
                    <div class="col-1">
                        <img alt="" src="/images/icons/ico-fee01.png"/>
                    </div>
                    <dl class="col ps-4">
                        <dt>휴차 보상료</dt>
                        <dd>
                            차량대여 중 발생한 자차사고(임차인 가해사고)로 인해&nbsp;차량의 수리가 필요한 경우, 차량수리 기간동안 차량에 발생한
                            영업손실에
                            대해<br>
                            차량수리비 이외 표준대여료의 50% 휴차보상료가 고객 부담입니다.
                        </dd>
                    </dl>
                </li>
                <li class="row">
                    <div class="col-1">
                        <img alt="" src="/images/icons/ico-fee02.png"/>
                    </div>
                    <dl class="col ps-4">
                        <dt>차량 수리비</dt>
                        <dd>
                            차량대여 중 렌터카의 손망실이 발생한 경우의 (임차인 과실사고 및 가해자 불명의 자차사고) 렌터카 수리비는 고객 부담이며
                            렌터카 수리 시<br>
                            특별한 사유를 제외하고 지니카와 협의를 거쳐 정해진 곳에서 수리를 해야 합니다.
                        </dd>
                    </dl>
                </li>
                <li class="row">
                    <div class="col-1">
                        <img alt="" src="/images/icons/ico-fee03.png"/>
                    </div>
                    <dl class="col ps-4">
                        <dt>교통법규 위반 범칙금</dt>
                        <dd>
                            차량 대여 중 도로교통법 위반으로 발생한 모든 범칙금은 고객 부담.(주정차 위반, 버스전용차선위반, 안전벨트 미착용
                            등)이며, 도로교통법 위반에
                            <br>
                            따른 사고의 경우 보험보상의 일부 혜택을 받지 못 할 수도 있습니다.
                        </dd>
                    </dl>
                </li>
                <li class="row">
                    <div class="col-1">
                        <img alt="" src="/images/icons/ico-fee04.png"/>
                    </div>
                    <dl class="col ps-4">
                        <dt>차량 유류비</dt>
                        <dd>
                            모든 차량은 Full-Tank(연료를 가득 채운 상태) 에서 대여해 드리며 반납시에도 Full-Tank 상태로 반납을 해야
                            합니다. <br>
                            연료가 가득 채워지지 않았을 경우에는 가득 주유 시 예상되는 금액으로 주유 비용을 정산해야 합니다.
                            <ul class="lst dot">
                                <li>실비정산시, 지점 내 데스크에 비치된 유류정산 기준표 참고</li>
                            </ul>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </section>
    <section id="no4" class="mb-5">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bold mb-4">대여 절차</h2>
        </div>
        <div class="explain-cont">
            <ol class="row">
                <li class="col">
                    <div class="img-item">
                        <img alt="" src="/images/icons/ico-purchase-step01.png"/>
                    </div>
                    <p>1. 지점 방문</p>
                    <p class="txt">
                        직원에게 예약번호 또는 <br>
                        예약자 성명을 말씀해주세요.<br>
                        (외국인일 경우 여권 및 국제면허증 지참)
                    </p>
                </li>
                <li class="col">
                    <div class="img-item">
                        <img alt="" src="/images/icons/ico-purchase-step02.png"/>
                    </div>
                    <p>2. 고객 정보 확인</p>
                    <p class="txt">
                        예약사항을 확인 후, <br>
                        차량임대차 계약서 작성을 위해<br>
                        면허증을 담당직원에게 제시해 주세요.<br>
                        (모바일 PASS 면허는 불가)
                    </p>
                </li>
                <li class="col">
                    <div class="img-item">
                        <img alt="" src="/images/icons/ico-purchase-step03.png"/>
                    </div>
                    <p>3. 대여료 결제</p>
                    <p class="txt">
                        대여기간 및 차종, 옵션 등 <br>
                        최종 확인한 후<br>
                        차량 대여료를 결제해주세요.
                    </p>
                </li>
                <li class="col">
                    <div class="img-item">
                        <img alt="" src="/images/icons/ico-purchase-step04.png"/>
                    </div>
                    <p>4. 차량 확인 및 계약서 작성</p>
                    <p class="txt">
                        직원을 따라 주차장으로 이동하신 후 <br>
                        차량 상태를 확인하시고<br>
                        차량 임대차 계약서에 서명해주세요.
                    </p>
                </li>
            </ol>
            <div class="align-c mb-60">
                <ul class="lst dot inline-block">
                    <li>지니카 홈페이지 또는 모바일웹/APP으로 예약하는 경우 결제를 완료하셔야 예약이 완료됩니다.</li>
                </ul>
            </div>
        </div>
    </section>
    <section id="no5" class="mb-5">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bold mb-4">반납 절차</h2>
        </div>
        <div class="explain-cont">
            <ol class="row">
                <li class="col">
                    <div class="img-item">
                        <img alt="" src="/images/icons/ico-purchase-step01.png"/>
                    </div>
                    <p>1. 지점 방문</p>
                    <p class="txt">
                        반납지점 주차장에 차량을 주차하고 <br>
                        시동을 완전히 끈 후 차량 Key 와 <br>
                        소지품을 챙겨 지점 사무실로 들어갑니다.
                    </p>
                </li>
                <li class="col">
                    <div class="img-item">
                        <img alt="" src="/images/icons/ico-purchase-step05.png"/>
                    </div>
                    <p>2. 자동차 키 반납</p>
                    <p class="txt">
                        담당직원에게 <br>
                        차량 Key를 반납하세요.
                    </p>
                </li>
                <li class="col">
                    <div class="img-item">
                        <img alt="" src="/images/icons/ico-purchase-step06.png"/>
                    </div>
                    <p>3. 차량 확인</p>
                    <p class="txt">
                        담당직원과 함께 차량이 주차된 곳으로 <br>
                        이동하여 차량 상태, <br>
                        유류상태 등을 확인해 주세요.
                    </p>
                </li>
                <li class="col">
                    <div class="img-item">
                        <img alt="" src="/images/icons/ico-purchase-step03.png"/>
                    </div>
                    <p>4. 추가 비용 정산</p>
                    <p class="txt">
                        반납시간 초과, 차량의 손망실, <br>
                        유류비, 범칙금 등 추가금이 <br>
                        발생한 경우 추가비용을 정산해주세요.
                    </p>
                </li>
            </ol>
        </div>
    </section>
    <section id="no6" class="mb-5">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bold mb-4">보험 및 보상</h2>
        </div>
        <div class="explain-cont">
            <p>차량 사고 시 보험 및 보상범위</p>
            <p class="txt">지니카의 모든 차량은 차량 이용 중 사고가 발생하였을 때 아래의 보험 보상범위 내에서 고객님을 보호하기 위해 최선을
                다하겠습니다.</p>
            <div class="tbl-box">
                <table class="table align-middle text-center">
                    <caption>대인, 무한, 대물, 자손에 따른 보험 보상범위를 나타내는 표</caption>
                    <colgroup>
                        <col width="16.6%">
                        <col width="*">
                    </colgroup>
                    <thead>
                    <tr>
                        <th>대인</th>
                        <th class="align-l">무한</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>대물</th>
                        <td class="align-l">사고 건당 2천만원</td>
                    </tr>
                    <tr>
                        <th>자손</th>
                        <td class="align-l">개인당 1천5백만원 (*계약서상 등록되지 않은 운전자는 종합보험 혜택 불가)</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
    <section id="no7" class="mb-5">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bold mb-4">자차 손해 면책제도(CDW)</h2>
        </div>
        <div class="explain-cont">
            <p class="txt">
                차량대여 중 귀책사유로 인하여 발생하는 모든 차량손해(손, 망실)는 고객님의 책임이 발생하며, 자차손해 면책제도(CDW)에 가입하신 경우 고객의
                실수로 발생한
                자차사고에 대한 보호를
                받으실 수가 있습니다.
            </p>
            <dl class="define-area">
                <dt class="mt-5 mb-4 fs-5">면책금 안내</dt>
                <dd class="mt-3 mb-3">
                    <p class="txt">
                        CDW 면책금액에 따라 차량손해의 액수에 상관없이 사고로 인한 파손 부위 1건당 5만원~30만원만 지불하시면 차량손해에 대한
                        책임을 보호 받을 수
                        있습니다.<br>
                        (고객부담금 면제 상품 가입 시에는 차량손해 액수에 상관없이 고객부담금이 없습니다.)
                    </p>
                    <div class="tbl-box">
                        <table class="table align-middle text-center">
                            <caption>면책금에 관한 대물, 자손, 국산차량, 수입차량을 나타내는 표</caption>
                            <thead>
                            <tr>
                                <th>구분</th>
                                <th>국산차량</th>
                                <th>수입차량</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>내륙</th>
                                <td>고객부담금 면제 / 10만원 / 30만원</td>
                                <td rowspan="2">30만원 (단일 면책금 제도 운영)</td>
                            </tr>
                            <tr>
                                <th>제주</th>
                                <td>
                                    고객부담금 면제 / 30만원
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <ul class="lst dot">
                            <li>자차손해 면책제도의 면책금 가입 종류에 따라 가입 요금이 다릅니다.</li>
                        </ul>
                    </div>
                </dd>

                <dt class="mt-5 mb-4 fs-5">차량 수리비</dt>
                <dd class="mt-3 mb-3">
                    차량대여 중 발생하는 귀책사유로 인한 당사 차량손해(손, 망실)는 고객님께서 차량 수리비를 지불하셔야 합니다.<br>
                    자차손해 면책제도(CDW )를 가입한 경우 차량수리비가 면책금 종류에 따라 가입된 면책금 미만인 경우에는 실비정산을 하며, <br>
                    가입된 면책금 이상인 경우 각각 가입 하신 최고의 면책금만 지불하시면 됩니다.
                </dd>
                <dt class="mt-5 mb-4 fs-5">휴차보상료</dt>
                <dd class="mt-3 mb-3">
                    <p class="txt">
                        자차손해 면책제도 가입 유무와 관계없이 사고로 인하여 차량이 휴차 할 경우에는 차량 운영의 차질로 인하여 발생한 수리기간
                        동안<br>
                        대여차량 정상요금의 50%에 해당하는 휴차보상료가 청구됩니다.
                    </p>

                    <div class="tbl-box">
                        <table class="table align-middle text-center">
                            <caption>휴차보상료에 관한 국산차량, 수입차량, 청구기준, 청구금액을 나타내는 표</caption>
                            <colgroup>
                                <col width="16.6%">
                                <col width="*">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>구분</th>
                                <th>국산차량</th>
                                <th>수입차량</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th>청구기준</th>
                                <td>
                                    차량 잔존가 대비 50% 이상의 파손 발생 시 청구<br>
                                    (CDW 가입여부 무관)
                                </td>
                                <td>
                                    차량 파손 시 수리기간 동안<br>
                                    발생하는 영업손실금 청구
                                </td>
                            </tr>
                            <tr>
                                <th>청구금액</th>
                                <td colspan="2">
                                    (사고 건당 수리일) X (대여차량 1일 대여요금 50% 할인금액)
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <ul class="lst dot">
                            <li>자차손해 면책제도의 면책금 가입 종류에 따라 가입 요금이 다릅니다.</li>
                        </ul>
                    </div>

                </dd>
            </dl>
        </div>
    </section>
    <section id="no8" class="mb-5">
        <div class="pb-3 pt-3 border-bottom mb-5">
            <h2 class="fw-bold mb-4">기타 안내</h2>
        </div>
        <div class="explain-cont">
            <ul class="grid-row type2">
                <li class="row">
                    <div class="col-1">
                        <img alt="" src="/images/icons/ico-etc-info01.png"/>
                    </div>
                    <dl class="col ps-4">
                        <dt>교통 법규</dt>
                        <dd>
                            <ul class="lst dot">
                                <li>임차인 및 운전자는 교통법규 위반 시 제반사항은 임차인 본인의 책임입니다.</li>
                                <li>도로교통법 위반 시 보험보상의 일부 혜택을 받지 못할 수도 있습니다.</li>
                            </ul>
                        </dd>
                    </dl>
                </li>
                <li class="row">
                    <div class="col-1">
                        <img alt="" src="/images/icons/ico-etc-info02.png"/>
                    </div>
                    <dl class="col ps-4">
                        <dt>연료 및 주행거리</dt>
                        <dd>
                            <ul class="lst dot">
                                <li>유류비는 임차인 본인의 부담입니다.</li>
                                <li>모든 차량은 대여 시 Full-Tank 서비스를 제공중이기 때문에 출발시와 동일하게 Full-Tank로
                                    반납하여야 합니다.
                                </li>
                                <li>주행거리에는 제한이 없습니다.</li>
                            </ul>
                        </dd>
                    </dl>
                </li>
                <li class="row">
                    <div class="col-1">
                        <img alt="" src="/images/icons/ico-etc-info03.png"/>
                    </div>
                    <dl class="col ps-4">
                        <dt>계약 연장</dt>
                        <dd>
                            <ul class="lst dot">
                                <li>대여 중 부득이하게 계약 연장 필요 시, 사전에 대여지점의 동의를 받아야 합니다 .</li>
                                <li>연장 시, 초과요금은 임차인이 부담하여야 합니다.</li>
                                <li>사전 동의 없이 연장 사용기간 중 발생한 차량손해에 대해서는 보험 및 보상의 혜택을 받지 못할 수도
                                    있습니다.
                                </li>
                            </ul>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </section>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
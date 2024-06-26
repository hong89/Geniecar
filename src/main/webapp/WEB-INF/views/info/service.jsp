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
                <li class="breadcrumb-item active" aria-current="page">단기 렌터카 안내</li>
                <li class="breadcrumb-item active" aria-current="page">부가 서비스 안내</li>
            </ol>
        </nav>
    </div>
    <div>
        <section class="text-center pb-4">
            <h1 class="fw-bolder">부가 서비스 안내</h1>
            <p>지니카에서 제공되는 부가서비스로 더 풍성한 렌터카 서비스를 이용하세요!</p>
        </section>
        <div class="mb-5"
             style="min-height: 140px; background-repeat: no-repeat;background-position: 0 0;background-image:url('/images/bg-shortInfoAdditional.png'); background-size: auto;">
            <p class="text-white pt-5 p-4">
                온라인에서 대여에 필요한 사항을 확인하고, 계약서 상 동의절차를 진행하여<br> 지점 도착 후 차량의 상태확인과
                주요 안내를 받고 빠르게 픽업하여 차량 이용을 시작할 수 있습니다.
            </p>
        </div>

    </div>

    <ul class="nav nav-pills mb-3 nav-fill" id="pills-tab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="btnpubtabSwitchNumber1" data-bs-toggle="pill"
                    data-bs-target="#pubtabSwitchNumber1" type="button" role="tab"
                    aria-controls="pills-home" aria-selected="true">이용 중 관리서비스
            </button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="btnpubtabSwitchNumber2" data-bs-toggle="pill"
                    data-bs-target="#pubtabSwitchNumber2" type="button" role="tab"
                    aria-controls="pills-profile" aria-selected="false">대여서비스
            </button>
        </li>
        <!--<li class="nav-item" role="presentation">
            <button class="nav-link" id="btnpubtabSwitchNumber3" data-bs-toggle="pill"
                data-bs-target="#pubtabSwitchNumber3" type="button" role="tab"
                aria-controls="pills-contact" aria-selected="false">딜리버리 서비스</button>
        </li>-->
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="btnpubtabSwitchNumber4" data-bs-toggle="pill"
                    data-bs-target="#pubtabSwitchNumber4" type="button" role="tab"
                    aria-controls="pills-contact" aria-selected="false">스마트 키박스
            </button>
        </li>
    </ul>

    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pubtabSwitchNumber1" role="tabpanel"
             aria-labelledby="pills-home-tab">
            <section class="section-explain">
                <div class="pb-3 pt-3 border-bottom mb-5">
                    <h2 class="fw-bolder">이용 중 관리 서비스</h2>
                </div>
                <div class="explain-cont">
                    <ul class="lst dot">
                        <li>단기렌터카를 이용하던 도중 동승자를 운전자로 추가해야 하거나 급한 일이 생겨 반납시간을 미루거나
                            반납지점을 변경해야 할 때 직접 지점을 방문하거나 전화를 통해 <br> 직원에게 조치를 받아야 하는
                            번거로움이 있었습니다. 지니카의 이용 중 관리 서비스는 이런 불편을 해소하기 위해 만들어졌으며, 언제 어디서든
                            지니카 <br> 홈페이지/APP에서 운전자 추가 등록이나 반납일시 및 지점을 바로 변경할 수 있습니다.
                        </li>
                        <li>더 편한 렌터카 생활을 위한 지니카만의 특별한 서비스를 많이 이용해주세요.</li>
                    </ul>
                    <p style="font-size: 14px; margin-bottom: 50px;">※ 단, 추가 금액이 발생하는 경우 결제를 하셔야만
                        이용이
                        가능하십니다. </p>
                    <div class="mb-3">
                        <h4 class="fw-bold mb-4">변경 가능 정보</h4>
                        <div class="row p-5">
                            <div class="col p-5 text-center">
                                <img alt="" src="/images/icons/ico-pannel24.png">
                                <p>반납시간 변경</p>
                            </div>
                            <div class="col p-5 text-center">
                                <img alt="" src="/images/icons/ico-pannel25.png">
                                <p class="txt">반납 지점 변경</p>
                            </div>
                            <div class="col p-5 text-center">
                                <img alt="" src="/images/icons/ico-pannel26.png">
                                <p class="txt">추가 운전자 등록</p>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <h4 class="fw-bold mb-4">이용 중 관리 서비스의 차이점</h4>
                        <div class="row">
                            <div class="col p-5 text-center">
                                <img alt="" src="/images/icons/ico-pannel27.png">
                                <p class="tit">기존 방식을 이용하는 경우</p>
                                <p class="txt">
                                    운영시간에 맞춰 고객센터나 지점으로 전화하거나<br> 가까운 지점에 직접 방문하여 직원에게 요청
                                </p>
                            </div>
                            <div class="col p-5 text-center">
                                <img alt="" src="/images/icons/ico-pannel28.png">
                                <p class="tit">이용중 관리를 이용하는 경우</p>
                                <p class="txt">
                                    갑작스러운 상황이라도 언제 어디서든 바로 바로<br> 지니카 홈페이지 또는 APP에서 간편하게 변경
                                </p>
                            </div>
                        </div>
                    </div>
            <!--     <div class="mb-3">
                        <h4 class="fw-bold mb-4">이용 중 관리 서비스 이용 방법</h4>
                        <ol class="service-guide-list row">
                            <li class="col-6">
                                <p class="tit">우측상단 예약확인 이동</p>
                                <div class="img-box">
                                    <img alt=""
                                         src="/images/img-shortInfoAdditional-service-guide01.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">대여 중인 계약번호 선택</p>
                                <div class="img-box">
                                    <img alt=""
                                         src="/images/img-shortInfoAdditional-service-guide02.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">이용 중 관리 버튼 선택</p>
                                <div class="img-box">
                                    <img alt=""
                                         src="/images/img-shortInfoAdditional-service-guide03.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">반납 시간 및 반납지점 변경</p>
                                <div class="img-box">
                                    <img alt=""
                                         src="/images/img-shortInfoAdditional-service-guide04.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">추가 운전자 등록</p>
                                <div class="img-box">
                                    <img alt=""
                                         src="/images/img-shortInfoAdditional-service-guide05.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">추가금액 발생 시 결제하기</p>
                                <div class="img-box">
                                    <img alt=""
                                         src="/images/img-shortInfoAdditional-service-guide06.png">
                                </div>
                            </li>
                        </ol>
                    </div>-->
                </div>
            </section>
        </div>
        <div class="tab-pane fade" id="pubtabSwitchNumber2" role="tabpanel"
             aria-labelledby="pills-profile-tab">
            <section class="section-explain">
                <div class="pb-3 pt-3 border-bottom mb-5">
                    <h2 class="fw-bolder">대여 서비스</h2>
                </div>
                <div class="explain-cont">
                    <ul class="multi-segment-list">
                        <li class="row mb-5">
                            <div class="col-1 ps-4">
                                <img alt="" src="/images/icons/ico-additional-pannel01.png">
                            </div>
                            <div class="col ps-4">
                                <p class="fw-bolder">(무료) 내비게이션 대여 서비스</p>
                                <ul class="lst dot">
                                    <li>고객님의 편안한 여행을 위해 내비게이션을 무료로 장착하여 대여해드립니다.<br>
                                        (내비게이션이 기본 장착된 차량이 아닌 경우 거치형 내비게이션을 장착하여 제공)
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="row mb-5">
                            <div class="col-1 ps-4">
                                <img alt="" src="/images/icons/ico-additional-pannel02.png">
                            </div>
                            <div class="col ps-4">
                                <p class="fw-bolder">(유료) 카시트 대여 서비스</p>
                                <ul class="lst dot">
                                    <li>대여기간에 상관없이 예약 1회에 1개만 신청이 가능합니다. (제주는 3개까지 신청 가능)</li>
                                    <li>대여하는 차량의 종류에 따라 카시트 설치가 어려울 수 있습니다.</li>
                                    <li>예약하는 일정 및 지점에 이용 가능한 카시트가 없는 경우 대여가 불가합니다.</li>
                                </ul>
                            </div>
                        </li>
                        <li class="row mb-5">
                            <div class="col-1 ps-4">
                                <img alt="" src="/images/icons/ico-additional-pannel03.png">
                            </div>
                            <div class="col ps-4">
                                <p class="fw-bolder">(유료) 편도 대여 서비스</p>
                                <ul class="lst dot">
                                    <li>편도 대여 서비스는 대여지점과 반남지점을 다르게 이용할 수 있는 서비스입니다.</li>
                                    <li>24시간 이상 대여 시 이용이 가능하며, 대여지점과 반납지점의 거리에 따라 별도 비용이
                                        부과됩니다.
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="row mb-5">
                            <div class="col-1 ps-4">
                                <img alt="" src="/images/icons/ico_hipass_pc2.png">
                            </div>
                            <div class="col ps-4">
                                <p class="fw-bolder">(유료) 하이패스 선불카드</p>
                                <ul class="lst dot">
                                    <li>고객님의 편리한 여정을 위해 하이패스 선불카드를 판매하고 있습니다.</li>
                                    <li>대여기간에 상관없이 예약 1회에 1개만 신청이 가능합니다.</li>
                                    <li>재고 소진 시 판매가 불가할 수 있습니다.</li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <!--<div class="tab-pane fade" id="pubtabSwitchNumber3" role="tabpanel"
            aria-labelledby="pills-contact-tab">
            <section class="section-explain">
                <div class="pb-3 pt-3 border-bottom mb-5">
                    <h2 class="fw-bolder">딜리버리 서비스</h2>
                </div>
                <div class="explain-cont">
                    <ul class="list-group list-group-horizontal row mb-5">
                        <li class="list-group-item col border-0">
                            <div class="details">
                                <p class="fw-bolder">이용 조건</p>
                                <ul class="lst dot">
                                    <li>선결제 완료 고객</li>
                                    <li>자차손해면책제도 고객부담금 면제 가입 고객</li>
                                    <li>사전체크인 완료 고객</li>
                                </ul>
                            </div>
                        </li>
                        <li class="list-group-item col border-0">
                            <div class="details">
                                <p class="fw-bolder">이용 금액</p>
                                <ul class="lst dot">
                                    <li>서비스 지역별 요금 상이 / 대여, 반납 별도</li>
                                </ul>
                            </div>
                        </li>
                        <li class="list-group-item col border-0">
                            <div class="details">
                                <p class="fw-bolder">서비스 가능 시간</p>
                                <ul class="lst dot">
                                    <li>서비스 지역별 상이</li>
                                    <li>자세한 내용은 각 수행지점으로 문의</li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <h4 class="fw-bold mb-4">서비스 지점 및 딜리버리 지역</h4>
                    <ul class="nav nav-pills mb-3" id="pills-tab2" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="contact-tab1" data-bs-toggle="pill"
                                data-bs-target="#contact1" type="button" role="tab"
                                aria-controls="contact1" aria-selected="true">서울</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab2" data-bs-toggle="pill"
                                data-bs-target="#contact2" type="button" role="tab"
                                aria-controls="contact2" aria-selected="false">인천/경기/강원</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab3" data-bs-toggle="pill"
                                data-bs-target="#contact3" type="button" role="tab"
                                aria-controls="contact3" aria-selected="false">경상/대구</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab4" data-bs-toggle="pill"
                                data-bs-target="#contact4" type="button" role="tab"
                                aria-controls="contact4" aria-selected="true">부산/울산</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab5" data-bs-toggle="pill"
                                data-bs-target="#contact5" type="button" role="tab"
                                aria-controls="contact5" aria-selected="false">전라/광주</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="contact-tab6" data-bs-toggle="pill"
                                data-bs-target="#contact6" type="button" role="tab"
                                aria-controls="contact6" aria-selected="false">충청/대전</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent2">
                        <div class="tab-pane fade show active" id="contact1" role="tabpanel"
                            aria-labelledby="contact-tab1">
                            <table class="table table-bordered align-middle text-center">
                                <colgroup>
                                    <col width="18%">
                                    <col width="auto">
                                    <col width="18%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>지점</th>
                                        <th>딜리버리 지역</th>
                                        <th>연락처</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>강남</th>
                                        <td class="align-l">성동, 광진, 논현, 신사역, 선정릉역, 역삼역, 도곡역,
                                            군자역,
                                            강변역</td>
                                        <td>02-3443-8000</td>
                                    </tr>
                                    <tr>
                                        <th>홍대</th>
                                        <td class="align-l">은평, 서대문, 상암DMC</td>
                                        <td>02-2634-8000</td>
                                    </tr>
                                    <tr>
                                        <th>송파</th>
                                        <td class="align-l">위례신도시, 잠실, 수서동, 가락시장역, 일원역,
                                            수서역(SRT)
                                        </td>
                                        <td>02-2203-8000</td>
                                    </tr>
                                    <tr>
                                        <th>천호</th>
                                        <td class="align-l">하남, 강동, 광나루역, 고덕역</td>
                                        <td>02-482-8002</td>
                                    </tr>
                                    <tr>
                                        <th>가산디지털</th>
                                        <td class="align-l">온수역, 구로, 개봉, 고척</td>
                                        <td>02-3664-8000</td>
                                    </tr>
                                    <tr>
                                        <th>구로디지털</th>
                                        <td class="align-l">금천, 보라매역, 대림, 신대방</td>
                                        <td>02-866-8003</td>
                                    </tr>
                                    <tr>
                                        <th>서울역</th>
                                        <td class="align-l">충정로역</td>
                                        <td>02-715-0010</td>
                                    </tr>
                                    <tr>
                                        <th>공덕</th>
                                        <td class="align-l">동대문, 종로, 중구</td>
                                        <td>02-714-8001</td>
                                    </tr>
                                    <tr>
                                        <th>상봉</th>
                                        <td class="align-l">성북, 강북, 노원, 도봉</td>
                                        <td>02-491-8002</td>
                                    </tr>
                                    <tr>
                                        <th>신도림</th>
                                        <td class="align-l">당산역, 여의도</td>
                                        <td>02-785-8000</td>
                                    </tr>
                                    <tr>
                                        <th>목동</th>
                                        <td class="align-l">영등포, 양천, 당산역</td>
                                        <td>02-2659-8000</td>
                                    </tr>
                                    <tr>
                                        <th>양재</th>
                                        <td class="align-l">청계산입구역</td>
                                        <td>02-529-8000</td>
                                    </tr>
                                    <tr>
                                        <th>마곡</th>
                                        <td class="align-l">강서</td>
                                        <td>02-2063-8504</td>
                                    </tr>
                                    <tr>
                                        <th>관악</th>
                                        <td class="align-l">숭실대입구</td>
                                        <td>02-875-8200</td>
                                    </tr>
                                    <tr>
                                        <th>사당</th>
                                        <td class="align-l">동작, 방배, 이수</td>
                                        <td>02-3472-8000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="contact2" role="tabpanel"
                            aria-labelledby="contact-tab2">
                            <table class="table table-bordered align-middle text-center">
                                <colgroup>
                                    <col width="18%">
                                    <col width="auto">
                                    <col width="18%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>지점</th>
                                        <th>딜리버리 지역</th>
                                        <th>연락처</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>인천</th>
                                        <td class="align-l">송도, 논현ㆍ서창, 부평ㆍ삼산, 청라ㆍ루원, 미추홀ㆍ연안,
                                            중구ㆍ동구,
                                            남동ㆍ연수</td>
                                        <td>032-881-8000</td>
                                    </tr>
                                    <tr>
                                        <th>부천</th>
                                        <td class="align-l">검단ㆍ마전ㆍ검암, 소사ㆍ심곡동ㆍ신중동ㆍ상동ㆍ송내ㆍ중동
                                        </td>
                                        <td>032-679-8000</td>
                                    </tr>
                                    <tr>
                                        <th>수원</th>
                                        <td class="align-l">광교ㆍ영통, 병점ㆍ봉담ㆍ비봉ㆍ동탄1, 북수원, 서수원,
                                            수원역,
                                            용인
                                            기흥, 수지,
                                            처인</td>
                                        <td>031-215-8181</td>
                                    </tr>
                                    <tr>
                                        <th>분당</th>
                                        <td class="align-l">경기광주역ㆍ오포읍, 성남 수정ㆍ위례ㆍ중원, 초월ㆍ곤지암역,
                                            판교ㆍ정자.
                                            고등ㆍ세곡</td>
                                        <td>031-701-8007</td>
                                    </tr>
                                    <tr>
                                        <th>안양</th>
                                        <td class="align-l">과천, 광명, 군포ㆍ의왕, 안양 동안구ㆍ만안구</td>
                                        <td>031-454-8000</td>
                                    </tr>
                                    <tr>
                                        <th>안산</th>
                                        <td class="align-l">시흥, 화성새솔동, 안산시 단원구ㆍ상록수</td>
                                        <td>031-407-8000</td>
                                    </tr>
                                    <tr>
                                        <th>일산</th>
                                        <td class="align-l">고양(삼송), 김포(고촌), 김포(장기), 파주(문산),
                                            파주(운정),
                                            김포(구래), 고양(한국항공대), 일산(고양종합터미널)</td>
                                        <td>031-814-8000</td>
                                    </tr>
                                    <tr>
                                        <th>평택</th>
                                        <td class="align-l">공도터미널, 안성터미널, 안중터미널, 지제역, 진위역,
                                            고덕,
                                            청북,
                                            포승, 팽성, 평택대, 중앙대, 송탄역, 고덕동</td>
                                        <td>031-667-8000</td>
                                    </tr>
                                    <tr>
                                        <th>오산</th>
                                        <td class="align-l">동탄2ㆍ향남, 마도ㆍ서신ㆍ송산, 양감ㆍ팔탄,
                                            장안ㆍ우정ㆍ남양,
                                            오산대,
                                            한신대, 남사읍ㆍ이동읍</td>
                                        <td>031-373-8006</td>
                                    </tr>
                                    <tr>
                                        <th>원주</th>
                                        <td class="align-l">기업ㆍ혁신도시, 만종KTX역, 문막, 서원주역, 여주,
                                            원주공항,
                                            원주역, 제천, 횡성
                                        </td>
                                        <td>033-764-8000</td>
                                    </tr>
                                    <tr>
                                        <th>의정부</th>
                                        <td class="align-l">양주역, 의정부역, 구리역, 다산역, 별내역, 민락지구,
                                            고산지구,
                                            포천시외버스터미널</td>
                                        <td>031-852-8003</td>
                                    </tr>
                                    <tr>
                                        <th>강릉</th>
                                        <td class="align-l">강릉 경포</td>
                                        <td>033-642-8000</td>
                                    </tr>
                                    <tr>
                                        <th>속초</th>
                                        <td class="align-l">간성터미널, 속초버스터미널, 양양터미널ㆍ공항</td>
                                        <td>033-632-8000</td>
                                    </tr>
                                    <tr>
                                        <th>춘천</th>
                                        <td class="align-l">가평터미널, 가평역, 양구터미널, 화천터미널</td>
                                        <td>033-243-8000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="contact3" role="tabpanel"
                            aria-labelledby="contact-tab3">
                            <table class="table table-bordered align-middle text-center">
                                <colgroup>
                                    <col width="18%">
                                    <col width="auto">
                                    <col width="18%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>지점</th>
                                        <th>딜리버리 지역</th>
                                        <th>연락처</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>경주</th>
                                        <td class="align-l">경주시외버스터미널, 황리단길, 광명동</td>
                                        <td>054-746-8001</td>
                                    </tr>
                                    <tr>
                                        <th>구미</th>
                                        <td class="align-l">구미역, 금오공대, 구미대, 경운대, 금오산, 진평
                                            파출소, 옥계
                                            사거리, 구미시청, 상모사곡동</td>
                                        <td>054-475-8000</td>
                                    </tr>
                                    <tr>
                                        <th>김천구미KTX</th>
                                        <td class="align-l">김천역</td>
                                        <td>054-434-8002</td>
                                    </tr>
                                    <tr>
                                        <th>동대구</th>
                                        <td class="align-l">경북대, 삼성창조캠퍼스, 대구공항, 대구역,
                                            서대구KTX역,
                                            인터불고호텔, 인터불고호텔
                                            엑스코</td>
                                        <td>053-611-8000</td>
                                    </tr>
                                    <tr>
                                        <th>진주</th>
                                        <td class="align-l">사천공항, 진주KTX역, 진주경남서부청사, 진주 이마트,
                                            진주혁신도시,
                                            고성군, 삼천포, 산청군</td>
                                        <td>055-753-8000</td>
                                    </tr>
                                    <tr>
                                        <th>창원</th>
                                        <td class="align-l">롯데마트 진해점, 롯데백화점 창원점, 마산KTX역,
                                            성산구,
                                            창원시외버스터미널,
                                            창원중앙KTX역</td>
                                        <td>055-295-8000</td>
                                    </tr>
                                    <tr>
                                        <th>포항KTX</th>
                                        <td class="align-l">포항시외버스터미널, 포항공항</td>
                                        <td>054-278-8000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade show" id="contact4" role="tabpanel"
                            aria-labelledby="contact-tab4">
                            <table class="table table-bordered align-middle text-center">
                                <colgroup>
                                    <col width="18%">
                                    <col width="auto">
                                    <col width="18%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>지점</th>
                                        <th>딜리버리 지역</th>
                                        <th>연락처</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>거제</th>
                                        <td class="align-l">거제보건소, 롯데마트 거제점, 홈플러스 거제점, 롯데마트
                                            통영점,
                                            고현버스터미널, 거제시 아주동ㆍ옥포동</td>
                                        <td>055-637-8009</td>
                                    </tr>
                                    <tr>
                                        <th>김해공항</th>
                                        <td class="align-l">양산시, 부산 강서구ㆍ북구ㆍ사상구ㆍ사하구, 김해장유,
                                            김해장유외
                                        </td>
                                        <td>051-941-8000</td>
                                    </tr>
                                    <tr>
                                        <th>부산역</th>
                                        <td class="align-l">부산 동구ㆍ서구ㆍ중구ㆍ부산진구ㆍ영도구ㆍ연제구, 롯데호텔서면
                                        </td>
                                        <td>051-442-0091</td>
                                    </tr>
                                    <tr>
                                        <th>해운대</th>
                                        <td class="align-l">해운대구ㆍ동래구ㆍ 남구ㆍ금정구ㆍ수영구ㆍ부산시그니엘</td>
                                        <td>051-744-6160</td>
                                    </tr>
                                    <tr>
                                        <th>울산KTX</th>
                                        <td class="align-l">언양시외버스터미널, 온양읍 행정복지센터, 울산과학기술원,
                                            울산대공원 남문
                                        </td>
                                        <td>052-254-8050</td>
                                    </tr>
                                    <tr>
                                        <th>울산공항</th>
                                        <td class="align-l">롯데호텔 울산, 서부패밀리아파트, 신라스테이 울산,
                                            울산태화강역,
                                            울산
                                            남구ㆍ북구ㆍ중구ㆍ동구, 울산대공원 남문</td>
                                        <td>052-293-8000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="contact5" role="tabpanel"
                            aria-labelledby="contact-tab5">
                            <table class="table table-bordered align-middle text-center">
                                <colgroup>
                                    <col width="18%">
                                    <col width="auto">
                                    <col width="18%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>지점</th>
                                        <th>딜리버리 지역</th>
                                        <th>연락처</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>광주</th>
                                        <td class="align-l">각화ㆍ내남ㆍ본촌ㆍ용두, 광주과학기술원, 광주종합버스터미널,
                                            나주역,
                                            동광주, 롯데아울렛
                                            수완점, 신용ㆍ삼각ㆍ효천ㆍ행암, 양산ㆍ월남ㆍ일곡ㆍ임암, 전남대, 조선대</td>
                                        <td>062-943-8001</td>
                                    </tr>
                                    <tr>
                                        <th>군산</th>
                                        <td class="align-l">군산공항, 군산역, 군산터미널, 김제, 부안, 서천ㆍ장향,
                                            오식도(군산산업단지)
                                        </td>
                                        <td>063-452-8000</td>
                                    </tr>
                                    <tr>
                                        <th>목포</th>
                                        <td class="align-l">목포종합버스터미널, 무안공항</td>
                                        <td>061-274-8000</td>
                                    </tr>
                                    <tr>
                                        <th>순천KTX</th>
                                        <td class="align-l">구례역, 순천버스터미널</td>
                                        <td>061-724-8031</td>
                                    </tr>
                                    <tr>
                                        <th>익산KTX</th>
                                        <td class="align-l">익산 원광대</td>
                                        <td>063-851-8000</td>
                                    </tr>
                                    <tr>
                                        <th>전주KTX</th>
                                        <td class="align-l">전북대(서신,팔복), 전북도청(삼천,평화),
                                            전주버스터미널,
                                            전주한옥마을, 전주혁신도시
                                        </td>
                                        <td>063-245-8000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="contact6" role="tabpanel"
                            aria-labelledby="contact-tab6">
                            <table class="table table-bordered align-middle text-center">
                                <colgroup>
                                    <col width="17%">
                                    <col width="auto">
                                    <col width="17%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>지점</th>
                                        <th>딜리버리 지역</th>
                                        <th>연락처</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>대전</th>
                                        <td class="align-l">대전역, 유성, 세종, 오송역, 조치원역, 신탄진역,
                                            옥천역,
                                            논산역,
                                            계룡역,
                                            공주터미널, 금산터미널, 대전복합터미널, 마전(추부)터미널</td>
                                        <td>042-584-8000</td>
                                    </tr>
                                    <tr>
                                        <th>서산</th>
                                        <td class="align-l">서산, 당진, 대산, 태안시내, 서산터미널</td>
                                        <td>041-855-8000</td>
                                    </tr>
                                    <tr>
                                        <th>천안</th>
                                        <td class="align-l">단국대</td>
                                        <td>041-563-8000</td>
                                    </tr>
                                    <tr>
                                        <th>천안아산</th>
                                        <td class="align-l">순천향대, 호서대학교 아산캠퍼스</td>
                                        <td>041-549-0030</td>
                                    </tr>
                                    <tr>
                                        <th>청주</th>
                                        <td class="align-l">청주국제공항</td>
                                        <td>043-213-8000</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="details">
                        <p class="fw-bolder" style="margin:30px 0 15px">유의 사항</p>
                        <ul class="lst dot">
                            <li>딜리버리 서비스는 예약자와 임차인이 동일하여야 하며, 상이할 경우 대여가 제한될 수 있습니다.</li>
                            <li>서비스 이용 시 일부 지점의 경우 배송시간이 제한될 수 있습니다.</li>
                            <li>해당 서비스는 이용 조건을 만족해야 이용하실 수 있으며 조건을 만족하지 않는 경우 대여가 제한될 수 있습니다.</li>
                            <li>서비스 지역별로 가능 지역이 설정되어 있으며 서비스 지역이 아닌 주소로 요청 시 대여가 제한될 수 있습니다.</li>
                            <li>차량/기사 준비 및 이동시간을 고려하여 사전 예약이 필수이며 변경요청 시간에 따라 서비스가 제한될 수 있습니다.</li>
                            <li>교통사정에 따라 고객님이 지정해주신 시점에서 5~10분 이내에 도착 가능합니다.</li>
                            <li>차량 인수는 임차인 본인에 한하여 인수가 가능합니다. (추가운전자, 제3자 인수 불가)</li>
                            <li>고객 변심으로 인한 딜리버리 서비스 취소 시 취소 수수료가 발생합니다.</li>
                            <li>예약 시간 및 주소 변경은 지점으로 문의하시기 바랍니다.</li>
                            <li>조기반납/반납지연/기간연장 시 지점으로 사전연락 하셔야 합니다.<br>
                                (사전 연락하지 않는 경우 서비스 이용에 제한이 있을 수 있습니다.)</li>
                        </ul>
                    </div>
                    <div class="text-center m-4">
                        <a href="https://www.lotterentacar.net/hp/kor/reservation/step1.do?state=2&rentArea=1"
                            class="btn border fs-5"><b>딜리버리 예약하러 가기</b></a>
                    </div>
                </div>
            </section>
        </div>-->
        <div class="tab-pane fade" id="pubtabSwitchNumber4" role="tabpanel"
             aria-labelledby="pills-contact-tab">
            <section class="section-explain">
                <div class="pb-3 pt-3 border-bottom mb-5">
                    <h2 class="fw-bolder">스마트 키박스</h2>
                </div>
                <div class="explain-cont smartkeyBox">
                    <div class="d-flex align-items-center mb-5">
                        <div class="flex-grow-1 ms-3">
                            <h4 class="fw-bold mb-4">스마트 키박스란?</h4>
                            <ul class="lst dot">
                                <li>스마트 키박스는 24시간 언제든지 비대면 대여와 반납이 가능한 회원 전용 서비스 입니다.
                                    <p class="fs-6" style="color: #905dbe;">※ 서비스 이용 가능 시간은 지점별 상이할 수 있습니다.<br> 자세한 내용은
                                        각
                                        서비스
                                        제공 지점으로
                                        문의하여 주세요.</p>
                                </li>
                            </ul>
                            <h4 class="fw-bold mb-4 mt30">이용 조건</h4>
                            <ul class="lst dot">
                                <li>고객부담금 완전면제 가입 필수</li>
                                <li>사전체크인 완료</li>
                                <li>선결제 완료 고객</li>
                            </ul>
                        </div>
                        <div class="flex-shrink-0">
                            <img alt="" src="/images/img-smart01.png">
                        </div>
                    </div>
                    <div class="row section02">
                        <h4 class="fw-bold mb-4">서비스 이용 방법</h4>
                        <div>
                            <img alt="" class="img-fluid" src="/images/img-smart02.png">
                        </div>
                    </div>
                <!--<div class="row section03">
                        <h4 class="fw-bold mb-4">예약 방법</h4>
                        <ol class="service-guide-list row">
                            <li class="col-6">
                                <p class="tit">회원 로그인</p>
                                <div class="img-box">
                                    <img alt="" src="/images/img-smart-guide01.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">스마트 키박스 서비스 운영 지점 선택</p>
                                <div class="img-box">
                                    <img alt="" src="/images/img-smart-guide02.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">서비스 이용 선택 및 예약 완료 (결제 완료)</p>
                                <div class="img-box">
                                    <img alt="" src="/images/img-smart-guide03.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">마이페이지 – 예약확인 이동</p>
                                <div class="img-box">
                                    <img alt="" src="/images/img-smart-guide04.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">서비스 이용 계약번호 선택</p>
                                <div class="img-box">
                                    <img alt="" src="/images/img-smart-guide06.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">사전체크인 선택</p>
                                <div class="img-box">
                                    <img alt="" src="/images/img-smart-guide07.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">추가 운전자 등록</p>
                                <div class="img-box">
                                    <img alt="" src="/images/img-smart-guide08.png">
                                </div>
                            </li>
                            <li class="col-6">
                                <p class="tit">이용자 동의 항목 체크 후 확인</p>
                                <div class="img-box">
                                    <img alt="" src="/images/img-smart-guide09.png">
                                </div>
                            </li>
                        </ol>
                    </div>-->
                    <div class="row section04">
                        <h4 class="fw-bold mb-4">서비스 지점 안내</h4>
                        <div class="tbl-box">
                            <div class="row">
                                <div class="col">
                                    <table class="table align-middle text-center">
                                        <caption></caption>
                                        <thead>
                                        <tr>
                                            <th>지점명</th>
                                            <th>이용 가능 시간</th>
                                            <th>연락처</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>홍대지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-2634-8000</td>
                                        </tr>
                                        <tr>
                                            <td>신도림지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-785-8000</td>
                                        </tr>
                                        <tr>
                                            <td>목동지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-2659-8000</td>
                                        </tr>
                                        <tr>
                                            <td>공덕지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-714-8001
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>분당지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>031-701-8007</td>
                                        </tr>
                                        <tr>
                                            <td>속초지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>033-632-8000</td>
                                        </tr>
                                        <tr>
                                            <td>원주지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>033-764-8000</td>
                                        </tr>
                                        <tr>
                                            <td>춘천지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>033-243-8000</td>
                                        </tr>
                                        <tr>
                                            <td>수원지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>031-215-8181</td>
                                        </tr>
                                        <tr>
                                            <td>인천지점</td>
                                            <td>08:00 ~ 23:00</td>
                                            <td>032-881-8000</td>
                                        </tr>
                                        <tr>
                                            <td>부산지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>051-442-0091</td>
                                        </tr>
                                        <tr>
                                            <td>의정부지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>031-852-8003</td>
                                        </tr>
                                        <tr>
                                            <td>일산지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>031-814-8000</td>
                                        </tr>
                                        <tr>
                                            <td>익산KTX지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>063-851-8000</td>
                                        </tr>
                                        <tr>
                                            <td>양재지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-529-8000</td>
                                        </tr>
                                        <tr>
                                            <td>송파지점</td>
                                            <td>07:00 ~ 22:00</td>
                                            <td>02-445-8899</td>
                                        </tr>
                                        <tr>
                                            <td>서산지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>041-855-8000</td>
                                        </tr>
                                        <tr>
                                            <td>거제지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>055-637-8009</td>
                                        </tr>
                                        <tr>
                                            <td>서울역지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-715-0010</td>
                                        </tr>
                                        <tr>
                                            <td>관악지점</td>
                                            <td>07:00 ~ 24:00</td>
                                            <td>02-875-8200</td>
                                        </tr>
                                        <tr>
                                            <td>사당지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-3472-8000</td>
                                        </tr>
                                        <tr>
                                            <td>안양지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>031-454-8000</td>
                                        </tr>
                                        <tr>
                                            <td>김해공항지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>051-941-8000</td>
                                        </tr>
                                        <tr>
                                            <td>천안지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>041-563-8000</td>
                                        </tr>
                                        <tr>
                                            <td>구미지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>054-475-8000</td>
                                        </tr>
                                        <tr>
                                            <td>상봉지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-491-8002</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col">
                                    <table class="table align-middle text-center">
                                        <caption></caption>
                                        <thead>
                                        <tr>
                                            <th>지점명</th>
                                            <th>이용 가능 시간</th>
                                            <th>연락처</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>진주지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>055-753-8000</td>
                                        </tr>
                                        <tr>
                                            <td>창원지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>055-295-8000</td>
                                        </tr>
                                        <tr>
                                            <td>동대구KTX지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>053-611-8000</td>
                                        </tr>
                                        <tr>
                                            <td>광주송정KTX지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>062-943-8001</td>
                                        </tr>
                                        <tr>
                                            <td>청주지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>043-213-8000</td>
                                        </tr>
                                        <tr>
                                            <td>목포지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>061-274-8000</td>
                                        </tr>
                                        <tr>
                                            <td>군산지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>063-452-8000</td>
                                        </tr>
                                        <tr>
                                            <td>여수지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>061-642-8000</td>
                                        </tr>
                                        <tr>
                                            <td>대전지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>042-584-8000</td>
                                        </tr>
                                        <tr>
                                            <td>전주KTX지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>063-245-8000</td>
                                        </tr>
                                        <tr>
                                            <td>천안아산KTX지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>041-549-0030</td>
                                        </tr>
                                        <tr>
                                            <td>수유지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-922-8000</td>
                                        </tr>
                                        <tr>
                                            <td>김포공항지점</td>
                                            <td>06:00 ~ 23:00</td>
                                            <td>02-2663-8000</td>
                                        </tr>
                                        <tr>
                                            <td>가산디지털지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-3664-8000</td>
                                        </tr>
                                        <tr>
                                            <td>오산지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>031-373-8006</td>
                                        </tr>
                                        <tr>
                                            <td>울산공항지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>052-293-8000</td>
                                        </tr>
                                        <tr>
                                            <td>구로디지털지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-866-8003</td>
                                        </tr>
                                        <tr>
                                            <td>순천지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>061-724-8000</td>
                                        </tr>
                                        <tr>
                                            <td>안산지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>031-407-8000</td>
                                        </tr>
                                        <tr>
                                            <td>마곡지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>02-2063-8504</td>
                                        </tr>
                                        <tr>
                                            <td>경주지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>054-746-8001</td>
                                        </tr>
                                        <tr>
                                            <td>김천구미KTX지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>054-434-8002</td>
                                        </tr>
                                        <tr>
                                            <td>광양지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>061-792-8033</td>
                                        </tr>
                                        <tr>
                                            <td>충주지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>061-792-8033</td>
                                        </tr>
                                        <tr>
                                            <td>울산KTX지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>052-254-8050</td>
                                        </tr>
                                        <tr>
                                            <td>해운대지점</td>
                                            <td>00:00 ~ 24:00</td>
                                            <td>051-744-6160</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
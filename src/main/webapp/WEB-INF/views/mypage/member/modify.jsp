<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <html>
            <head>
                <meta charset="UTF-8">
                <title>복사해서 사용하세요</title>
                <!-- 추가 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                    crossorigin="anonymous">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                    crossorigin="anonymous"></script>
                <!-- 스타일 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
                    crossorigin="anonymous">
                <!-- 자바스크립트 -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
                    integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
                    crossorigin="anonymous"></script>
                <!-- 공통 css 파일 -->
                <link rel="stylesheet" type="text/css" href="/styles/content.css" />
                <!-- 제이쿼리 -->
                <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
                <style>
                    .breadcrumb-item a {
                        text-decoration: none;
                        color: #41087c;
                    }

                    .mypage-header {
                        background-color: #41087c;
                        color: #f8f7fd;
                    }

                    ul {
                        list-style: none;
                    }

                    .underline {
                        color: #f8f7fd;
                    }

                    aside {
                        width: 300px;
                        background-color: #f8f7fd;
                    }

                    aside .nav-link {

                        color: #41087c;
                    }
                </style>
            </head>

            <body>
                <div class="container-xl">
                    <!--------------------------------------------------상단---------------------------------------------------------->
                    <div class="pb-5 position-relative">
                        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
                            class="position-absolute top-0 end-0">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">마이페이지</li>
                            </ol>
                        </nav>
                    </div>

                    <header>
                        <section class="text-center pb-4">
                            <h1 class="fw-bolder">마이페이지</h1>
                            <p>지니카 회원을 위한 다양한 혜택이 준비되어 있습니다.</p>
                        </section>
                        <div class="mypage-header p-5">
                            <div class="myInfos-area">
                                <div class="border-bottom mb-5">
                                    <h3 class="mb-4">
                                        <strong class="name" id='commonMemberName'>홍경영님</strong>
                                        <span>일반회원&nbsp;</span>
                                    </h3>
                                </div>
                                <ul class="row text-center">
                                    <li class="col">
                                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel02.png">
                                        <p>렌터카 포인트</p>
                                        <a href="/mypage/point.do" class="underline" id="myCommonRentalPoint">0</a>
                                    </li>
                                    <li class="col">
                                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel03.png">
                                        <p>할인쿠폰</p>
                                        <a href="/mypage/coupon.do" class="underline" id="myCommonRentalCoupon">0장</a>
                                    </li>
                                    <li class="col">
                                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel04.png">
                                        <p>무료이용권</p>
                                        <a href="/mypage/coupon.do?tab=tab_2" class="underline"
                                            id="commonMemberShipCoupon">0장</a>
                                    </li>
                                    <li class="col">
                                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel05.png">
                                        <p>//// 내역</p>
                                        <a href="/mypage/carSeller.do" class="underline"
                                            id="commonMyCarSellCount">0건</a>
                                    </li>
                                    <li class="col">
                                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel06.png">
                                        <p>렌터카 상담</p>
                                        <a href="/mypage/rentCarConsulting.do" class="underline"
                                            id="commonRentalConsultCount">0건</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </header>
                    <div class="d-flex flex-row bd-highlight mb-3">
                        <aside class="p-3 fs-5">
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a href="/mypage/reservation.do" class="nav-link" data-link-area="마이페이지"
                                        data-link-name="메뉴" data-link-text="단기렌터카 예약">단기렌터카 예약</a>
                                </li>
                                <li class="nav-item">
                                    <a href="/mypage/reservationMonth.do" class="nav-link" data-link-area="마이페이지"
                                        data-link-name="메뉴" data-link-text="월간단기렌터카 예약">월간단기렌터카 예약</a>
                                </li>
                                <li class="nav-item">
                                    <a href="/mypage/rentCarConsulting.do" class="nav-link">렌터카 상담 </a>
                                </li>

                                <li class="nav-item">
                                    <a href="/mypage/point.do" class="nav-link">포인트</a>
                                </li>
                                <li class="nav-item">
                                    <a href="/mypage/coupon.do" class="nav-link">할인쿠폰 및 무료이용권 </a>
                                    <ul>
                                        <li>
                                            <a href="/mypage/coupon.do" class="nav-link">할인쿠폰 </a>
                                        </li>
                                        <li>
                                            <a href="/mypage/coupon.do?tab=tab_2" class="nav-link">무료이용권 </a>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="/mypage/creditCard.do" class="nav-link">결제카드</a>
                                </li>

                                <li>
                                    <a href="/mypage/interestCar.do" class="nav-link">나의 부가 정보</a>
                                    <ul>
                                        <li>
                                            <a href="/mypage/interestCar.do" class="nav-link">나의 관심 차종</a>
                                        </li>
                                        <li>
                                            <a href="/mypage/mypick.do" class="nav-link">나의 찜 차량</a>
                                        </li>
                                        <li>
                                            <a href="/mypage/branch.do" class="nav-link">나의 관심 지점</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="" class="nav-link">고객센터</a>
                                </li>
                                <li>
                                    <a href="#" class="nav-link">회원</a>
                                    <ul>
                                        <li>
                                            <a href="/mypage/member/modify.do" class="nav-link">회원정보 변경</a>
                                        </li>
                                        <li>
                                            <a href="/mypage/member/password.do" class="nav-link">비밀번호 변경</a>
                                        </li>
                                        <li>
                                            <a href="/mypage/member/leave.do" class="nav-link">회원탈퇴</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </aside>
                        <article class="p-5 container-fluid">
                            <div class="pb-3 pt-3 border-bottom mb-5">
                                <h2 class="fw-bolder">회원정보 변경</h2>
                            </div>
                            <div class="section-form type2">
                                <p class="text-end" style="color: red;">* 는 필수입력 항목입니다.</p>
                                <div class="p-4" style="background-color: #f8f7fd;">
                                    <h3 class="p-4">회원정보입력</h3>
                                </div>
                                <div class="form-cont">
                                    <div class="row type2 type3">
                                        <label for="" class="input-tit">이름 <span style="color: red;">*</span></label>
                                        <div class="input-cont">
                                            <div class="txt user-name"></div>
                                        </div>
                                    </div>
                                    <div class="row type2 type3">
                                        <label for="" class="input-tit">아이디 <span style="color: red;">*</span></label>
                                        <div class="input-cont">
                                            <div class="txt user-id"></div>
                                        </div>
                                    </div>
                                    <div class="row type2 type3">
                                        <label for="" class="input-tit">휴대폰번호 <span style="color: red;">*</span></label>
                                        <div class="input-cont">
                                            <div class="box-between">
                                                <select name="user-mobile-telecom" id="user-mobile-telecom"
                                                    class="selectbox">
                                                    <option value="NONE">선택</option>
                                                    <option value="1">SKT</option>
                                                    <option value="2">KT</option>
                                                    <option value="3">LGU+</option>
                                                    <option value="4">SKT알뜰폰</option>
                                                    <option value="5">KT알뜰폰</option>
                                                    <option value="6">LGU+알뜰폰</option>
                                                    <option value="9">기타</option>
                                                </select>
                                                <select name="user-mobile-head" id="user-mobile-head" class="selectbox">
                                                    <option value="NONE">선택</option>
                                                    <option value="010">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                    <option value="018">018</option>
                                                    <option value="019">019</option>
                                                    <option value="0130">0130</option>
                                                    <option value="0502">0502</option>
                                                    <option value="0505">0505</option>
                                                    <option value="0505">0506</option>
                                                </select> <span class="hypen">-</span>
                                                <div class="inputT">
                                                    <input type="text" title="가운데 번호" id="user-mobile-mid"
                                                        name="user-mobile-mid" maxLength="4"
                                                        onkeyup="gfn_util_onKeyOnlyNumber();moveNextFocus();" />
                                                </div>
                                                <span class="hypen">-</span>
                                                <div class="inputT">
                                                    <input type="text" title="나머지 번호" id="user-mobile-last"
                                                        name="user-mobile-last" maxLength="4"
                                                        onkeyup="gfn_util_onKeyOnlyNumber();moveNextFocusEmail();" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row type2 type3">
                                        <label for="" class="input-tit">이메일 <span style="color: red;">*</span></label>
                                        <div class="input-cont">
                                            <div class="box-between">
                                                <div class="inputT">
                                                    <input type="text" id="user-email-head" name="user-email-head"
                                                        placeholder="이메일 정보 입력하세요" />
                                                </div>
                                                <em class="at">@</em>
                                                <div class="inputT">
                                                    <input type="text" id="user-email-tail" name="user-email-tail"
                                                        title="이메일 종류 선택" />
                                                </div>
                                                <select class="selectbox" name="" id="user-email-select"
                                                    onchange="$('#user-email-tail').val($('#user-email-select').val());">
                                                    <option value="">직접입력</option>
                                                    <option value="lotte.net">lotte.net</option>
                                                    <option value="hanmail.net">hanmail.net</option>
                                                    <option value="naver.com">naver.com</option>
                                                    <option value="nate.com">nate.com</option>
                                                    <option value="gmail.com">gmail.com</option>
                                                    <option value="live.co.kr">live.co.kr</option>
                                                    <option value="hanmail.net">hanmail.net</option>
                                                    <option value="hotmail.com">hotmail.com</option>
                                                    <option value="dreamwiz.com">dreamwiz.com</option>
                                                    <option value="yahoo.co.kr">yahoo.co.kr</option>
                                                    <option value="empal.com">empal.com</option>
                                                    <option value="unitel.co.kr">unitel.co.kr</option>
                                                    <option value="korea.com">korea.com</option>
                                                    <option value="chol.com">chol.com</option>
                                                    <option value="paran.com">paran.com</option>
                                                    <option value="freechal.com">freechal.com</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row type2 type3">
                                        <label for="" class="input-tit">주소 <span style="color: red;">*</span></label>
                                        <div class="input-cont">
                                            <ul class="radio-area">
                                                <li>
                                                    <div class="radio-icon-box">
                                                        <input type="radio" id="user-address-type-home"
                                                            name="user-address-type" value="002" /> <label
                                                            for="user-address-type-home">자택</label>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="radio-icon-box">
                                                        <input type="radio" id="user-address-type-office"
                                                            name="user-address-type" value="001" /> <label
                                                            for="user-address-type-office">직장</label>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="addr-area">
                                                <div class="box-type3 mb-10">
                                                    <div class="inputT">
                                                        <input type="text" id="user-address-zipcode"
                                                            name="user-address-zipcode" title="우편번호" readonly />
                                                    </div>
                                                    <button type="button"
                                                        class="btn btn-black left user-address-zipcode-search">우편번호</button>
                                                </div>
                                                <div class="inputT">
                                                    <input type="text" title="기본 주소" id="user-address-detail-01"
                                                        name="user-address-detail-01" readonly />
                                                </div>
                                            </div>
                                            <div class="inputT">
                                                <input type="text" title="상세 주소" id="user-address-detail-02"
                                                    name="user-address-detail-02" readonly />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row type2 type3">
                                        <label for="" class="input-tit">전화번호 </label>
                                        <div class="input-cont">
                                            <div class="box-between">
                                                <select name="user-phone-head" id="user-phone-head" class="selectbox">
                                                    <option value="NONE">선택</option>
                                                    <option value="010">010</option>
                                                    <option value="011">011</option>
                                                    <option value="016">016</option>
                                                    <option value="017">017</option>
                                                    <option value="018">018</option>
                                                    <option value="019">019</option>
                                                    <option value="02">02</option>
                                                    <option value="031">031</option>
                                                    <option value="032">032</option>
                                                    <option value="033">033</option>
                                                    <option value="041">041</option>
                                                    <option value="042">042</option>
                                                    <option value="043">043</option>
                                                    <option value="044">044</option>
                                                    <option value="0502">0502</option>
                                                    <option value="0505">0505</option>
                                                    <option value="051">051</option>
                                                    <option value="052">052</option>
                                                    <option value="053">053</option>
                                                    <option value="054">054</option>
                                                    <option value="055">055</option>
                                                    <option value="061">061</option>
                                                    <option value="062">062</option>
                                                    <option value="063">063</option>
                                                    <option value="064">064</option>
                                                    <option value="070">070</option>
                                                </select> <span class="hypen">-</span>
                                                <div class="inputT">
                                                    <input type="text" title="가운데 번호" id="user-phone-mid"
                                                        name="user-phone-mid" maxLength="4"
                                                        onkeyup="gfn_util_onKeyOnlyNumber();moveNextFocus();" />
                                                </div>
                                                <span class="hypen">-</span>
                                                <div class="inputT">
                                                    <input type="text" title="나머지 번호" id="user-phone-last"
                                                        name="user-phone-last" maxLength="4" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <ul class="lst dot">
                                        <li>회원정보를 변경하시면, 가입하신 L.POINT 제휴사의 회원정보가 함께 변경됩니다.</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- 20220516 :: 서비스 약관 동의-->
                            <div class="section-form type2">
                                <div class="form-header">
                                    <h3 class="tit-size-mid">서비스 약관 동의</h3>
                                </div>
                                <div class="form-cont agree-area agreeAccor">
                                    <div class="row">
                                        <div class="agree-header">
                                            <div class="agree-header-top">
                                                <div class="chk-icon-box type-circle">
                                                    <input type="checkbox" id="agreeAll" name="agreeAll">
                                                    <label for="agreeAll">모두 동의합니다.</label>
                                                </div>
                                                <ul class="lst dot mt-20">
                                                    <li>정보수신동의를 하시면 고객혜택 및 이벤트 등 다양한 정보를 받으실 수 있습니다.</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="agree-body">
                                            <h4 class="agree-body-tit">롯데렌터카</h4>
                                            <ul>
                                                <li>
                                                    <div class="agree-body-header">
                                                        <div class="chk-icon-box">
                                                            <input type="checkbox" id="agree-rentcar-03"
                                                                name="agree-rentcar-03" value="B1" />
                                                            <label for="agree-rentcar-03">고유식별정보 수집/이용 동의서 <span
                                                                    style="color: red;">(선택)</span></label>
                                                        </div>
                                                        <button type="button" class="btnToggle"
                                                            data-target="toggleCont03" data-on="true"
                                                            data-siblings="false">자세히</button>
                                                    </div>
                                                    <div class="agree-body-cont toggleCont toggleCont03">
                                                        <iframe
                                                            src="https://members.lpoint.com/resources/html/privacy/iframe_1502_B1_ko.html"
                                                            width="100%" height="100%" frameborder="0" scrolling="yes"
                                                            marginwidth="0" marginheight="0" allowTransparency="true"
                                                            title=""></iframe>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="agree-body-header">
                                                        <div class="chk-icon-box">
                                                            <input type="checkbox" id="agree-rentcar-07"
                                                                name="agree-rentcar-07" value="BQ">
                                                            <label for="agree-rentcar-07">마케팅 목적의 개인정보 수집∙이용 동의
                                                                <span style="color: red;">(선택)</span></label>
                                                        </div>
                                                        <button type="button" class="btnToggle"
                                                            data-target="toggleCont10" data-on="true"
                                                            data-siblings="false">
                                                            자세히
                                                        </button>
                                                    </div>
                                                    <div class="agree-body-cont toggleCont toggleCont10">
                                                        <iframe
                                                            src="https://members.lpoint.com/resources/html/privacy/iframe_1502_BQ_ko.html"
                                                            width="100%" height="100%" frameborder="0" scrolling="yes"
                                                            marginwidth="0" marginheight="0" allowTransparency="true"
                                                            title=""></iframe>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="agree-body-header">
                                                        <div class="chk-icon-box">
                                                            <input type="checkbox" id="agree-rentcar-08"
                                                                name="agree-rentcar-08">
                                                            <label for="agree-rentcar-08">마케팅 광고성 정보 수신 동의 <span
                                                                    style="color: red;">(선택)</span></label>
                                                        </div>
                                                    </div>
                                                    <ul class="radio-area ml-45">
                                                        <li>
                                                            <div class="chk-icon-box">
                                                                <input type="checkbox" id="agree-rentcar-08-sms"
                                                                    name="agree-rentcar-08-sms">
                                                                <label for="agree-rentcar-08-sms">SMS</label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="chk-icon-box">
                                                                <input type="checkbox" id="agree-rentcar-08-email"
                                                                    name="agree-rentcar-08-email">
                                                                <label for="agree-rentcar-08-email">E-Mail</label>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <div class="agree-body-header">
                                                        <div class="chk-icon-box">
                                                            <input type="checkbox" id="agree-rentcar-09"
                                                                name="agree-rentcar-09" value="BE">
                                                            <label for="agree-rentcar-09">마케팅 목적의 개인정보 제 3자 제공
                                                                동의
                                                                <span style="color: red;">(선택)</span></label>
                                                        </div>
                                                        <button type="button" class="btnToggle"
                                                            data-target="toggleCont13" data-on="true"
                                                            data-siblings="false">
                                                            자세히
                                                        </button>
                                                    </div>
                                                    <div class="agree-body-cont toggleCont toggleCont13">
                                                        <iframe
                                                            src="https://members.lpoint.com/resources/html/privacy/iframe_1502_BE_ko.html"
                                                            width="100%" height="100%" frameborder="0" scrolling="yes"
                                                            marginwidth="0" marginheight="0" allowTransparency="true"
                                                            title=""></iframe>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="agree-body-header">
                                                        <div class="chk-icon-box">
                                                            <input type="checkbox" id="agree-rentcar-10"
                                                                name="agree-rentcar-10">
                                                            <label for="agree-rentcar-10">제공받는 자의 광고성 정보 수신 동의
                                                                <span style="color: red;">(선택)</span></label>
                                                        </div>
                                                    </div>
                                                    <ul class="radio-area ml-45">
                                                        <li>
                                                            <div class="chk-icon-box">
                                                                <input type="checkbox" id="agree-rentcar-10-sms"
                                                                    name="agree-rentcar-10-sms">
                                                                <label for="agree-rentcar-10-sms">SMS</label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="chk-icon-box">
                                                                <input type="checkbox" id="agree-rentcar-10-email"
                                                                    name="agree-rentcar-10-email">
                                                                <label for="agree-rentcar-10-email">E-Mail</label>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-area">
                                <button type="button" class="btn btn-white cancel">취소</button>
                                <button type="button" class="btn btn-red next">확인</button>
                            </div>

                        </article>
                    </div>

                    <!--------------------------------------------------하단---------------------------------------------------------->
                </div>
            </body>

            </html>
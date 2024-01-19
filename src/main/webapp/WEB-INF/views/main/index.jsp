<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html dir="ltr" lang="kor">
    <head>
        <meta charset="utf-8">
        <!-- Search Engine Optimization START -->
        <meta name="title" lang="ko" content="롯데렌터카 공식 웹사이트">
        <meta name="description" lang="ko"
            content="대한민국 No.1 렌터카! 롯데렌터카의 다양한 (단기 렌터카, 신차 장기렌터카, 중고차 장기렌터카, 법인 전용, 상용 리스, 차량 방문 정비) 서비스를 한번에 이용해 보세요~!">
        <meta name="og:url" content="https://www.lotterentacar.net/hp/kor/main/index.do">
        <meta name="og:title" lang="ko" content="롯데렌터카 공식 웹사이트">
        <meta name="og:description" lang="ko"
            content="대한민국 No.1 렌터카! 롯데렌터카의 다양한 (단기 렌터카, 신차 장기렌터카, 중고차 장기렌터카, 법인 전용, 상용 리스, 차량 방문 정비) 서비스를 한번에 이용해 보세요~!">
        <!-- Search Engine Optimization END -->
        <meta name="keyword" lang="ko"
            content="롯데렌탈, 롯데렌터카, 롯데렌트카, 렌터카, 렌터카, 자동차, 신차, 중고차, 제주렌트카, 제주렌터카, 제주여행, 내륙여행, 장기렌터카,장기렌트카, 법인 렌탈, 차량 방문 정비, 방문 정비, 마이카, 마이카 세이브, 비즈카, 차방정, 렌터카 대여, 렌트카 대여, 내륙 여행, 중고차 판매, 내차 팔기">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=1200, initial-scale=1">
        <meta name="google-site-verification" content="wkwxO2T22rB9jUGUjbRWzFDO5lIaGS-LGKDe-Jl3j8M" />
        <meta name="facebook-domain-verification" content="aroavnspxjj7zr6ji333p91cgpsbun" />
        <meta http-equiv="cache-control" content="no-cache" />
        <meta http-equiv="expires" content="0" />
        <meta http-equiv="pragma" content="no-cache" />
        <!-- SNS 추가 -->
        <span itemscope="" itemtype="http://schema.org/Organization">
            <link itemprop="url" href="https://www.lotterentacar.net">
            <a itemprop="sameAs" href="https://www.facebook.com/official.lotterental"></a>
            <a itemprop="sameAs" href="https://www.instagram.com/lotte_rentacar/"></a>
            <a itemprop="sameAs" href="https://www.youtube.com/channel/UCih7WKy20DaLIibm32uAQAg"></a>
            <a itemprop="sameAs" href="https://blog.naver.com/official_lotterental"></a>
        </span>
        <!-- 20180201 파비콘 추가 -->
        <link rel="shortcut icon" href="/images/favicon.ico">
        <link rel="stylesheet" href="/styles/reset.css?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1">
        <link rel="stylesheet" href="/styles/layout.css?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1">
        <link rel="stylesheet" href="/styles/modules.css?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1">
        <link rel="stylesheet" href="/styles/contents.css?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1">
        <link rel="stylesheet" href="/styles/jquery.mCustomScrollbar.css?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1">
        <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
        <script src="/lrhp/js/lib/html5shiv.js"></script>
        <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
        <script src="/lrhp/js/lib/clipboard.min.js"></script>
        <script src="/publish/js/md5.js?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1"></script>
        <script src="/publish/js/cmmnUtil.js?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1"></script>
        <!-- SSO 고도화 -->
        <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
        <script src='https://members.lpoint.com/api/js/json2.js'></script>
        <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
        <script src="/lrhp/js/sso/moment.js"></script>
        <script src="/lrhp/js/sso/odm-common.js"></script>
        <script src="/lrhp/js/sso/sso.rental.js?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1"></script>
        <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1"></script>
        <script src="/lrhp/js/sso/api.rentcar.js?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1"></script>
        <!-- Social Login -->
        <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
        <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
        <script src="/lrhp/js/social/social.rentacar.js?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1"></script>
        <!-- kcb okcert -->
        <script src="/lrhp/js/kcb/okcert.rentcar.js"></script>
        <!-- lrhp 퍼블  -->
        <!-- <script src="/lrhp/pc/scripts/jquery/jquery-ui.min.js"></script> -->
        <script src="/lrhp/js/lib/jquery-ui.1.12.1.min.js"></script>
        <script src="/lrhp/pc/scripts/jquery/plugins/slick.min.js"></script>
        <script src="/lrhp/pc/scripts/jquery/plugins/swiper.min.js"></script>
        <script src="/lrhp/pc/scripts/jquery/plugins/iscroll.min.js"></script>
        <script src="/lrhp/pc/scripts/MUI.js"></script>
        <script src="/lrhp/pc/scripts/common.js"></script>
        <!-- lrhp 공통 -->
        <script src="/lrhp/js/common/gfn_var.js"></script>
        <script src="/lrhp/js/common/gfn_msg.js"></script>
        <script src="/lrhp/js/common/gfn_util.js?cb=53607d42-cf7a-4c6c-8cd9-60050b4db8b1"></script>
        <script src="/lrhp/js/common/gfn_sub.js"></script>
        <script src="/lrhp/js/common/gfn_com.js"></script>
        <script src="/lrhp/pc/scripts/jquery/plugins/jquery.mCustomScrollbar.concat.min.js"></script>
        <!-- swiper 및 기타 특수한 경우에 대한 공통 JS 호출 -->
        <script src="/lrhp/js/common/commonPc.js"></script>
        <!-- Page-hiding snippet (recommended)  -->
        <style>
            .async-hide {
                opacity: 0 !important
            }
        </style>
     
        <title>
            롯데렌터카
        </title>
    </head>
    <div id="loding_div"></div>
    <body>
        <!-- HEADER s -->
        <!-- HEADER e //-->
        <!-- BODY s -->
        <script src="/lrhp/js/lib/lozad.min.js"></script>
        <main id="wrap">
            <div class="main-wrap">
                <link rel="stylesheet" type="text/css" href="/lrhp/pc/styles/indexShortReserve_22Q4.css" />
                <form name="reservFrm" id="reservFrm" method="post" action="/hp/kor/reservation/index.do" target="_self"
                    autocomplete="on" onsubmit="true">
                    <input type="hidden" id="state" name="state" value="1"> <input type="hidden" id="carType"
                        name="carType">
                    <!-- 차량타입 -->
                    <input type="hidden" id="rentDate" name="rentDate">
                    <!-- 대여일시 -->
                    <input type="hidden" id="rentTime" name="rentTime">
                    <!-- 대여시간 -->
                    <input type="hidden" id="returnDate" name="returnDate">
                    <!-- 반납일시 -->
                    <input type="hidden" id="returnTime" name="returnTime">
                    <!-- 반납시간 -->
                    <input type="hidden" id="rentBranch" name="rentBranch">
                    <!-- 대여지점 -->
                    <input type="hidden" id="rentArea" name="rentArea">
                    <!-- 대여지역 -->
                    <input type="hidden" id="returnArea" name="returnArea">
                    <!--  반납지역 -->
                    <input type="hidden" id="returnBranch" name="returnBranch">
                    <!-- 반납지점 -->
                    <input type="hidden" id="splace" name="splace"> <input type="hidden" id="eplace" name="eplace">
                    <input type="hidden" id="rentSelf" name="rentSelf">
                    <!-- 무인대여 -->
                    <input type="hidden" id="returnSelf" name="returnSelf">
                    <!-- 무인반납 -->
                    <input type="hidden" id="fromIndex" name="fromIndex" value="Y">
                    <input type="hidden" id="isJejuReservation" name="isJejuReservation">
                    <input type="hidden" id="zoomLevel" name="zoomLevel" value="0">
                    <input type="hidden" id="latitude" name="latitude"> <input type="hidden" id="longitude"
                        name="longitude">
                    <input type="hidden" id="areaFlag" name="areaFlag">
                </form>
                <div class="main-reserv-visual-wrap">
                    <!-- main visual slide -->
                    <div class="main-visual-slide">
                        <div class="swiper-pagination-wrap">
                            <div class="swiper-pagination">
                                <div class="main-visual-pager">
                                    <p class="num num-1">1</p>
                                    <p class="loading-bar">
                                        <i class="loading-ani"></i>
                                    </p>
                                    <p class="num num-2">6</p>
                                    <button type="button" class="stop"></button>
                                    <button type="button" class="play"></button>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-container main-visual-list">
                            <div class="main-slide-wrap">
                                <div class="main-img-wrap">
                                    <a class="bannerDetail"> <img
                                            src="/atch/getImage.do?atchFileId=FILE0000000003158885" />
                                        <input type="hidden"
                                            value="https://direct.lotterentacar.net/about/introOdmInformation.do?utm_source=PChome&amp;utm_medium=banner&amp;utm_campaign=ad1"
                                            class='lkUrl'> <input type="hidden" value="Y" class='openNewTabYn'>
                                    </a>
                                </div>
                                <div class="main-img-wrap">
                                    <a class="bannerDetail"> <img
                                            src="/atch/getImage.do?atchFileId=FILE0000000003374742" />
                                        <input type="hidden"
                                            value="https://www.lotterentacar.net/hp/kor/cbj/promotion/new-year.do"
                                            class='lkUrl'> <input type="hidden" value="Y" class='openNewTabYn'>
                                    </a>
                                </div>
                                <div class="main-img-wrap">
                                    <a class="bannerDetail"> <img
                                            src="/atch/getImage.do?atchFileId=FILE0000000003384403" />
                                        <input type="hidden"
                                            value="https://direct.lotterentacar.net/about/specialSaleLease.do?cmpid=sinda/lotterental/pc/lease/lease_promotion"
                                            class='lkUrl'> <input type="hidden" value="Y" class='openNewTabYn'>
                                    </a>
                                </div>
                                <div class="main-img-wrap">
                                    <a class="bannerDetail"> <img
                                            src="/atch/getImage.do?atchFileId=FILE0000000003275586" />
                                        <input type="hidden"
                                            value="https://www.lotterentacar.net/hp/kor/carLife/eventDetail.do?pageIndex=1&amp;contSeq=596&amp;listType=ongoing&amp;utm_source=Mobilehome&amp;utm_medium=banner&amp;utm_campaign=PC"
                                            class='lkUrl'> <input type="hidden" value="Y" class='openNewTabYn'>
                                    </a>
                                </div>
                                <div class="main-img-wrap">
                                    <a class="bannerDetail"> <img
                                            src="/atch/getImage.do?atchFileId=FILE0000000003229507" />
                                        <input type="hidden" value="https://www.lotterentacar.net/hp/kor/carLife/eventDetail.do?pageIndex=1&amp;contSeq=594&amp;listType=ongoing&amp;utm_source=PChome&amp;utm_medium=banner&amp;utm_campaign=ad1" class='lkUrl'>
                                        <input type="hidden" value="Y" class='openNewTabYn'>
                                    </a>
                                </div>
                                <div class="main-img-wrap">
                                    <a class="bannerDetail"> <img
                                            src="/atch/getImage.do?atchFileId=FILE0000000003181216" />
                                        <input type="hidden"
                                            value="https://www.lotterentacar.net/hp/kor/sinchajang/specials.do?tabGubun=2"
                                            class='lkUrl'> <input type="hidden" value="Y" class='openNewTabYn'>
                                    </a>
                                </div>
                                <div class="main-img-wrap">
                                    <a class="bannerDetail"> <img
                                            src="/atch/getImage.do?atchFileId=FILE0000000003120886" />
                                        <input type="hidden"
                                            value="https://www.lotterentacar.net/hp/kor/reservation/shortMonth/info.do"
                                            class='lkUrl'> <input type="hidden" value="Y" class='openNewTabYn'>
                                    </a>
                                </div>
                                <div class="main-img-wrap">
                                    <a class="bannerDetail"> <img
                                            src="/atch/getImage.do?atchFileId=FILE0000000003372349" />
                                        <input type="hidden"
                                            value="https://www.lotterentacar.net/hp/kor/carLife/eventDetail.do?pageIndex=1&amp;contSeq=597&amp;listType=ongoing"
                                            class='lkUrl'> <input type="hidden" value="Y" class='openNewTabYn'>
                                    </a>
                                </div>
                                <div class="main-img-wrap">
                                    <a class="bannerDetail"> <img
                                            src="/atch/getImage.do?atchFileId=FILE0000000003089169" />
                                        <input type="hidden"
                                            value="https://www.lotterentacar.net/hp/kor/carLife/eventDetail.do?pageIndex=1&amp;contSeq=590&amp;listType=ongoing&amp;utm_source=PChome&amp;utm_medium=banner&amp;utm_campaign=ad1"
                                            class='lkUrl'> <input type="hidden" value="Y" class='openNewTabYn'>
                                    </a>
                                </div>
                                <div class="main-img-wrap">
                                    <a class="bannerDetail"> <img
                                            src="/atch/getImage.do?atchFileId=FILE0000000002546816" />
                                        <input type="hidden"
                                            value="https://www.lotterentacar.net/hp/kor/carLife/commuteRent.do"
                                            class='lkUrl'> <input type="hidden" value="N" class='openNewTabYn'>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- main visual slide -->
                    <!-- 장소 선택 -->
                    <div class="section-visual-booking">
                        <div class="section-visual-booking-branch">
                            <div class="m-tit">
                                <h2>단기렌터카 - 대여 장소 선택</h2>
                            </div>
                            <div class="btn-reserv-jeju"><button id="btnReservJeju"><span class="reserv-txt">제주예약
                                        하기</span><span class="reserv-arrow"></span></button></div>
                            <div class="shor-main-toggle-cont shor-main-cont-01">
                                <div class="shor-main-toggle-txt">
                                    <div class="shor-main-list-wrap">
                                        <div class="tooltip-layer absolute-type tooltipCont tooltipCont01">
                                            <div class="tooltip type2">
                                                <button type="button" class="btn-tooltip-close tooltipClose">닫기</button>
                                                <div class="tooltip-inner">
                                                    <h3 class="tooltip-tit"></h3>
                                                    <div class="tooltip-list">
                                                        <ul class="lst dot t-toltip-contents">
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="shor-main-list-lt">
                                            <div id="firstRegionList" class="ScrollPosition">
                                                <ul>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="1"
                                                            class="btn btn-link firtst-region">
                                                            <b>철도/역사</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="2"
                                                            class="btn btn-link firtst-region">
                                                            <b>공항</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="A"
                                                            class="btn btn-link firtst-region regionSeoul active">
                                                            <b>서울</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="B"
                                                            class="btn btn-link firtst-region">
                                                            <b>인천</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="C"
                                                            class="btn btn-link firtst-region">
                                                            <b>경기</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="E"
                                                            class="btn btn-link firtst-region">
                                                            <b>부산</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="G"
                                                            class="btn btn-link firtst-region">
                                                            <b>울산</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="D"
                                                            class="btn btn-link firtst-region">
                                                            <b>강원</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="F"
                                                            class="btn btn-link firtst-region">
                                                            <b>대구</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="H"
                                                            class="btn btn-link firtst-region">
                                                            <b>경상</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="I"
                                                            class="btn btn-link firtst-region">
                                                            <b>대전</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="J"
                                                            class="btn btn-link firtst-region">
                                                            <b>충청</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="K"
                                                            class="btn btn-link firtst-region">
                                                            <b>광주</b>
                                                        </button>
                                                    </li>
                                                    <li class="first-region">
                                                        <button type="button" data-areaid="L"
                                                            class="btn btn-link firtst-region">
                                                            <b>전라</b>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="shor-main-list-rt">
                                            <div id="secondRegionList" class="ScrollPosition"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section-visual-booking-btn" id="bookingBtn">
                            <span>다음</span> <span class="booking-icon"></span>
                        </div>
                    </div>
                </div>
                <div class="path-wrap booking-path-wrap">
                </div>
                <script type="text/javascript" src="/lrhp/js/web/hp/pc/main/mainVerticalDatepicker.m.js"></script>
                <script type="text/javascript"
                    src="/lrhp/js/reserv/shortReservCommon.js?ver=53607d42-cf7a-4c6c-8cd9-60050b4db8b1"></script>
                
                <!-- 서비스 바로가기 -->
                <div class="quick-menu-wrap">
                    <div class="inner-type3">
                        <h2 class="q-tit">서비스 바로가기</h2>
                        <div class="q-list">
                            <ul>
                                <li><a href="/hp/kor/sinchajang/estimate.do?mnCd=T2FN0201"><span
                                            class="ico-new-quick1"></span>마이카 온라인 견적</a></li>
                                <li><a href="/hp/kor/sinchajang/membershipInfo.do?mnCd=T2FN0203"><span
                                            class="ico-new-quick3"></span>마이카 멤버십</a></li>
                                <li><a href="/hp/kor/login/login.do?mnCd=FN12"><span
                                            class="ico-new-quick2"></span>예약확인</a></li>
                                <!--<li><a href="/hp/kor/sinchajang/specials.do?mnCd=T2FN0202"><span class="ico-new-quick2"></span>마이카 소개</a></li>-->
                                <li><a href="/hp/kor/cbj/index.do"><span class="ico-new-quick4"></span>차량방문정비</a></li>
                                <li><a href="/hp/kor/info/allBranchArea.do?mnCd=T2FN0503"><span
                                            class="ico-new-quick5"></span>지점 안내</a></li>
                                <li><a href="/hp/kor/carLife/jejuAuto.do"><span
                                            class="ico-new-quick6"></span>제주오토하우스</a></li>
                                <li><a href="/hp/kor/reservation/shortInfo/benefits.do"><span
                                            class="ico-new-quick7"></span>회원 혜택</a></li>
                                <li><a
                                        onclick="window.open('https://chatbot.lotterentacar.net/chat/new/P2kMtoEGcgLBN7hlr?inChannelId=LSM', '_blank' ,'toolbar=no, menubar=no, scrollbars=no, resizable=yes width=480, height=700, top=0, left=0'); "><span
                                            class="ico-new-quick8"></span>고객 센터</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- //서비스 바로가기 -->
                <!-- 신차장 다이렉트 -->
                <div class="direct-section" style="display: none;">
                    <div class="inner-type3">
                        <div class="h-type">
                            <p>
                                <!-- <span class="txt-red txt-bold">신차장</span>~기렌터카 -->
                                신차장기렌터카
                            </p>
                            <h2>이달의 초특가!</h2>
                            <button type="button" class="btn btn-red"
                                onclick="location.href='/hp/kor/sinchajang/specials.do';">특가
                                더 보기</button>
                        </div>
                        <div class="direct-slide-wrap">
                            <div class="img-wrap">
                                <a href='/hp/kor/sinchajang/specials.do'>
                                    <div class="img-box">
                                        <p class="num">
                                            01
                                        </p>
                                        <p class="img">
                                            <img class="lozad"
                                                data-src="/lrhp/getImageLrhpOrOdm.do?atchFileId=FILE0000000002714755&sameImgUseYn=N">
                                        </p>
                                    </div>
                                    <div class="img-txt">
                                        <strong>그랜저</strong>
                                        <p>
                                            GRANDEUR GN7 (G)2.5 프리미엄 2WD AT
                                        </p>
                                        <p class="t-red">
                                            <sub>월</sub>
                                            49
                                            만원
                                        </p>
                                    </div>
                                </a>
                            </div>
                            <div class="img-wrap">
                                <a href='/hp/kor/sinchajang/specials.do'>
                                    <div class="img-box">
                                        <p class="num">
                                            02
                                        </p>
                                        <p class="img">
                                            <img class="lozad"
                                                data-src="/lrhp/getImageLrhpOrOdm.do?atchFileId=FILE0000000002714632&sameImgUseYn=N">
                                        </p>
                                    </div>
                                    <div class="img-txt">
                                        <strong>카니발4세대</strong>
                                        <p>
                                            CARNIVAL KA4 (D)2.2 노블레스 9인 2WD AT
                                        </p>
                                        <p class="t-red">
                                            <sub>월</sub>
                                            41
                                            만원
                                        </p>
                                    </div>
                                </a>
                            </div>
                            <div class="img-wrap">
                                <a href='/hp/kor/sinchajang/specials.do'>
                                    <div class="img-box">
                                        <p class="num">
                                            03
                                        </p>
                                        <p class="img">
                                            <img class="lozad"
                                                data-src="/lrhp/getImageLrhpOrOdm.do?atchFileId=ODM0000000000000015&sameImgUseYn=Y">
                                        </p>
                                    </div>
                                    <div class="img-txt">
                                        <strong>아반떼</strong>
                                        <p>
                                            ALL NEW AVANTE (G) 1.6 INSPIRATION
                                        </p>
                                        <p class="t-red">
                                            <sub>월</sub>
                                            31
                                            만원
                                        </p>
                                    </div>
                                </a>
                            </div>
                            <div class="img-wrap">
                                <a href='/hp/kor/sinchajang/specials.do'>
                                    <div class="img-box">
                                        <p class="num">
                                            04
                                        </p>
                                        <p class="img">
                                            <img class="lozad"
                                                data-src="/lrhp/getImageLrhpOrOdm.do?atchFileId=FILE0000000002714689&sameImgUseYn=N">
                                        </p>
                                    </div>
                                    <div class="img-txt">
                                        <strong>K8</strong>
                                        <p>
                                            K8 (G) 3.5 노블레스 라이트
                                        </p>
                                        <p class="t-red">
                                            <sub>월</sub>
                                            52
                                            만원
                                        </p>
                                    </div>
                                </a>
                            </div>
                            <div class="img-wrap">
                                <a href='/hp/kor/sinchajang/specials.do'>
                                    <div class="img-box">
                                        <p class="num">
                                            05
                                        </p>
                                        <p class="img">
                                            <img class="lozad"
                                                data-src="/lrhp/getImageLrhpOrOdm.do?atchFileId=FILE0000000002714691&sameImgUseYn=N">
                                        </p>
                                    </div>
                                    <div class="img-txt">
                                        <strong>CASPER</strong>
                                        <p>
                                            CASPER (G) 1.0 인스퍼레이션
                                        </p>
                                        <p class="t-red">
                                            <sub>월</sub>
                                            23
                                            만원
                                        </p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //신차장 다이렉트 -->
                <!-- 중고차 장기렌터카 -->
                <div class="secondhand-wrap" style="display: none;">
                    <div class="inner-type3">
                        <div class="h-type secondhand-tit">
                            <p>프리미엄 렌탈서비스</p>
                            <h2>중고차 장기렌터카</h2>
                        </div>
                        <div class="tab-type">
                            <ul>
                                <li class="active"><button type="button" class="btn-tab themeBtn">
                                        인기매물<input type="hidden" class='themeFlag' value='1'>
                                    </button></li>
                                <li><button type="button" class="btn-tab themeBtn">
                                        추천매물<input type="hidden" class='themeFlag' value='2'>
                                    </button></li>
                                <li><button type="button" class="btn-tab themeBtn">
                                        최근 등록된 매물<input type="hidden" class='themeFlag' value='3'>
                                    </button></li>
                            </ul>
                            <a class="btn-goLink" id="usedCarListLinkBtn">전체보기</a>
                        </div>
                        <div class="secondhand-slide-wrap">
                            <div class="swiper-container secondhand-slide-cont">
                                <div class="swiper-wrapper" id="themeInfoDiv">
                                    <!-- 아작스 통신 -->
                                </div>
                            </div>
                            <div class="pagination-wrap">
                                <button type="button" class="btn btn-paging-prev">이전 페이지로
                                    이동</button>
                                <div class="pagination-list swiper-pagination">
                                    <strong title="현재 페이지">1</strong>/<em>1</em>
                                </div>
                                <button type="button" class="btn btn-paging-next">다음 페이지로
                                    이동</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //중고차 장기렌터카 -->
                <!-- 배너 -->
                <div class="banner-wrap">
                    <div class="inner-type3">
                        <div class="banner-slide-wrap ">
                            <div class="banner-slide-list">
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="life-wrap">
                    <div class="inner-type3">
                        <div class="t-wrap">
                            <div class="h-type">
                                <div class="h-type-inner">
                                    <p>즐겨보세요</p>
                                    <h2>매거진</h2>
                                </div>
                                <ul>
                                    <li><a href="https://www.youtube.com/channel/UCih7WKy20DaLIibm32uAQAg"
                                            class="btn btn-foot-sns" target="_blank"><i class="icon snsY">유튜브</i></a>
                                    </li>
                                    <li><a href="https://www.instagram.com/lotte_rentacar/" class="btn btn-foot-sns"
                                            target="_blank"><i class="icon snsI">인스타그램</i></a>
                                    </li>
                                    <li><a href="https://www.facebook.com/official.lotterental" class="btn btn-foot-sns"
                                            target="_blank"><i class="icon snsF">페이스북</i></a>
                                    </li>
                                    <li><a href="https://pf.kakao.com/_gVmbl" class="btn btn-foot-sns"
                                            target="_blank"><i class="icon snsK">카카오톡</i></a>
                                    </li>
                                    <li><a href="https://blog.naver.com/official_lotterental" class="btn btn-foot-sns"
                                            target="_blank"><i class="icon snsB">블로그</i></a>
                                    </li>
                                </ul>
                            </div>
                            <a href="/hp/kor/carLife/enjoyList.do" class="btn-goLink">전체보기</a>
                        </div>
                        <!-- 21.11 :: 카뮤니티 비쥬얼  -->
                        <div class="carlife-visual">
                            <div class="text">
                                <a href="/hp/kor/carLife/enjoyDetail.do?postSeq=64" target="_blank">
                                    <p class="txt1">
                                        &#039;마이카를 탄다. 내 삶이 달린다.&#039; 신규 모델 이효리! 롯데렌터카 마이카 TVCF 온에어!
                                    </p>
                                    <p class="txt2">
                                    </p>
                                </a>
                                <p class="txt3">
                                    #롯데렌터카&nbsp;
                                    #마이카&nbsp;
                                    #롯데렌터카 마이카&nbsp;
                                    #신차장기렌터카&nbsp;
                                </p>
                                <p class="txt4">
                                    출처 :
                                </p>
                            </div>
                            <div class="visual">
                                <div>
                                    <a href="/hp/kor/carLife/enjoyDetail.do?postSeq=64" target="_blank">
                                        <!--
									<img class="lozad" data-src="/atch/getImage.do?atchFileId=FILE0000000003122529" />
									 -->
                                        <img class="lozad"
                                            data-src="/atch/getImage.do?atchFileId=FILE0000000003122528" />
                                    </a>
                                </div>
                                <div class="sns-flag post"></div>
                            </div>
                        </div>
                        <input type="hidden" value='64' class='postSeq' />
                        <input type="hidden" value='99' class='contsSrcDivn' />
                        <input type="hidden" value='' class='contsLkUrl' />
                        <input type="hidden" value='Y' class='contsDtlViewYn' />
                        <input type="hidden" value='Y' class='pcOpenNewTabYn' />
                        <input type="hidden" value='/hp/kor/carLife/enjoyDetail.do?postSeq=64' class='pcLkUrl' />
                        <!-- // 21.11 :: 카뮤니티 비쥬얼  -->
                    </div>
                </div>
                <!-- //라이프 -->
                <div class="notice-wrap">
                    <div class="inner-type3">
                        <div class="notice-cont">
                            <div class="h-type">
                                <p>알려드려요</p>
                                <h2>따끈따끈 공지사항</h2>
                                <a href="/hp/kor/info/noticeNewsMain.do" class="btn-goLink">전체보기</a>
                            </div>
                            <ul class="notice-list">
                                <li><a class='noticeDetail'> 이용약관 변경에 대한 공지 <input type="hidden" class='boardSeq'
                                            value="1088">
                                    </a></li>
                                <li><a class='noticeDetail'> 2024 대한민국 퍼스트브랜드 대상 20년 연속 수상 <input type="hidden"
                                            class='boardSeq' value="1087">
                                    </a></li>
                                <li><a class='noticeDetail'> 수탁사 변경에 따른 개인정보 처리방침 변경에 대한 공지 <input type="hidden"
                                            class='boardSeq' value="1086">
                                    </a></li>
                                <li><a class='noticeDetail'> IoT서비스 명칭 변경 및 롯데렌탈회원(자체회원) 도입에 따른 개인정보 처리방침 및 이용약관 변경 공지
                                        <input type="hidden" class='boardSeq' value="1085">
                                    </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--layer-popup 메인 배너 컴포넌트-->
        <div class="layer-wrap layer-popup layer-bn">
            <div class="pop-inner">
                <div class="pop-scroll">
                    <div class="pop-cont">
                        <div class="swiper-container main-event-lists">
                            <div class="swiper-wrapper">
                            </div>
                            <div class="swiper-button-next">
                                <span class="icon swiper-next"></span>
                            </div>
                            <div class="swiper-button-prev">
                                <span class="icon swiper-prev"></span>
                            </div>
                        </div>
                        <!--
					<div class="pop-bottom">
						<button type="button" class="layer-today-close layer-bn-close" data-layer="layer-bn" onclick="setCookie('main_pop', 'done', 1);">오늘 하루 그만 보기</button>
						<button type="button" class="layer-bn-close" data-layer="layer-bn">닫기</button>
					</div>
					 -->
                    </div>
                </div>
            </div>
            <!-- 20210218 추가 -->
            <div class="pop-bottom-new">
                <div class="chk-icon-box type-circle02">
                    <input type="checkbox" id="checkToday" checked="checked"> <label for="checkToday">오늘 하루 그만
                        보기</label>
                </div>
                <button type="button" class="layer-bn-close" data-layer="layer-bn" id="mainPopCloseBtn">
                    <span class="icon close"></span>
                </button>
            </div>
            <!-- //20210218 추가 -->
        </div>
 
        <div class="bg-dimmed"></div>
  
        <aside class="floating_zone" style="display: none;">플로팅 사이드 바영역
        </aside>

        <script type="text/javascript" src="/lrhp/js/web/hp/m/datepicker.m.js"></script>
        <script src="/lrhp/js/web/hp/pc/main/index.js?ver=53607d42-cf7a-4c6c-8cd9-60050b4db8b1"
            type="text/javascript"></script>
        <!-- BODY e //-->
        <!-- FOOTER s -->
        <!-- FOOTER e //-->
    </body>
    <!-- body태그 뒤에 -->
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MZZKGR3" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    <!--bg-dimmed 컴포넌트-->
    <div class="bg-dimmed"></div> <!-- 딤(Dim)처리 배경 -->
    <!--//bg-dimmed 컴포넌트-->
    <div class="bg-dimmed-h"></div> <!-- 딤(Dim)처리 배경 -->
    <!--//bg-dimmed 컴포넌트-->
    <!--floating_zone 컴포넌트-->
    <aside class="floating_zone" style="display: none;">
        플로팅 사이드 바영역
    </aside>
    <!--//floating_zone 컴포넌트-->
    <script>jQuery.loadUnBlock()</script>
    </html>
    </body>
    </html>
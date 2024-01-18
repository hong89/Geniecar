<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <!--[if IE 7]><html dir="ltr" lang="ko" class="ie7"><![endif]-->
    <!--[if IE 8]><html dir="ltr" lang="ko" class="ie8"><![endif]-->
    <!--[if IE 9]><html dir="ltr" lang="ko" class="ie9"><![endif]-->
    <script>
        /*
         * LRHP.java
         */
        var __LANG = "kor";
        var __ISMOBILE = "N";
        var __LRHP_TEMP_CD = "TEMP_CD";
        var __CONTEXT_PATH = "/hp";
        var __MIN_PAYMENT_AMT = "1000";
        var __SERVICE_REAL = "real";
        /*
         * ReturnCode.java
         */
        var __RET_OK = "01";
        var __RET_FAIL = "02";
        var __RET_ERROR = "04";
        var __RET_MSG = "03";
        var __RET_NEED_LOGIN = "07";
        /*
         * properties
         */
        var __PROP_GLOBALS_SITEURL = "https://www.lotterentacar.net";
        //serviceMode
        var __PROP_SERVICE_MODE = "real";
        //sinchajang direct url
        var __PROP_GLOBALS_ODMDOMAIN = "";
        if (__PROP_SERVICE_MODE == __SERVICE_REAL) {
            __PROP_GLOBALS_ODMDOMAIN = "https://direct.lotterentacar.net";
        } else {
            __PROP_GLOBALS_ODMDOMAIN = "https://dev-direct.lotterentacar.net";
        }
        //membership url
        var __PROP_GLOBALS_MEMBERSHIP_DOMAIN = "";
        if (__PROP_SERVICE_MODE == __SERVICE_REAL) {
            __PROP_GLOBALS_MEMBERSHIP_DOMAIN = "https://manager.lotterentacar.net";
        } else {
            __PROP_GLOBALS_MEMBERSHIP_DOMAIN = "http://managerdev.lotterentacar.net:8081";
        }
        //appGubun
        var __FROM_LINK = "false";
        var __USED_CAR_IMG_URL = location.protocol.indexOf("https") !== -1 ? "https://" : "http://";
        __USED_CAR_IMG_URL += "www.lotterentacar.net/cm/common/file/download/api/get.do?filePath=";
        if (__PROP_SERVICE_MODE !== __SERVICE_REAL) {
            __USED_CAR_IMG_URL = "http://dev-www.lotterentacar.net/cm/common/file/download/api/get.do?filePath="
        }
    </script>
    <html dir="ltr" lang="kor">
    <head>
        <meta charset="utf-8">
        <!-- Search Engine Optimization START -->
        <meta name="title" lang="ko" content="">
        <meta name="description" lang="ko" content="">
        <meta name="og:url" content="https://www.lotterentacar.net">
        <!-- Search Engine Optimization END -->
        <meta name="keyword" lang="ko" content="">
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
        <link rel="shortcut icon" href="/lrhp/pc/images/favicon.ico">
        <link rel="stylesheet" href="/lrhp/pc/styles/reset.css?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854">
        <link rel="stylesheet" href="/lrhp/pc/styles/layout.css?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854">
        <link rel="stylesheet" href="/lrhp/pc/styles/modules.css?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854">
        <link rel="stylesheet" href="/lrhp/pc/styles/contents.css?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854">
        <link rel="stylesheet"
            href="/lrhp/pc/styles/jquery.mCustomScrollbar.css?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854">
        <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
        <script src="/lrhp/js/lib/html5shiv.js"></script>
        <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
        <script src="/lrhp/js/lib/clipboard.min.js"></script>
        <script src="/publish/js/md5.js?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854"></script>
        <script src="/publish/js/cmmnUtil.js?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854"></script>
        <!-- SSO 고도화 -->
        <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
        <script src='https://members.lpoint.com/api/js/json2.js'></script>
        <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
        <script src="/lrhp/js/sso/moment.js"></script>
        <script src="/lrhp/js/sso/odm-common.js"></script>
        <script src="/lrhp/js/sso/sso.rental.js?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854"></script>
        <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854"></script>
        <script src="/lrhp/js/sso/api.rentcar.js?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854"></script>
        <!-- Social Login -->
        <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
        <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
        <script src="/lrhp/js/social/social.rentacar.js?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854"></script>
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
        <script src="/lrhp/js/common/gfn_util.js?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854"></script>
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
        <script type="text/javascript">
            var _dl = {
                pageInfo: {
                    page_name: "",
                    page_url: "", //접속한 페이지 URL
                    site_templete: "PC", // 접속 디바이스 채널 유형 (web : PC, Mobile Web : M, App : A )
                    page_templete: "PC", // 페이지 템플릿 (Moible / Tablet / PC)
                    login_status: "N", // 예시) "Y"(로그인) | "N"(로그아웃)
                    login_type: "" // 로그인시 사용한 로그인 유형, 예시) lpoint(엘포인트)| member(렌터카회원)|facebook| naver| kakaotalk
                },
                userInfo: {
                    user_type: "비회원", //예시) 회원 | 비회원
                    user_number: "", // 고객번호 knnr1234
                    user_gender: "", // 예시) M | F
                    user_age: "", // 예시) 10대, 20대, 30대, 40대, 50대, 60대이상
                    marketing_check_internal: "", //
                    marketing_check_third: "" //
                },
                page_event: {
                    login: false // 로그인 완료 시에 추가
                }
            }
        </script>
        <!-- Adobe Analytics (운영)-->
        <script src="https://assets.adobedtm.com/0d3d26a8f9f8/8ca38b3d4546/launch-eb7bb6609f87.min.js" async></script>
        <script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=b9b46bb8-f1f2-4230-bca9-d880be3e7854"></script>
        <!-- Adobe Analytics End -->
        <!-- Adobe Analytics (temp)-->
        <!-- <script src="https://assets.adobedtm.com/0d3d26a8f9f8/8ca38b3d4546/launch-eb7bb6609f87.min.js" async></script> -->
        <title>
            롯데렌터카
        </title>
    </head>
    <div id="loding_div"></div>
    <script>jQuery.loadBlock();</script>

    <!-- 2020-10-15 YJH: 카라이프 세션이 타 페이지에서 유지되는 것을 방지 하는 공통스크립트 추가-->
    <script>
        //하단 스크립트는 카라이프 '즐거움을 타봥' 무한스크롤 조회시 타페이지에서 세션스토리지를 유지하는 것을 방지한다.
        const enjoyBool1 = String(location.href).includes('/carLife/enjoyList.do');
        const enjoyBool2 = String(location.href).includes('/carLife/enjoyDetail.do');
        if (!enjoyBool1 && !enjoyBool2) {
            //'즐거움을 타봥' 세션 보유 여부 확인
            const carLifeSessionStr = sessionStorage.getItem("carLifeEnjoySession");
            //세션스토리지에 정보가 있는지 확인
            if (carLifeSessionStr !== undefined && carLifeSessionStr !== null && carLifeSessionStr !== '') {
                //세션 제거
                sessionStorage.removeItem("carLifeEnjoySession");
            }
        }
        //하단 스크립트는 카라이프 '안전운전tip' 무한스크롤 조회시 타페이지에서 세션스토리지를 유지하는 것을 방지한다.
        const safeBool1 = String(location.href).includes('/carLife/safeList.do');
        const safeBool2 = String(location.href).includes('/carLife/safeDetail.do');
        if (!safeBool1 && !safeBool2) {
            //'즐거움을 타봥' 세션 보유 여부 확인
            const carLifeSessionStr = sessionStorage.getItem("carLifeSafeSession");
            //세션스토리지에 정보가 있는지 확인
            if (carLifeSessionStr !== undefined && carLifeSessionStr !== null && carLifeSessionStr !== '') {
                //세션 제거
                sessionStorage.removeItem("carLifeSafeSession");
            }
        }
    </script>
    <!-- Google 리마케팅 태그 코드 -->
    <script type="text/javascript">
        /* <![CDATA[ */
        //var google_conversion_id = 949402874;
        //var google_custom_params = window.google_tag_params;
        //var google_remarketing_only = true;
        /* ]]> */
    </script>
    <!-- <script type="text/javascript" src="https://www.googleadservices.com/pagead/conversion.js"></script>
<noscript>
	<div style="display:inline;">
		<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/949402874/?value=0&amp;guid=ON&amp;script=0"/>
	</div>
</noscript> -->
    <body>
        <!-- HEADER s -->
        <!-- script :: 전체메뉴 -->
        <script>
            var showBtn = document.querySelector('.btn-ctr-menu');
            var hideBtn = document.querySelector('.btn-ctr-close');
            var allMenuall = document.querySelector('.draw-toggle-wrap-all-ver2');
            var navTit = document.querySelector('.header .header-nav .inner .nav-wrap');
            var allWrap = document.querySelector('html');
            function toggleAll() {
                showBtn.classList.toggle('toggle-btn');
                if (showBtn.classList.contains('toggle-btn')) {
                    allMenuall.classList.add('nav-show');
                    navTit.classList.add('off');
                    allWrap.classList.add('over-hd');
                } else {
                    allMenuall.classList.remove('nav-show');
                    navTit.classList.remove('off');
                    allWrap.classList.remove('over-hd');
                }
            }
            var burger = $('.menu-trigger');
            burger.each(function (index) {
                var $this = $(this);
                $this.on('click', function (e) {
                    e.preventDefault();
                    $(this).toggleClass('active');
                })
            });
            if ($('.layer-gnb-bn').length) {
                $('.draw-toggle-wrap').addClass('banner');
            }
        </script>
        <!-- // script :: 전체메뉴 -->
        <!-- HEADER e //-->
        <!-- BODY s -->
        <!--container 컴포넌트-->
        <main id="wrap">
            <div class="path-wrap">
                <div class="cover">
                    <div class="inner">
                        <ul>
                            <li>
                                <a>
                                    <span class="icon home">HOME</span>
                                </a>
                            </li>
                            <li>
                                <a>마이페이지</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="mypage-container">
                <div class="inner-type2">
                    <!-- 페이지 타이틀 -->
                    <section class="section-headline">
                        <h2 class="tit">마이페이지</h2>
                        <p>롯데렌터카 회원을 위한 다양한 혜택이 준비되어 있습니다.</p>
                    </section>
                    <!-- //페이지 타이틀 -->
                    <div class="mypage-header">
                        <div class="myInfos-area">
                            <div class="box-between">
                                <h3 class="txt">
                                    <strong class="name" id='commonMemberName'>홍경영님</strong>
                                    <span>일반회원&nbsp;<button type="button" class="layer-mypage-open mr-btn"
                                            data-layer="member-rating">(총 대여횟수 0회)</button></span>
                                </h3>
                                <div class="btns">
                                    <a href="/hp/kor/myPage/license.do" class="btn-goLink arrow-r">운전면허증</a>
                                    <a href="/hp/kor/myPage/creditCard.do" class="btn-goLink arrow-r">결제카드</a>
                                </div>
                            </div>
                            <ul class="item-list">
                                <li>
                                    <span class="icon myPannel01"></span>
                                    <p>L.POINT</p>
                                    <a class="underline" id="commonLpoint">0</a>
                                </li>
                                <li>
                                    <span class="icon myPannel02"></span>
                                    <p>렌터카 포인트</p>
                                    <a href="/hp/kor/myPage/point.do" class="underline" id="myCommonRentalPoint">0</a>
                                </li>
                                <li>
                                    <span class="icon myPannel03"></span>
                                    <p>할인쿠폰</p>
                                    <a href="/hp/kor/myPage/coupon.do" class="underline"
                                        id="myCommonRentalCoupon">0장</a>
                                </li>
                                <li>
                                    <span class="icon myPannel04"></span>
                                    <p>무료이용권</p>
                                    <a href="/hp/kor/myPage/coupon.do?tab=tab_2" class="underline"
                                        id="commonMemberShipCoupon">0장</a>
                                </li>
                                <li>
                                    <span class="icon myPannel05"></span>
                                    <p>내차팔기 상담</p>
                                    <a href="/hp/kor/myPage/carSeller.do" class="underline"
                                        id="commonMyCarSellCount">0건</a>
                                </li>
                                <li>
                                    <span class="icon myPannel06"></span>
                                    <p>렌터카 상담</p>
                                    <a href="/hp/kor/myPage/rentCarConsulting.do" class="underline"
                                        id="commonRentalConsultCount">0건</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //.mypage-header -->
                    <div class="mypage-body">
                        <div class="mypage-lnb">
                            <ul>
                                <li>
                                    <a href="/hp/kor/myPage/reservation.do" data-link-area="마이페이지" data-link-name="메뉴"
                                        data-link-text="단기렌터카 예약">단기렌터카 예약</a>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/reservationMonth.do" data-link-area="마이페이지"
                                        data-link-name="메뉴" data-link-text="월간단기렌터카 예약">월간단기렌터카 예약</a>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/reservationDriver.do" data-link-area="마이페이지"
                                        data-link-name="메뉴" data-link-text="기사포함단기렌터카 예약">기사포함단기렌터카 예약 </a>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/usedCar.do">장기렌터카 계약 </a>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/rentCarConsulting.do">렌터카 상담 </a>
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/myPage/rentCarConsulting.do">일반상담 </a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/myPage/successionList.do">승계 매물 심사 내역 </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/carSeller.do">내차 팔기 상담 </a>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/point.do">포인트</a>
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/myPage/point.do">사용내역 </a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/myPage/pointTransition.do">포인트 전환 신청 </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/coupon.do">할인쿠폰 및 무료이용권 </a>
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/myPage/coupon.do">할인쿠폰 </a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/myPage/coupon.do?tab=tab_2">무료이용권 </a>
                                        </li>
                                    </ul>
                                </li>
                                <li style="display:none">
                                    <a href="/hp/kor/myPage/referfriend.do">신차장 친구추천 활동</a>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/creditCard.do">결제카드</a>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/license.do">운전면허증</a>
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/myPage/license.do">국내</a>
                                        </li>
                                        <li><a href="/hp/kor/myPage/license.do?tab=2">국제</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/interestCar.do">나의 부가 정보</a>
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/myPage/interestCar.do">나의 관심 차종</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/myPage/mypick.do">나의 찜 차량</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/myPage/branch.do">나의 관심 지점</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a onclick="moveHelp()" target="_blank">고객센터</a>
                                </li>
                                <li>
                                    <a href="#">회원</a>
                                    <ul>
                                        <li>
                                            <button
                                                onClick="_rentMembers.page.href('/myPage/member/kcb.do?type=modify')">회원정보
                                                변경</button>
                                        </li>
                                        <li>
                                            <a
                                                href="javascript:_rentMembers.page.href('/myPage/member/kcb.do?type=password');">비밀번호
                                                변경</a>
                                        </li>
                                        <li>
                                            <a
                                                href="javascript:_rentMembers.page.href('/myPage/member/leave.do');">회원탈퇴</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/lottefamily.do">롯데그룹사 임직원 인증</a>
                                </li>
                            </ul>
                        </div>
                        <!-- //.mypage-lnb -->
                        <!-- //.mypage-body-cont -->
                        <div class="mypage-body-cont">
                            <div class="mypage-body-cont-header">
                                <div class="tit-area">
                                    <h4 class="tit">렌터카 상담</h4>
                                </div>
                            </div>
                            <div class="count-section">
                                <p>나의 상담 총 <span class="txt-color-red">0건</span>(30일 이내)</p>
                                <P class="sub-txt">요청하신 상담은 48시간 이내 전화로 상세하게 안내 드리겠습니다.(주말, 공휴일 제외)</P>
                            </div>
                            <div class="infos-section">
                                <div class="infos-section">
                                    <div class="result-none">
                                        렌트카 상담 내역이 없습니다.
                                    </div>
                                </div>
                                <div class="hotDeal-section">
                                    <div class="hotDeal-header">
                                        <div class="alert-area">
                                            <h4>
                                                <img src="/lrhp/pc/images/@temp-bn-hotDeal-title.png"
                                                    alt="누려보세요. 이달의 핫딜 찬스">
                                            </h4>
                                            <div class="deadline timeSalesTimer">
                                            </div>
                                        </div>
                                        <a href="/hp/kor/usedCar/longTerm/usedCarList.do" class="btn-goLink">
                                            전체보기
                                            <span class="arrow-r"></span>
                                        </a>
                                    </div>
                                    <div class="hotDeal-cont">
                                        <div class="swiper-container hotdeal-slide-cont hotDealswiper">
                                            <ul class="swiper-wrapper" id='timeSalesInfoDiv'>
                                            </ul>
                                            <!-- navigation buttons  -->
                                            <div class="pagination-wrap">
                                                <div class="hotDealswiper-button-prev">
                                                    <button type="button" class="btn btn-paging-prev">이전 페이지로
                                                        이동</button>
                                                </div>
                                                <div class="pagination-list"></div>
                                                <div class="hotDealswiper-button-next">
                                                    <button type="button" class="btn btn-paging-next">다음 페이지로
                                                        이동</button>
                                                </div>
                                            </div>
                                            <!-- // navigation buttons  -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <ul class="lst dot">
                                <li>등록하신 상담 이력은 30일간 제공됩니다.</li>
                            </ul>
                        </div>
                        <script
                            src="/lrhp/js/web/hp/pc/myPage/rentCarConsulting.js?ver=b9b46bb8-f1f2-4230-bca9-d880be3e7854"
                            type="text/javascript"></script>
                        <!-- //.mypage-body-cont -->
                    </div>
                    <!-- //.mypage-body -->
                </div>
            </div>
        </main>
        <!--//container 컴포넌트-->
        <!-- 회원정보 진입시 비밀버호 재확인 팝업 레이어 -->
        <div class="layer-wrap layer-popup layer-mypage layer-password-reenter-info mypage-popup-entry">
            <div class="pop-inner">
                <div class="popup-top">
                    <h4>비밀번호 재입력</h4>
                    <button type="button" class="layer-popup-close" data-layer="layer-password-reenter-info">
                        <span class="icon pop-close">닫기 버튼</span>
                    </button>
                </div>
                <div class="popup-cont layer-iscroll">
                    <div class="iscroll-in">
                        <div class="icon-guide-area">
                            <div class="icon-guide">
                                <span class="icon talk3"></span>
                                <p>회원정보 변경을 위해 비밀번호를 재입력 해주세요.</p>
                            </div>
                        </div>
                        <div class="form-cont between-type">
                            <div class="form-row">
                                <div class="input-cont">
                                    <div class="inputT">
                                        <input type="password" id="mypage-popup-input" name="mypage-popup-input"
                                            placeholder="비밀번호를 입력해주세요." minlength="8" maxlength="15">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="popup-cont-bot-btns">
                        <button type="button" class="btn btn-white layer-popup-close cancel"
                            data-layer="layer-asianaMileageForm">취소</button>
                        <button type="button" class="btn btn-red layer-popup-close next"
                            data-layer="layer-asianaMileageForm">확인</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- 회원등급 레이어 210525 -->
        <div class="layer-wrap layer-popup layer-mypage member-rating">
            <div class="pop-inner">
                <div class="popup-top">
                    <h4>회원등급</h4>
                    <button type="button" class="layer-popup-close" data-layer="member-rating">
                        <span class="icon pop-close">닫기 버튼</span></button>
                </div>
                <div class="popup-cont">
                    <div class="top-txt">
                        <em>홍경영님</em>의 롯데렌터카 회원 등급은<br>
                        <em class="gray">일반회원</em> 입니다.
                    </div>
                    <!-- 회원등급 :: step1 ~ 3 클래스 -->
                    <div class="graph" id="gradeStepTarget">
                        <ul class="rating">
                            <li class="mb_n"></li>
                            <li class="mb_g"></li>
                            <li class="mb_dg"></li>
                        </ul>
                        <span class="gauge"></span>
                    </div>
                    <div class="bottom-txt" id="bottomTxtTarget">
                        <!-- <p class="txt1">앞으로 <em class="red" id="emCount">4회</em>만 더 대여하면 <em class="gold" id="emGrade">골드 회원</em></p>
					<p class="txt2">(혜택은 8회부터 적용)</p> -->
                    </div>
                    <ul style="font-size: 13px;">
                        <li>※ 위 정보는 고객님의 로그인 ID 기준으로 조회된 대여건수와 회원등급입니다.</li>
                        <li>※ 실제 이용하신 대여건수와 다른 경우 고객센터(1588-1230)으로 문의하시기 바랍니다.</li>
                    </ul>
                    <div class="popup-cont-bot-btns">
                        <a href="https://www.lotterentacar.net/hp/kor/reservation/shortInfo/benefits.do"
                            class="btn btn-red">회원혜택 바로가기</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- //회원등급 레이어 210525 -->
        <script>
            var _mypagePopup = (function () {
                var init = function () {
                    page.init();
                };
                var _this = null;
                var page = {
                    init: function () {
                        //
                        _this = this;
                        //
                        $(".mypage-popup-entry button.cancel").on("click", _this.click.cancel);
                        $(".mypage-popup-entry button.next").on("click", _this.click.next);
                        //
                        // enter key check
                        $(".mypage-popup-entry input[name=mypage-popup-input]").on("keyup", _this.checkEnterKey);
                    },
                    checkEnterKey: function (key) {
                        var EnterKey = 13;
                        if (key.keyCode == EnterKey) {
                            var pw = _this.get.password();
                            if ($(this).attr('name') == 'mypage-popup-input' && pw.length > 0) {
                                _this.process.passwordCheck();
                            }
                        }
                    },
                    click: {
                        cancel: function () {
                            _this.reset();
                        },
                        next: function () {
                            _this.process.passwordCheck();
                        }
                    },
                    get: {
                        password: function () {
                            var retVal = $(".mypage-popup-entry input[name=mypage-popup-input]").val();
                            retVal = retVal.replace(/(\s*)/g, '');
                            return retVal;
                        }
                    },
                    set: {
                        password: function (p) {
                            $(".mypage-popup-entry input[name=mypage-popup-input]").val(p);
                        }
                    },
                    process: {
                        passwordCheck: function () {
                            var pwd = _this.get.password();
                            var retVal = _api.rentcar.pwdCheck({
                                I_NAME4: pwd
                            });
                            if (retVal.responseCode == "0") {
                                _this.nextStep();
                                _this.reset();
                            } else {
                                var msg = "비밀번호가 일치하지 않습니다.";
                                alert(msg);
                                _this.reset();
                            }
                        }
                    },
                    nextStep: function () {
                        var key = CryptoJS.SHA256("116394668").toString();
                        _rentMembers.page.submit('/myPage/member/modify.do', {
                            key: key,
                            I_NAME4: _this.get.password()	//pw
                        });
                    },
                    reset: function () {
                        _this.set.password("");
                    }
                };
                return {
                    init: init,
                    page: page
                };
            }());
            function handleMemberRatingLayerPopup() {
                var rentCount = Number("0");
                var html = "";
                if (rentCount < 7) {
                    // 일반회원
                    var normalMemberMaxCount = 7;
                    html += "<p class='txt1'>앞으로";
                    html += "	<em class='red'>" + String(normalMemberMaxCount - rentCount) + "회</em>만 더 대여하면";
                    html += "	<em class='gold'>골드 회원</em>";
                    html += "</p>";
                    html += "<p class='txt2'>(혜택은 8회부터 적용)</p>";
                    $("#gradeStepTarget").addClass("step1");
                } else if (rentCount >= 7 && rentCount < 40) {
                    // 골드회원
                    var goldMemberMaxCount = 40;
                    html += "<p class='txt1'>앞으로";
                    html += "	<em class='red'>" + String(goldMemberMaxCount - rentCount) + "회</em>만 더 대여하면";
                    html += "	<em class='gold'>더블골드 회원</em>";
                    html += "</p>";
                    html += "<p class='txt2'>(혜택은 41회부터 적용)</p>";
                    $("#gradeStepTarget").addClass("step2");
                } else {
                    // 더블골드회원
                    html += "<p class='txt1'>더블골드의 자세한 내용은 회원혜택을 확인 해 주세요.</p>";
                    $("#gradeStepTarget").addClass("step3");
                }
                $("#bottomTxtTarget").append(html);
            }
            $(function () {
                _mypagePopup.init();
                handleMemberRatingLayerPopup();
            });
        </script>
        <!-- 마이페이지 공통 스크립트 -->
        <script>
            $(document).ready(function () {
                myMainController.init();
                //마이페이지 메인을 제외하고 스크롤 위치를 조정한다
                window.onpageshow = function (event) {
                    var offset = $(".mypage-body-cont").offset();
                    $('html, body').animate({ scrollTop: offset.top }, 0);
                }
            });
            function moveHelp() {
                window.open("https://chatbot.lotterentacar.net/chat/new/P2kMtoEGcgLBN7hlr?inChannelId=LSM");
            }
            function showAlert(data) {
                var msg = "";
                if (data == "change") {
                    msg += "회원정보변경을 ";
                } else {
                    msg += "회원탈퇴를 ";
                }
                msg += "위해 고객센터(1588-1230)로 문의바랍니다.";
                alert(msg);
            }
            var myMainController = $.extend(new $.CommonObj(), {
                eventInit: function () {
                    console.log("myPageMain start");
                    //맴버쉽 쿠폰 클릭 시 이벤트======================================
                    // 			$('#commonMemberShipCoupon').on('click', function(e) {
                    // 				e.preventDefault();
                    // 				var domain = __PROP_GLOBALS_MEMBERSHIP_DOMAIN;
                    // //				var domain = "https://managerdev.lotterentacar.net:1443";
                    // 				var goUrl = "/benefit/coupon.do";
                    // 				_rentMembers.native.goWithAuth(domain, domain + goUrl, 'Y');
                    // 			});
                    //해당 고객의 lpoint를 가져온다.
                    getMemberLpoint();
                    //렌터카 포인트 조회
                    getMyRentalPointCount();
                    //렌터카 쿠폰 조회
                    getMyRentalCouponCount();
                    //멤버쉽 쿠폰 조회
                    getMemberShipCouponCount();
                    //고객 상담내역 조회
                    getConsultingList();
                    //lpoint 클릭 시 링크 이동 이벤트
                    $('#commonLpoint').on('click', function () {
                        /*
                        //lpoint로 이동한다
                        var domain = "https://www.lpoint.com";
        //				var domain = "https://managerdev.lotterentacar.net:1443";
                        var goUrl = "/app/mypage/LHMA100100.do";
                        _rentMembers.native.goWithAuth(domain, domain + goUrl, 'Y');
                        */
                        window.open("https://www.lpoint.com/app/login/LHLA100100.do");
                    });
                }
            });
            //L.POINT 조회
            function getMemberLpoint() {
                var formData = {};
                formData.custNo = String('1106099958');
                myMainController.callAjax(myMainController, "lpoint/checkLpoint.do", formData, {
                    async: true,
                    contextPath: '/',
                    useProgress: false,
                    success: function (data) {
                        console.log("data", data);
                        if (data.point != undefined && data.point != null) {
                            var lpoint = data.point.toLocaleString();
                            $('#commonLpoint').html(lpoint);
                        }
                    },
                    error: function (err) {
                        console.log('errorr-------------------------');
                        console.log(err);
                        $('.lPoint').html('0');
                    }
                });//end of ajax
            }
            //렌터카 포인트 조회
            function getMyRentalPointCount() {
                var formData = {};
                myMainController.callAjax(myMainController, "/" + __LANG + "/myPage/commonRentalPoint.json", formData, {
                    async: true,
                    useProgress: false,
                    success: function (data) {
                        if (data.lottePoint !== undefined && data.lottePoint.point !== undefined) {
                            const point = parseInt(data.lottePoint.point);
                            var reg = /(^[+-]?\d+)(\d{3})/;
                            var regPoint = (point + '');
                            while (reg.test(regPoint)) regPoint = regPoint.replace(reg, '$1' + ',' + '$2');
                            $('#myCommonRentalPoint').html(regPoint);
                        }
                    },
                    error: function (err) {
                        console.log('errorr-------------------------');
                        console.log(err);
                    }
                });//end of ajax
            }
            //렌터카 쿠폰 조회
            function getMyRentalCouponCount() {
                var formData = {};
                myMainController.callAjax(myMainController, "/" + __LANG + "/myPage/commonRentalCouponList.json", formData, {
                    async: true,
                    useProgress: false,
                    success: function (data) {
                        if (data.lotteCouponCount !== undefined) {
                            $('#myCommonRentalCoupon').html(data.lotteCouponCount + '장');
                        }
                    },
                    error: function (err) {
                        console.log('errorr-------------------------');
                        console.log(err);
                    }
                });//end of ajax
            }
            //무료 이용권 조회
            function getMemberShipCouponCount() {
                var formData = {};
                myMainController.callAjax(myMainController, "/" + __LANG + "/myPage/commonFreeCouponList.json", formData, {
                    async: true,
                    useProgress: false,
                    success: function (data) {
                        if (data.freeCouponCount !== undefined) {
                            $('#commonMemberShipCoupon').html(data.freeCouponCount + '장');
                        }
                    },
                    error: function (err) {
                        console.log('errorr-------------------------');
                        console.log(err);
                    }
                });//end of ajax
            }
            //고객 상담내역 호출
            function getConsultingList() {
                var formData = {};
                myMainController.callAjax(myMainController, "/" + __LANG + "/myPage/commonConsultCount.json", formData, {
                    async: true,
                    useProgress: false,
                    success: function (data) {
                        $('#commonMyCarSellCount').html(data.commonMyCarSellCount + '건');
                        $('#commonRentalConsultCount').html(data.commonRentalConsultCount + '건');
                    },
                    error: function (err) {
                        console.log('errorr-------------------------');
                        console.log(err);
                    }
                });//end of ajax
            }
        </script>
        <!-- BODY e //-->
        <!-- 24.01.12 :: 등록증 레이어-->
        <div class="layer-wrap layer-infos layer-popup layer-certificate">
            <div class="pop-inner">
                <div class="popup-top">
                    <h4>대출성 금융상품판매대리ㆍ중개업자등록증</h4>
                    <button type="button" class="layer-popup-close" data-layer="layer-certificate"><span
                            class="icon pop-close">닫기 버튼</span></button>
                </div>
                <div class="popup-cont layer-iscroll">
                    <div>
                        <img src="/lrhp/pc/images/img-certificate.jpg" alt="">
                    </div>
                    <div class="popup-cont-bot-btn">
                        <button type="button" class="btn btn-white layer-popup-close"
                            data-layer="layer-certificate">확인</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- // 24.01.12 :: 등록증 레이어-->
        <!-- AI 챗봇 링크로 변경 처리 -->
        <button
            style="position: fixed; bottom: 20px; right: 20px; width: 130px; height: 50px; border-radius: 30px; border: 0; background: #000; color: #fff; font-size: 13px; display: flex; align-items: center; justify-content: center; gap: 10px; z-index:10;"
            onclick="startChatbot()">
            <img src="/lrhp/pc/images/icon_talk.png" alt="챗봇상담" style="width:30px;" data-link-area="공통"
                data-link-name="하단" data-link-text="챗봇상담" />챗봇상담
        </button>
        <style>
            #launcher {
                display: none;
            }
        </style>
        <script>
            $(document).ready(function () {
                $('#questionBtn').on('click', function () {
                    var func;
                    for (var i in frames) {
                        var frame = frames[i];
                        try {
                            if (frame.document.getElementsByClassName('u-userLauncherColor').length > 0) {
                                console.log(frame)
                                console.log(frame.frameElement)
                                func = frame.document.getElementsByClassName('u-userLauncherColor')[0].click();
                            }
                        } catch (e) {
                            continue;
                        }
                    }
                    console.log('func', func);
                    $('#11center').click(func);
                    $('#11center').click();
                });
            });
        </script>
        <script type="text/javascript">
            function startChatbot() {
                // 브라우저 확인
                var browserName = window.navigator.userAgent.toLowerCase();
                if (browserName.indexOf("trident") > -1) {
                    if (window.confirm('챗봇 상담 기능은 엣지 또는 크롬에서만 제공되며, 확인버튼을 누르시면 자동으로 연결됩니다.')) {
                        window.location = 'microsoft-edge:https://chatbot.lotterentacar.net/chat/new/P2kMtoEGcgLBN7hlr?inChannelId=LSW';
                    }
                } else {
                    var width = window.screen.availWidth;
                    width = width - 480;
                    var height = window.screen.availHeight;
                    height = height - 480;
                    window.open('https://chatbot.lotterentacar.net/chat/new/P2kMtoEGcgLBN7hlr?inChannelId=LSW', '_blank ', 'toolbar=no, menubar=no, scrollbars=no, resizable=yes, width=480, height=700, top=' + width + ', left=' + height + '\'');
                }
            }
        </script>
        <!-- pc TOP 버튼 시작  ----------------------------------------------------------->
        <div class="fixedRight noLauncher">
            <button type="button" class="btn btn-goTop" data-link-area="공통" data-link-name="하단"
                data-link-text="TOP">탑으로</button>
        </div>
        <!-- pc TOP 버튼 종료  ----------------------------------------------------------->
        <!-- 무단이메일 수집 거부 레이어 -->
        <div class="layer-wrap layer-popup layer-refuse-email">
            <div class="pop-inner">
                <div class="popup-top">
                    <h4>이메일 무단 수집 거부</h4>
                    <button type="button" class="layer-popup-close" data-layer="layer-calculator"><span
                            class="icon pop-close">닫기 버튼</span></button>
                </div>
                <div class="popup-cont layer-iscroll">
                    <div class="iscroll-in">
                        <div class="guide-area">
                            <strong>이메일 주소 무단 수집을 거부합니다!</strong>
                            <p>본 웹사이트에 게시된 이메일 주소가 전자우편 수집프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며 이를 위반시 정보통신망법에 의해
                                형사상 처벌됨을 유의하시기 바랍니다.</p>
                        </div>
                    </div>
                    <div class="popup-cont-bot-btn">
                        <button type="button" class="btn btn-white layer-popup-close"
                            data-layer="layer-calculator">확인</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- //무단이메일 수집 거부 레이어 -->
        <!-- FOOTER e //-->
    </body>
    <!--bg-dimmed 컴포넌트-->
    <div class="bg-dimmed"></div> <!-- 딤(Dim)처리 배경 -->
    <!--//bg-dimmed 컴포넌트-->
    <!--floating_zone 컴포넌트-->
    <aside class="floating_zone" style="display: none;">
        플로팅 사이드 바영역
    </aside>
    <!--//floating_zone 컴포넌트-->
    <script>jQuery.loadUnBlock()</script>
    </html>
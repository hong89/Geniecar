<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>제주 오토하우스</title>
    </head>
    <body>
        <h1>제주 오토하우스</h1>
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
            <meta name="title" lang="ko" content="제주 오토하우스 | 롯데렌터카 공식 웹사이트">
            <meta name="description" lang="ko"
                content="제주도 여행할 땐 국내 최대 규모의 프리미엄 렌터카 하우스인 제주오토하우스! 공항에서 약 2km, 전용 셔틀버스로 10분 거리 위치. 편리한 차량 인수, 셀프체크인과 전동킥보드 등 특별 서비스까지!">
            <meta name="og:url" content="https://www.lotterentacar.net/hp/kor/carLife/jejuAuto.do">
            <meta name="og:title" lang="ko" content="제주 오토하우스 | 롯데렌터카 공식 웹사이트">
            <meta name="og:description" lang="ko"
                content="제주도 여행할 땐 국내 최대 규모의 프리미엄 렌터카 하우스인 제주오토하우스! 공항에서 약 2km, 전용 셔틀버스로 10분 거리 위치. 편리한 차량 인수, 셀프체크인과 전동킥보드 등 특별 서비스까지!">
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
            <link rel="stylesheet" href="/lrhp/pc/styles/reset.css?cb=44ca0afa-661a-4eb0-812c-e438997f708e">
            <link rel="stylesheet" href="/lrhp/pc/styles/layout.css?cb=44ca0afa-661a-4eb0-812c-e438997f708e">
            <link rel="stylesheet" href="/lrhp/pc/styles/modules.css?cb=44ca0afa-661a-4eb0-812c-e438997f708e">
            <link rel="stylesheet" href="/lrhp/pc/styles/contents.css?cb=44ca0afa-661a-4eb0-812c-e438997f708e">
            <link rel="stylesheet"
                href="/lrhp/pc/styles/jquery.mCustomScrollbar.css?cb=44ca0afa-661a-4eb0-812c-e438997f708e">
            <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
            <script src="/lrhp/js/lib/html5shiv.js"></script>
            <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
            <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
            <script src="/lrhp/js/lib/clipboard.min.js"></script>
            <script src="/publish/js/md5.js?cb=44ca0afa-661a-4eb0-812c-e438997f708e"></script>
            <script src="/publish/js/cmmnUtil.js?cb=44ca0afa-661a-4eb0-812c-e438997f708e"></script>
            <!-- SSO 고도화 -->
            <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
            <script src='https://members.lpoint.com/api/js/json2.js'></script>
            <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
            <script src="/lrhp/js/sso/moment.js"></script>
            <script src="/lrhp/js/sso/odm-common.js"></script>
            <script src="/lrhp/js/sso/sso.rental.js?cb=44ca0afa-661a-4eb0-812c-e438997f708e"></script>
            <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=44ca0afa-661a-4eb0-812c-e438997f708e"></script>
            <script src="/lrhp/js/sso/api.rentcar.js?cb=44ca0afa-661a-4eb0-812c-e438997f708e"></script>
            <!-- Social Login -->
            <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
            <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
            <script src="/lrhp/js/social/social.rentacar.js?cb=44ca0afa-661a-4eb0-812c-e438997f708e"></script>
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
            <script src="/lrhp/js/common/gfn_util.js?cb=44ca0afa-661a-4eb0-812c-e438997f708e"></script>
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
            <script>(function (a, s, y, n, c, h, i, d, e) {
                    s.className += ' ' + y; h.start = 1 * new Date;
                    h.end = i = function () { s.className = s.className.replace(RegExp(' ?' + y), '') };
                    (a[n] = a[n] || []).hide = h; setTimeout(function () { i(); h.end = null }, c); h.timeout = c;
                })(window, document.documentElement, 'async-hide', 'dataLayer', 4000,
                    { 'GTM-WMH33T2': true });</script>
            <!-- Modified Analytics tracking code with Optimize plugin -->
            <script>
                (function (i, s, o, g, r, a, m) {
                    i['GoogleAnalyticsObject'] = r;
                    i[r] = i[r] || function () {
                        (i[r].q = i[r].q || []).push(arguments)
                    }, i[r].l = 1 * new Date();
                    a = s.createElement(o), m = s.getElementsByTagName(o)[0];
                    a.async = 1;
                    a.src = g;
                    m.parentNode.insertBefore(a, m)
                })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
                ga('create', 'UA-36855540-1', 'auto');
                ga('require', 'GTM-WMH33T2');
                ga('require', 'displayfeatures');
                ga('send', 'pageview');
            </script>
            <!-- Google Tag Manager -->
            <script>(function (w, d, s, l, i) {
                    w[l] = w[l] || []; w[l].push({
                        'gtm.start':
                            new Date().getTime(), event: 'gtm.js'
                    }); var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                            'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
                })(window, document, 'script', 'dataLayer', 'GTM-MZZKGR3');</script>
            <!-- End Google Tag Manager -->
            <!-- Facebook Pixel Code 210511 ver -->
            <script>
                !function (f, b, e, v, n, t, s) {
                    if (f.fbq) return;
                    n = f.fbq = function () {
                        n.callMethod ?
                            n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                    };
                    if (!f._fbq) f._fbq = n;
                    n.push = n;
                    n.loaded = !0;
                    n.version = '2.0';
                    n.queue = [];
                    t = b.createElement(e);
                    t.async = !0;
                    t.src = v;
                    s = b.getElementsByTagName(e)[0];
                    s.parentNode.insertBefore(t, s)
                }(window, document, 'script', 'https://connect.facebook.net/en_US/fbevents.js');
                fbq('init', '1001781240353375');
                fbq('track', 'PageView');
            </script>
            <noscript>
                <img height="1" width="1"
                    src="https://www.facebook.com/tr?id=1001781240353375&ev=PageView&noscript=1" />
            </noscript>
            <!-- End Facebook Pixel Code -->
            <!-- Adobe Analytics (temp)-->
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
            <script src="https://assets.adobedtm.com/0d3d26a8f9f8/8ca38b3d4546/launch-eb7bb6609f87.min.js"
                async></script>
            <script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=44ca0afa-661a-4eb0-812c-e438997f708e"></script>
            <!-- Adobe Analytics End -->
            <title>
                롯데렌터카
            </title>
            <!-- 202207 Global site tag (gtag.js) - Google Ads: 10950152766 -->
            <!-- 202208 스크립트 제외처리(마컴팀 이지원대리님 요청)
	<script async src="https://www.googletagmanager.com/gtag/js?id=AW-10950152766"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
	
		gtag('config', 'AW-10950152766');
	</script>
	 -->
            <!-- 202309 Google tag (gtag.js) 추가(마케팅팀 박현경 매니저님 요청) -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=AW-11174693828"></script>
            <script>
                window.dataLayer = window.dataLayer || [];
                function gtag() { dataLayer.push(arguments); }
                gtag('js', new Date());
                gtag('config', 'AW-11174693828');
            </script>
        </head>
        <div id="loding_div"></div>
        <script>jQuery.loadBlock();</script>
        <script>
            var gv_SnsText = document.title;
            /* L.POINT Member Start */
            function lpointTopJoin() {
                var returnurl = "https://www.lotterentacar.net";
                _rentMembers.api.join(returnurl);
            }
            function shareSns(type) {
                // 타입별 url 설정
                var strURL = document.location.href;
                // updateForm일 때 contentSeq값을 파라미터에 넘겨서 공유
                if ((strURL.indexOf("/event/updateForm") > -1) && (strURL.indexOf("contSeq=") < 0)) {
                    strURL += "?contSeq=" + $("#contSeq").val() + "&mnCd=FN0501";
                }
                if (type == "facebook") {
                    var popOption = "width=640, height=380, left=" + (screen.width - 640) / 2 + ",top=" + (screen.height - 380) / 2 + ",location=no,menubar=no,status=no,scrollbars=no,resizable=no,titlebar=no,toolbar=no";
                    var url = "https://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(strURL);
                } else if (type == "twitter") {
                    var popOption = "width=680, height=400, resizable=no, scrollbars=no, status=no;";
                    var content = "대한민국 No.1 롯데렌터카 ";
                    var url = "http://twitter.com/share?text=" + content + "&url=" + encodeURIComponent(strURL);
                } else if (type == "kakaostory") {
                    var popOption = "width=640, height=460, resizable=no, scrollbars=no, status=no;";
                    var url = "https://story.kakao.com/share?url=" + encodeURIComponent(strURL);
                } else if (type == "band") {
                    var popOption = "width=640, height=460, resizable=no, scrollbars=no, status=no;";
                    var url = "http://band.us/plugin/share?body=" + encodeURIComponent(gv_SnsText + "  " + strURL) + "&route=" + encodeURIComponent(strURL);
                }
                var fromLink = "false";
                if (fromLink == "true") {
                    var fullUrl = "toapp:::appviewmove:::openweb:::" + encodeURIComponent(url);
                    document.location = fullUrl;
                } else {
                    var wp = window.open(url, type, popOption);
                    if (wp) {
                        wp.focus();
                    }
                }
            }
            function clickKakao() {
                ga('send', 'event', '국문 PC메인_플로팅', '문의클릭', '카카오톡상담');
                _satellite.track("kakao_consult", { category: "신차장프로모션", action: "플로팅클릭", label: "카카오톡상담" });
            }
        </script>
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
            <script type="text/javascript">
                $(function () {
                    var _rentHeader = (function () {
                        var init = function () {
                            ;
                        };
                        var setSocialLoginArea = function () {
                            var url = "/social/login/area.do";
                            var setArea = function (show) {
                                if (show == "Y") {
                                    $(".sns-login-area").show();
                                } else {
                                    $(".sns-login-area").hide();
                                }
                            };
                            $.ajax({
                                type: "post",
                                url: url,
                                //data : null,
                                dataType: "json",
                                success: function (data) {
                                    setArea(data.isShow);
                                },
                                error: function (e) {
                                    setArea("N");
                                }
                            });
                        };
                        var clickLogout = function () {
                            _rentMembers.api.logout('');
                        };
                        var clickJoinMember = function () {
                            var returnurl = window.location.href;
                            _rentMembers.api.join(returnurl);
                        };
                        return {
                            init: init
                        };
                    }());
                    //sns login init
                    _rentSns.init({
                        facebook: '346154819769012',
                        kakao: 'b8f45e2ddbee587d72912fe7c427ea59',
                        naver: 'DWxPq3etFwV3jFy7ZDA6',
                        language: 'kor'
                    });
                    //sns callback init
                    _rentSns.callback('');
                    //init
                    _rentHeader.init();
                    //
                    _rentMembers.init({
                        clientAkInfo: '{"clntEncKey":"0wl2/h6l3bAND79R","flwNo":"qm8louDn6e","domain":"https://members.lpoint.com"}' || '',
                        accessToken: '' || '',
                        siteNo: '1502',
                        channelCd: '0',
                        loginStatus: ('' || '') == '' ? false : true,
                        rnwTkn: '',
                        ssoTkn: '',
                        goUrl: '',
                        language: 'kor'	//kor or eng
                    });
                    //로그인 시 렌터카포인트, 렌터카쿠폰 조회
                    if ("true" === "false") {
                        headerController.init();
                    }
                    if (window.location.href.indexOf("/hp/kor/main/index.do") == -1) {
                        $(".header-nav").addClass("header-nav-line");
                    }
                    console.log('_dl2', _dl);
                });
                var headerController = $.extend(new $.CommonObj(), {
                    eventInit: function () {
                        console.log("header start");
                        //렌터카 포인트 조회
                        getRentalPointCount();
                        //렌터카 쿠폰 조회
                        getRentalCouponCount();
                    }
                });
                //렌터카 포인트 조회
                function getRentalPointCount() {
                    var formData = {};
                    headerController.callAjax(headerController, "/" + __LANG + "/myPage/commonRentalPoint.json", formData, {
                        async: true,
                        useProgress: false,
                        success: function (data) {
                            if (data.lottePoint !== undefined && data.lottePoint.point !== undefined) {
                                const point = parseInt(data.lottePoint.point);
                                var reg = /(^[+-]?\d+)(\d{3})/;
                                var regPoint = (point + '');
                                while (reg.test(regPoint)) regPoint = regPoint.replace(reg, '$1' + ',' + '$2');
                                $('#commonRentalPoint').html(regPoint);
                            }
                        },
                        error: function (err) {
                            console.log('errorr-------------------------');
                            console.log(err);
                        }
                    });//end of ajax
                }
                //렌터카 쿠폰 조회
                function getRentalCouponCount() {
                    var formData = {};
                    headerController.callAjax(headerController, "/" + __LANG + "/myPage/commonRentalCouponList.json", formData, {
                        async: true,
                        useProgress: false,
                        success: function (data) {
                            if (data.lotteCouponCount !== undefined) {
                                $('.commonRentalCoupon').html(data.lotteCouponCount + '장');
                            }
                        },
                        error: function (err) {
                            console.log('errorr-------------------------');
                            console.log(err);
                        }
                    });//end of ajax
                }
                //Adobe Analytics Tagging
                //2022.05.31 ibank.
                var aa_mem_no = '';
                var aa_lpoint = '';
                var aa_sns = '';
                if (aa_mem_no != '' || aa_lpoint != '' || aa_sns != '') {
                    _dl.pageInfo.login_status = 'Y';
                }
                if (aa_mem_no != '') {
                    _dl.pageInfo.login_type = 'member';
                }
                if (aa_sns != '') {
                    _dl.pageInfo.login_type = aa_sns;
                }
                _dl.userInfo.user_number = aa_mem_no;
                if (aa_mem_no != '') {
                    _dl.userInfo.user_type = '회원';
                } else {
                    _dl.userInfo.user_type = '비회원';
                }
                //End Adobe Analytics Tagging
                /////////////////////////////
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
                                    <a>CAR뮤니티</a>
                                </li>
                                <li>
                                    <a>제주오토하우스</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <style>
                    .jeju-auto-list {
                        justify-content: left !important;
                        gap: 12px;
                    }
                    .jeju-auto-list>li {
                        margin-top: 20px !important
                    }
                </style>
                <!-- 제주오토하우스 -->
                <div class="carLife-container auto-container">
                    <div class="inner-type2">
                        <!-- 페이지 타이틀 -->
                        <section class="section-headline">
                            <h1 class="tit">제주오토하우스</h1>
                            <p class="txt">제주여행! 롯데렌터카로 시작하세요</p>
                        </section>
                        <!-- //페이지 타이틀 -->
                        <div class="grey-box between-type">
                            <p>
                                <span class="icon time2"></span><strong>운영시간 </strong> 06:00 ~ 23:00
                                (평일/주말 동일, 연중무휴)
                            </p>
                            <div>
                                <span class="icon date2"></span> <a href="/hp/kor/reservation/index.do?areaFlag=6"
                                    class="underline"> 제주렌터카 예약하기 </a>
                            </div>
                        </div>
                        <div class="section-explain">
                            <div class="explain-header">
                                <h2 class="tit-size-big">Why 제주오토하우스</h2>
                            </div>
                            <div class="explain-cont">
                                <ul class="img-list box-between">
                                    <li>
                                        <div class="item">
                                            <div class="img-box">
                                                <img src="/lrhp/pc/images/@temp-JejuAutoHouse-img01.png" alt="">
                                            </div>
                                            <div class="cover">
                                                <p class="txt">국내 최대 규모 프리미엄 렌터카 하우스</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item">
                                            <div class="img-box">
                                                <img src="/lrhp/pc/images/@temp-JejuAutoHouse-img02.png" alt="">
                                            </div>
                                            <div class="cover">
                                                <p class="txt">전용 셔틀버스 운영 배차시간 약 8분</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item">
                                            <div class="img-box">
                                                <img src="/lrhp/pc/images/@temp-JejuAutoHouse-img03.png" alt="">
                                            </div>
                                            <div class="cover">
                                                <p class="txt">아이 안전에는 프리미엄 카시트 옵션</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="section-explain">
                            <div class="explain-header">
                                <h2 class="tit-size-big">제주오토하우스를 이용해야 하는 이유</h2>
                            </div>
                            <div class="explain-cont">
                                <ul class="multi-segment-list">
                                    <li>
                                        <div class="circle">
                                            <img src="/lrhp/pc/images/icon-jeju.jpg" alt="">
                                        </div>
                                        <div class="details">
                                            <p class="tit-size-mid">제휴사 할인</p>
                                            <div class="box-between">
                                                <div class="box-between-col">
                                                    <strong class="strong-tit">제휴사 특별 할인혜택 제공</strong>
                                                    <div class="mt-10">
                                                        <button type="button"
                                                            onclick="ga('send', 'event', 'jeju_promo_gift', 'btnClick', 'page_landing');"
                                                            class="layer-mypage-open btn-auto line-red txt-bold"
                                                            data-layer="jeju-auto-layer">혜택 자세히 보기</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="circle">
                                            <span class="icon pannel13"></span>
                                        </div>
                                        <div class="details">
                                            <p class="tit-size-mid">정직한가격</p>
                                            <strong class="strong-tit">정직한 대여료 체계</strong>
                                            <ul class="lst dot">
                                                <li>차 보험료, 취등록세 없는 롯데렌터카 신차장</li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="circle">
                                            <span class="icon pannel43"></span>
                                        </div>
                                        <div class="details">
                                            <p class="tit-size-mid">안전차량</p>
                                            <div class="box-between">
                                                <div class="box-between-col">
                                                    <strong class="strong-tit">정기적인 차량 정비 및 관리 </strong>
                                                    <ul class="lst dot">
                                                        <li>24시간 365일 사고처리, 전국 차량방문 차량관리</li>
                                                    </ul>
                                                </div>
                                                <div class="box-between-col">
                                                    <strong class="strong-tit">동절기 사고예방</strong>
                                                    <ul class="lst dot">
                                                        <li>동절기 스노우체인 전 차량 무상 제공</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="circle">
                                            <span class="icon pannel44"></span>
                                        </div>
                                        <div class="details">
                                            <p class="tit-size-mid">사고 및 보험</p>
                                            <div class="box-between">
                                                <div class="box-between-col">
                                                    <strong class="strong-tit">정기적인 차량 정비 및 관리</strong>
                                                    <ul class="lst dot">
                                                        <li>사고 및 정비접수 24시간 가능</li>
                                                        <li>차량 대여 후 사고, 고장 등 발생 시 즉시 현장 출동 처리</li>
                                                    </ul>
                                                </div>
                                                <div class="box-between-col">
                                                    <strong class="strong-tit">보험조건(CDW/완전면책 가입 시)</strong>
                                                    <ul class="lst dot">
                                                        <li>면책한도 및 휴차료 없음</li>
                                                        <li>타이어 및 휠 파손 포함 (타이어 펑크비도 환불 처리)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="auto-between-box">
                            <div class="between-col">
                                <div>
                                    <span class="icon pannel46"></span>
                                    <div class="statement">
                                        <p class="tit">
                                            <span class="underline">제주의 마지막 날이 아쉽다면?</span>
                                        </p>
                                        <p class="txt">
                                            제주에서 하룻밤 더 즐기고 다음날 아침 반납 후 <br> 첫 비행기로 일상 복귀하세요.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="between-col">
                                <div>
                                    <span class="icon pannel45"></span>
                                    <div class="statement">
                                        <p class="tit">
                                            <span class="underline">제일 먼저 제주를 느끼고 싶다면?</span>
                                        </p>
                                        <p class="txt">
                                            아침 이른 비행기로 제주의 일출을 맞이하세요.<br> 6시 오픈이라 기다림 없이 대여 가능합니다.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <section class="section-explain">
                            <div class="explain-header">
                                <h2 class="tit-size-big">롯데렌터카 제주오토하우스 대여절차 안내</h2>
                            </div>
                            <div class="explain-cont">
                                <div class="box-align">
                                    <div class="video-box">
                                        <iframe width="765" height="430" src="https://www.youtube.com/embed/LvFzhEnRMHY"
                                            frameborder="0" allow="autoplay; encrypted-media"
                                            allowfullscreen=""></iframe>
                                    </div>
                                    <div class="step-infos">
                                        <ol>
                                            <li><strong class="tit">1. 제주공항 도착</strong>
                                                <p class="txt">
                                                    렌터카 하우스의 셔틀버스 승강장으로 이동하세요.<br> (공항 GATE 5 → 렌터카 주차장 1구역 중 4번)
                                                </p>
                                            </li>
                                            <li><strong class="tit">2. 버스 탑승 시 QR코드 스캔</strong>
                                                <p class="txt">
                                                    버스 탑승 전 모바일에서 미리 사전 체크인 했다면<br> 배정된 차량의 주차위치를 알림톡으로
                                                    보내드립니다.
                                                </p>
                                            </li>
                                            <li><strong class="tit">3. 셀프체크인 (사전 체크인 미완료 고객)</strong>
                                                <p class="txt">
                                                    사전 체크인을 안했다면 셀프체크인을 완료하신 후<br> 차량 준비되는 동안 지점 내에서 잠시만
                                                    대기하세요.
                                                </p>
                                            </li>
                                            <li><strong class="tit">4. 빠르게 차량 픽업해서 여행 시작!</strong>
                                                <p class="txt">
                                                    전광판에서 주차구역 확인하고 차에 탑승하신 후<br> 출구로 이동하여 운전면허증 확인을 진행합니다.
                                                </p>
                                            </li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="section-explain">
                            <div class="explain-header">
                                <h2 class="tit-size-big">제주공항 데스크 및 셔틀버스 탑승장 위치</h2>
                            </div>
                            <div class="explain-cont">
                                <div class="location-area">
                                    <div class="location">
                                        <img src="/lrhp/pc/images/img-jejuAirport-location.png" alt="">
                                    </div>
                                    <div class="infos">
                                        <div class="infos-header">
                                            <dl>
                                                <div class="infos-header-row">
                                                    <dt>제주공항 데스크 위치</dt>
                                                    <dd>
                                                        <p>2번 게이트</p>
                                                        <!-- <div class="btns">
													<button type="button" class="btn-auto line-darkgrey"
														onclick="window.open('https://blog.naver.com/lotte-rentacar/221317955657')">자세히
														보기</button>
												</div> -->
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
                                                    <ul class="lst dot txt-color-red">
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
                                                    렌터카 하우스 1번 주차구역 중 4번 에서 롯데렌터카 셔틀버스에 탑승하세요.
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
                            </div>
                        </section>
                        <div class="section-explain">
                            <div class="explain-header">
                                <h2 class="tit-size-big">제주오토하우스만의 특별한 서비스</h2>
                            </div>
                            <div class="explain-cont">
                                <ul class="multi-segment-list type-col2">
                                    <li>
                                        <div class="circle">
                                            <span class="icon pannel42"></span>
                                        </div>
                                        <div class="details">
                                            <p class="tit">셀프체크인 서비스</p>
                                            <ul class="lst dot">
                                                <li>대여 차량을 빠르게 픽업하고 출발하는 <br> 비대면 체크인 서비스입니다.
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="circle">
                                            <span class="icon jeju-auto-pannel02"></span>
                                        </div>
                                        <div class="details">
                                            <p class="tit">다양한 전기차 보유</p>
                                            <ul class="lst dot">
                                                <li>테슬라 모델S를 포함한 다양한 전기차 라인업 보유
                                                    <p class="txt-color-red">전기차 이용에 따른 충전비용은 고객 부담 입니다.</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="circle">
                                            <span class="icon jeju-auto-pannel05"></span>
                                        </div>
                                        <div class="details">
                                            <p class="tit">단체 제주여행을 위한 쏠라티 운영</p>
                                            <ul class="lst dot">
                                                <li>가족/단체여행이라면 작은 차 2대 말고 쏠라티 <br> 15인승 1대로 다 함께
                                                    여행하세요.
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <!--<li>
								<div class="circle">
									<span class="icon jeju-auto-pannel04"></span>
								</div>
								<div class="details">
									<p class="tit">특별한 경험을 위한 스페셜카</p>
									<ul class="lst dot">
										<li>제주바람을 만끽할 수 있는 수입 오픈카로 <br> 더욱 특별하게 제주의 추억을 만들어
											보세요.
										</li>
									</ul>
								</div>
							</li>-->
                                    <!-- <li>
								<div class="circle">
									<span class="icon jeju-auto-pannel03"></span>
								</div>
								<div class="details">
									<div class="details-header">
										<p class="tit">반려동물 동반여행 “펫카”</p>
										<div class="btns">
											<a href="/hp/kor/reservation/shortInfo/petcar.do"
												class="btn-auto line-darkgrey">자세히 보기</a>
										</div>
									</div>
									<ul class="lst dot">
										<li>롯데렌터카의 정비이력 제공 (일부 차종 제외)</li>
										<li>펫카 서비스 전용 옵션 (드라이빙키트, 개모차)</li>
									</ul>
								</div>
							</li> -->
                                    <li>
                                        <div class="circle">
                                            <span class="icon jeju-auto-pannel07"></span>
                                        </div>
                                        <div class="details">
                                            <p class="tit">카시트 및 유모차 옵션</p>
                                            <ul class="lst dot">
                                                <li>전문 관리업체와 제휴하여 클리닝 및 관리하며 별도로 <br> 렌탈업체 방문 없이 차량과
                                                    함께 대여/반납하세요.
                                                </li>
                                                <li>단, 제주 오토하우스에서만 대여가 가능합니다.
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="section-explain">
                            <div class="explain-header">
                                <h2 class="tit-size-big">제주오토하우스 내부 안내</h2>
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
                                    <img src="/lrhp/pc/images/img-jejuAutoHouse-map.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="btn-area">
                            <a href="/hp/kor/reservation/index.do?areaFlag=6" class="btn btn-red">제주렌터카 예약하기</a>
                        </div>
                        <div class="section-explain">
                            <div class="explain-header">
                                <h2 class="tit-size-big">이용 중 체크사항</h2>
                            </div>
                            <div class="explain-cont">
                                <div class="tbl-box">
                                    <table class="td-align-l">
                                        <caption></caption>
                                        <colgroup>
                                            <col style="width:15.8%">
                                            <col>
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>유류량 체크</th>
                                                <td>
                                                    <ul class="lst dot">
                                                        <li>
                                                            대여시 직원과 함께 차량계기판의 유류량을 확인해주시고, 반납하실 때 반드시 대여시와 동일하게 주유해주시기
                                                            바랍니다
                                                            <ul class="lst hypen">
                                                                <ul class="lst simple">
                                                                    <li class="mt-15"><span
                                                                            class="txt-color-lightgrey">※ 지점 인근 주유소 및
                                                                            충전소 참고</span></li>
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
                                                        <li class="txt-color-red">대인 무한 / 대물 2,000만원 / 자손 1,500만원</li>
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
                                                        <li>완전 면책 : 수리비 및 휴차보상료가 전액 면제됩니다. </li>
                                                        <li>면책 30만원 : 1건의 사고당 최대 30만원의 면책금이 부과되며, 추가 '휴차보상료'는 전액</li>
                                                        <li>면책제도 미가입 : 수리비 및 '휴차보상료' 전액 고객 부담입니다. </li>
                                                    </ul>
                                                    <p class="txt-color-lightgrey mt-15">※ 휴차보상료란? 사고시 수리(휴차)기간 동안 발생하는
                                                        영업손실에 대해 청구하는 금액으로, 수리(휴차)기간 동안 발생하는 대여료의 50%를 청구합니다.</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>긴급출동 및 사고처리</th>
                                                <td>
                                                    <ul class="lst dot">
                                                        <li>고객센터 <span class="txt-color-red">1588-1230</span>는 <span
                                                                class="txt-color-red">24시간</span> 접수 가능합니다.</li>
                                                        <li>'우도(牛島)' 지역은 사고현장 출동이 불가하며, 전기차량 충전소가 없습니다.</li>
                                                        <li>고객님의 안전을 위해 <span class="txt-color-red">안전밸트</span>는 꼭 착용해
                                                            주시고 늘 안전운전하시기 바랍니다.</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>필수 참고 사항</th>
                                                <td>
                                                    <ul class="lst dot">
                                                        <li>
                                                            차량 內 네비게이션은 참고용으로만 사용하시고 교통법규는 실제 교통표지판을 준수하시기
                                                            바랍니다.<br>(네비게이션으로 인한 교통 범칙금 발생시 당사에서는 책임이 없습니다.)
                                                        </li>
                                                        <li>제주시내 대중교통 우선차로제 시행으로 위반시 과태료 부과됩니다.</li>
                                                        <li>제주공항 여객청사 1층은 버스정류장이 있어 잠시 정차만 하여도 즉시 단속이 될 수 있습니다.</li>
                                                        <li>반납시 지점 검색은 <span class="txt-color-red">751-8000(롯데렌터카
                                                                오토하우스)</span>로 해주시고, 차량에 두고 내리신 유실물은 없는지 꼭 챙겨주세요!</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="section-explain">
                            <div class="explain-header">
                                <h2 class="tit-size-big">Q&A</h2>
                            </div>
                            <div class="explain-cont">
                                <div class="row">
                                    <h4 class="tit-size-mid">이용 안내</h4>
                                    <ul class="qna-list qnaAccor">
                                        <li>
                                            <div class="accor-header">
                                                <button type="button" class="btn-toggle-wide"
                                                    data-target="qnaAccor2Cont01" data-on="true" data-siblings="true">
                                                    <span class="ico-q">Q</span> 차가 시끄럽고 속도가 안나는 느낌이에요.
                                                </button>
                                            </div>
                                            <div class="accor-cont qnaAccor2Cont01">
                                                기어레버가 D모드에서 왼쪽(or 오른쪽)으로 밀려 ‘수동모드'로 전환되어 있지는 않나요?<br>
                                                <span class="txt-color-red">D모드에서 오른쪽(or 왼쪽)으로 밀어 ‘자동모드'로 변경해보세요!</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="accor-header">
                                                <button type="button" class="btn-toggle-wide"
                                                    data-target="qnaAccor2Cont02" data-on="true" data-siblings="true">
                                                    <span class="ico-q">Q</span> 차에서 계속 “띵~띵~" 경고음이 나요. 왜 이러죠?
                                                </button>
                                            </div>
                                            <div class="accor-cont qnaAccor2Cont02">
                                                앞차출발, 차선이탈 등의 경고음 옵션이 설정되어 발생합니다.<br>
                                                블랙박스 안전도우미기능(ADAS)에서 개별 기능 해제 가능합니다.
                                            </div>
                                        </li>
                                        <li>
                                            <div class="accor-header">
                                                <button type="button" class="btn-toggle-wide"
                                                    data-target="qnaAccor2Cont03" data-on="true" data-siblings="true">
                                                    <span class="ico-q">Q</span> 주행 중 갑자기 계기판에 타이어 공기압 경고등이 떴어요!
                                                </button>
                                            </div>
                                            <div class="accor-cont qnaAccor2Cont03">
                                                <span class="txt-color-red">고객센터(1588-1230, 사고접수 1번)</span>로 접수해주세요. 즉시
                                                현장 출동하여 문제를 해결해 드립니다!
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
                                        </li>
                                        <li>
                                            <div class="accor-header">
                                                <button type="button" class="btn-toggle-wide"
                                                    data-target="qnaAccor2Cont04" data-on="true" data-siblings="true">
                                                    <span class="ico-q">Q</span> 차에 블루투스 연결은 어떻게 하나요?
                                                </button>
                                            </div>
                                            <div class="accor-cont qnaAccor2Cont04">
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
                                                </ul>
                                                <p class="txt-color-red mt-20">* 차종마다 연결방법은 조금씩 다를 수 있습니다. 필요 시
                                                    지점(064-751-8000)으로 연락주세요.</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="accor-header">
                                                <button type="button" class="btn-toggle-wide"
                                                    data-target="qnaAccor2Cont05" data-on="true" data-siblings="true">
                                                    <span class="ico-q">Q</span> 차량 대여 중 추가 운전자 등록은 어떻게 하나요?
                                                </button>
                                            </div>
                                            <div class="accor-cont qnaAccor2Cont05">
                                                <p class="mb-5">지점방문 없이 롯데렌터카 APP 또는 홈페이지에서 즉시 추가할 수 있습니다. </p>
                                                <ul class="lst num-type2">
                                                    <li>
                                                        <span class="bul">1</span>
                                                        롯데렌터카 APP 또는홈페이지에 접속합니다.
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
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 팝업 -->
                <div class="layer-wrap layer-mypage layer-popup jeju-auto-layer">
                    <div class="pop-inner">
                        <div class="popup-top">
                            <h4>제휴사 할인</h4>
                            <button type="button" class="layer-popup-close" data-layer="member-rating">
                                <span class="icon pop-close">닫기 버튼</span></button>
                        </div>
                        <div class="popup-cont">
                            <ul class="jeju-auto-list">
                                <li>
                                    <div>
                                        <img src="/lrhp/pc/images/p_02_cityhotel.jpg" alt="">
                                    </div>
                                    <div class="tit">
                                        롯데시티호텔 제주
                                    </div>
                                    <div class="txt">
                                        제주도 최고층(22층)에 위치한 롯데시티호텔 뷔페 레스토랑 C`cafe (씨카페)에서는 청정 바다와 한라산, 제주시내를 한눈에 내려다보며 식사할
                                        수 있습니다.
                                    </div>
                                    <div class="detail">
                                        <p class="tit2">할인혜택</p>
                                        <ul class="lst dot">
                                            <li>씨카페 20% 할인(중식) </li>
                                        </ul>
                                        <p class="tit2">예약 및 확인방법</p>
                                        <ul class="lst dot">
                                            <li>씨카페 식당 이용시 롯데렌터카 Key 또는 예약문자 확인</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <img src="/lrhp/pc/images/p_03_skyhill.jpg" alt="">
                                    </div>
                                    <div class="tit">
                                        롯데스카이힐 제주
                                    </div>
                                    <div class="txt">
                                        시원하게 펼쳐진 에메랄드빛 서귀포 앞바다, 산방산과 한라산이 보이는 코스까지! 롯데스카이힐CC 제주는 제주의 자연을 활용한 자연친화적
                                        클럽입니다.
                                    </div>
                                    <div class="detail">
                                        <p class="tit2">할인혜택</p>
                                        <ul class="lst dot">
                                            <li>그린피 10% 할인</li>
                                        </ul>
                                        <p class="tit2">예약 및 확인방법</p>
                                        <ul class="lst dot">
                                            <li>골프장 데스크에서 롯데렌터카 Key 또는 예약문자 확인</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <img src="/lrhp/pc/images/p_04_mart.jpg" alt="">
                                    </div>
                                    <div class="tit">
                                        롯데마트 제주점
                                    </div>
                                    <div class="txt">
                                        롯데마트 제주점은 지하 2층∼지상 6층으로 구성된 쇼핑과 편의시설이 어우러진 매장입니다. 제주 특산물, 제주 기념품 등을 구매하기도 좋습니다.
                                    </div>
                                    <div class="detail">
                                        <p class="tit2">할인혜택</p>
                                        <ul class="lst dot">
                                            <li>7만원 이상 구매시 5천원 할인</li>
                                        </ul>
                                        <p class="tit2">예약 및 확인방법</p>
                                        <ul class="lst dot">
                                            <li>매장 계산대에서 할인쿠폰(오토하우스 로비) 제시 하거나 롯데렌터카 Key 또는 예약문자 확인</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <img src="/lrhp/pc/images/p_05_dutyfree.jpg" alt="">
                                    </div>
                                    <div class="tit">
                                        롯데면세점 제주공항점
                                    </div>
                                    <div class="txt">
                                        롯데면세점 제주공항점은 제주국제공항 3층 국제선 출국장에 위치해 있습니다. 국내외 유명 화장품·향수 및 주류·담배, 식품 브랜드 매장을 운영
                                        중입니다.
                                    </div>
                                    <div class="detail">
                                        <p class="tit2">할인혜택</p>
                                        <ul class="lst dot">
                                            <li>5만원 이상 구매시 1만원 할인</li>
                                        </ul>
                                        <p class="tit2">예약 및 확인방법</p>
                                        <ul class="lst dot">
                                            <li>롯데시티호텔 1~4층, 롯데렌터카<br>Key 확인</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <img src="/lrhp/pc/images/p_06_angelinus.jpg" alt="">
                                    </div>
                                    <div class="tit">
                                        엔제리너스 9개점
                                    </div>
                                    <div class="txt">
                                        엔제리너스는 최고급 에스프레소 전문점입니다. 솔티땅콩라떼, 한라봉 스무디, 엔제르방 땅콩 마들렌 등 제주에서만 파는 상품들을 구매할 수
                                        있습니다.
                                    </div>
                                    <div class="detail">
                                        <p class="tit2">할인혜택</p>
                                        <ul class="lst dot">
                                            <li>제조음료 15% 할인</li>
                                            <li>야외광장점 땅콩마들렌 10% 할인</li>
                                        </ul>
                                        <p class="tit2">예약 및 확인방법</p>
                                        <ul class="lst dot">
                                            <li>제주 내 엔젤리너스 (롯데시네제주삼화점 제외) 직영점 4곳 & 가맹점 5곳, 롯데 렌터카 Key 또는 예약문자 확인</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <p style="color:#ed1c24;font-size:14px;margin-top:10px">※ 할인율은 제휴사 사정에 따라 변경될 수 있으니 이용 전 확인
                                부탁드립니다.</p>
                        </div>
                    </div>
                </div>
                <!-- 팝업 -->
                <!-- // 제주오토하우스 -->
                <form id="jejuReservForm" action="/hp/kor/reservation/index.do" method="post">
                    <input type="hidden" name="state" value="2">
                    <input type="hidden" name="rentArea" value="6">
                    <input type="hidden" name="returnArea" value="6">
                    <input type="hidden" name="rentBranch" value="622">
                    <input type="hidden" name="returnBranch" value="622">
                </form>
                <script>
                    //제주렌터카 예약하기 버튼 클릭 시
                    $('.jejuReservBtn').on('click', function () {
                        $('#jejuReservForm').submit();
                    });
                </script>
                <script src="/lrhp/js/web/hp/pc/contents/contentsPage.js?ver=44ca0afa-661a-4eb0-812c-e438997f708e"
                    type="text/javascript"></script>
            </main>
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
                                <p>본 웹사이트에 게시된 이메일 주소가 전자우편 수집프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며 이를 위반시 정보통신망법에
                                    의해 형사상 처벌됨을 유의하시기 바랍니다.</p>
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
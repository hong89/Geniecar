<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>당첨자 발표</title>
    </head>
    <body>
        <h1>당첨자 발표</h1>
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
            <meta name="title" lang="ko" content="이벤트 당첨자 발표 | 롯데렌터카 공식 웹사이트">
            <meta name="description" lang="ko" content="롯데렌터카의 이벤트 당첨자 발표 페이지입니다.">
            <meta name="og:url" content="https://www.lotterentacar.net/hp/kor/carLife/winnerEventMain.do">
            <meta name="og:title" lang="ko" content="이벤트 당첨자 발표 | 롯데렌터카 공식 웹사이트">
            <meta name="og:description" lang="ko" content="롯데렌터카의 이벤트 당첨자 발표 페이지입니다.">
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
            <link rel="stylesheet" href="/lrhp/pc/styles/reset.css?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df">
            <link rel="stylesheet" href="/lrhp/pc/styles/layout.css?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df">
            <link rel="stylesheet" href="/lrhp/pc/styles/modules.css?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df">
            <link rel="stylesheet" href="/lrhp/pc/styles/contents.css?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df">
            <link rel="stylesheet"
                href="/lrhp/pc/styles/jquery.mCustomScrollbar.css?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df">
            <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
            <script src="/lrhp/js/lib/html5shiv.js"></script>
            <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
            <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
            <script src="/lrhp/js/lib/clipboard.min.js"></script>
            <script src="/publish/js/md5.js?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df"></script>
            <script src="/publish/js/cmmnUtil.js?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df"></script>
            <!-- SSO 고도화 -->
            <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
            <script src='https://members.lpoint.com/api/js/json2.js'></script>
            <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
            <script src="/lrhp/js/sso/moment.js"></script>
            <script src="/lrhp/js/sso/odm-common.js"></script>
            <script src="/lrhp/js/sso/sso.rental.js?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df"></script>
            <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df"></script>
            <script src="/lrhp/js/sso/api.rentcar.js?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df"></script>
            <!-- Social Login -->
            <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
            <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
            <script src="/lrhp/js/social/social.rentacar.js?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df"></script>
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
            <script src="/lrhp/js/common/gfn_util.js?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df"></script>
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
            <script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df"></script>
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
                        clientAkInfo: '{"clntEncKey":"hGxgmE4/+04e0eML","flwNo":"uuOAbqjoDw","domain":"https://members.lpoint.com"}' || '',
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
            <input type="hidden" name="lastPageNoOnPageList" id="lastPageNoOnPageList" value="" />
            <form id="defaultFrm" name="defaultFrm"
                action="/hp/kor/carLife/winnerEventMain.do?pageIndex=1&amp;contSeq=&amp;listType=ongoing" method="get">
                <input id="pageIndex" name="pageIndex" type="hidden" value="1" />
                <input type="hidden" name="contSeq" id="contSeq" />
                <main id="wrap" data-id="template-container">
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
                                        <a>이벤트</a>
                                    </li>
                                    <li>
                                        <a>당첨자발표</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--container 컴포넌트-->
                    <main id="wrap">
                        <!--카라이프-->
                        <div class="carLife-container">
                            <div class="inner-type2">
                                <section class="section-headline">
                                    <h1 class="tit">당첨자 발표</h1>
                                    <p class="txt">당첨을 축하드립니다!</p>
                                </section>
                                <!-- 탭 -->
                                <div class="tab-nav tab-normal">
                                    <ul class="tab-col2">
                                        <li>
                                            <button type="button" onclick="fnGoEventPage()">진행중 이벤트</button>
                                        </li>
                                        <li class="active">
                                            <button type="button" onclick="fnWinnerEventPage()">당첨자 발표</button>
                                        </li>
                                    </ul>
                                </div>
                                <!-- //탭 -->
                                <!-- 이벤트 리스트 -->
                                <div class="tab-cont tab-normal">
                                    <div>
                                        <!-- 검색 -->
                                        <div class="search-wrap">
                                            <div class="select-box">
                                                <select class="selectbox" name="searchCondition" id="searchCondition">
                                                    <option value="0">전체</option>
                                                    <option value="1">제목</option>
                                                    <option value="2">내용</option>
                                                </select>
                                            </div>
                                            <div class="inputT srch-input-box">
                                                <input type="text" name="searchKeyword" id="searchKeyword"
                                                    title="검색어 입력" placeholder="검색어를 입력해주세요." value=""
                                                    onkeydown="Enter_Check()">
                                            </div>
                                            <button type="button" class="btn" onclick="fn_search()">검색</button>
                                        </div>
                                        <!-- //검색 -->
                                        <!-- 당첨자 목록 -->
                                        <div class="notice-wrap">
                                            <!-- 게시판 -->
                                            <div class="tbl-box">
                                                <table class="tbl-type01">
                                                    <caption>공지 사항의 제목과 작성을 나타낸 표</caption>
                                                    <thead>
                                                        <tr>
                                                            <th>제목</th>
                                                            <th>작성일</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <a href="javascript:fnFormview('1261')">2023 고객만족도 설문조사
                                                                    4분기 이벤트 당첨자발표</a>
                                                            </td>
                                                            <td>
                                                                2024.01.11
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- //게시판 -->
                                        </div>
                                        <!-- //당첨자 목록 -->
                                    </div>
                                </div>
                                <!-- //이벤트 리스트 -->
                            </div>
                        </div>
                        <!--//카라이프-->
                        <!-- 202207 리타겟팅 광고를 위한 스크립트 삽입  -->
                        <script type="text/javascript" src="//static.tagmanager.toast.com/tag/view/1948"></script>
                        <script type="text/javascript">
                            window.ne_tgm_q = window.ne_tgm_q || [];
                            window.ne_tgm_q.push(
                                {
                                    tagType: 'visit',
                                    device: 'web'/*web, mobile, tablet*/,
                                    uniqValue: '',
                                    pageEncoding: 'utf-8'
                                });
                        </script>
                        <script
                            src="/lrhp/js/web/hp/pc/carLife/winnerEventMain.js?ver=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df"
                            type="text/javascript"></script>
                    </main>
            </form>
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
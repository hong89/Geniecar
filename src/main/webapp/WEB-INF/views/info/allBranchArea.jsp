<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>지점안내</title>
    </head>
    <body>
        <h1>지점안내</h1>
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
            <meta name="title" lang="ko" content="전국지점 안내 | 롯데렌터카 공식 웹사이트">
            <meta name="description" lang="ko" content="롯데렌터카의 전국 지점 정보를 확인하세요">
            <meta name="og:url" content="https://www.lotterentacar.net/hp/kor/info/allBranchArea.do">
            <meta name="og:title" lang="ko" content="전국지점 안내 | 롯데렌터카 공식 웹사이트">
            <meta name="og:description" lang="ko" content="롯데렌터카의 전국 지점 정보를 확인하세요">
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
            <link rel="stylesheet" href="/lrhp/pc/styles/reset.css?cb=8594b2de-f772-48d4-89b7-34cabe1f8989">
            <link rel="stylesheet" href="/lrhp/pc/styles/layout.css?cb=8594b2de-f772-48d4-89b7-34cabe1f8989">
            <link rel="stylesheet" href="/lrhp/pc/styles/modules.css?cb=8594b2de-f772-48d4-89b7-34cabe1f8989">
            <link rel="stylesheet" href="/lrhp/pc/styles/contents.css?cb=8594b2de-f772-48d4-89b7-34cabe1f8989">
            <link rel="stylesheet"
                href="/lrhp/pc/styles/jquery.mCustomScrollbar.css?cb=8594b2de-f772-48d4-89b7-34cabe1f8989">
            <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
            <script src="/lrhp/js/lib/html5shiv.js"></script>
            <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
            <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
            <script src="/lrhp/js/lib/clipboard.min.js"></script>
            <script src="/publish/js/md5.js?cb=8594b2de-f772-48d4-89b7-34cabe1f8989"></script>
            <script src="/publish/js/cmmnUtil.js?cb=8594b2de-f772-48d4-89b7-34cabe1f8989"></script>
            <!-- SSO 고도화 -->
            <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
            <script src='https://members.lpoint.com/api/js/json2.js'></script>
            <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
            <script src="/lrhp/js/sso/moment.js"></script>
            <script src="/lrhp/js/sso/odm-common.js"></script>
            <script src="/lrhp/js/sso/sso.rental.js?cb=8594b2de-f772-48d4-89b7-34cabe1f8989"></script>
            <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=8594b2de-f772-48d4-89b7-34cabe1f8989"></script>
            <script src="/lrhp/js/sso/api.rentcar.js?cb=8594b2de-f772-48d4-89b7-34cabe1f8989"></script>
            <!-- Social Login -->
            <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
            <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
            <script src="/lrhp/js/social/social.rentacar.js?cb=8594b2de-f772-48d4-89b7-34cabe1f8989"></script>
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
            <script src="/lrhp/js/common/gfn_util.js?cb=8594b2de-f772-48d4-89b7-34cabe1f8989"></script>
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
            <script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=8594b2de-f772-48d4-89b7-34cabe1f8989"></script>
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
                        clientAkInfo: '{"clntEncKey":"yLEchfP2/FaFRae6","flwNo":"obcl7CL9tp","domain":"https://members.lpoint.com"}' || '',
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
            <script type="text/javascript"
                src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ea7w6if99d&submodules=geocoder"></script>
            <form id="branchSearchFrm" name="branchInfoVO" action="/hp/kor/info/allBranchArea.do?branchcat=undefined"
                method="get">
                <input id="pageIndex" name="pageIndex" values="1" type="hidden" value="1" />
                <input type="hidden" value="" id="gubun" />
                <input type="hidden" value="" id="branchcode" />
                <input type="hidden" value="" id="memberNo" />
                <main id="wrap">
                    <div class="path-wrap">
                        <div class="cover">
                            <div class="inner">
                                <ul>
                                    <li><a> <span class="icon home">HOME 1234</span>
                                        </a></li>
                                    <li><a>고객지원</a></li>
                                    <li><a>지점안내</a></li>
                                    <li><a>전국지점</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- 중고차장기렌터카 -->
                    <div class="customer-container">
                        <div class="inner-type2">
                            <!-- 페이지 타이틀 -->
                            <section class="section-headline">
                                <h1 class="tit">전국지점안내</h1>
                            </section>
                            <!-- //페이지 타이틀 -->
                            <!-- <div class="tab-nav contTab">
				<ul class="tab-col3">
					<li id='libranchseeall' class="active">
						<button type="button" id="branchseeall" onclick="getArea(this.id)">전체</button>
					</li>
					<li id='libranchseeshort'>
						<button type="button" id="branchseeshort" onclick="getArea(this.id)">단기렌터카 지점</button>
					</li>
					<li id='libranchseeds'>
						<button type="button" id="branchseeds" onclick="getArea(this.id)">딜리버리 서비스</button>
					</li>
				</ul>
				<input type="hidden" name="branchcat" id="branchcat">
			</div> -->
                            <div class="branch-srch-section">
                                <div class="left">
                                    <div class="srch-box box-type2">
                                        <div class="inputT">
                                            <input type="text" name="searchKeyword" id="searchKeyword" value=""
                                                placeholder="지역으로 검색하시거나, 지점명을 검색하시면 가까운 매장을 찾으실 수 있습니다.">
                                        </div>
                                        <button type="button" class="btn btn-black right"
                                            onclick="javascript:fn_searchArea();">검색</button>
                                    </div>
                                </div>
                                <div class="right">
                                    <select class="selectbox" name="selectArea" id="spot">
                                        <option value="">지역-전체보기</option>
                                        <option value="290">24시간지점</option>
                                        <option value="280">역사지점</option>
                                        <option value="270">공항지점</option>
                                        <option value="100">서울</option>
                                        <option value="110,120">인천/경기</option>
                                        <option value="130">강원</option>
                                        <option value="140,150,160,170">충청/대전/세종</option>
                                        <option value="180,190,200">전라/광주</option>
                                        <option value="210,220,230,240,250">경상/대구/부산/울산</option>
                                        <option value="260">제주</option>
                                    </select>
                                </div>
                            </div>
                            <div class="branch-ofc-section">
                                <div class="ofc-list" style="overflow-y: auto;height: 710px;">
                                    <!-- 지도 onload하기 위한 좌표/지점명 저장 -->
                                    <script type="text/javascript">
                                        var mname_kor = new Array();
                                        var mlti_point = new Array();
                                        var mlng_point = new Array();
                                        var mbranchgubun = new Array();
                                        var mbranchcode = new Array();
                                        var mareacode = new Array();
                                        var mimgatchfileid = new Array();
                                        mname_kor.push("가산디지털");
                                        mlti_point.push("37.481663");
                                        mlng_point.push("126.881843");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("421");
                                        mareacode.push("100");
                                        mimgatchfileid.push("FILE0000000001910175");
                                        mname_kor.push("강남");
                                        mlti_point.push("37.51059062");
                                        mlng_point.push("127.0556253");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("402");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("강남(장기)");
                                        mlti_point.push("37.5105356");
                                        mlng_point.push("127.05561");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("401");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("강남(픽업존)");
                                        mlti_point.push("37.51030866429986");
                                        mlng_point.push("127.05645644436815");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("45403");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("강남고속버스터미널(픽업존)");
                                        mlti_point.push("37.5044339");
                                        mlng_point.push("127.0066557");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("42610");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("강릉KTX");
                                        mlti_point.push("37.764661");
                                        mlng_point.push("128.899797");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("530");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                        mname_kor.push("강릉버스터미널(픽업존)");
                                        mlti_point.push("37.75558");
                                        mlng_point.push("128.88220");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("53002");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                        mname_kor.push("강북(장기)");
                                        mlti_point.push("37.5523645");
                                        mlng_point.push("126.9683357");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("427");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("개양터미널(픽업존)");
                                        mlti_point.push("35.15973");
                                        mlng_point.push("128.10781");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("61411");
                                        mareacode.push("230");
                                        mimgatchfileid.push("");
                                        mname_kor.push("거제");
                                        mlti_point.push("34.8902");
                                        mlng_point.push("128.6231");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("615");
                                        mareacode.push("230");
                                        mimgatchfileid.push("");
                                        mname_kor.push("건대입구(픽업존)");
                                        mlti_point.push("37.54088");
                                        mlng_point.push("127.07141");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("45404");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("경기동부(장기)");
                                        mlti_point.push("37.351900");
                                        mlng_point.push("126.964877");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("511");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("경기서부(장기)");
                                        mlti_point.push("37.351900");
                                        mlng_point.push("126.964877");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("507");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("경주");
                                        mlti_point.push("35.81917276922203");
                                        mlng_point.push("129.14701292436948");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("611");
                                        mareacode.push("210");
                                        mimgatchfileid.push("");
                                        mname_kor.push("경주버스터미널(픽업존)");
                                        mlti_point.push("35.84049");
                                        mlng_point.push("129.20204");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("61107");
                                        mareacode.push("210");
                                        mimgatchfileid.push("");
                                        mname_kor.push("고잔역(픽업존)");
                                        mlti_point.push("37.31606184");
                                        mlng_point.push("126.8237939");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("51307");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("공덕");
                                        mlti_point.push("37.544729");
                                        mlng_point.push("126.950450");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("450");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("과천시민광장(픽업존)");
                                        mlti_point.push("37.42421167");
                                        mlng_point.push("126.9857877");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("51708");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("관악");
                                        mlti_point.push("37.481769");
                                        mlng_point.push("126.951414");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("428");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("광교(픽업존)");
                                        mlti_point.push("37.28580");
                                        mlng_point.push("127.05950");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("53614");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("광명역(픽업존)");
                                        mlti_point.push("37.41556986");
                                        mlng_point.push("126.88267994");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("42107");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("광주공항");
                                        mlti_point.push("35.1380959");
                                        mlng_point.push("126.8097973");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("708");
                                        mareacode.push("200");
                                        mimgatchfileid.push("");
                                        mname_kor.push("광주송정KTX");
                                        mlti_point.push("35.141340");
                                        mlng_point.push("126.791499");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("707");
                                        mareacode.push("200");
                                        mimgatchfileid.push("FILE0000000002046933");
                                        mname_kor.push("광주종합버스터미널(픽업존)");
                                        mlti_point.push("35.15986222");
                                        mlng_point.push("126.8792425");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("71019");
                                        mareacode.push("200");
                                        mimgatchfileid.push("");
                                        mname_kor.push("광주지점(장기)");
                                        mlti_point.push("35.164302");
                                        mlng_point.push("126.909677");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("706");
                                        mareacode.push("200");
                                        mimgatchfileid.push("");
                                        mname_kor.push("광화문(장기)");
                                        mlti_point.push("37.5523645");
                                        mlng_point.push("126.9683357");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("429");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("구로(장기)");
                                        mlti_point.push("37.4817399");
                                        mlng_point.push("126.8817895");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("412");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("구로디지털");
                                        mlti_point.push("37.485298");
                                        mlng_point.push("126.896876");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("422");
                                        mareacode.push("100");
                                        mimgatchfileid.push("FILE0000000002025507");
                                        mname_kor.push("구미");
                                        mlti_point.push("36.106965");
                                        mlng_point.push("128.418502");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("616");
                                        mareacode.push("210");
                                        mimgatchfileid.push("");
                                        mname_kor.push("구포역(픽업존)");
                                        mlti_point.push("35.20619966");
                                        mlng_point.push("128.9963202");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("60411");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("군산");
                                        mlti_point.push("35.95584");
                                        mlng_point.push("126.7162266");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("721");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("군산대학교 (픽업존)");
                                        mlti_point.push("35.94599306");
                                        mlng_point.push("126.6832345");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72113");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("군산역 (픽업존)");
                                        mlti_point.push("35.99921063");
                                        mlng_point.push("126.7597867");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72114");
                                        mareacode.push("140");
                                        mimgatchfileid.push("");
                                        mname_kor.push("군산터미널(픽업존)");
                                        mlti_point.push("35.97683837");
                                        mlng_point.push("126.7245348");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72112");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("김제버스터미널(픽업존)");
                                        mlti_point.push("35.80321");
                                        mlng_point.push("126.88893");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72413");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("김천구미KTX");
                                        mlti_point.push("36.11350804852823");
                                        mlng_point.push("128.1814905322378");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("635");
                                        mareacode.push("210");
                                        mimgatchfileid.push("");
                                        mname_kor.push("김포( 운양역 )");
                                        mlti_point.push("37.6543493797578");
                                        mlng_point.push("126.68434970209591");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("543");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("김포공항");
                                        mlti_point.push("37.559031");
                                        mlng_point.push("126.803301");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("420");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("김해공항");
                                        mlti_point.push("35.17985207512364");
                                        mlng_point.push("128.9544571620639");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("604");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("김해공항 국내선 데스크");
                                        mlti_point.push("35.17025269637865");
                                        mlng_point.push("128.94897857371768");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("60410");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("나주(빛가람)(픽업존)");
                                        mlti_point.push("35.013855");
                                        mlng_point.push("126.7906305");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("71018");
                                        mareacode.push("200");
                                        mimgatchfileid.push("");
                                        mname_kor.push("나주역(픽업존)");
                                        mlti_point.push("35.01425");
                                        mlng_point.push("126.71683");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("71020");
                                        mareacode.push("200");
                                        mimgatchfileid.push("");
                                        mname_kor.push("남동인더스파크(픽업존)");
                                        mlti_point.push("37.40781");
                                        mlng_point.push("126.69545");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("53713");
                                        mareacode.push("110");
                                        mimgatchfileid.push("");
                                        mname_kor.push("남악(픽업존)");
                                        mlti_point.push("34.812025");
                                        mlng_point.push("126.460901");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72005");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("당산(픽업존)");
                                        mlti_point.push("37.53249");
                                        mlng_point.push("126.90083");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("44306");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("당진");
                                        mlti_point.push("36.900970");
                                        mlng_point.push("126.647097");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("715");
                                        mareacode.push("160");
                                        mimgatchfileid.push("");
                                        mname_kor.push("대구(장기)");
                                        mlti_point.push("35.88118317607713");
                                        mlng_point.push("128.62911448616384");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("607");
                                        mareacode.push("220");
                                        mimgatchfileid.push("");
                                        mname_kor.push("대구공항(픽업존)");
                                        mlti_point.push("35.89969969");
                                        mlng_point.push("128.6378587");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("64115");
                                        mareacode.push("220");
                                        mimgatchfileid.push("");
                                        mname_kor.push("대덕테크노밸리(픽업존)");
                                        mlti_point.push("36.42631907");
                                        mlng_point.push("127.3859612");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72516");
                                        mareacode.push("170");
                                        mimgatchfileid.push("");
                                        mname_kor.push("대전");
                                        mlti_point.push("36.332523");
                                        mlng_point.push("127.393898");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("725");
                                        mareacode.push("170");
                                        mimgatchfileid.push("");
                                        mname_kor.push("대전지점(장기)");
                                        mlti_point.push("36.332788");
                                        mlng_point.push("127.393985");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("701");
                                        mareacode.push("170");
                                        mimgatchfileid.push("");
                                        mname_kor.push("동광주");
                                        mlti_point.push("35.164302");
                                        mlng_point.push("126.909677");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("710");
                                        mareacode.push("200");
                                        mimgatchfileid.push("");
                                        mname_kor.push("동대구KTX");
                                        mlti_point.push("35.88120967705236");
                                        mlng_point.push("128.62915378428212");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("641");
                                        mareacode.push("220");
                                        mimgatchfileid.push("");
                                        mname_kor.push("동서울터미널(픽업존)");
                                        mlti_point.push("37.53569");
                                        mlng_point.push("127.09568");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("45405");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("동탄역(픽업존)");
                                        mlti_point.push("37.20012259");
                                        mlng_point.push("127.0956517");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("52010");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("두정역(픽업존)");
                                        mlti_point.push("36.83161751317975");
                                        mlng_point.push("127.14978545550349");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72615");
                                        mareacode.push("160");
                                        mimgatchfileid.push("");
                                        mname_kor.push("롯데호텔(중문)");
                                        mlti_point.push("33.2485349");
                                        mlng_point.push("126.4103936");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("624");
                                        mareacode.push("260");
                                        mimgatchfileid.push("");
                                        mname_kor.push("마곡");
                                        mlti_point.push("37.560403");
                                        mlng_point.push("126.827659");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("448");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("만종역(픽업존)");
                                        mlti_point.push("37.3530587");
                                        mlng_point.push("127.8934352");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("52317");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                        mname_kor.push("목동");
                                        mlti_point.push("37.52295512663988");
                                        mlng_point.push("126.8640027350449");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("444");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("목포(픽업존)");
                                        mlti_point.push("34.8025");
                                        mlng_point.push("126.4181");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72002");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("목포역");
                                        mlti_point.push("34.7914371");
                                        mlng_point.push("126.3863052");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("720");
                                        mareacode.push("190");
                                        mimgatchfileid.push("FILE0000000003029912");
                                        mname_kor.push("목포종합버스터미널 (픽업존)");
                                        mlti_point.push("34.81251004");
                                        mlng_point.push("126.4182179");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72003");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("목포지점(장기)");
                                        mlti_point.push("34.8025");
                                        mlng_point.push("126.4181");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("719");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("보령터미널(픽업존)");
                                        mlti_point.push("36.342777");
                                        mlng_point.push("126.590048");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72116");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("부산(장기)");
                                        mlti_point.push("35.11878969357511");
                                        mlng_point.push("129.0427147065883");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("601");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("부산국제여객터미널(픽업존)");
                                        mlti_point.push("35.11565338");
                                        mlng_point.push("129.0471413");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("60516");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("부산서부버스터미널(픽업존)");
                                        mlti_point.push("35.16275675");
                                        mlng_point.push("128.982314");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("60412");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("부산역");
                                        mlti_point.push("35.11893512420671");
                                        mlng_point.push("129.04278144668237");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("605");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("부산종합버스터미널(픽업존)");
                                        mlti_point.push("35.28517789");
                                        mlng_point.push("129.0956257");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("64509");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("부전역(픽업존)");
                                        mlti_point.push(" 35.16430566949574");
                                        mlng_point.push("129.059465812834");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("60517");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("부천");
                                        mlti_point.push("37.508300");
                                        mlng_point.push("126.735800");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("519");
                                        mareacode.push("110");
                                        mimgatchfileid.push("FILE0000000002728795");
                                        mname_kor.push("부천터미널소풍(픽업존)");
                                        mlti_point.push("37.50374");
                                        mlng_point.push("126.75687");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("51908");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("부평역(픽업존)");
                                        mlti_point.push("37.48943281");
                                        mlng_point.push("126.7243266");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("53712");
                                        mareacode.push("110");
                                        mimgatchfileid.push("");
                                        mname_kor.push("분당");
                                        mlti_point.push("37.412214");
                                        mlng_point.push("127.127213");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("506");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("사당");
                                        mlti_point.push("37.485939");
                                        mlng_point.push("126.983065");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("457");
                                        mareacode.push("100");
                                        mimgatchfileid.push("FILE0000000002549229");
                                        mname_kor.push("사리역(픽업존)");
                                        mlti_point.push("37.2910427");
                                        mlng_point.push("126.8575187");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("51308");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("삼례역(픽업존)");
                                        mlti_point.push("35.904169");
                                        mlng_point.push("127.066353");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72412");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("상도(픽업존)");
                                        mlti_point.push("37.50492");
                                        mlng_point.push("126.95505");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("42805");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("상봉(망우역)");
                                        mlti_point.push("37.598231");
                                        mlng_point.push("127.091468");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("449");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("서대구KTX역(픽업존)");
                                        mlti_point.push("35.8804386461595");
                                        mlng_point.push("128.539721471803");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("64116");
                                        mareacode.push("220");
                                        mimgatchfileid.push("");
                                        mname_kor.push("서산");
                                        mlti_point.push("36.771618");
                                        mlng_point.push("126.459611");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("714");
                                        mareacode.push("160");
                                        mimgatchfileid.push("");
                                        mname_kor.push("서울역");
                                        mlti_point.push("37.5523636");
                                        mlng_point.push("126.968335");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("430");
                                        mareacode.push("100");
                                        mimgatchfileid.push("FILE0000000002466376");
                                        mname_kor.push("서초(장기)");
                                        mlti_point.push("37.4948454");
                                        mlng_point.push("127.0139981");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("418");
                                        mareacode.push("100");
                                        mimgatchfileid.push("FILE0000000003307374");
                                        mname_kor.push("성균관대역(픽업존)");
                                        mlti_point.push("37.28580");
                                        mlng_point.push("127.05950");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("53615");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("세종버스터미널(픽업존)");
                                        mlti_point.push("36.46922");
                                        mlng_point.push("127.27365");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72803");
                                        mareacode.push("150");
                                        mimgatchfileid.push("");
                                        mname_kor.push("세종지점");
                                        mlti_point.push("36.479291");
                                        mlng_point.push("127.2608954");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("728");
                                        mareacode.push("150");
                                        mimgatchfileid.push("");
                                        mname_kor.push("속초");
                                        mlti_point.push("38.1933446");
                                        mlng_point.push("128.5718675");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("522");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                        mname_kor.push("송정역주차빌딩(픽업존)");
                                        mlti_point.push("35.13536");
                                        mlng_point.push("126.78973");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("71021");
                                        mareacode.push("200");
                                        mimgatchfileid.push("");
                                        mname_kor.push("송파");
                                        mlti_point.push("37.47746337468451");
                                        mlng_point.push("127.12317293708291");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("415");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("송파(장기)");
                                        mlti_point.push("37.4782316");
                                        mlng_point.push("127.1193703");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("433");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("수서역SRT");
                                        mlti_point.push("37.485902312227836");
                                        mlng_point.push("127.1060778998132");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("41509");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("수원");
                                        mlti_point.push("37.267850");
                                        mlng_point.push("127.030626");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("536");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("수원역(픽업존)");
                                        mlti_point.push("37.26634");
                                        mlng_point.push("126.99714");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("53612");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("수유");
                                        mlti_point.push("37.6356724");
                                        mlng_point.push("127.0238758");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("453");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("순천");
                                        mlti_point.push("34.945349");
                                        mlng_point.push("127.504206");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("717");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("순천신대CGV(픽업존)");
                                        mlti_point.push("34.926094");
                                        mlng_point.push("127.552377");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("71714");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("순천터미널(픽업존)");
                                        mlti_point.push("34.947699");
                                        mlng_point.push("127.491214");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("71713");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("신경주KTX");
                                        mlti_point.push("35.79836381163563");
                                        mlng_point.push("129.1389951879888");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("61106");
                                        mareacode.push("210");
                                        mimgatchfileid.push("");
                                        mname_kor.push("신도림");
                                        mlti_point.push("37.50948751003422");
                                        mlng_point.push("126.8876987613133");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("443");
                                        mareacode.push("100");
                                        mimgatchfileid.push("FILE0000000001910146");
                                        mname_kor.push("신해운대역(픽업존)");
                                        mlti_point.push("35.18193685");
                                        mlng_point.push("129.1768998");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("64510");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("안산");
                                        mlti_point.push("37.320324");
                                        mlng_point.push("126.832095");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("513");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("안양");
                                        mlti_point.push("37.3950431");
                                        mlng_point.push("126.9648322");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("517");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("야당역(픽업존)");
                                        mlti_point.push("37.71325");
                                        mlng_point.push("126.76139");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("50812");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("양재");
                                        mlti_point.push("37.483315");
                                        mlng_point.push("127.034373");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("426");
                                        mareacode.push("100");
                                        mimgatchfileid.push("FILE0000000000318238");
                                        mname_kor.push("여수공항");
                                        mlti_point.push("34.8402331");
                                        mlng_point.push("127.613995");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("723");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("여수버스터미널(픽업존)");
                                        mlti_point.push("34.75818");
                                        mlng_point.push("127.71702");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72210");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("여수엑스포역(픽업존)");
                                        mlti_point.push("34.75351");
                                        mlng_point.push("127.74901");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72211");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("여수지점(엑스포역)");
                                        mlti_point.push("34.753280");
                                        mlng_point.push("127.745580");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("722");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("여의도(픽업존)");
                                        mlti_point.push("37.53045426");
                                        mlng_point.push("126.9257633");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("45007");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("여천버스터미널(픽업존)");
                                        mlti_point.push("34.77771773");
                                        mlng_point.push("127.6513161");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72304");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("여천역(픽업존)");
                                        mlti_point.push("34.77913747");
                                        mlng_point.push("127.6629977");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72303");
                                        mareacode.push("190");
                                        mimgatchfileid.push("");
                                        mname_kor.push("영등동 롯데마트(픽업존)");
                                        mlti_point.push("35.9590121300460");
                                        mlng_point.push("126.9742602");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72410");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("영통역(픽업존)");
                                        mlti_point.push("37.25269");
                                        mlng_point.push("127.07158");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("53613");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("오산");
                                        mlti_point.push("37.1447485");
                                        mlng_point.push("127.0677449");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("520");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("오식도(지스코) (픽업존)");
                                        mlti_point.push("35.94898003");
                                        mlng_point.push("126.5834552");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72115");
                                        mareacode.push("140");
                                        mimgatchfileid.push("");
                                        mname_kor.push("오이도역(픽업존)");
                                        mlti_point.push("37.36232192");
                                        mlng_point.push("126.7380955");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("51309");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("온양온천역(픽업존)");
                                        mlti_point.push("36.78057823");
                                        mlng_point.push("127.0030218");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72618");
                                        mareacode.push("160");
                                        mimgatchfileid.push("");
                                        mname_kor.push("왕궁농공단지(픽업존)");
                                        mlti_point.push("35.9884668");
                                        mlng_point.push("127.0920288");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72411");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("왕십리");
                                        mlti_point.push("37.56002385");
                                        mlng_point.push("127.0392368");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("44909");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("용산역(픽업존)");
                                        mlti_point.push("37.53220881");
                                        mlng_point.push("126.9640786");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("43004");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("울산(장기)");
                                        mlti_point.push("35.556722");
                                        mlng_point.push("129.140363");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("610");
                                        mareacode.push("250");
                                        mimgatchfileid.push("");
                                        mname_kor.push("울산KTX ");
                                        mlti_point.push("35.556768186725044");
                                        mlng_point.push("129.14028478496766");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("629");
                                        mareacode.push("250");
                                        mimgatchfileid.push("");
                                        mname_kor.push("울산공항");
                                        mlti_point.push("35.59273223260256");
                                        mlng_point.push("129.35602413163426");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("612");
                                        mareacode.push("250");
                                        mimgatchfileid.push("");
                                        mname_kor.push("울산역(통도사)");
                                        mlti_point.push("35.5521142055532");
                                        mlng_point.push("129.13913281504654");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("62910");
                                        mareacode.push("250");
                                        mimgatchfileid.push("");
                                        mname_kor.push("원광대(픽업존)");
                                        mlti_point.push("35.9682695");
                                        mlng_point.push("126.9585945");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72409");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("원주");
                                        mlti_point.push("37.339113");
                                        mlng_point.push("127.925741");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("523");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                        mname_kor.push("원주시외버스터미널(픽업존)");
                                        mlti_point.push("37.34448017");
                                        mlng_point.push("127.9304217");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("52316");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                        mname_kor.push("원주역(픽업존)");
                                        mlti_point.push("37.31576902");
                                        mlng_point.push("127.9207299");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("52315");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                        mname_kor.push("원주종합운동장(픽업존)");
                                        mlti_point.push("37.3347293");
                                        mlng_point.push("127.9459938");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("52318");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                        mname_kor.push("의정부");
                                        mlti_point.push("37.7111578");
                                        mlng_point.push("127.0480545");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("509");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("익산 시외버스터미널(픽업존)");
                                        mlti_point.push("35.9316509");
                                        mlng_point.push("126.9440581");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("72408");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("익산KTX");
                                        mlti_point.push("35.938799");
                                        mlng_point.push("126.946934");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("724");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("인천");
                                        mlti_point.push("37.45163143321211");
                                        mlng_point.push("126.70191480189908");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("537");
                                        mareacode.push("110");
                                        mimgatchfileid.push("");
                                        mname_kor.push("인천(장기)");
                                        mlti_point.push("37.464275");
                                        mlng_point.push("126.682219 ");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("501");
                                        mareacode.push("110");
                                        mimgatchfileid.push("");
                                        mname_kor.push("인천국제공항(터미널1)");
                                        mlti_point.push("37.449484");
                                        mlng_point.push("126.453658");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("503");
                                        mareacode.push("110");
                                        mimgatchfileid.push("");
                                        mname_kor.push("인천국제공항(터미널2)");
                                        mlti_point.push("37.469009");
                                        mlng_point.push("126.433870");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("50302");
                                        mareacode.push("110");
                                        mimgatchfileid.push("");
                                        mname_kor.push("일산");
                                        mlti_point.push("37.6751119");
                                        mlng_point.push("126.7506322");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("508");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("잠실(픽업존)");
                                        mlti_point.push("37.51700779");
                                        mlng_point.push("127.1003276");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("41510");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("전남대학교(픽업존)");
                                        mlti_point.push("35.17704153");
                                        mlng_point.push("126.9096207");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("71017");
                                        mareacode.push("200");
                                        mimgatchfileid.push("");
                                        mname_kor.push("전북도청(픽업존)");
                                        mlti_point.push("35.81956507849428");
                                        mlng_point.push("127.1108957621434");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("73414");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("전주KTX");
                                        mlti_point.push("35.848935");
                                        mlng_point.push("127.160340");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("734");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("전주종합경기장(픽업존)");
                                        mlti_point.push("35.83786643473706");
                                        mlng_point.push("127.12561165492944");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("73413");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("전주지점(장기)");
                                        mlti_point.push("35.841024");
                                        mlng_point.push("127.097680");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("716");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("전주팔복(픽업존)");
                                        mlti_point.push("35.8410855");
                                        mlng_point.push("127.0975247");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("73415");
                                        mareacode.push("180");
                                        mimgatchfileid.push("");
                                        mname_kor.push("제주오토하우스");
                                        mlti_point.push("33.509083093712576");
                                        mlng_point.push("126.50297748855152");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("622");
                                        mareacode.push("260");
                                        mimgatchfileid.push("");
                                        mname_kor.push("주안역(픽업존)");
                                        mlti_point.push("37.464645");
                                        mlng_point.push("126.679785");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("53711");
                                        mareacode.push("110");
                                        mimgatchfileid.push("");
                                        mname_kor.push("중고차영업1지점");
                                        mlti_point.push("37.257753");
                                        mlng_point.push("126.985029");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("967");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("중고차영업2지점");
                                        mlti_point.push("37.047150");
                                        mlng_point.push("127.131052");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("972");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("진주");
                                        mlti_point.push("35.15399417605535");
                                        mlng_point.push("128.11773533979965");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("614");
                                        mareacode.push("230");
                                        mimgatchfileid.push("");
                                        mname_kor.push("진주KTX역(픽업존)");
                                        mlti_point.push("35.15188");
                                        mlng_point.push("128.11900");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("61412");
                                        mareacode.push("230");
                                        mimgatchfileid.push("");
                                        mname_kor.push("창원");
                                        mlti_point.push("35.23906416209037");
                                        mlng_point.push("128.70103443536217");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("618");
                                        mareacode.push("230");
                                        mimgatchfileid.push("");
                                        mname_kor.push("천안(장기)");
                                        mlti_point.push("36.8320657387018");
                                        mlng_point.push("127.1498451811473 ");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("713");
                                        mareacode.push("160");
                                        mimgatchfileid.push("");
                                        mname_kor.push("천안아산KTX");
                                        mlti_point.push("36.795341");
                                        mlng_point.push("127.107397");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("726");
                                        mareacode.push("160");
                                        mimgatchfileid.push("");
                                        mname_kor.push("천호");
                                        mlti_point.push("37.5369841");
                                        mlng_point.push("127.130459");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("417");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push("청주");
                                        mlti_point.push("36.634860");
                                        mlng_point.push("127.451403");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("711");
                                        mareacode.push("140");
                                        mimgatchfileid.push("");
                                        mname_kor.push("청주국제공항");
                                        mlti_point.push("36.6346");
                                        mlng_point.push("127.4514");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("71102");
                                        mareacode.push("140");
                                        mimgatchfileid.push("");
                                        mname_kor.push("춘천");
                                        mlti_point.push("37.865968");
                                        mlng_point.push("127.72611");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("524");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                        mname_kor.push("춘천역(픽업존)");
                                        mlti_point.push("37.88402622");
                                        mlng_point.push("127.7169224");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("52403");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                        mname_kor.push("충주");
                                        mlti_point.push("36.9755896");
                                        mlng_point.push("127.9101272");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("712");
                                        mareacode.push("140");
                                        mimgatchfileid.push("");
                                        mname_kor.push("충주버스터미널(픽업존)");
                                        mlti_point.push("36.98157003");
                                        mlng_point.push("127.9144435");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("71206");
                                        mareacode.push("140");
                                        mimgatchfileid.push("");
                                        mname_kor.push("충주체육관(픽업존)");
                                        mlti_point.push("36.98208875");
                                        mlng_point.push("127.9371821");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("71207");
                                        mareacode.push("140");
                                        mimgatchfileid.push("");
                                        mname_kor.push("트레이더스김포(픽업존)");
                                        mlti_point.push("37.61263");
                                        mlng_point.push("126.73114");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("54308");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("판교테크노밸리(픽업존)");
                                        mlti_point.push("37.4118281");
                                        mlng_point.push("127.0934801");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("50610");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("평택");
                                        mlti_point.push("37.056602");
                                        mlng_point.push("127.054220");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("518");
                                        mareacode.push("120");
                                        mimgatchfileid.push("");
                                        mname_kor.push("포항(장기)");
                                        mlti_point.push("36.07748265501875");
                                        mlng_point.push("129.34357035146107");
                                        mbranchgubun.push("1");
                                        mbranchcode.push("620");
                                        mareacode.push("210");
                                        mimgatchfileid.push("");
                                        mname_kor.push("포항KTX");
                                        mlti_point.push("36.073803");
                                        mlng_point.push("129.343378");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("630");
                                        mareacode.push("210");
                                        mimgatchfileid.push("");
                                        mname_kor.push("포항경주공항(픽업존)");
                                        mlti_point.push("35.98430");
                                        mlng_point.push("129.43507");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("63008");
                                        mareacode.push("210");
                                        mimgatchfileid.push("");
                                        mname_kor.push("포항터미널(픽업존)");
                                        mlti_point.push("36.01343");
                                        mlng_point.push("129.34948");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("63009");
                                        mareacode.push("210");
                                        mimgatchfileid.push("");
                                        mname_kor.push("해운대");
                                        mlti_point.push("35.163161");
                                        mlng_point.push("129.158535");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("645");
                                        mareacode.push("240");
                                        mimgatchfileid.push("");
                                        mname_kor.push("홍대");
                                        mlti_point.push("37.556450618417706");
                                        mlng_point.push("126.92159274000872");
                                        mbranchgubun.push("0");
                                        mbranchcode.push("413");
                                        mareacode.push("100");
                                        mimgatchfileid.push("");
                                        mname_kor.push(" 경포대(픽업존)");
                                        mlti_point.push("37.80249");
                                        mlng_point.push("128.90340");
                                        mbranchgubun.push("2");
                                        mbranchcode.push("53003");
                                        mareacode.push("130");
                                        mimgatchfileid.push("");
                                    </script>
                                    <ul class="listCardPCTop">
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart010" class="icon heart3" value="421"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart010"></label>
                                            <input type="hidden"
                                                value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]"
                                                id="fileList" disabled />
                                            <input type="hidden" name=fileList_FILE0000000001910175 value="0"
                                                disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('421', this);" class="layer-details-open "
                                                data-branchcode="421" data-areacode="100"
                                                data-img_atchfile_id="FILE0000000001910175"
                                                data-layer="layer-sel-branch">
                                                <strong>가산디지털</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 금천구 가산디지털1로
                                                        186 제이플라츠 지하 1층 B106호</p>
                                                    <p><i class="icon call"></i>02-3664-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart011" class="icon heart3" value="402"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart011"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('402', this);" class="layer-details-open "
                                                data-branchcode="402" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>강남</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울특별시 강남구
                                                        테헤란로81길53, 1층</p>
                                                    <p><i class="icon call"></i>02-3443-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart012" class="icon heart3" value="401"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart012"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('401', this);" class="layer-details-open "
                                                data-branchcode="401" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>강남(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 강남구 테헤란로81길
                                                        53, 2층 롯데렌터카 강남지점</p>
                                                    <p><i class="icon call"></i>02-548-8116</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart013" class="icon heart3" value="45403"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart013"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('45403', this);" class="layer-details-open "
                                                data-branchcode="45403" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>강남(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울특별시 강남구
                                                        테헤란로81길53 </p>
                                                    <p><i class="icon call"></i>02-511-1001 </p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart014" class="icon heart3" value="42610"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart014"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('42610', this);" class="layer-details-open "
                                                data-branchcode="42610" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>강남고속버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 서초구 신반포로
                                                        194 강남고속버스터미널 파미에스테이션주차장</p>
                                                    <p><i class="icon call"></i>02-529-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart015" class="icon heart3" value="530"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart015"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('530', this);" class="layer-details-open "
                                                data-branchcode="530" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>강릉KTX</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원도 강릉시 용지로
                                                        176, 강릉역내 2번출구 렌터카하우스 </p>
                                                    <p><i class="icon call"></i>033-645-8002</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart016" class="icon heart3" value="53002"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart016"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('53002', this);" class="layer-details-open "
                                                data-branchcode="53002" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>강릉버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원 강릉시 교1동
                                                        949-28 강릉영업소주차장</p>
                                                    <p><i class="icon call"></i>033-645-8002</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart017" class="icon heart3" value="427"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart017"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('427', this);" class="layer-details-open "
                                                data-branchcode="427" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>강북(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 용산구 청파로
                                                        369, 2층</p>
                                                    <p><i class="icon call"></i>02-6711-1004</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart018" class="icon heart3" value="61411"
                                                data-areacode="230" data-id="">
                                            <label for="chkHeart018"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('61411', this);" class="layer-details-open "
                                                data-branchcode="61411" data-areacode="230" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>개양터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경남 진주시 진주대로 594
                                                        개양정류장 하차장 롯데리아 앞</p>
                                                    <p><i class="icon call"></i>055-753-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart019" class="icon heart3" value="615"
                                                data-areacode="230" data-id="">
                                            <label for="chkHeart019"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('615', this);" class="layer-details-open "
                                                data-branchcode="615" data-areacode="230" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>거제</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경상남도 거제시 거제중앙로
                                                        1930-10, 골든 아틀란티스 115호</p>
                                                    <p><i class="icon call"></i>055-637-8009</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0110" class="icon heart3" value="45404"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0110"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('45404', this);" class="layer-details-open "
                                                data-branchcode="45404" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>건대입구(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울특별시 광진구 화양동
                                                        능동로 110 스타시티영존 지하 5층</p>
                                                    <p><i class="icon call"></i>02-511-1001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0111" class="icon heart3" value="511"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0111"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('511', this);" class="layer-details-open "
                                                data-branchcode="511" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>경기동부(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 의왕시 고산로 56,
                                                        롯데첨단소재 비즈동 3층</p>
                                                    <p><i class="icon call"></i>031-238-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0112" class="icon heart3" value="507"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0112"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('507', this);" class="layer-details-open "
                                                data-branchcode="507" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>경기서부(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 의왕시 고산로 56,
                                                        롯데첨단소재 비즈동 3층</p>
                                                    <p><i class="icon call"></i>031-427-8009</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0113" class="icon heart3" value="611"
                                                data-areacode="210" data-id="">
                                            <label for="chkHeart0113"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('611', this);" class="layer-details-open "
                                                data-branchcode="611" data-areacode="210" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>경주</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경북 경주시 대경로
                                                        4399-8</p>
                                                    <p><i class="icon call"></i>054-746-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0114" class="icon heart3" value="61107"
                                                data-areacode="210" data-id="">
                                            <label for="chkHeart0114"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('61107', this);" class="layer-details-open "
                                                data-branchcode="61107" data-areacode="210" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>경주버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경북 경주시 노서동
                                                        157-8 경주시외버스터미널 주차장</p>
                                                    <p><i class="icon call"></i>054-746-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0115" class="icon heart3" value="51307"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0115"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('51307', this);" class="layer-details-open "
                                                data-branchcode="51307" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>고잔역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기 안산시 단원구 광덕4로
                                                        103, 고잔역 2번출구 앞 공영주차장</p>
                                                    <p><i class="icon call"></i>031-407-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0116" class="icon heart3" value="450"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0116"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('450', this);" class="layer-details-open "
                                                data-branchcode="450" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>공덕</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 마포구 마포대로
                                                        109(공덕동), 롯데시티호텔 2F</p>
                                                    <p><i class="icon call"></i>02-714-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0117" class="icon heart3" value="51708"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0117"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('51708', this);" class="layer-details-open "
                                                data-branchcode="51708" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>과천시민광장(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기 과천시 중앙동 4
                                                    </p>
                                                    <p><i class="icon call"></i>031-454-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0118" class="icon heart3" value="428"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0118"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('428', this);" class="layer-details-open "
                                                data-branchcode="428" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>관악</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 관악구 남부순환로
                                                        1811 신원메트로빌 111호</p>
                                                    <p><i class="icon call"></i>02-875-8200</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0119" class="icon heart3" value="53614"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0119"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('53614', this);" class="layer-details-open "
                                                data-branchcode="53614" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>광교(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>수원시 영통구 광교중앙로
                                                        140 광교컨벤션센터 주차장</p>
                                                    <p><i class="icon call"></i>031-215-8181</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0120" class="icon heart3" value="42107"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0120"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('42107', this);" class="layer-details-open "
                                                data-branchcode="42107" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>광명역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 광명시 덕안로 16
                                                    </p>
                                                    <p><i class="icon call"></i>02-3664-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0121" class="icon heart3" value="708"
                                                data-areacode="200" data-id="">
                                            <label for="chkHeart0121"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('708', this);" class="layer-details-open "
                                                data-branchcode="708" data-areacode="200" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>광주공항</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>광주시 광산구 상무대로
                                                        420-25 광주공항내 </p>
                                                    <p><i class="icon call"></i>062-955-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0122" class="icon heart3" value="707"
                                                data-areacode="200" data-id="">
                                            <label for="chkHeart0122"></label>
                                            <input type="hidden"
                                                value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]"
                                                id="fileList" disabled />
                                            <input type="hidden" name=fileList_FILE0000000002046933 value="0"
                                                disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('707', this);" class="layer-details-open "
                                                data-branchcode="707" data-areacode="200"
                                                data-img_atchfile_id="FILE0000000002046933"
                                                data-layer="layer-sel-branch">
                                                <strong>광주송정KTX</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>광주광역시 광산구
                                                        상무대로205번길 28 (주차장사무실)</p>
                                                    <p><i class="icon call"></i>062-943-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0123" class="icon heart3" value="71019"
                                                data-areacode="200" data-id="">
                                            <label for="chkHeart0123"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('71019', this);" class="layer-details-open "
                                                data-branchcode="71019" data-areacode="200" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>광주종합버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>광주 서구 무진대로 904
                                                        광주종합버스터미널 주차장</p>
                                                    <p><i class="icon call"></i>062-412-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0124" class="icon heart3" value="706"
                                                data-areacode="200" data-id="">
                                            <label for="chkHeart0124"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('706', this);" class="layer-details-open "
                                                data-branchcode="706" data-areacode="200" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>광주지점(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>광주 북구 무등로 239
                                                        한국시멘트빌딩 1층</p>
                                                    <p><i class="icon call"></i>062-522-6121</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0125" class="icon heart3" value="429"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0125"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('429', this);" class="layer-details-open "
                                                data-branchcode="429" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>광화문(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 용산구 청파로
                                                        369, 3층</p>
                                                    <p><i class="icon call"></i>02-6711-1114</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0126" class="icon heart3" value="412"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0126"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('412', this);" class="layer-details-open "
                                                data-branchcode="412" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>구로(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울특별시 금천구
                                                        가산디지털1로 186 지하1층 B106</p>
                                                    <p><i class="icon call"></i>02-865-8003</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0127" class="icon heart3" value="422"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0127"></label>
                                            <input type="hidden"
                                                value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]"
                                                id="fileList" disabled />
                                            <input type="hidden" name=fileList_FILE0000000002025507 value="0"
                                                disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('422', this);" class="layer-details-open "
                                                data-branchcode="422" data-areacode="100"
                                                data-img_atchfile_id="FILE0000000002025507"
                                                data-layer="layer-sel-branch">
                                                <strong>구로디지털</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 구로구 디지털로
                                                        300, 롯데시티호텔구로 1층</p>
                                                    <p><i class="icon call"></i>02-866-8003</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0128" class="icon heart3" value="616"
                                                data-areacode="210" data-id="">
                                            <label for="chkHeart0128"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('616', this);" class="layer-details-open "
                                                data-branchcode="616" data-areacode="210" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>구미</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경상북도 구미시 인동가산로
                                                        20 1층</p>
                                                    <p><i class="icon call"></i>054-475-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0129" class="icon heart3" value="60411"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart0129"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('60411', this);" class="layer-details-open "
                                                data-branchcode="60411" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>구포역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산 북구 구포만세길 82
                                                        구포KTX역 공영주차장</p>
                                                    <p><i class="icon call"></i>051-941-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0130" class="icon heart3" value="721"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart0130"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('721', this);" class="layer-details-open "
                                                data-branchcode="721" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>군산</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전북 군산시 월명로 134
                                                    </p>
                                                    <p><i class="icon call"></i>063-452-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0131" class="icon heart3" value="72113"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart0131"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72113', this);" class="layer-details-open "
                                                data-branchcode="72113" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>군산대학교 (픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라북도 군산시 대학로
                                                        558</p>
                                                    <p><i class="icon call"></i>063-452-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0132" class="icon heart3" value="72114"
                                                data-areacode="140" data-id="">
                                            <label for="chkHeart0132"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72114', this);" class="layer-details-open "
                                                data-branchcode="72114" data-areacode="140" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>군산역 (픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>군산시 내흥2길 197
                                                    </p>
                                                    <p><i class="icon call"></i>063-452-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0133" class="icon heart3" value="72112"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart0133"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72112', this);" class="layer-details-open "
                                                data-branchcode="72112" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>군산터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>군산시 해망로18</p>
                                                    <p><i class="icon call"></i>063-452-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0134" class="icon heart3" value="72413"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart0134"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72413', this);" class="layer-details-open "
                                                data-branchcode="72413" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>김제버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>김제시 요촌동 47-24
                                                    </p>
                                                    <p><i class="icon call"></i>063-851-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0135" class="icon heart3" value="635"
                                                data-areacode="210" data-id="">
                                            <label for="chkHeart0135"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('635', this);" class="layer-details-open "
                                                data-branchcode="635" data-areacode="210" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>김천구미KTX</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경상북도 김천시 남면
                                                        혁신1로 51 김천구미KTX역 1층</p>
                                                    <p><i class="icon call"></i>054-434-8002</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0136" class="icon heart3" value="543"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0136"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('543', this);" class="layer-details-open "
                                                data-branchcode="543" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>김포( 운양역 )</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 김포시 김포한강11로
                                                        288-32 (운양동,골든스퀘어) 1층 102호</p>
                                                    <p><i class="icon call"></i>031-901-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0137" class="icon heart3" value="420"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0137"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('420', this);" class="layer-details-open "
                                                data-branchcode="420" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>김포공항</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 강서구 하늘길 112
                                                        국내선청사1층 6번게이트 (공항동)</p>
                                                    <p><i class="icon call"></i>02-2663-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0138" class="icon heart3" value="604"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart0138"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('604', this);" class="layer-details-open "
                                                data-branchcode="604" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>김해공항</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산 강서구 공항앞길 9
                                                    </p>
                                                    <p><i class="icon call"></i>051-941-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0139" class="icon heart3" value="60410"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart0139"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('60410', this);" class="layer-details-open "
                                                data-branchcode="60410" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>김해공항 국내선 데스크</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산광역시 강서구 공항진입로
                                                        108</p>
                                                    <p><i class="icon call"></i>051-941-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0140" class="icon heart3" value="71018"
                                                data-areacode="200" data-id="">
                                            <label for="chkHeart0140"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('71018', this);" class="layer-details-open "
                                                data-branchcode="71018" data-areacode="200" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>나주(빛가람)(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전남 나주시 호수로 77
                                                        빛가람호수공원 주차장</p>
                                                    <p><i class="icon call"></i>062-412-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0141" class="icon heart3" value="71020"
                                                data-areacode="200" data-id="">
                                            <label for="chkHeart0141"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('71020', this);" class="layer-details-open "
                                                data-branchcode="71020" data-areacode="200" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>나주역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라남도 나주시 나주역길
                                                        56</p>
                                                    <p><i class="icon call"></i>062-412-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0142" class="icon heart3" value="53713"
                                                data-areacode="110" data-id="">
                                            <label for="chkHeart0142"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('53713', this);" class="layer-details-open "
                                                data-branchcode="53713" data-areacode="110" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>남동인더스파크(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>인천광역시 남동구 은청로
                                                        17 (고잔동 970-14) 남동인더스파크역 공영주차장</p>
                                                    <p><i class="icon call"></i>032-881-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0143" class="icon heart3" value="72005"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart0143"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72005', this);" class="layer-details-open "
                                                data-branchcode="72005" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>남악(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라남도 무안군 삼향읍
                                                        남악3로 75 국민은행 남악점 뒤 임시공용주차장</p>
                                                    <p><i class="icon call"></i>061-274-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0144" class="icon heart3" value="44306"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0144"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('44306', this);" class="layer-details-open "
                                                data-branchcode="44306" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>당산(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울특별시 영등포구
                                                        당산동5가 11-39 당산고각 밑 노상공영주차장</p>
                                                    <p><i class="icon call"></i>02-785-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0145" class="icon heart3" value="715"
                                                data-areacode="160" data-id="">
                                            <label for="chkHeart0145"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('715', this);" class="layer-details-open "
                                                data-branchcode="715" data-areacode="160" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>당진</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충청남도 당진시 당진중앙2로
                                                        447 G1파크빌 206호 </p>
                                                    <p><i class="icon call"></i>041-354-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0146" class="icon heart3" value="607"
                                                data-areacode="220" data-id="">
                                            <label for="chkHeart0146"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('607', this);" class="layer-details-open "
                                                data-branchcode="607" data-areacode="220" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>대구(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>대구 동구 신암남로 127
                                                        롯데렌터카 2층</p>
                                                    <p><i class="icon call"></i>053-611-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0147" class="icon heart3" value="64115"
                                                data-areacode="220" data-id="">
                                            <label for="chkHeart0147"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('64115', this);" class="layer-details-open "
                                                data-branchcode="64115" data-areacode="220" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>대구공항(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>대구광역시 동구 공항로
                                                        221 대구국제공항 1번 게이트 앞</p>
                                                    <p><i class="icon call"></i>053-616-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0148" class="icon heart3" value="72516"
                                                data-areacode="170" data-id="">
                                            <label for="chkHeart0148"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72516', this);" class="layer-details-open "
                                                data-branchcode="72516" data-areacode="170" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>대덕테크노밸리(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>대전 유성구 테크노중앙로
                                                        14 롯데마트 대덕테크노밸리점 지상 1층 주차장</p>
                                                    <p><i class="icon call"></i>042-252-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0149" class="icon heart3" value="725"
                                                data-areacode="170" data-id="">
                                            <label for="chkHeart0149"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('725', this);" class="layer-details-open "
                                                data-branchcode="725" data-areacode="170" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>대전</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>대전광역시 서구 유등로
                                                        487(용문동)</p>
                                                    <p><i class="icon call"></i>042-252-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0150" class="icon heart3" value="701"
                                                data-areacode="170" data-id="">
                                            <label for="chkHeart0150"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('701', this);" class="layer-details-open "
                                                data-branchcode="701" data-areacode="170" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>대전지점(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>대전광역시 서구 유등로
                                                        487(용문동)</p>
                                                    <p><i class="icon call"></i>042-252-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0151" class="icon heart3" value="710"
                                                data-areacode="200" data-id="">
                                            <label for="chkHeart0151"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('710', this);" class="layer-details-open "
                                                data-branchcode="710" data-areacode="200" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>동광주</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>광주시 북구 무등로 239
                                                        한국시멘트빌딩 1층</p>
                                                    <p><i class="icon call"></i>062-412-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0152" class="icon heart3" value="641"
                                                data-areacode="220" data-id="">
                                            <label for="chkHeart0152"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('641', this);" class="layer-details-open "
                                                data-branchcode="641" data-areacode="220" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>동대구KTX</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>대구 동구 신암남로 127
                                                        롯데렌터카 1층</p>
                                                    <p><i class="icon call"></i>053-616-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0153" class="icon heart3" value="45405"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0153"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('45405', this);" class="layer-details-open "
                                                data-branchcode="45405" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>동서울터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울 광진구 광나루로56길
                                                        85 테크노-마트21 지하 3층</p>
                                                    <p><i class="icon call"></i>02-511-1001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0154" class="icon heart3" value="52010"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0154"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('52010', this);" class="layer-details-open "
                                                data-branchcode="52010" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>동탄역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기 화성시 동탄역로 151
                                                    </p>
                                                    <p><i class="icon call"></i>031-373-8006</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0155" class="icon heart3" value="72615"
                                                data-areacode="160" data-id="">
                                            <label for="chkHeart0155"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72615', this);" class="layer-details-open "
                                                data-branchcode="72615" data-areacode="160" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>두정역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충남 천안시 서북구 천안대로
                                                        999-22</p>
                                                    <p><i class="icon call"></i>041-549-0030</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0156" class="icon heart3" value="624"
                                                data-areacode="260" data-id="">
                                            <label for="chkHeart0156"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('624', this);" class="layer-details-open "
                                                data-branchcode="624" data-areacode="260" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>롯데호텔(중문)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>제주특별자치도 서귀포시
                                                        중문관광로 72번길 35 롯데호텔제주 </p>
                                                    <p><i class="icon call"></i>064-738-8101</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0157" class="icon heart3" value="448"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0157"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('448', this);" class="layer-details-open "
                                                data-branchcode="448" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>마곡</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 강서구 마곡중앙로
                                                        76 힐스테이트에코마곡역 2층 209호 </p>
                                                    <p><i class="icon call"></i>02-2063-8504 </p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0158" class="icon heart3" value="52317"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart0158"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('52317', this);" class="layer-details-open "
                                                data-branchcode="52317" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>만종역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원특별자치도 원주시 호저면
                                                        운동들2길 21-33</p>
                                                    <p><i class="icon call"></i>033-764-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0159" class="icon heart3" value="444"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0159"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('444', this);" class="layer-details-open "
                                                data-branchcode="444" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>목동</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 양천구 신월로387,
                                                        유앤미법조빌딩 1층 107호</p>
                                                    <p><i class="icon call"></i>02-2659-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0160" class="icon heart3" value="72002"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart0160"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72002', this);" class="layer-details-open "
                                                data-branchcode="72002" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>목포(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전남 목포시 백년대로 272
                                                        1층</p>
                                                    <p><i class="icon call"></i>061-274-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0161" class="icon heart3" value="720"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart0161"></label>
                                            <input type="hidden"
                                                value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]"
                                                id="fileList" disabled />
                                            <input type="hidden" name=fileList_FILE0000000003029912 value="0"
                                                disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('720', this);" class="layer-details-open "
                                                data-branchcode="720" data-areacode="190"
                                                data-img_atchfile_id="FILE0000000003029912"
                                                data-layer="layer-sel-branch">
                                                <strong>목포역</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전남 목포시 영산로
                                                        100-1</p>
                                                    <p><i class="icon call"></i>061-274-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0162" class="icon heart3" value="72003"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart0162"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72003', this);" class="layer-details-open "
                                                data-branchcode="72003" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>목포종합버스터미널 (픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라남도 목포시 영산로
                                                        525 목포종합버스터미널 입구 택시승강장</p>
                                                    <p><i class="icon call"></i>061-274-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0163" class="icon heart3" value="719"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart0163"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('719', this);" class="layer-details-open "
                                                data-branchcode="719" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>목포지점(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전남 목포시 백년대로 272
                                                    </p>
                                                    <p><i class="icon call"></i>061-274-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0164" class="icon heart3" value="72116"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart0164"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72116', this);" class="layer-details-open "
                                                data-branchcode="72116" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>보령터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충남 보령시 터미널길 8
                                                    </p>
                                                    <p><i class="icon call"></i>063-452-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0165" class="icon heart3" value="601"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart0165"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('601', this);" class="layer-details-open "
                                                data-branchcode="601" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>부산(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산시 동구
                                                        중앙대로248번길 7-7 3층</p>
                                                    <p><i class="icon call"></i>051-469-8630</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0166" class="icon heart3" value="60516"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart0166"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('60516', this);" class="layer-details-open "
                                                data-branchcode="60516" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>부산국제여객터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산 동구 초량동 45-66
                                                        부산국제여객터미널 4번 게이트 앞</p>
                                                    <p><i class="icon call"></i>051-442-0091</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0167" class="icon heart3" value="60412"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart0167"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('60412', this);" class="layer-details-open "
                                                data-branchcode="60412" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>부산서부버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산 사상구 사상로 201
                                                        부산서부시외버스터미널전용주차장</p>
                                                    <p><i class="icon call"></i>051-941-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0168" class="icon heart3" value="605"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart0168"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('605', this);" class="layer-details-open "
                                                data-branchcode="605" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>부산역</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산시 동구
                                                        중앙대로248번길 7-7 1층</p>
                                                    <p><i class="icon call"></i>051-442-0091</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0169" class="icon heart3" value="64509"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart0169"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('64509', this);" class="layer-details-open "
                                                data-branchcode="64509" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>부산종합버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산광역시 금정구 중앙대로
                                                        2238 부산종합버스터미널 주차장</p>
                                                    <p><i class="icon call"></i>051-744-6160</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0170" class="icon heart3" value="60517"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart0170"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('60517', this);" class="layer-details-open "
                                                data-branchcode="60517" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>부전역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산시 진구 부전로181
                                                    </p>
                                                    <p><i class="icon call"></i>051-442-0091</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0171" class="icon heart3" value="519"
                                                data-areacode="110" data-id="">
                                            <label for="chkHeart0171"></label>
                                            <input type="hidden"
                                                value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]"
                                                id="fileList" disabled />
                                            <input type="hidden" name=fileList_FILE0000000002728795 value="0"
                                                disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('519', this);" class="layer-details-open "
                                                data-branchcode="519" data-areacode="110"
                                                data-img_atchfile_id="FILE0000000002728795"
                                                data-layer="layer-sel-branch">
                                                <strong>부천</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>인천광역시 부평구 체육관로
                                                        38, 세원빌딩 1층 103호 </p>
                                                    <p><i class="icon call"></i>032-679-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0172" class="icon heart3" value="51908"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0172"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('51908', this);" class="layer-details-open "
                                                data-branchcode="51908" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>부천터미널소풍(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 부천시 송내대로
                                                        239 부천터미널소풍 주차장</p>
                                                    <p><i class="icon call"></i>032-679-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0173" class="icon heart3" value="53712"
                                                data-areacode="110" data-id="">
                                            <label for="chkHeart0173"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('53712', this);" class="layer-details-open "
                                                data-branchcode="53712" data-areacode="110" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>부평역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>인천광역시 부평구 광장로16
                                                    </p>
                                                    <p><i class="icon call"></i>032-881-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0174" class="icon heart3" value="506"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0174"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('506', this);" class="layer-details-open "
                                                data-branchcode="506" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>분당</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 성남시 분당구
                                                        성남대로925번길 11, 124호 </p>
                                                    <p><i class="icon call"></i>031-701-8007</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0175" class="icon heart3" value="457"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0175"></label>
                                            <input type="hidden"
                                                value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]"
                                                id="fileList" disabled />
                                            <input type="hidden" name=fileList_FILE0000000002549229 value="0"
                                                disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('457', this);" class="layer-details-open "
                                                data-branchcode="457" data-areacode="100"
                                                data-img_atchfile_id="FILE0000000002549229"
                                                data-layer="layer-sel-branch">
                                                <strong>사당</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울특별시 서초구 서초대로
                                                        3-4 방배디오슈페리움1차 b112호</p>
                                                    <p><i class="icon call"></i>02-3472-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0176" class="icon heart3" value="51308"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0176"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('51308', this);" class="layer-details-open "
                                                data-branchcode="51308" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>사리역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 안산시 상록구 충장로
                                                        103</p>
                                                    <p><i class="icon call"></i>031-407-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0177" class="icon heart3" value="72412"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart0177"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72412', this);" class="layer-details-open "
                                                data-branchcode="72412" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>삼례역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라북도 완주군 삼례읍
                                                        후정리 210-11</p>
                                                    <p><i class="icon call"></i>063-851-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0178" class="icon heart3" value="42805"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0178"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('42805', this);" class="layer-details-open "
                                                data-branchcode="42805" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>상도(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 동작구 흑석로 84
                                                        중앙대 정문 지하 2층 주차장</p>
                                                    <p><i class="icon call"></i>02-875-8200</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0179" class="icon heart3" value="449"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0179"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('449', this);" class="layer-details-open "
                                                data-branchcode="449" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>상봉(망우역)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울특별시 중랑구 망우로
                                                        353, 상봉이노시티 C동 117호(상봉동, 상봉 프레미어스 엠코) </p>
                                                    <p><i class="icon call"></i>02-491-8002</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0180" class="icon heart3" value="64116"
                                                data-areacode="220" data-id="">
                                            <label for="chkHeart0180"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('64116', this);" class="layer-details-open "
                                                data-branchcode="64116" data-areacode="220" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>서대구KTX역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>대구광역시 서구 와룡로
                                                        527</p>
                                                    <p><i class="icon call"></i>053-616-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0181" class="icon heart3" value="714"
                                                data-areacode="160" data-id="">
                                            <label for="chkHeart0181"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('714', this);" class="layer-details-open "
                                                data-branchcode="714" data-areacode="160" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>서산</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충남 서산시 서해로 3437
                                                        원진빌딩 2층</p>
                                                    <p><i class="icon call"></i>041-855-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0182" class="icon heart3" value="430"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0182"></label>
                                            <input type="hidden"
                                                value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]"
                                                id="fileList" disabled />
                                            <input type="hidden" name=fileList_FILE0000000002466376 value="0"
                                                disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('430', this);" class="layer-details-open "
                                                data-branchcode="430" data-areacode="100"
                                                data-img_atchfile_id="FILE0000000002466376"
                                                data-layer="layer-sel-branch">
                                                <strong>서울역</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 용산구 청파로 369
                                                        1층 </p>
                                                    <p><i class="icon call"></i>02-715-0010</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0183" class="icon heart3" value="418"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0183"></label>
                                            <input type="hidden"
                                                value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]"
                                                id="fileList" disabled />
                                            <input type="hidden" name=fileList_FILE0000000003307374 value="0"
                                                disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('418', this);" class="layer-details-open "
                                                data-branchcode="418" data-areacode="100"
                                                data-img_atchfile_id="FILE0000000003307374"
                                                data-layer="layer-sel-branch">
                                                <strong>서초(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울특별시 서초구
                                                        서초대로51길 9, 3층(마이빌딩)</p>
                                                    <p><i class="icon call"></i>02-3486-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0184" class="icon heart3" value="53615"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0184"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('53615', this);" class="layer-details-open "
                                                data-branchcode="53615" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>성균관대역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>수원시 장안구 화산로 242
                                                        성균관대역 환승주차장</p>
                                                    <p><i class="icon call"></i>031-215-8181</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0185" class="icon heart3" value="72803"
                                                data-areacode="150" data-id="">
                                            <label for="chkHeart0185"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72803', this);" class="layer-details-open "
                                                data-branchcode="72803" data-areacode="150" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>세종버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>세종 갈매로 37-12,
                                                        세종고속시외버스터미널 주차장</p>
                                                    <p><i class="icon call"></i>044-868-8933</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0186" class="icon heart3" value="728"
                                                data-areacode="150" data-id="">
                                            <label for="chkHeart0186"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('728', this);" class="layer-details-open "
                                                data-branchcode="728" data-areacode="150" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>세종지점</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>세종특별자치시 한누리대로
                                                        157 금강프라자 103호 (나성동)</p>
                                                    <p><i class="icon call"></i>044-868-8933</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0187" class="icon heart3" value="522"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart0187"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('522', this);" class="layer-details-open "
                                                data-branchcode="522" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>속초</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원도 속초시 청대로 301
                                                    </p>
                                                    <p><i class="icon call"></i>033-632-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0188" class="icon heart3" value="71021"
                                                data-areacode="200" data-id="">
                                            <label for="chkHeart0188"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('71021', this);" class="layer-details-open "
                                                data-branchcode="71021" data-areacode="200" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>송정역주차빌딩(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>광주광역시 광산구
                                                        상무대로179 송정역 주차빌딩 7층</p>
                                                    <p><i class="icon call"></i>062-412-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0189" class="icon heart3" value="415"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0189"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('415', this);" class="layer-details-open "
                                                data-branchcode="415" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>송파</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 송파구 충민로52
                                                        가든파이브 WORKS B1 1088호</p>
                                                    <p><i class="icon call"></i>02-2203-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0190" class="icon heart3" value="433"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0190"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('433', this);" class="layer-details-open "
                                                data-branchcode="433" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>송파(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i> 서울시 송파구 충민로 10
                                                        5층 (문정동, 가든파이브 Tool관) 5-B </p>
                                                    <p><i class="icon call"></i>02-3472-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0191" class="icon heart3" value="41509"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0191"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('41509', this);" class="layer-details-open "
                                                data-branchcode="41509" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>수서역SRT</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 강남구 밤고개로 99
                                                        수서역SRT 주차장 1번 출입구</p>
                                                    <p><i class="icon call"></i>02-2203-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0192" class="icon heart3" value="536"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0192"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('536', this);" class="layer-details-open "
                                                data-branchcode="536" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>수원</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 수원시 팔달구 인계로
                                                        123 KBS 수원센터 후문 (인계동행정복지센터 옆)</p>
                                                    <p><i class="icon call"></i>031-215-8181</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0193" class="icon heart3" value="53612"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart0193"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('53612', this);" class="layer-details-open "
                                                data-branchcode="53612" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>수원역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>수원시 권선구 세화로
                                                        134번길 31 수원역 메쎄 주차장</p>
                                                    <p><i class="icon call"></i>031-215-8181</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0194" class="icon heart3" value="453"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0194"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('453', this);" class="layer-details-open "
                                                data-branchcode="453" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>수유</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 강북구 도봉로 308
                                                        북한산스카이빌딩 10층 </p>
                                                    <p><i class="icon call"></i>02-922-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0195" class="icon heart3" value="717"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart0195"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('717', this);" class="layer-details-open "
                                                data-branchcode="717" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>순천</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라남도 순천시 팔마로
                                                        145</p>
                                                    <p><i class="icon call"></i>061-724-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0196" class="icon heart3" value="71714"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart0196"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('71714', this);" class="layer-details-open "
                                                data-branchcode="71714" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>순천신대CGV(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>순천시 해룡면 해광로 199
                                                    </p>
                                                    <p><i class="icon call"></i>061-724-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0197" class="icon heart3" value="71713"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart0197"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('71713', this);" class="layer-details-open "
                                                data-branchcode="71713" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>순천터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>순천시 장천3길 13</p>
                                                    <p><i class="icon call"></i>061-724-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0198" class="icon heart3" value="61106"
                                                data-areacode="210" data-id="">
                                            <label for="chkHeart0198"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('61106', this);" class="layer-details-open "
                                                data-branchcode="61106" data-areacode="210" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>신경주KTX</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경상북도 경주시 건천읍
                                                        신경주역로 80</p>
                                                    <p><i class="icon call"></i>054-746-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart0199" class="icon heart3" value="443"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart0199"></label>
                                            <input type="hidden"
                                                value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]"
                                                id="fileList" disabled />
                                            <input type="hidden" name=fileList_FILE0000000001910146 value="0"
                                                disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('443', this);" class="layer-details-open "
                                                data-branchcode="443" data-areacode="100"
                                                data-img_atchfile_id="FILE0000000001910146"
                                                data-layer="layer-sel-branch">
                                                <strong>신도림</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 구로구 경인로 661
                                                        신도림푸르지오1차 104동 240호</p>
                                                    <p><i class="icon call"></i>02-785-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01100" class="icon heart3" value="64510"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart01100"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('64510', this);" class="layer-details-open "
                                                data-branchcode="64510" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>신해운대역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산시 해운대구 장산로427
                                                    </p>
                                                    <p><i class="icon call"></i>051-744-6160</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01101" class="icon heart3" value="513"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01101"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('513', this);" class="layer-details-open "
                                                data-branchcode="513" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>안산</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 안산시 단원구 고잔로
                                                        57-11, 108호</p>
                                                    <p><i class="icon call"></i>031-407-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01102" class="icon heart3" value="517"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01102"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('517', this);" class="layer-details-open "
                                                data-branchcode="517" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>안양</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 안양시 동안구
                                                        시민대로 312 컬러힐주차빌딩 1층 106호</p>
                                                    <p><i class="icon call"></i>031-454-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01103" class="icon heart3" value="50812"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01103"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('50812', this);" class="layer-details-open "
                                                data-branchcode="50812" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>야당역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기 파주시 소리천로 10
                                                        야당역 2번 출구 앞 주차장</p>
                                                    <p><i class="icon call"></i>031-814-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01104" class="icon heart3" value="426"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart01104"></label>
                                            <input type="hidden"
                                                value="[SearchVO [pageIndex=1, searchCondition=, searchKeyword=, searchDispYn=, pageUnit=0, pageSize=0, searchStartDate=, searchEndDate=]]"
                                                id="fileList" disabled />
                                            <input type="hidden" name=fileList_FILE0000000000318238 value="0"
                                                disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('426', this);" class="layer-details-open "
                                                data-branchcode="426" data-areacode="100"
                                                data-img_atchfile_id="FILE0000000000318238"
                                                data-layer="layer-sel-branch">
                                                <strong>양재</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 서초구 강남대로221
                                                        양재역환승주차장 206호</p>
                                                    <p><i class="icon call"></i>02-529-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01105" class="icon heart3" value="723"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart01105"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('723', this);" class="layer-details-open "
                                                data-branchcode="723" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>여수공항</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라남도 여수시 율촌면
                                                        여순로 386 여수공항 내</p>
                                                    <p><i class="icon call"></i>061-685-0008</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01106" class="icon heart3" value="72210"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart01106"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72210', this);" class="layer-details-open "
                                                data-branchcode="72210" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>여수버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전남 여수시 좌수영로 268
                                                        고속버스 하차장 앞 공영주차장</p>
                                                    <p><i class="icon call"></i>061-642-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01107" class="icon heart3" value="72211"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart01107"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72211', this);" class="layer-details-open "
                                                data-branchcode="72211" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>여수엑스포역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전남 여수시 덕충동
                                                        61-68 여수엑스포역 공영주차장</p>
                                                    <p><i class="icon call"></i>061-642-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01108" class="icon heart3" value="722"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart01108"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('722', this);" class="layer-details-open "
                                                data-branchcode="722" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>여수지점(엑스포역)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전남 여수시 덕충안길 90
                                                        신성오피스텔 B102호 </p>
                                                    <p><i class="icon call"></i>061-642-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01109" class="icon heart3" value="45007"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart01109"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('45007', this);" class="layer-details-open "
                                                data-branchcode="45007" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>여의도(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울 영등포구 은행로 64
                                                        그린카존</p>
                                                    <p><i class="icon call"></i>02-714-8001</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01110" class="icon heart3" value="72304"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart01110"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72304', this);" class="layer-details-open "
                                                data-branchcode="72304" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>여천버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전남 여수시 무선로 200
                                                        여천버스터미널 앞</p>
                                                    <p><i class="icon call"></i>061-685-0008</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01111" class="icon heart3" value="72303"
                                                data-areacode="190" data-id="">
                                            <label for="chkHeart01111"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72303', this);" class="layer-details-open "
                                                data-branchcode="72303" data-areacode="190" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>여천역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전남 여수시 시청로 200
                                                        여천역 전용 주차장</p>
                                                    <p><i class="icon call"></i>061-685-0008</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01112" class="icon heart3" value="72410"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart01112"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72410', this);" class="layer-details-open "
                                                data-branchcode="72410" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>영등동 롯데마트(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라북도 익산시 무왕로
                                                        1053 롯데마트 익산점</p>
                                                    <p><i class="icon call"></i>063-851-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01113" class="icon heart3" value="53613"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01113"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('53613', this);" class="layer-details-open "
                                                data-branchcode="53613" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>영통역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>수원시 영통구 봉영로
                                                        1579 롯데마트 영통점 주차장</p>
                                                    <p><i class="icon call"></i>031-215-8181</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01114" class="icon heart3" value="520"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01114"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('520', this);" class="layer-details-open "
                                                data-branchcode="520" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>오산</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 오산시 역광장로 46
                                                        코아빌딩 108호 </p>
                                                    <p><i class="icon call"></i>031-373-8006</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01115" class="icon heart3" value="72115"
                                                data-areacode="140" data-id="">
                                            <label for="chkHeart01115"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72115', this);" class="layer-details-open "
                                                data-branchcode="72115" data-areacode="140" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>오식도(지스코) (픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>군산시 새만금북로 437
                                                    </p>
                                                    <p><i class="icon call"></i>063-452-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01116" class="icon heart3" value="51309"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01116"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('51309', this);" class="layer-details-open "
                                                data-branchcode="51309" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>오이도역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 시흥시 역전로 430
                                                    </p>
                                                    <p><i class="icon call"></i>031-407-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01117" class="icon heart3" value="72618"
                                                data-areacode="160" data-id="">
                                            <label for="chkHeart01117"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72618', this);" class="layer-details-open "
                                                data-branchcode="72618" data-areacode="160" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>온양온천역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충남 아산시 온천대로
                                                        1496</p>
                                                    <p><i class="icon call"></i>041-549-0030</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01118" class="icon heart3" value="72411"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart01118"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72411', this);" class="layer-details-open "
                                                data-branchcode="72411" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>왕궁농공단지(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라북도 익산시 왕궁면
                                                        왕궁농공단지길 7-7 왕궁정류소 앞 주차장</p>
                                                    <p><i class="icon call"></i>063-851-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01119" class="icon heart3" value="44909"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart01119"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('44909', this);" class="layer-details-open "
                                                data-branchcode="44909" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>왕십리</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울특별시 성동구
                                                        마조로1길30(행당동)</p>
                                                    <p><i class="icon call"></i>02-491-8002</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01120" class="icon heart3" value="43004"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart01120"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('43004', this);" class="layer-details-open "
                                                data-branchcode="43004" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>용산역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울 용산구 새창로
                                                        170-4 용산역 3번 출구 제1공영주차장 인근</p>
                                                    <p><i class="icon call"></i>02-715-0010</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01121" class="icon heart3" value="610"
                                                data-areacode="250" data-id="">
                                            <label for="chkHeart01121"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('610', this);" class="layer-details-open "
                                                data-branchcode="610" data-areacode="250" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>울산(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>울산 울주군 언양읍 언양로
                                                        137</p>
                                                    <p><i class="icon call"></i>052-223-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01122" class="icon heart3" value="629"
                                                data-areacode="250" data-id="">
                                            <label for="chkHeart01122"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('629', this);" class="layer-details-open "
                                                data-branchcode="629" data-areacode="250" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>울산KTX </strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>울산 울주군 언양읍 언양로
                                                        137</p>
                                                    <p><i class="icon call"></i>052-254-8050</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01123" class="icon heart3" value="612"
                                                data-areacode="250" data-id="">
                                            <label for="chkHeart01123"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('612', this);" class="layer-details-open "
                                                data-branchcode="612" data-areacode="250" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>울산공항</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>울산 북구 산업로 1103
                                                        울산공항 1층 롯데렌터카 데스크</p>
                                                    <p><i class="icon call"></i>052-293-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01124" class="icon heart3" value="62910"
                                                data-areacode="250" data-id="">
                                            <label for="chkHeart01124"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('62910', this);" class="layer-details-open "
                                                data-branchcode="62910" data-areacode="250" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>울산역(통도사)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>울산KTX 1번 출구 앞
                                                        횡단보도</p>
                                                    <p><i class="icon call"></i>052-254-8050</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01125" class="icon heart3" value="72409"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart01125"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72409', this);" class="layer-details-open "
                                                data-branchcode="72409" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>원광대(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라북도 익산시 익산대로
                                                        460 원광대학교</p>
                                                    <p><i class="icon call"></i>063-851-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01126" class="icon heart3" value="523"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart01126"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('523', this);" class="layer-details-open "
                                                data-branchcode="523" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>원주</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원도 원주시 만대공원길
                                                        50 114호</p>
                                                    <p><i class="icon call"></i>033-764-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01127" class="icon heart3" value="52316"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart01127"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('52316', this);" class="layer-details-open "
                                                data-branchcode="52316" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>원주시외버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원 원주시 서원대로 181
                                                        원주버스터미널 주차장</p>
                                                    <p><i class="icon call"></i>033-764-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01128" class="icon heart3" value="52315"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart01128"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('52315', this);" class="layer-details-open "
                                                data-branchcode="52315" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>원주역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원 원주시 무실동
                                                        774-3, 원주역 1번출구 앞 원주역주차장</p>
                                                    <p><i class="icon call"></i>033-764-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01129" class="icon heart3" value="52318"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart01129"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('52318', this);" class="layer-details-open "
                                                data-branchcode="52318" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>원주종합운동장(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원 원주시 서원대로 311
                                                    </p>
                                                    <p><i class="icon call"></i>033-764-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01130" class="icon heart3" value="509"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01130"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('509', this);" class="layer-details-open "
                                                data-branchcode="509" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>의정부</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 의정부시 평화로
                                                        220 브랜드상설매장 2층</p>
                                                    <p><i class="icon call"></i>031-852-8003</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01131" class="icon heart3" value="72408"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart01131"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('72408', this);" class="layer-details-open "
                                                data-branchcode="72408" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>익산 시외버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라북도 익산시 익산대로
                                                        52 익산 시외버스터미널</p>
                                                    <p><i class="icon call"></i>063-851-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01132" class="icon heart3" value="724"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart01132"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('724', this);" class="layer-details-open "
                                                data-branchcode="724" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>익산KTX</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라북도 익산시 익산대로
                                                        142</p>
                                                    <p><i class="icon call"></i>063-851-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01133" class="icon heart3" value="537"
                                                data-areacode="110" data-id="">
                                            <label for="chkHeart01133"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('537', this);" class="layer-details-open "
                                                data-branchcode="537" data-areacode="110" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>인천</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>인천광역시 남동구 예술로
                                                        198 (구월동, SEE&amp;SEE 2층 268호)</p>
                                                    <p><i class="icon call"></i>032-881-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01134" class="icon heart3" value="501"
                                                data-areacode="110" data-id="">
                                            <label for="chkHeart01134"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('501', this);" class="layer-details-open "
                                                data-branchcode="501" data-areacode="110" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>인천(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>인천광역시 남동구 예술로
                                                        198 (구월동, SEE&amp;SEEE 2층)</p>
                                                    <p><i class="icon call"></i>032-518-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01135" class="icon heart3" value="503"
                                                data-areacode="110" data-id="">
                                            <label for="chkHeart01135"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('503', this);" class="layer-details-open "
                                                data-branchcode="503" data-areacode="110" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>인천국제공항(터미널1)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>인천시 중구 공항로 271
                                                        인천국제공항 제1여객터미널 1층 서편 13~14 Gate 사이</p>
                                                    <p><i class="icon call"></i>032-743-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01136" class="icon heart3" value="50302"
                                                data-areacode="110" data-id="">
                                            <label for="chkHeart01136"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('50302', this);" class="layer-details-open "
                                                data-branchcode="50302" data-areacode="110" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>인천국제공항(터미널2)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>인천광역시 중구
                                                        제2터미널대로 446 인천국제공항 제2여객터미널 지하1층 서편</p>
                                                    <p><i class="icon call"></i>032-743-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01137" class="icon heart3" value="508"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01137"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('508', this);" class="layer-details-open "
                                                data-branchcode="508" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>일산</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 고양시 일산서구
                                                        중앙로 1542 신동아노블타워 107호 </p>
                                                    <p><i class="icon call"></i>031-814-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01138" class="icon heart3" value="41510"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart01138"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('41510', this);" class="layer-details-open "
                                                data-branchcode="41510" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>잠실(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울 송파구 올림픽로35길
                                                        124 장미 종합 상가 A 주차장</p>
                                                    <p><i class="icon call"></i>02-445-8899</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01139" class="icon heart3" value="71017"
                                                data-areacode="200" data-id="">
                                            <label for="chkHeart01139"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('71017', this);" class="layer-details-open "
                                                data-branchcode="71017" data-areacode="200" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>전남대학교(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>광주광역시 북구 용봉로 77
                                                        전남대학교 자연과학대</p>
                                                    <p><i class="icon call"></i>062-412-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01140" class="icon heart3" value="73414"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart01140"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('73414', this);" class="layer-details-open "
                                                data-branchcode="73414" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>전북도청(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라북도 전주시 완산구
                                                        효자로 225 전라북도청 남문 주차장</p>
                                                    <p><i class="icon call"></i>063-245-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01141" class="icon heart3" value="734"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart01141"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('734', this);" class="layer-details-open "
                                                data-branchcode="734" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>전주KTX</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라북도 전주시 덕진구
                                                        동부대로 675 </p>
                                                    <p><i class="icon call"></i>063-245-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01142" class="icon heart3" value="73413"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart01142"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('73413', this);" class="layer-details-open "
                                                data-branchcode="73413" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>전주종합경기장(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전라북도 전주시 덕진구
                                                        기린대로 451 전주종합경기장 후문 주차장</p>
                                                    <p><i class="icon call"></i>063-245-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01143" class="icon heart3" value="716"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart01143"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('716', this);" class="layer-details-open "
                                                data-branchcode="716" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>전주지점(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전락북도 전주시 덕진구
                                                        온고을로 255 2층</p>
                                                    <p><i class="icon call"></i>063-244-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01144" class="icon heart3" value="73415"
                                                data-areacode="180" data-id="">
                                            <label for="chkHeart01144"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('73415', this);" class="layer-details-open "
                                                data-branchcode="73415" data-areacode="180" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>전주팔복(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>전북 전주시 온고을로 255
                                                    </p>
                                                    <p><i class="icon call"></i>063-245-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01145" class="icon heart3" value="622"
                                                data-areacode="260" data-id="">
                                            <label for="chkHeart01145"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('622', this);" class="layer-details-open "
                                                data-branchcode="622" data-areacode="260" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>제주오토하우스</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>제주특별자치도 제주시 용해로
                                                        92</p>
                                                    <p><i class="icon call"></i>064-751-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01146" class="icon heart3" value="53711"
                                                data-areacode="110" data-id="">
                                            <label for="chkHeart01146"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('53711', this);" class="layer-details-open "
                                                data-branchcode="53711" data-areacode="110" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>주안역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>인천광역시 미추홀구 주안로
                                                        95-19</p>
                                                    <p><i class="icon call"></i>032-881-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01147" class="icon heart3" value="967"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01147"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('967', this);" class="layer-details-open "
                                                data-branchcode="967" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>중고차영업1지점</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 수원시 권선구 권선로
                                                        308-5 도이치오토월드 301호</p>
                                                    <p><i class="icon call"></i>031-322-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01148" class="icon heart3" value="972"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01148"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('972', this);" class="layer-details-open "
                                                data-branchcode="972" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>중고차영업2지점</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 안성시 원곡명
                                                        새터1길 63</p>
                                                    <p><i class="icon call"></i>010-8325-0120</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01149" class="icon heart3" value="614"
                                                data-areacode="230" data-id="">
                                            <label for="chkHeart01149"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('614', this);" class="layer-details-open "
                                                data-branchcode="614" data-areacode="230" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>진주</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경남 진주시 개양로 112
                                                        줌테라스 110호</p>
                                                    <p><i class="icon call"></i>055-753-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01150" class="icon heart3" value="61412"
                                                data-areacode="230" data-id="">
                                            <label for="chkHeart01150"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('61412', this);" class="layer-details-open "
                                                data-branchcode="61412" data-areacode="230" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>진주KTX역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경남 진주시 가좌동 2083
                                                        진주역 주차장 앞</p>
                                                    <p><i class="icon call"></i>055-753-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01151" class="icon heart3" value="618"
                                                data-areacode="230" data-id="">
                                            <label for="chkHeart01151"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('618', this);" class="layer-details-open "
                                                data-branchcode="618" data-areacode="230" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>창원</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경상남도 창원시 의창구
                                                        용동로83번안길 7, 미래드림 105호</p>
                                                    <p><i class="icon call"></i>055-295-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01152" class="icon heart3" value="713"
                                                data-areacode="160" data-id="">
                                            <label for="chkHeart01152"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('713', this);" class="layer-details-open "
                                                data-branchcode="713" data-areacode="160" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>천안(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충남 천안시 서북구
                                                        천안대로999-22</p>
                                                    <p><i class="icon call"></i>041-563-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01153" class="icon heart3" value="726"
                                                data-areacode="160" data-id="">
                                            <label for="chkHeart01153"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('726', this);" class="layer-details-open "
                                                data-branchcode="726" data-areacode="160" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>천안아산KTX</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충청남도 아산시 배방읍
                                                        광장로 210 요진와이시티 1층</p>
                                                    <p><i class="icon call"></i>041-549-0030</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01154" class="icon heart3" value="417"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart01154"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('417', this);" class="layer-details-open "
                                                data-branchcode="417" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>천호</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울시 강동구 천호대로
                                                        1065 강동성원상떼빌 1층 103호 </p>
                                                    <p><i class="icon call"></i>02-482-8002</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01155" class="icon heart3" value="711"
                                                data-areacode="140" data-id="">
                                            <label for="chkHeart01155"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('711', this);" class="layer-details-open "
                                                data-branchcode="711" data-areacode="140" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>청주</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충북 청주시 흥덕구 사직대로
                                                        37</p>
                                                    <p><i class="icon call"></i>043-213-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01156" class="icon heart3" value="71102"
                                                data-areacode="140" data-id="">
                                            <label for="chkHeart01156"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('71102', this);" class="layer-details-open "
                                                data-branchcode="71102" data-areacode="140" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>청주국제공항</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충청북도 청주시 청원구
                                                        내수읍 오창대로 980</p>
                                                    <p><i class="icon call"></i>043-213-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01157" class="icon heart3" value="524"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart01157"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('524', this);" class="layer-details-open "
                                                data-branchcode="524" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>춘천</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원도 춘천시 효자로7-1
                                                        수성빌딩 1층(한국노총 강원지역본부)</p>
                                                    <p><i class="icon call"></i>033-243-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01158" class="icon heart3" value="52403"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart01158"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('52403', this);" class="layer-details-open "
                                                data-branchcode="52403" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>춘천역(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원 춘천시 공지로 591
                                                        춘천역 1번 출구 우측 춘천역주차장</p>
                                                    <p><i class="icon call"></i>033-243-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01159" class="icon heart3" value="712"
                                                data-areacode="140" data-id="">
                                            <label for="chkHeart01159"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('712', this);" class="layer-details-open "
                                                data-branchcode="712" data-areacode="140" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>충주</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충북 충주시 애향로 7-1
                                                    </p>
                                                    <p><i class="icon call"></i>043-842-8002</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01160" class="icon heart3" value="71206"
                                                data-areacode="140" data-id="">
                                            <label for="chkHeart01160"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('71206', this);" class="layer-details-open "
                                                data-branchcode="71206" data-areacode="140" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>충주버스터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충청북도 충주시 봉계1길
                                                        49</p>
                                                    <p><i class="icon call"></i>043-842-8002</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01161" class="icon heart3" value="71207"
                                                data-areacode="140" data-id="">
                                            <label for="chkHeart01161"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('71207', this);" class="layer-details-open "
                                                data-branchcode="71207" data-areacode="140" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>충주체육관(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>충청북도 충주시 예성로
                                                        266</p>
                                                    <p><i class="icon call"></i>043-842-8002</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01162" class="icon heart3" value="54308"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01162"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('54308', this);" class="layer-details-open "
                                                data-branchcode="54308" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>트레이더스김포(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기 김포시 김포대로 715
                                                        트레이더스 김포점 5층 주차장</p>
                                                    <p><i class="icon call"></i>031-901-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01163" class="icon heart3" value="50610"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01163"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('50610', this);" class="layer-details-open "
                                                data-branchcode="50610" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>판교테크노밸리(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 성남시 수정구 창업로
                                                        54</p>
                                                    <p><i class="icon call"></i>031-701-8007</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01164" class="icon heart3" value="518"
                                                data-areacode="120" data-id="">
                                            <label for="chkHeart01164"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('518', this);" class="layer-details-open "
                                                data-branchcode="518" data-areacode="120" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>평택</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경기도 평택시
                                                        서정역로25번길 26 권선빌딩 2층</p>
                                                    <p><i class="icon call"></i>031-667-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01165" class="icon heart3" value="620"
                                                data-areacode="210" data-id="">
                                            <label for="chkHeart01165"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('620', this);" class="layer-details-open "
                                                data-branchcode="620" data-areacode="210" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>포항(장기)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경북 포항시 북구 흥해읍
                                                        소티재로 322</p>
                                                    <p><i class="icon call"></i>054-252-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01166" class="icon heart3" value="630"
                                                data-areacode="210" data-id="">
                                            <label for="chkHeart01166"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('630', this);" class="layer-details-open "
                                                data-branchcode="630" data-areacode="210" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>포항KTX</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경북 포항시 북구 흥해읍
                                                        포항역로 1</p>
                                                    <p><i class="icon call"></i>054-278-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01167" class="icon heart3" value="63008"
                                                data-areacode="210" data-id="">
                                            <label for="chkHeart01167"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('63008', this);" class="layer-details-open "
                                                data-branchcode="63008" data-areacode="210" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>포항경주공항(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경북 포항시 남구 동해면
                                                        일월로 18 포항경주공항 주차장</p>
                                                    <p><i class="icon call"></i>054-278-8000 </p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01168" class="icon heart3" value="63009"
                                                data-areacode="210" data-id="">
                                            <label for="chkHeart01168"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('63009', this);" class="layer-details-open "
                                                data-branchcode="63009" data-areacode="210" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>포항터미널(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>경상북도 포항시 남구 중흥로
                                                        85 (상도동, 포항터미널) 주차장</p>
                                                    <p><i class="icon call"></i>054-278-8000 </p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01169" class="icon heart3" value="645"
                                                data-areacode="240" data-id="">
                                            <label for="chkHeart01169"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('645', this);" class="layer-details-open "
                                                data-branchcode="645" data-areacode="240" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>해운대</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>부산시 해운대구
                                                        해운대로620 해운대라뮤에뜨 지하1층</p>
                                                    <p><i class="icon call"></i>051-744-6160</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01170" class="icon heart3" value="413"
                                                data-areacode="100" data-id="">
                                            <label for="chkHeart01170"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('413', this);" class="layer-details-open "
                                                data-branchcode="413" data-areacode="100" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong>홍대</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>서울 마포구 동교로176,
                                                        청휘빌딩 1층</p>
                                                    <p><i class="icon call"></i>02-2634-8000</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="listCardPC" style="display:none;">
                                            <input type="checkbox" id="chkHeart01171" class="icon heart3" value="53003"
                                                data-areacode="130" data-id="">
                                            <label for="chkHeart01171"></label>
                                            <input type="hidden" value="" id="fileList" disabled />
                                            <!-- <a href="#none" class="layer-details-open" data-layer="layer-sel-branch"> -->
                                            <a onclick="createBranchInfo('53003', this);" class="layer-details-open "
                                                data-branchcode="53003" data-areacode="130" data-img_atchfile_id=""
                                                data-layer="layer-sel-branch">
                                                <strong> 경포대(픽업존)</strong>
                                                <div>
                                                    <p style="text-overflow: ellipsis;white-space: nowrap;display: block;overflow: hidden;text-indent: inherit;margin-left: 2px;"
                                                        class="ellipsis_txt"><i class="icon address"></i>강원 강릉시 경포로475번길
                                                        5 경포번영회무료주차장</p>
                                                    <p><i class="icon call"></i>033-645-8002</p>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="map" style="width: 580px;height:710px;background:#ddd;">
                                    <div class="cover" id="layer-sel-branch-map"
                                        style="width: 100%; height: 100%; position: relative; overflow: hidden;">
                                    </div>
                                </div>
                            </div>
                            <!-- Layer :: 지점안내  -->
                            <div class="layer-wrap layer-popup layer-details layer-sel-branch" style="z-index: 100;">
                                <div class="pop-inner">
                                    <div class="popup-top">
                                        <span class="logo"><img src="/lrhp/pc/images/common/logo-header.png"
                                                alt="대한민국 No1.롯데렌터카"></span>
                                        <h4 style="font-size:18px;">
                                            <o class="name_kor"></o>
                                        </h4>
                                        <span class="state" id="dailyhour">24시간 운영</span>
                                        <span class="state" id="branchgubun">단기렌터카 지점</span>
                                        <button type="button" class="btn btn-white print">
                                            <span class="icon print"></span>
                                            프린트
                                        </button>
                                        <!-- <button type="button" class="layer-popup-close" data-layer="layer-sel-branch">
								<span class="icon pop-close">닫기 버튼</span>
							</button> -->
                                    </div>
                                    <div class="popup-cont">
                                        <div class="ly-container">
                                            <div class="left">
                                                <div class="map" id="layer-pop-branch-map"
                                                    style="width: 350px; height: 368px; position: relative; overflow: hidden; background: url(&quot;http://static.naver.net/maps/mantle/2x/pattern_1.png&quot;) 0px 0px repeat transparent;">
                                                </div>
                                                <div class="location-btn">
                                                    <button type="button" class="btn btn-white" id="searchRoad">
                                                        <span class="icon location"></span> 빠른길 찾기
                                                    </button>
                                                </div>
                                                <div class="branch-img" id="branchIMG">
                                                    <ul>
                                                        <li>
                                                            <img src="/lrhp/pc/images/branch_img01.jpg" alt="">
                                                        </li>
                                                        <li>
                                                            <img src="/lrhp/pc/images/branch_img04.jpg" alt="">
                                                        </li>
                                                        <li>
                                                            <img src="/lrhp/pc/images/branch_img00.jpg" alt="">
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="right" id="branchDetailList">
                                                <dl class="infos">
                                                    <dt>지점주소</dt>
                                                    <dd>서울특별시 강남구 테헤란로 422</dd>
                                                    <dt>영업시간</dt>
                                                    <dd>평일(월~목) 08:30 ~ 18:00 / 주말(금~일) 08:30 ~ 19:00</dd>
                                                    <dt>전화번호</dt>
                                                    <dd>02-1234-1234</dd>
                                                    <dt>이벤트</dt>
                                                    <dd>서울전지점(김포공항,마곡,상봉제외)] 코로나극복 함께해요 최대 55%할인이벤트</dd>
                                                    <dt>찾아가는 방법</dt>
                                                    <dd>
                                                        <ul class="lst dot">
                                                            <li>
                                                                지하철 이용시 : 서울역 15번 출구(공항철도, 서부역광장방향) 건너편 소화아동병원 왼편으로 100m
                                                                직진,
                                                                GS칼텍스 옆 건물.
                                                            </li>
                                                            <li>
                                                                버스 이용시 : 서울역 15번 출구(공항철도, 서부역광장방향) 건너편 소화아동병원 왼편으로 100m
                                                                직진,
                                                                GS칼텍스 옆 건물.
                                                            </li>
                                                            <li>
                                                                택시 이용시 : 서울역 15번 출구(공항철도, 서부역광장방향) 건너편 소화아동병원 왼편으로 100m
                                                                직진,
                                                                GS칼텍스 옆 건물.
                                                            </li>
                                                        </ul>
                                                    </dd>
                                                    <dt>지점 안내사항</dt>
                                                    <dd>
                                                        ※ 편도반납 장소는 기존 주차장과 동일(서울의료원 내)
                                                        <!-- 안내사항 img -->
                                                        <div class="img">
                                                            <img src="/lrhp/pc/images/smart-img01.png" alt="">
                                                        </div>
                                                        <!-- // 안내사항 img -->
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                        <div class="popup-cont-bot-btns">
                                            <button type="button" class="btn btn-white layer-popup-close"
                                                data-layer="layer-sel-branch">닫기</button>
                                            <button type="button" class="btn btn-red"
                                                onclick="locationRentReserv(this);" id="branchGubun2">신차특가 알아보기</button>
                                            <!-- <button type="button" class="btn btn-red">예약하기</button> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Layer :: 지점안내  -->
                        </div>
                    </div>
                </main>
                <footer class="footer"> </footer>
            </form>
            <input type="hidden" id="branchInfoMap" var="branch" value="">
            <!-- 지점안내/중고차지점안내 분기 레이어 -->
            <!-- 지점안내 레이어-->
            <script src="/lrhp/js/web/hp/pc/info/allBranchArea.js?ver=8594b2de-f772-48d4-89b7-34cabe1f8989"
                type="text/javascript"></script>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>예약</title>
    </head>
    <body>
        <h1>예약하기</h1>
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
            <meta name="title" lang="ko" content="단기렌터카 빠른예약 | 롯데렌터카 공식 웹사이트">
            <meta name="description" lang="ko"
                content="원하는 일정, 장소, 차량 예약을 온라인에서 손쉽게! 딜리버리와 편도반납도 가능하고, 경차부터 수입차, 전기차까지 원하는 차량별로 조회할 수 있습니다.">
            <meta name="og:url" content="https://www.lotterentacar.net/hp/kor/reservation/index.do">
            <meta name="og:title" lang="ko" content="단기렌터카 빠른예약 | 롯데렌터카 공식 웹사이트">
            <meta name="og:description" lang="ko"
                content="원하는 일정, 장소, 차량 예약을 온라인에서 손쉽게! 딜리버리와 편도반납도 가능하고, 경차부터 수입차, 전기차까지 원하는 차량별로 조회할 수 있습니다.">
            <!-- Search Engine Optimization END -->
            <meta name="keyword" lang="ko" content="winnerEventMain">
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
            <link rel="stylesheet" href="/lrhp/pc/styles/reset.css?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd">
            <link rel="stylesheet" href="/lrhp/pc/styles/layout.css?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd">
            <link rel="stylesheet" href="/lrhp/pc/styles/modules.css?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd">
            <link rel="stylesheet" href="/lrhp/pc/styles/contents.css?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd">
            <link rel="stylesheet"
                href="/lrhp/pc/styles/jquery.mCustomScrollbar.css?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd">
            <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
            <script src="/lrhp/js/lib/html5shiv.js"></script>
            <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
            <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
            <script src="/lrhp/js/lib/clipboard.min.js"></script>
            <script src="/publish/js/md5.js?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
            <script src="/publish/js/cmmnUtil.js?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
            <!-- SSO 고도화 -->
            <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
            <script src='https://members.lpoint.com/api/js/json2.js'></script>
            <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
            <script src="/lrhp/js/sso/moment.js"></script>
            <script src="/lrhp/js/sso/odm-common.js"></script>
            <script src="/lrhp/js/sso/sso.rental.js?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
            <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
            <script src="/lrhp/js/sso/api.rentcar.js?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
            <!-- Social Login -->
            <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
            <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
            <script src="/lrhp/js/social/social.rentacar.js?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
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
            <script src="/lrhp/js/common/gfn_util.js?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
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
            <script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
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
                            _rentMembers.api.logout('Y');
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
                        clientAkInfo: '{"clntEncKey":"TlC5OXTnf2q6xrob","flwNo":"Sa1rzuXAAh","domain":"https://members.lpoint.com"}' || '',
                        accessToken: 'VUVITHBhWVRPNDRibU5kWG9pWUVST0R5NnRHS1M3eXI4d2JyQzNPNm83TDdZL3JIWjQzQkhSa3hXbk4wVlVmMg==' || '',
                        siteNo: '1502',
                        channelCd: '0',
                        loginStatus: ('116394592' || '') == '' ? false : true,
                        rnwTkn: '',
                        ssoTkn: '',
                        goUrl: '',
                        language: 'kor'	//kor or eng
                    });
                    //로그인 시 렌터카포인트, 렌터카쿠폰 조회
                    if ("true" === "true") {
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
                var aa_mem_no = '116394592';
                var aa_lpoint = 'Y';
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
                _dl.userInfo.marketing_check_internal = 'Y';
                _dl.userInfo.marketing_check_third = 'Y';
                _dl.userInfo.user_age = '40';
                _dl.userInfo.user_gender = 'M';
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
            <script>
                function validateReservFrm(form) {
                    var rentDate = form.elements.rentDate.value;
                    if (rentDate.length != 8) {
                        console.error('rentDate');
                        return false;
                    }
                    form.elements.tempShowDate.value = rentDate.replace(
                        /(\d{4})(\d{2})(\d{2})/, '$1.$2.$3');
                    var returnDate = form.elements.returnDate.value;
                    if (returnDate.length != 8) {
                        console.error('returnDate');
                        return false;
                    }
                    form.elements.tempShowReDate.value = returnDate.replace(
                        /(\d{4})(\d{2})(\d{2})/, '$1.$2.$3');
                    var rentTime = form.elements.rentTime.value;
                    if (rentTime.length != 6) {
                        console.error('rentTime');
                        return false;
                    }
                    form.elements.tempShowHour.value = rentTime.substring(0, 2);
                    form.elements.tempShowMinute.value = rentTime.substring(2, 4);
                    var returnTime = form.elements.returnTime.value;
                    if (returnTime.length != 6) {
                        console.error('returnTime');
                        return false;
                    }
                    form.elements.tempShowReHour.value = returnTime.substring(0, 2);
                    form.elements.tempShowReMinute.value = returnTime.substring(2, 4);
                    if (form.elements.onewayFee.value === '') {
                        form.elements.onewayFee.value = '0';
                    }
                    if (form.elements.DCFEE.value === '') {
                        form.elements.DCFEE.value = '0';
                    }
                    // 20221114 박병윤
                    if (form.elements.dcRate.value === '') {
                        form.elements.dcRate.value = '0';
                    }
                    if (form.elements.ldCarRentalFee.value === '') {
                        form.elements.ldCarRentalFee.value = '0';
                    }
                    if (form.elements.carDiscountFee.value === '') {
                        form.elements.carDiscountFee.value = '0';
                    }
                    if (form.elements.tempMinCharge.value === '') {
                        form.elements.tempMinCharge.value = '0';
                    }
                    if (form.elements.tempMinDcRate.value === '') {
                        form.elements.tempMinDcRate.value = '0';
                    }
                    form.elements.carSize.value = form.elements.carType.value;
                    form.elements.jejuAuto.value = form.elements.areaFlag.value == '6' ? 'X'
                        : '';
                    form.elements.brandCode.value = 'ALL';
                    if (form.elements.returnBranch.value === '624') {
                        form.elements.returnSelf.value = '';
                    }
                    return true;
                }
            </script>
            <form id="reservForm" action="step2.do" method="post" onsubmit="return validateReservFrm(this)">
                <input type="hidden" name="areaFlag" value="6">
                <input type="hidden" name="rentArea" value="">
                <input type="hidden" name="returnArea" value="">
                <input type="hidden" id="rentBranch" name="rentBranch" value="">
                <input type="hidden" name="splace" value="">
                <input type="hidden" name="rentDate" value="">
                <input type="hidden" name="rentTime" value="">
                <input type="hidden" name="rentSelf" value="">
                <input type="hidden" id="returnBranch" name="returnBranch" value="">
                <input type="hidden" name="eplace" value="">
                <input type="hidden" name="returnDate" value="">
                <input type="hidden" name="returnTime" value="">
                <input type="hidden" name="returnSelf" value="">
                <input type="hidden" name="carCode" value="">
                <input type="hidden" name="carType" value="">
                <input type="hidden" name="carSize" value="">
                <input type="hidden" name="fuelt" value=""> <!-- 20231213 추가 연료 -->
                <input type="hidden" name="gplcnt" value=""> <!-- 20231213 추가 인승 -->
                <input type="hidden" name="storageId" id="storageId" value=""> <!-- 20231213 localStorage 삭제용 -->
                <input type="hidden" name="mvgr2_h" id="mvgr2_h" value=""> <!-- 20231218 localStorage 삭제용 -->
                <input type="hidden" name="zoomLevel" value="0">
                <input type="hidden" name="latitude" value="">
                <input type="hidden" name="longitude" value="">
                <input type="hidden" name="bizType" value="">
                <input type="hidden" name="memberNo" value="116394592">
                <input type="hidden" name="ad_rtcr_fee" value="">
                <input type="hidden" name="as_rtcr_yn" value="">
                <input type="hidden" name="ad_dlcr_fee" value="">
                <input type="hidden" name="as_dlcr_yn" value="">
                <input type="hidden" name="hdsCheck" value="">
                <input type="hidden" name="rentZip" value="">
                <input type="hidden" name="rentAddr1" value="">
                <input type="hidden" name="rentAddr2" value="">
                <input type="hidden" name="returnZip" value="">
                <input type="hidden" name="returnAddr1" value="">
                <input type="hidden" name="returnAddr2" value="">
                <input type="hidden" name="rentBranchTx" value="">
                <input type="hidden" name="returnBranchTx" value="">
                <input type="hidden" name="rentPlace" value="">
                <input type="hidden" name="returnPlace" value="">
                <input type="hidden" name="dsRentYn" value="">
                <input type="hidden" name="dsReturnYn" value="">
                <input type="hidden" name="dsRentZip" value="">
                <input type="hidden" name="dsReturnZip" value="">
                <input type="hidden" name="dsRentEmd" value="">
                <input type="hidden" name="dsReturnEmd" value="">
                <input type="hidden" name="dsRentPrice" value="">
                <input type="hidden" name="dsReturnPrice" value="">
                <input type="hidden" name="tempShowDate" value="">
                <input type="hidden" name="tempShowReDate" value="">
                <input type="hidden" name="tempShowHour" value="">
                <input type="hidden" name="tempShowMinute" value="">
                <input type="hidden" name="tempShowReHour" value="">
                <input type="hidden" name="tempShowReMinute" value="">
                <input type="hidden" name="tempShowPreiod" value="">
                <input type="hidden" name="carName" value="">
                <input type="hidden" name="dcRate" value="">
                <input type="hidden" name="carDiscountFee" value="">
                <input type="hidden" name="carDiscount" value="">
                <input type="hidden" name="ldCarRentalFee" value="">
                <input type="hidden" id="gtrwr" name="gtrwr" value="">
                <input type="hidden" id="kbetr2" name="kbetr2" value="">
                <input type="hidden" id="kbetr3" name="kbetr3" value="">
                <input type="hidden" id="kbetr4" name="kbetr4" value="">
                <input type="hidden" id="kbstd" name="kbstd" value="">
                <input type="hidden" name="onewayFee" value="">
                <input type="hidden" name="DCFEE" value="">
                <input type="hidden" name="tempMinCharge" value="">
                <input type="hidden" name="tempMinDcRate" value="">
                <input type="hidden" id="DISCOUNT_GUBUN" name="DISCOUNT_GUBUN" value="">
                <input type="hidden" id="KSCHN" name="KSCHN" value="">
                <input type="hidden" id="KBETR" name="KBETR" value="">
                <input type="hidden" id="KRATE" name="KRATE" value="">
                <input type="hidden" id="WAERK" name="WAERK" value="">
                <input type="hidden" id="KRECH" name="KRECH" value="">
                <input type="hidden" id="NAME1" name="NAME1" value="">
                <input type="hidden" id="KSCHN_TX" name="KSCHN_TX" value="">
                <input type="hidden" id="BNAME" name="BNAME" value="">
                <input type="hidden" id="E_DISCOUNT_GUBUN" name="E_DISCOUNT_GUBUN" value="">
                <input type="hidden" id="E_KSCHN" name="E_KSCHN" value="">
                <input type="hidden" id="E_KBETR" name="E_KBETR" value="">
                <input type="hidden" id="E_KRATE" name="E_KRATE" value="">
                <input type="hidden" id="E_KRECH" name="E_KRECH" value="">
                <input type="hidden" id="E_NAME1" name="E_NAME1" value="">
                <input type="hidden" id="E_BNAME" name="E_BNAME" value="">
                <input type="hidden" id="E_WAERK" name="E_WAERK" value="">
                <input type="hidden" id="E_KSCHN_TX" name="E_KSCHN_TX" value="">
                <input type="hidden" id="E_incdw" name="E_incdw" value="">
                <input type="hidden" name="konda" value="">
                <input type="hidden" name="konda_cdw" value="">
                <input type="hidden" name="realBranch" value="">
                <input type="hidden" id="incdw" name="incdw" value="">
                <input type="hidden" name="mysteryChk" value="">
                <input type="hidden" name="mysteryCode" value="">
                <input type="hidden" name="userName" value="">
                <input type="hidden" name="userEmail" value="">
                <input type="hidden" name="userPhoneNo" value="">
                <input type="hidden" name="phone" value="">
                <input type="hidden" id="ONEWY" name="ONEWY" value="">
                <input type="hidden" id="AUDAT" name="AUDAT" value="">
                <input type="hidden" id="GUEBG" name="GUEBG" value="">
                <input type="hidden" id="STIME" name="STIME" value="">
                <input type="hidden" id="GUEEN" name="GUEEN" value="">
                <input type="hidden" id="ETIME" name="ETIME" value="">
                <input type="hidden" id="DYEAR" name="DYEAR" value="">
                <input type="hidden" id="DMONTH" name="DMONTH" value="">
                <input type="hidden" id="DWEEK" name="DWEEK" value="">
                <input type="hidden" id="DUDAY" name="DUDAY" value="">
                <input type="hidden" id="DUTIME" name="DUTIME" value="">
                <input type="hidden" id="DUDAY2" name="DUDAY2" value="">
                <input type="hidden" id="DUTIME2" name="DUTIME2" value="">
                <input type="hidden" id="DUDAY3" name="DUDAY3" value="">
                <input type="hidden" id="DUTIME3" name="DUTIME3" value="">
                <input type="hidden" id="DISCOUNT" name="DISCOUNT" value="">
                <input type="hidden" id="dutimea" name="dutimea" value="">
                <input type="hidden" id="dutimea2" name="dutimea2" value="">
                <input type="hidden" id="dutimea3" name="dutimea3" value="">
                <input type="hidden" id="dsFee711" name="dsFee711" value="">
                <input type="hidden" id="upChk" name="upChk" value="">
                <input type="hidden" id="upCarCode" name="upCarCode" value="">
                <input type="hidden" id="upCarName" name="upCarName" value="">
                <input type="hidden" id="upCarSize" name="upCarSize" value="">
                <input type="hidden" id="upCarRealBranch" name="upCarRealBranch" value="">
                <input type="hidden" name="exCheck" value="">
                <input type="hidden" name="jejuAuto" value="">
                <input type="hidden" id="phone1" name="phone1" value="">
                <input type="hidden" id="phone2" name="phone2" value="">
                <input type="hidden" id="phone3" name="phone3" value="">
                <input type="hidden" id="flight_no" name="flight_no" value="">
                <input type="hidden" id="optionStr" name="optionStr" value="">
                <input type="hidden" id="optionFee" name="optionFee" value="">
                <input type="hidden" id="optionCd" name="optionCd" value="">
                <input type="hidden" id="options" name="options" value="">
                <input type="hidden" id="ldwCode" name="ldwCode" value="">
                <input type="hidden" name="LDWCHARGE" value="">
                <input type="hidden" name="LS_CHR_REMARK" value="">
                <input type="hidden" name="cdwFullName" value="">
                <input type="hidden" id="oldCarCode" name="oldCarCode" value="">
                <input type="hidden" id="oldLsLdwChr" name="oldLsLdwChr" value="">
                <input type="hidden" id="oldLsLdwChrDc" name="oldLsLdwChrDc" value="">
                <input type="hidden" id="oldGtrwr" name="oldGtrwr" value="">
                <input type="hidden" id="oldGtdwr" name="oldGtdwr" value="">
                <input type="hidden" id="oldDsiwr" name="oldDsiwr" value="">
                <input type="hidden" id="oldbalnc" name="oldbalnc" value="">
                <input type="hidden" id="oldPoint" name="oldPoint" value="">
                <input type="hidden" id="oldNetwr" name="oldNetwr" value="">
                <input type="hidden" id="oldMvgr2" name="oldMvgr2" value="">
                <input type="hidden" id="oldKonda" name="oldKonda" value="">
                <input type="hidden" id="oldLdwwr" name="oldLdwwr" value="">
                <input type="hidden" id="oldLsOptionString" name="oldLsOptionString" value="">
                <input type="hidden" id="oldLsOptionPrice" name="oldLsOptionPrice" value="">
                <input type="hidden" id="editChk" name="editChk" value="">
                <input type="hidden" id="lsBoorPno" name="lsBoorPno" value="">
                <input type="hidden" id="EventKschn" name="EventKschn" value="">
                <input type="hidden" id="EventKbetr" name="EventKbetr" value="">
                <input type="hidden" id="EventKrate" name="EventKrate" value="">
                <input type="hidden" id="EventWaerk" name="EventWaerk" value="">
                <input type="hidden" id="EventKrech" name="EventKrech" value="">
                <input type="hidden" id="EventName1" name="EventName1" value="">
                <input type="hidden" id="EventKschn_tx" name="EventKschn_tx" value="">
                <input type="hidden" id="EventBname" name="EventBname" value="">
                <input type="hidden" id="EventIncdw" name="EventIncdw" value="">
                <input type="hidden" id="eventCode" name="eventCode" value="">
                <input type="hidden" id="CouponKschn" name="CouponKschn" value="">
                <input type="hidden" id="CouponKbetr" name="CouponKbetr" value="">
                <input type="hidden" id="CouponKrate" name="CouponKrate" value="">
                <input type="hidden" id="CouponWaerk" name="CouponWaerk" value="">
                <input type="hidden" id="CouponKrech" name="CouponKrech" value="">
                <input type="hidden" id="CouponName1" name="CouponName1" value="">
                <input type="hidden" id="CouponKschn_tx" name="CouponKschn_tx" value="">
                <input type="hidden" id="CouponBname" name="CouponBname" value="">
                <input type="hidden" id="CouponIncdw" name="CouponIncdw" value="">
                <input type="hidden" id="cp_code" name="cp_code" value="">
                <input type="hidden" id="OldCouponKschn" name="OldCouponKschn" value="">
                <input type="hidden" id="OldCouponKbetr" name="OldCouponKbetr" value="">
                <input type="hidden" id="OldCouponKrate" name="OldCouponKrate" value="">
                <input type="hidden" id="OldCouponWaerk" name="OldCouponWaerk" value="">
                <input type="hidden" id="OldCouponKrech" name="OldCouponKrech" value="">
                <input type="hidden" id="OldCouponName1" name="OldCouponName1" value="">
                <input type="hidden" id="OldCouponKschn_tx" name="OldCouponKschn_tx" value="">
                <input type="hidden" id="OldCouponBname" name="OldCouponBname" value="">
                <input type="hidden" id="OldCouponIncdw" name="OldCouponIncdw" value="">
                <input type="hidden" id="infantShow" name="infantShow" value="">
                <input type="hidden" id="toddlerShow" name="toddlerShow" value="">
                <input type="hidden" id="kidsShow" name="kidsShow" value="">
                <input type="hidden" id="stdShow" name="stdShow" value="">
                <input type="hidden" id="prtShow" name="prtShow" value="">
                <input type="hidden" id="babyShow" name="babyShow" value="">
                <input type="hidden" id="neviChk" name="neviChk" value="">
                <input type="hidden" id="norShow" name="norShow" value="">
                <input type="hidden" id="sadShow" name="sadShow" value="">
                <input type="hidden" id="insFee" name="insFee" value="">
                <input type="hidden" id="nextStep" name="nextStep" value="">
                <input type="hidden" id="LicenseDiv" name="LicenseDiv" value="">
                <input type="hidden" id="custAge" name="custAge" value="">
                <input type="hidden" name="brandCode" value="">
                <input type="hidden" name="vtweg" value="">
                <input type="hidden" name="liznr" value="">
                <input type="hidden" name="carFuelType" value="">
                <input type="hidden" name="carSeats" value="">
                <input type="hidden" id="pickupZoneRent" name="pickupZoneRent" value="">
                <input type="hidden" id="pickupZoneReturn" name="pickupZoneReturn" value="">
                <input type="hidden" name="state" value="">
                <input type="hidden" name="cdw_chk" value="">
            </form>
            <link rel="stylesheet" type="text/css"
                href="/lrhp/pc/styles/reservationIndex_22Q4.css?15e1d0b2-acaa-4ab4-b885-b033da14afbd" />
            <link rel="stylesheet" type="text/css"
                href="/lrhp/pc/styles/reservationIndex_23Q1.css??15e1d0b2-acaa-4ab4-b885-b033da14afbd" />
            <style>
                .layer-wrap {
                    z-index: 111;
                }
            </style>
            <!--container 컴포넌트-->
            <main class="reserv-main-wrap-custom">
                <div class="content">
                    <div class="reser_date_wrap">
                        <div class="slide_banner_wrap">
                            <!--20231126 예약 1단계 배너 슬라이드 추가 S-->
                            <div class="reser-visual-slide">
                                <div class="swiper-pagination-wrap">
                                    <div class="swiper-pagination">
                                        <div class="reser-visual-pager">
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
                                <div class="swiper-container reser-visual-list">
                                    <div class="reser-slide-wrap">
                                        <div class="reser-img-wrap">
                                            <a href="/hp/kor/carLife/eventDetail.do?pageIndex=1&contSeq=594&listType=ongoing"
                                                target="_blank">
                                                <img src="/lrhp/pc/images/reservation/reser_img/banner_01.jpg" alt="">
                                            </a>
                                        </div>
                                        <div class="reser-img-wrap">
                                            <a href="/hp/kor/carLife/eventDetail.do?pageIndex=1&contSeq=590&listType=ongoing"
                                                target="_blank">
                                                <img src="/lrhp/pc/images/reservation/reser_img/banner_03.jpg" alt="">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form_box">
                            <div class="form_inner">
                                <div class="top_util">
                                    <div class="top_util_left">
                                        <div class="flex_tab_box">
                                            <button type="button" id="toggleJeju" class=""
                                                onClick="reservIdx.setZone('jeju')">제주</button>
                                            <button type="button" id="toggleLand" class="active"
                                                onClick="reservIdx.setZone('land')">내륙</button>
                                        </div>
                                        <button type="reset" id="resetBtn"><i
                                                class="icon_i icon_refresh">새로고침</i></button>
                                    </div>
                                    <div class="top_util_right">
                                        <a href="https://www.lotterentacar.net/hp/kor/reservation/shortInfo/pay.do"
                                            class="go_to_link">단기렌터카 대여가 처음이신가요? <i
                                                class="icon_i_in icon_right_gray"></i></a>
                                    </div>
                                </div>
                                <div class="bottom_util">
                                    <div class="bottom_util_item">
                                        <div class="place_tit">
                                            <span>대여 장소</span>
                                        </div>
                                        <div class="place_input place_ren_input tool_box01">
                                            <i class="icon_i icon_g_loacation">위치</i>
                                            <input type="text" id="rentBranchTx" style="cursor: pointer" class="btn1"
                                                placeholder="어디서 대여할까요?" readonly>
                                            <div class="tool_pop tool_pop_rent">
                                                <p>딜리버리 요금 <a id="ds_price_rent">0</a> 원이 추가돼요</p>
                                            </div>
                                            <div class="jeju_dropbox jeju_dropbox01">
                                                <ul id="rent_jeju_item">
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bottom_util_item">
                                        <div class="place_tit">
                                            <span>반납 장소</span>
                                        </div>
                                        <div class="place_input place_ret_input tool_box01">
                                            <i class="icon_i icon_g_loacation">위치</i>
                                            <input type="text" id="returnBranchTx" style="cursor: pointer" class="btn2"
                                                placeholder="어디로 반납할까요?" readonly>
                                            <div class="tool_pop tool_pop_return">
                                                <p>딜리버리 요금 <a id="ds_price_return">0</a> 원이 추가돼요</p>
                                            </div>
                                            <div class="jeju_dropbox jeju_dropbox02">
                                                <ul id="return_jeju_item">
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="bottom_util_item bottom_util_item_full flex_between">
                                        <div class="flex_box">
                                            <div class="place_tit">
                                                <span>대여 기간</span>
                                                <i class="icon_i icon_smartkeybox" style="display:none;">스마트키박스</i>
                                            </div>
                                            <div class="days_input">
                                                <i class="icon_i icon_time">위치</i>
                                                <input id="rentPeriodText" type="text" placeholder="얼마 동안 대여할까요?"
                                                    readonly style="cursor: pointer; width:295px;">
                                            </div>
                                        </div>
                                        <div class="bottom_btn_item btn_box_cus">
                                            <!--disabled시 디자인 변경-->
                                            <button id="searchVehicle" type="submit" class="btn_cus btn_active"
                                                data-layer="" data-link-area="빠른예약" data-link-name="메인"
                                                data-link-text="대여일시선택완료" disabled="disabled">차량 검색하기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="reser_contents_wrap">
                            <div class="reser_contents_inner">
                                <!--대여 장소-->
                                <section class="content_place content_place_rental tab__item_cus"
                                    style="display: block;">
                                    <div class="flex__type01">
                                        <div class="flex_type01_left">
                                            <div class="left_common left_place_area">
                                                <div class="title">
                                                    <h2>대여 장소를 <br> 선택해주세요</h2>
                                                </div>
                                                <div class="flex__box">
                                                    <div class="img_area">
                                                        <img src="/lrhp/pc/images/reservation/reser_img/car_white.png"
                                                            alt="자동차이미지">
                                                    </div>
                                                    <div class="text_area">
                                                        <div class="desc">
                                                            <p>차량 배달을 <br> 원하신다면?</p>
                                                        </div>
                                                        <div class="btn_box_cus">
                                                            <button type="button"
                                                                class="btn_small_cus btn_white_cus go_to_addr">딜리버리 <i
                                                                    class="icon_i icon_rr_arrow">우측화살표</i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="flex_type01_right">
                                            <div class="place_select_box">
                                                <div class="select_item">
                                                    <div class="select_tab_list01">
                                                        <ul id="rent_region-1">
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="final_select_item">
                                                    <!--접근권한 동의-->
                                                    <div class="select_tab_empty tab__item_cus" style="display: none;">
                                                        <div class="flex__center">
                                                            <img src="/lrhp/pc/images/reservation/reser_img/icon_img01.png"
                                                                alt="자동차 이미지">
                                                            <p class="emptyText">접근 권한 동의 후 이용이 가능해요.</p>
                                                            <button class="accessAgreeBtn" type="button">접근권한
                                                                동의</button>
                                                        </div>
                                                    </div>
                                                    <!--렌터지역 li = 7개 최대치-->
                                                    <div class="select_tab_list03 tab__item_cus"
                                                        style="display: block;">
                                                        <div class="flex_ul">
                                                            <ul id="rent_region-2">
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <!--최근검색-->
                                                    <div class="select_tab_recent tab__item_cus" style="display: none;">
                                                        <ul id="rentRecentArea">
                                                        </ul>
                                                        <div class="recent_btn_box">
                                                            <button type="button" class="all_del_btn">전체 삭제</button>
                                                            <span></span>
                                                            <button type="button" class="auto_save_btn">자동저장 끄기</button>
                                                        </div>
                                                    </div>
                                                    <!--주변지점-->
                                                    <div class="select_tab_near tab__item_cus nearRentArea"
                                                        style="display: none;">
                                                        <div class="top_tit nearAreaPermission">
                                                            <span id="currentRentAddr"></span>
                                                            <button type="button" class="place_reset_btn"
                                                                data="Rent">현위치 재설정 <i
                                                                    class="icon_i icon_g_refresh">새로고침</i></button>
                                                        </div>
                                                        <div class="bt_cont nearArea">
                                                            <!--지점이 0 일 경울 p 태그안에 텍스트 변경-->
                                                            <p id="nearRentAreaCount"></p>
                                                            <!--20231124 레이아웃 변경 S-->
                                                            <ul id="nearRentAreaList">
                                                            </ul>
                                                            <!--20231124 레이아웃 변경 E-->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--최근 검색-->
                                </section>
                                <!--20231124 section 추가 S-->
                                <!--반납 장소-->
                                <section class="content_place content_place_return tab__item_cus">
                                    <div class="flex__type01">
                                        <div class="flex_type01_left">
                                            <div class="left_common left_place_area">
                                                <div class="title">
                                                    <h2>반납 장소를 <br> 선택해주세요</h2>
                                                </div>
                                                <div class="flex__box">
                                                    <div class="img_area">
                                                        <!--이미지 변경 S-->
                                                        <img src="/lrhp/pc/images/reservation/reser_img/car_white.png"
                                                            alt="자동차이미지">
                                                        <!--이미지 변경 E-->
                                                    </div>
                                                    <div class="text_area">
                                                        <div class="desc">
                                                            <p>차량 배달을 <br> 원하신다면?</p>
                                                        </div>
                                                        <div class="btn_box_cus">
                                                            <button type="button"
                                                                class="btn_small_cus btn_white_cus go_to_addr">딜리버리 <i
                                                                    class="icon_i icon_rr_arrow">우측화살표</i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="flex_type01_right">
                                            <div class="place_select_box">
                                                <div class="select_item">
                                                    <!--20231124 리스트 변경 (재수정) S-->
                                                    <div class="select_tab_list01">
                                                        <ul id="return_region-1">
                                                        </ul>
                                                    </div>
                                                    <!--20231124 리스트 변경 (재수정) E-->
                                                </div>
                                                <div class="final_select_item">
                                                    <!--접근권한 동의-->
                                                    <div class="select_tab_empty tab__item_cus" style="display: none;">
                                                        <div class="flex__center">
                                                            <img src="/lrhp/pc/images/reservation/reser_img/icon_img01.png"
                                                                alt="자동차 이미지">
                                                            <p class="emptyText">접근 권한 동의 후 이용이 가능해요.</p>
                                                            <button class="accessAgreeBtn" type="button">접근권한
                                                                동의</button>
                                                        </div>
                                                    </div>
                                                    <!--렌터지역 li = 7개 최대치-->
                                                    <div class="select_tab_list03 tab__item_cus"
                                                        style="display: block;">
                                                        <div class="flex_ul">
                                                            <ul id="return_region-2">
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <!--20231124 레이아웃 변경 S-->
                                                    <!--최근검색-->
                                                    <div class="select_tab_recent tab__item_cus" style="display: none;">
                                                        <ul id="returnRecentArea">
                                                        </ul>
                                                        <div class="recent_btn_box">
                                                            <button type="button" class="all_del_btn">전체 삭제</button>
                                                            <span></span>
                                                            <button type="button" class="auto_save_btn">자동저장 끄기</button>
                                                        </div>
                                                    </div>
                                                    <!--20231124 레이아웃 변경 E-->
                                                    <!--주변지점-->
                                                    <div class="select_tab_near tab__item_cus nearRentArea"
                                                        style="display: none;">
                                                        <div class="top_tit nearAreaPermission">
                                                            <span id="currentReturnAddr"></span>
                                                            <button type="button" class="place_reset_btn"
                                                                data="Return">현위치 재설정 <i
                                                                    class="icon_i icon_g_refresh">새로고침</i></button>
                                                        </div>
                                                        <div class="bt_cont nearArea">
                                                            <!--지점이 0 일 경울 p 태그안에 텍스트 변경-->
                                                            <p id="nearReturnAreaCount"></p>
                                                            <!--20231124 레이아웃 변경 S-->
                                                            <ul id="nearReturnAreaList">
                                                            </ul>
                                                            <!--20231124 레이아웃 변경 E-->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--20231123 UI 변경 S-->
                                    <!--최근 검색-->
                                    <section class="content_recentsearch">
                                        <div class="recent_box">
                                            <div class="recent_tit">
                                            </div>
                                            <div class="recent_cont">
                                            </div>
                                        </div>
                                    </section>
                                    <!--20231123 UI 변경 E-->
                                </section>
                                <!--20231124 section 추가 E-->
                                <!--예약날짜 갤린더-->
                                <section class="content_day tab__item_cus">
                                    <div class="flex__type01">
                                        <div class="flex_type01_left">
                                            <div class="left_common left_place_area">
                                                <div class="title">
                                                    <h2>대여 기간을 <br> 선택해주세요</h2>
                                                </div>
                                                <div class="flex__box" id="deliveryFlex" style="display:flex;">
                                                    <div class="img_area">
                                                        <img src="/lrhp/pc/images/reservation/reser_img/car_white.png"
                                                            alt="자동차이미지">
                                                    </div>
                                                    <div class="text_area">
                                                        <div class="desc">
                                                            <p>차량 배달을 <br> 원하신다면?</p>
                                                        </div>
                                                        <div class="btn_box_cus">
                                                            <button type="button"
                                                                class="btn_small_cus btn_white_cus go_to_addr">딜리버리 <i
                                                                    class="icon_i icon_rr_arrow">우측화살표</i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="flex__box" id="branchFlex" style="display:none;">
                                                    <div class="img_area">
                                                        <img src="/lrhp/pc/images/reservation/reser_img/car_red.png"
                                                            alt="자동차이미지">
                                                    </div>
                                                    <div class="text_area">
                                                        <div class="desc">
                                                            <p>지점 방문을 <br> 원하신다면?</p>
                                                        </div>
                                                        <div class="btn_box_cus">
                                                            <button type="button"
                                                                class="btn_small_cus btn_white_cus go_to_branch">지점방문 <i
                                                                    class="icon_i icon_rr_arrow">우측화살표</i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="flex_type01_right">
                                            <div id="content-date" class="flex-grow calendar_cus"
                                                style="display: block;">
                                                <div class="calendar-wrap">
                                                    <div id="date-picker" class="calendar_b">
                                                        <ul class="calendar">
                                                            <li class="col" style="display: block;"><input type="hidden"
                                                                    class="calSwitch" value="on">
                                                                <div class="calendar-tit">2023.11</div>
                                                                <div class="tbl-box">
                                                                    <table>
                                                                        <caption></caption>
                                                                        <colgroup>
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>일</th>
                                                                                <th>월</th>
                                                                                <th>화</th>
                                                                                <th>수</th>
                                                                                <th>목</th>
                                                                                <th>금</th>
                                                                                <th>토</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </li>
                                                            <li class="col" style="display: block;"><input type="hidden"
                                                                    class="calSwitch" value="on">
                                                                <div class="calendar-tit">2023.12</div>
                                                                <div class="tbl-box">
                                                                    <table>
                                                                        <caption></caption>
                                                                        <colgroup>
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                            <col style="width:14.2%;">
                                                                        </colgroup>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>일</th>
                                                                                <th>월</th>
                                                                                <th>화</th>
                                                                                <th>수</th>
                                                                                <th>목</th>
                                                                                <th>금</th>
                                                                                <th>토</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="pagination-wrap">
                                                        <button type="button" class="btn btn-paging-prev"
                                                            id="calPrevBtn">이전
                                                            달</button>
                                                        <button type="button" class="btn btn-paging-next"
                                                            id="calNextBtn">다음
                                                            달</button>
                                                    </div>
                                                </div>
                                                <div class="date-time-wrap">
                                                    <div class="date-time">
                                                        <div class="rentDate date date_cus">
                                                            <span
                                                                class="rent-date-text rent-date-text_cus"><span>대여일</span>을
                                                                선택해주세요</span>
                                                        </div>
                                                        <div class="time">
                                                            <div class="time_select_box">
                                                                <div class="hour_item">
                                                                    <input type="text" id="rentHour"
                                                                        class="open_list_btn box_design"
                                                                        placeholder="00시" readonly>
                                                                    <div
                                                                        class="hour_list time_pop_list time_pop_list_01 rentHour">
                                                                        <div class="scoll_height">
                                                                            <i class="scroll_top_btn"></i>
                                                                            <div class="scroll_height_box">
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-00"
                                                                                    value="00">00시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-01"
                                                                                    value="01">01시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-02"
                                                                                    value="02">02시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-03"
                                                                                    value="03">03시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-04"
                                                                                    value="04">04시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-05"
                                                                                    value="05">05시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-06"
                                                                                    value="06">06시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-07"
                                                                                    value="07">07시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-08"
                                                                                    value="08">08시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-09"
                                                                                    value="09">09시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-10"
                                                                                    value="10">10시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-11"
                                                                                    value="11">11시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-12"
                                                                                    value="12">12시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-13"
                                                                                    value="13">13시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-14"
                                                                                    value="14">14시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-15"
                                                                                    value="15">15시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-16"
                                                                                    value="16">16시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-17"
                                                                                    value="17">17시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-18"
                                                                                    value="18">18시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-19"
                                                                                    value="19">19시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-20"
                                                                                    value="20">20시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-21"
                                                                                    value="21">21시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-22"
                                                                                    value="22">22시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentHour-23"
                                                                                    value="23">23시</button>
                                                                            </div>
                                                                            <i class="scroll_bt_btn"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="min_item">
                                                                    <input type="text" id="rentMinute"
                                                                        class="open_list_btn box_design"
                                                                        placeholder="00분" readonly>
                                                                    <div class="min_list time_pop_list rentMinute">
                                                                        <div class="scoll_height">
                                                                            <div class="scroll_height_box">
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentMinute-00"
                                                                                    value="00">00분</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentMinute-10"
                                                                                    value="10">10분</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentMinute-20"
                                                                                    value="20">20분</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentMinute-30"
                                                                                    value="30">30분</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentMinute-40"
                                                                                    value="40">40분</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="rentMinute-50"
                                                                                    value="50">50분</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--20231121 클래스 추가 및 변경 S-->
                                                        <div id="smartkey-rent"
                                                            class="smartkey-check-area smartkey-check-area_cys">
                                                            <input type="checkbox" name="chkRentSmartKey"
                                                                id="chk-rent-smartkey">
                                                            <label for="chk-rent-smartkey">비대면 대여 이용하기</label>
                                                            <button onclick="reservIdx.openSmartkeyPopUp()"
                                                                class="btn-info">
                                                                <i class="icon_i icon_quesmark layer-cus-open"
                                                                    data-layer="layer-del-video"></i>
                                                            </button>
                                                        </div>
                                                        <!--20231121 클래스 추가 및 변경 E-->
                                                    </div>
                                                    <div class="date-time">
                                                        <div class="returnDate date date_cus off">
                                                            <span
                                                                class="return-date-text rent-date-text_cus"><span>반납일</span>을
                                                                선택해주세요</span>
                                                        </div>
                                                        <div class="time">
                                                            <div class="time_select_box">
                                                                <div class="hour_item">
                                                                    <input type="text" id="returnHour"
                                                                        class="open_list_btn box_design"
                                                                        placeholder="00시" readonly>
                                                                    <div class="hour_list time_pop_list returnHour">
                                                                        <div class="scoll_height">
                                                                            <i class="scroll_top_btn"></i>
                                                                            <div class="scroll_height_box">
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-00"
                                                                                    value="00">00시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-01"
                                                                                    value="01">01시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-02"
                                                                                    value="02">02시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-03"
                                                                                    value="03">03시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-04"
                                                                                    value="04">04시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-05"
                                                                                    value="05">05시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-06"
                                                                                    value="06">06시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-07"
                                                                                    value="07">07시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-08"
                                                                                    value="08">08시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-09"
                                                                                    value="09">09시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-10"
                                                                                    value="10">10시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-11"
                                                                                    value="11">11시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-12"
                                                                                    value="12">12시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-13"
                                                                                    value="13">13시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-14"
                                                                                    value="14">14시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-15"
                                                                                    value="15">15시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-16"
                                                                                    value="16">16시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-17"
                                                                                    value="17">17시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-18"
                                                                                    value="18">18시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-19"
                                                                                    value="19">19시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-20"
                                                                                    value="20">20시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-21"
                                                                                    value="21">21시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-22"
                                                                                    value="22">22시</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnHour-23"
                                                                                    value="23">23시</button>
                                                                            </div>
                                                                            <i class="scroll_bt_btn"></i>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="min_item">
                                                                    <input type="text" id="returnMinute"
                                                                        class="open_list_btn box_design"
                                                                        placeholder="00분" readonly>
                                                                    <div class="min_list time_pop_list returnMinute">
                                                                        <div class="scoll_height">
                                                                            <div class="scroll_height_box">
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnMinute-00"
                                                                                    value="00">00분</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnMinute-10"
                                                                                    value="10">10분</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnMinute-20"
                                                                                    value="20">20분</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnMinute-30"
                                                                                    value="30">30분</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnMinute-40"
                                                                                    value="40">40분</button>
                                                                                <button type="button" class="hr_value"
                                                                                    id="returnMinute-50"
                                                                                    value="50">50분</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!--20231121 클래스 추가 및 변경 S-->
                                                        <div id="smartkey-return"
                                                            class="smartkey-check-area smartkey-check-area_cys">
                                                            <input type="checkbox" name="chkReturnSmartKey"
                                                                id="chk-return-smartkey">
                                                            <label for="chk-return-smartkey">비대면 반납 이용하기</label>
                                                            <button onclick="reservIdx.openSmartkeyPopUp()"
                                                                class="btn-info">
                                                                <i class="icon icon_i icon_quesmark layer-cus-open"
                                                                    data-layer="layer-del-video"></i>
                                                            </button>
                                                        </div>
                                                        <!--20231121 클래스 추가 및 변경 E-->
                                                    </div>
                                                </div>
                                                <div>
                                                    <p class="rent-term-period rent-term-period_cus">
                                                        <!--disabled시 디자인 변경-->
                                                        <input type="text" id="period-total" readonly
                                                            class="result_text" placeholder="총 0일 0시간 대여" disabled
                                                            style="width:100%;">
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!--딜리버리장소-->
                                <section class="content_delivery tab__item_cus">
                                    <div class="flex__type02">
                                        <div class="flex_type02_left">
                                            <div class="left_common left_place_area">
                                                <div class="title">
                                                    <h2>딜리버리 주소를 <br> 입력해주세요</h2>
                                                </div>
                                                <div class="flex__box">
                                                    <div class="img_area">
                                                        <img src="/lrhp/pc/images/reservation/reser_img/car_red.png"
                                                            alt="자동차이미지">
                                                    </div>
                                                    <div class="text_area">
                                                        <div class="desc">
                                                            <p>지점 방문을 <br> 원하신다면?</p>
                                                        </div>
                                                        <div class="btn_box_cus">
                                                            <a class="btn_small_cus btn_white_cus go_to_branch">지점방문 <i
                                                                    class="icon_i icon_rr_arrow">우측화살표</i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="flex_type02_center">
                                            <div class="delivery_box">
                                                <div class="del_tit">
                                                    <h3><span class="point_r_color">원하는 장소</span>로 차량을 배달해드릴게요</h3>
                                                </div>
                                                <div class="del_form_box">
                                                    <div class="del_search flex_between">
                                                        <input id="addr-search" type="text" placeholder="어디로 받고 싶으세요?">
                                                        <button type="button" class="btn_search"></button>
                                                    </div>
                                                    <!--검색 주소 리스트-->
                                                    <div class="search_list" id="search_list" style="display: none;">
                                                        <ul id="addr-result">
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!--주소틀리면 하단 메세지-->
                                                <p class="error_type01" style="display: none;">올바른 주소인지 확인해주세요.</p>
                                                <!--하단 주위 문구 및 딜리버리 서비스 이용 방법 재생_주소검색전-->
                                                <section class="delivery_section delivery_step01"
                                                    style="display: block;">
                                                    <div class="del_caution_box">
                                                        <p>
                                                            도서산간지역 등 차량 접근이 어려운 장소는 서비스 제공이 <br>
                                                            제한될 수 있어요
                                                        </p>
                                                    </div>
                                                    <div class="del_explain_btn_box">
                                                        <button type="button" class="layer-cus-open"
                                                            data-layer="layer-del-video02"><i
                                                                class="icon_i_in icon_play">재생</i>딜리버리 서비스 이용
                                                            방법</button>
                                                    </div>
                                                </section>
                                                <!--요청사항 입력_주소검ㅈ색완료-->
                                                <section class="delivery_section delivery_step02"
                                                    style="display: none;">
                                                    <div class="text_area_wrap">
                                                        <!--20231121 텍스트 변경 및 삭제 S-->
                                                        <h3>추가 요청사항이 있다면 적어주세요(선택)</h3>
                                                        <!--20231121 텍스트 변경 및 삭제 E-->
                                                        <textarea maxlength="60" id="reqAddr2" cols="30" rows="10"
                                                            placeholder="ex) oo 커피 앞 큰 도로에서 뵙겠습니다."></textarea>
                                                        <div class="btn_box_type01">
                                                            <button type="button"
                                                                class="btn_cus btn_red_type01 btn_delivery_next"
                                                                data-layer="">다음</button>
                                                        </div>
                                                    </div>
                                                </section>
                                                <!--딜리버리 불가능 메세지-->
                                                <section class="delivery_section delivery_step03"
                                                    style="display: none;">
                                                    <div class="delivery_imposible">
                                                        <div class="img_box"><img
                                                                src="/lrhp/pc/images/reservation/reser_img/img_man.png"
                                                                alt="사람이미지"></div>
                                                        <p>검색하신 지역에는 딜리버리가 어려워요. <br> 다른 지역을 입력해주세요</p>
                                                        <div class="btn_box_type01">
                                                            <button type="button" id="deliverySearchModal"
                                                                class="btn_cus btn_red_type01 layer-cus-open"
                                                                data-layer="layer-del-posible">딜리버리 가능 지역 확인하러
                                                                가기</button>
                                                        </div>
                                                    </div>
                                                </section>
                                            </div>
                                        </div>
                                        <div class="flex_type02_right">
                                            <div class="terms_box">
                                                <p class="term_tit">이용조건을 확인해주세요</p>
                                                <ul class="term_desc">
                                                    <li>
                                                        <span class="point_r_color">(필수)</span>
                                                        <span>고객부담금 완전 면제 가입</span>
                                                    </li>
                                                    <li>
                                                        <span class="point_r_color">(필수)</span>
                                                        <span>사전체크인 완료</span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!--차량리스트-->
                                <section class="content_car_list tab__item_cus">
                                    <div class="flex__type03">
                                        <div class="flex_type01_left">
                                            <div class="filter_box">
                                                <div class="filter_item">
                                                    <div class="filter_tit">
                                                        <h3>차종</h3>
                                                    </div>
                                                    <ul id="v-types">
                                                    </ul>
                                                </div>
                                                <!--20231121 임시 아이디 값 지정 및 가스,lpg li 추가 S-->
                                                <div class="filter_item">
                                                    <div class="filter_tit">
                                                        <h3>인승</h3>
                                                    </div>
                                                    <ul id="v-types-seats">
                                                        <li>
                                                    </ul>
                                                </div>
                                                <div class="filter_item">
                                                    <div class="filter_tit">
                                                        <h3>연료</h3>
                                                    </div>
                                                    <ul id="v-types-fuel">
                                                    </ul>
                                                </div>
                                                <!--20231121 임시 아이디 값 지정 및 가스,lpg li 추가 E-->
                                                <div class="filter_reset_btn">
                                                    <button type="reset" class="reset_btn">필터 초기화 <i
                                                            class="icon_i icon_b_refresh"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- 20231205 차량리스트 -->
                                        <div class="flex_type01_right">
                                            <div class="car_list">
                                                <!--20231121 클래스 추가 S-->
                                                <ul id="car-list" class="vehicle-list vehicle-list-cus"
                                                    style="display: block;">
                                                </ul>
                                                <!--20231212 차량없을때 문구 추가 S-->
                                                <div class="none_car" id="car-no-data">
                                                    <img src="/lrhp/pc/images/reservation/reser_img/icon_img02.png"
                                                        alt="자동차이미지">
                                                    <p>예약 가능한 차량이 없습니다. <br> 다른 차종을 확인해주세요.</p>
                                                </div>
                                                <!--20231212 차량없을때 문구 추가 E-->
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <!--bg-dimmed 컴포넌트-->
            <div class="bg-dimmed">딤(Dim)처리 배경</div>
            <!--//bg-dimmed 컴포넌트-->
            <!--floating_zone 컴포넌트-->
            <aside class="floating_zone" style="display: none;">
                플로팅 사이드 바영역
            </aside>
            <!--//floating_zone 컴포넌트-->
            <!-- 지점안내 레이어 -->
            <!-- //지점안내 레이어 -->
            <!--20231121 텍스트 변경 S-->
            <!-- 차량 무료 업그레이드 레이어 -->
            <div class="layer-wrap layer-popup layer-infos layer-car-upgrade">
                <div class="pop-inner">
                    <div class="popup-top">
                        <h4>차량 무료 업그레이드</h4>
                        <button type="button" class="layer-popup-close" data-layer="layer-car-upgrade">
                            <span class="icon pop-close">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont layer-iscroll">
                        <div class="iscroll-in">
                            <div class="talk-section">
                                <span class="icon talk3"></span>
                                <span>
                                    회원님의 총 대여회수는 <em class="num">5<em>회</em></em>,<br>
                                    현재 차량 업그레이드가 가능합니다. <strong>사용하시겠습니까?</strong>
                                </span>
                            </div>
                            <div class="popup-cont-bot-btns">
                                <button type="button" class="btn btn-white layer-popup-close"
                                    data-layer="layer-car-upgrade">아니오</button>
                                <button type="button" class="btn btn-red layer-popup-close"
                                    data-layer="layer-car-upgrade">예</button>
                            </div>
                            <div class="tab-nav tabControl">
                                <ul class="tab-col2">
                                    <li class="active">
                                        <button type="button">무료 업그레이드 혜택</button>
                                    </li>
                                    <li>
                                        <button type="button">무료 이용권 혜택</button>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-cont tabControl">
                                <div class="tab-cont-inner">
                                    <ul class="lst dot">
                                        <li class="txt-color-red">대여회수 에 따라 차량 무료 업그레이드 서비스 제공</li>
                                        <li>
                                            <p>5번째, 15번째, 25번째, 35번째, 45번째, 55번째 (+10회 단위) 대여시 제공</p>
                                            <p>소형 예약 차량 → 중형 업그레이드</p>
                                            <p>중형 예약 차량 → 준대형 업그레이드 </p>
                                        </li>
                                        <li>대형, 수입차, SUV/RV, 승합 차량은 업그레이드 대상에서 제외</li>
                                        <li>무료 업그레이드 발생 시, 모든 차수에서 사용가능(발생되는 차수에 사용하지 않아도 이월가능)</li>
                                        <li>업그레이드 서비스는 사전 예약제로 진행 (홈페이지 및 우선 예약/ 대여 6시간 전)
                                            <p>※ 해당 지점 업그레이드 이용 가능 차량이 있는 경우에 한해 서비스 이용 가능</p>
                                        </li>
                                        <li>자세한 사항은 해당 지점으로 문의 바랍니다.</li>
                                    </ul>
                                </div>
                                <div class="tab-cont-inner">
                                    <ul class="lst dot">
                                        <li class="txt-color-red">등급별 대여 횟수에 따라 1일(24시간) 무료 이용권 제공 </li>
                                        <li>누적 5회 이용 후, 소형 무료 이용권 지급</li>
                                        <li>누적 10회 , 20회, 30회, 40회, 50회 (+10회 단위) 이용후 , 중형 무료 이용권 지급
                                            <p>예) 5회차 차량 이용 후 모바일 무료 이용권이 지급되며, 6회부터 유효기간 내 사용가능</p>
                                        </li>
                                        <li>단, CDW 가입은 필수</li>
                                        <li>유효기간 : 발행 후 6개월 까지 (사용기한 초과로 인한 재발급 및 사용기한 연장은 불가임) </li>
                                        <li>발송방법 : SMS를 통한 무료이용권 발송 (마케팅수신동의 고객에 한함)
                                            <p>※ 마케팅 수신 미동의 고객은 마이페이지 내 정보 수정에서 동의하여 주세요.</p>
                                        </li>
                                        <li>발송시기 : 반납 후 영업일 기준 3일부터 최대 31일 이내 </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //차량 무료 업그레이드 레이어 -->
            <!--20231121 텍스트 변경 E-->
            <!-- 같은 지점 무료 업그레이드 가능차량 레이어 -->
            <div class="layer-wrap layer-popup layer-infos layer-car-upgrade-list">
                <div class="pop-inner">
                    <div class="popup-top">
                        <!--20231121 텍스트 변경 S-->
                        <h4>차량 무료 업그레이드</h4>
                        <!--20231121 텍스트 변경 E-->
                        <button type="button" class="layer-popup-close" data-layer="layer-car-upgrade-list">
                            <span class="icon pop-close">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont layer-iscroll">
                        <div class="iscroll-in">
                            <div class="talk-section">
                                <span class="icon talk3"></span>
                                <!--20231121 텍스트 변경 S-->
                                <span>골드회원 고객님께 상위 차종으로 무료 업그레이드를 해드려요!</span>
                                <!--20231121 텍스트 변경 E-->
                            </div>
                            <div class="carup-choice">
                                <ul class="choice-list list-type-col2">
                                    <li>
                                        <div class="chk-view-box">
                                            <input type="radio" id="upgrage-1" name="upgrage" checked="">
                                            <label for="upgrage-1">
                                                <div class="img"><img
                                                        src="../../../../lrhp/pc/images/@temp-shortmain-car2.jpg"
                                                        alt=""></div>
                                                <strong>더 뉴모닝</strong>
                                                <p>가솔린</p>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="chk-view-box">
                                            <input type="radio" id="upgrage-2" name="upgrage">
                                            <label for="upgrage-2">
                                                <div class="img"><img
                                                        src="../../../../lrhp/pc/images/@temp-shortmain-car.png" alt="">
                                                </div>
                                                <strong>ALL NEW K7 2.4</strong>
                                                <p>디젤</p>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="chk-view-box">
                                            <input type="radio" id="upgrage-3" name="upgrage">
                                            <label for="upgrage-3">
                                                <div class="img"><img
                                                        src="../../../../lrhp/pc/images/@temp-shortmain-car.png" alt="">
                                                </div>
                                                <strong>ALL NEW K7 2.4</strong>
                                                <p>LPG</p>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="chk-view-box">
                                            <input type="radio" id="upgrage-4" name="upgrage">
                                            <label for="upgrage-4">
                                                <div class="img"><img
                                                        src="../../../../lrhp/pc/images/@temp-shortmain-car.png" alt="">
                                                </div>
                                                <strong>ALL NEW K7 2.4</strong>
                                                <p>하이브리드</p>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="chk-view-box">
                                            <input type="radio" id="upgrage-3" name="upgrage">
                                            <label for="upgrage-3">
                                                <div class="img"><img
                                                        src="../../../../lrhp/pc/images/@temp-shortmain-car.png" alt="">
                                                </div>
                                                <strong>ALL NEW K7 2.4</strong>
                                                <p>LPG</p>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="chk-view-box">
                                            <input type="radio" id="upgrage-4" name="upgrage">
                                            <label for="upgrage-4">
                                                <div class="img"><img
                                                        src="../../../../lrhp/pc/images/@temp-shortmain-car.png" alt="">
                                                </div>
                                                <strong>ALL NEW K7 2.4</strong>
                                                <p>하이브리드</p>
                                            </label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="popup-cont-bot-btns">
                                <!--20231121 텍스트 변경 S-->
                                <button type="button" class="btn btn-white layer-popup-close"
                                    data-layer="layer-car-upgrade">이전</button>
                                <!--20231121 텍스트 변경 E-->
                                <button type="button" class="btn btn-red layer-popup-close"
                                    data-layer="layer-car-upgrade" onclick="nextWithUpgraCar()">해당 차량으로 예약</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //같은 지점 무료 업그레이드 가능차량 레이어 -->
            <!-- 지점 공지사항 레이어 -->
            <div class="layer-wrap layer-popup layer-infos layer-notice">
                <div class="pop-inner">
                    <div class="popup-top">
                        <h4>상동망우점 공지사항</h4>
                        <button type="button" class="layer-popup-close" data-layer="layer-notice">
                            <span class="icon pop-close">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont layer-iscroll">
                        <div class="iscroll-in">
                            <div class="notice-branch">
                                <img src="../../../../lrhp/pc/images/@temp-notice-branch.png" alt="지점공지사항">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //지점 공지사항 레이어 -->
            <!-- 20230223 :: 레이어 추가 -->
            <!-- 딜리버리 서비스 레이어 -->
            <div class="layer-wrap layer-popup layer-infos nl2 layer-delivery">
                <div class="pop-inner">
                    <div class="popup-top">
                        <h4>딜리버리 서비스 안내</h4>
                        <button type="button" class="layer-popup-close" data-layer="layer-delivery">
                            <span class="icon pop-close">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont">
                        <div>
                            <div class="talk-section">
                                <span class="icon talk3"></span>
                                <span>지점에 방문하지않으셔도 원하는 장소로 차량을 가져다 드리는 서비스입니다.</span>
                            </div>
                            <div class="dimg">
                                <img src="/lrhp/pc/images/icons/ico_delivery_pc.png" alt="">
                            </div>
                            <div class="rep-box">
                                <span class="icon-rep"></span>
                                도서산간지역 등 차량 접근이 어려운 장소는서비스 제공이 제한될 수 있습니다.
                            </div>
                            <p class="tit">이용조건</p>
                            <ul class="lst dot lr">
                                <li>
                                    <span class="red">(필수)</span> 롯데렌터카 회원 가입
                                </li>
                                <li>
                                    <span class="red">(필수)</span> 고객부담금 완전 면제 가입
                                </li>
                                <li>
                                    <span class="red">(필수)</span> 사전체크인 완료
                                </li>
                                <li>
                                    <span class="red">(필수)</span> 선결제 완료
                                </li>
                                <li>
                                    <span class="red">(필수)</span> 결제수단 등록카드 입력
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // 딜리버리 서비스 레이어 -->
            <!-- 스마트 키박스 레이어 -->
            <div class="layer-wrap layer-popup layer-infos nl2 layer-smartkeybox">
                <div class="pop-inner">
                    <div class="popup-top">
                        <h4>스마트키박스 서비스 안내</h4>
                        <button type="button" class="layer-popup-close" data-layer="layer-smartkeybox">
                            <span class="icon pop-close">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont">
                        <div>
                            <div class="keybox-area">
                                <div class="talk-section">
                                    <span class="icon talk3"></span>
                                    <span>24시간 언제든지 비대면으로<br>대여/반납이 가능한 서비스입니다.</span>
                                </div>
                                <div>
                                    <img src="/lrhp/pc/images/icons/ico_keybox_pc.png" alt="">
                                </div>
                            </div>
                            <p class="tit">이용조건</p>
                            <ul class="lst dot lr">
                                <li>
                                    <span class="red">(필수)</span> 롯데렌터카 회원 가입
                                </li>
                                <li>
                                    <span class="red">(필수)</span> 고객부담금 완전 면제 가입
                                </li>
                                <li>
                                    <span class="red">(필수)</span> 사전체크인 완료
                                </li>
                                <li>
                                    <span class="red">(필수)</span> 선결제 완료
                                </li>
                                <li>
                                    <span class="red">(필수)</span> 결제수단 등록카드 입력
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // 스마트 키박스 레이어 -->
            <!-- 예약 로그인 레이어 -->
            <div class="layer-wrap layer-popup layer-reslogin">
                <div class="reslogin-wrap">
                    <a href="#" class="section type1">
                        <span class="txt1">
                            즉시 예약
                        </span>
                        <span class="txt2">
                            로그인 없이 예약 가능
                        </span>
                    </a>
                    <a href="#" class="section type2">
                        <span class="txt1">
                            회원 예약
                        </span>
                        <span class="txt2">
                            딜리버리, 비대면 서비스<br />로그인 후 예약 가능
                        </span>
                    </a>
                </div>
            </div>
            <!-- // 예약 로그인 레이어 -->
            <!-- // 20230223 :: 레이어 추가 -->
            <!-- 20230313 :: -->
            <div id="notice-popup" class="layer-wrap layer-popup layer-infos layer-notice branchnotice01">
                <div class="pop-inner">
                    <div class="popup-top">
                        <h4 id="img-notice-head">신경주역</h4>
                        <button type="button" class="layer-popup-custom-close layer-popup-close"
                            data-layer="branchnotice01">
                            <span class="icon pop-close" onclick="reservIdx.popupCloseEvent()">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont layer-iscroll">
                        <div class="iscroll-in">
                            <div id="img-notice-cont" class="notice-branch"><img src="getImage2.jpg"
                                    alt="FILE0000000002161813"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // 20230313 -->
            <div class="layer-wrap layer-popup layer-details layer-sel-branch">
                <div class="pop-inner">
                    <div class="popup-top">
                        <!-- <span class="logo"><img src="/lrhp/pc/images/common/logo-header.png" alt="대한민국 No1.롯데렌터카"></span> -->
                        <h4 style="font-size:18px;">
                            <o class="name_kor">가산디지털지점</o>
                        </h4>
                        <span class="state" id="dailyhour" style="display: none;">24시간 운영</span>
                        <!-- <span class="state" id="branchgubun">단기렌터카 지점</span> -->
                        <button type="button" class="btn btn-white print" style="right: 100px;">
                            <span class="icon print"></span>
                            프린트
                        </button>
                        <button type="button" class="layer-popup-close" data-layer="layer-sel-branch">
                            <span class="icon pop-close">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont branch-notice">
                        <div class="ly-container">
                            <div class="left">
                                <!-- 지도 API -->
                                <div class="map" id="layer-pop-branch-map"
                                    style="width: 350px; height: 368px; position: relative; overflow: hidden; background: url(&quot;http://static.naver.net/maps/mantle/2x/pattern_1.png&quot;) 0px 0px repeat transparent;">
                                </div>
                                <div class="location-btn">
                                    <button type="button" class="btn btn-white" id="searchRoad">
                                        <span id="searchRoad" class="icon location"></span> 빠른길 찾기
                                    </button>
                                </div>
                                <div id="branch-img" class="branch-img">
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
                                    <dd>도로명 : 서울시 금천구 가산디지털1로 186 제이플라츠 지하 1층 B106호</dd>
                                    <dd>지번 : 서울시 금천구 가산동 459-11 B106호</dd>
                                    <dt>영업시간</dt>
                                    <dd>24시간 스마트키박스 운영 (00:00 ~ 24:00) 당일예약 가능시간 08:30 ~ 16:00</dd>
                                    <dt>전화번호</dt>
                                    <dd>02-3664-8000</dd>
                                    <dt>찾아가는 방법</dt>
                                    <dd>
                                        <ul class="lst dot">
                                            <li>◆ 지하철 이용 시
                                                <br>지하철 1,7호선 환승역 가산디지털단지 역 11번출구(1호선)로 우측건물 제이플라츠 지하1층
                                                <br>◆ 버스 이용 시
                                                <br>가산디지털단지역(정류장번호 18-107) 하차 후 차량 진행 방향으로 약 20m 직진. 오른편 제이플라츠건물 지하1층
                                                <br>◆ 택시 이용 시
                                                <br>가산디지털단지역 7번출구에서 하차. 바로 앞 제이플라츠 지하1층
                                            </li>
                                        </ul>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="layer_btn_box">
                            <button type="button" id="confirmMessage"
                                class="layer_btn_cus layer_btn_type01 go_to_cal">여기에서 빌리기</button>
                        </div>
                        <!-- <div class="popup-cont-bot-btns">
                    <button type="button" class="btn btn-white layer-popup-close" data-layer="layer-sel-branch">닫기</button>
                    <button type="button" class="btn btn-red" onclick="locationRentReserv(this);" id="branchGubun2" data-branchcode="421" data-areacode="100">예약하기</button>
                    <button type="button" class="btn btn-red">예약하기</button>
                </div> -->
                    </div>
                </div>
            </div>
            <!--딜리버리서비스 영상 레이어-->
            <div class="layer-wrap layer-popup layer-del-video02 layer-w-900">
                <div class="pop-inner">
                    <div class="popup-top">
                        <h4 id="img-notice-head">딜리버리 서비스</h4>
                        <button type="button" class="layer-popup-custom-close layer-popup-close"
                            data-layer="branchnotice01">
                            <span class="icon pop-close" onclick="reservIdx.popupCloseEvent()">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont layer-iscroll">
                        <div class="top_tit">
                            <p><span class="point_r_color">고객님이 원하시는 곳에서 차량을 대여 및 반납</span>하실 수 있어요. <br>서비스 지역이 아닌 주소로
                                요청 시에는 대여가 제한될 수 있어요.</p>
                        </div>
                        <div class="center_cont">
                            <iframe width="687" height="416"
                                src="https://www.youtube.com/embed/yCs8wweiCGw?autoplay=1&mute=1"
                                title="[롯데렌탈 사용 설명서] 롯데렌터카 딜리버리 서비스 이용 방법" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                allowfullscreen></iframe>
                        </div>
                        <div class="bt_term_cont">
                            <span class="term_tit">이용조건</span>
                            <ul>
                                <li>
                                    <span class="point_r_color">(필수)</span>
                                    <span>고객부담금 완전 면제 가입</span>
                                </li>
                                <li>
                                    <span class="point_r_color">(필수)</span>
                                    <span>사전체크인 필수</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--스마트키 영상 무인 차량 키 레이어-->
            <div class="layer-wrap layer-popup layer-del-video layer-w-900">
                <div class="pop-inner">
                    <div class="popup-top">
                        <h4 id="img-notice-head">스마트 키박스 비대면 서비스</h4>
                        <button type="button" class="layer-popup-custom-close layer-popup-close"
                            data-layer="branchnotice01">
                            <span class="icon pop-close" onclick="reservIdx.popupCloseEvent()">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont layer-iscroll">
                        <div class="top_tit">
                            <p>무인 차량 키 보관함을 통해 24시간 언제든지 <span class="point_r_color">비대면 대여 / 반납</span>이 가능해요. <br> 스마트
                                키박스 이용 방법이 궁금하다면 아래의 동영상을 시청해보세요.</p>
                        </div>
                        <div class="center_cont">
                            <iframe width="687" height="416"
                                src="https://www.youtube.com/embed/ecwwQjIrFTY?autoplay=1&mute=1"
                                title="내가 원하는 시간에 렌터카 빌리기부터 반납하는 방법까지 (feat. 스마트 키박스 이용 방법)" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                allowfullscreen></iframe>
                        </div>
                        <div class="bt_term_cont">
                            <span class="term_tit">이용조건</span>
                            <ul>
                                <li>
                                    <span class="point_r_color">(필수)</span>
                                    <span>고객부담금 완전 면제 가입</span>
                                </li>
                                <li>
                                    <span class="point_r_color">(필수)</span>
                                    <span>사전체크인 필수</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--스마트키 영상 지점 운영시간 레이어-->
            <div id="layer-del-video01" class="layer-wrap layer-popup layer-del-video01 layer-w-900">
                <div class="pop-inner">
                    <div class="popup-top">
                        <h4 id="img-notice-head">스마트 키박스 비대면 서비스</h4>
                        <button type="button" class="layer-popup-custom-close layer-popup-close"
                            data-layer="branchnotice01">
                            <span class="icon pop-close" onclick="reservIdx.popupCloseEvent()">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont layer-iscroll">
                        <div class="top_tit">
                            <p>지점 운영시간 이외에는 스마트 키박스에서 <span class="point_r_color">비대면 대여 / 반납</span> 해주세요. <br>스마트 키박스
                                이용 방법이 궁금하다면 아래의 링크를 통해 동영상을 시청해보세요.</p>
                        </div>
                        <div class="center_cont">
                            <iframe width="687" height="416"
                                src="https://www.youtube.com/embed/ecwwQjIrFTY?autoplay=1&mute=1"
                                title="내가 원하는 시간에 렌터카 빌리기부터 반납하는 방법까지 (feat. 스마트 키박스 이용 방법)" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                allowfullscreen></iframe>
                        </div>
                        <div class="bt_term_cont">
                            <span class="term_tit">이용조건</span>
                            <ul>
                                <li>
                                    <span class="point_r_color">(필수)</span>
                                    <span>고객부담금 완전 면제 가입</span>
                                </li>
                                <li>
                                    <span class="point_r_color">(필수)</span>
                                    <span>사전체크인 필수</span>
                                </li>
                                <li>
                                    <span class="point_r_color">(필수)</span>
                                    <span>결제수단 등록카드 입력</span>
                                </li>
                            </ul>
                        </div>
                        <div class="layer_btn_box">
                            <button type="button" class="layer_btn_cus layer_btn_type01 go_to_calist">확인</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--딜리버리가능지역 레이어-->
            <div class="layer-wrap layer-popup layer-del-posible layer-w-900">
                <!--검색 step1 지도-->
                <div class="pop-inner del_step del_step_01" style="display: block;">
                    <div class="popup-top">
                        <h4 id="img-notice-head">딜리버리 가능 지역</h4>
                        <button type="button" class="layer-popup-custom-close layer-popup-close"
                            data-layer="branchnotice01">
                            <span class="icon pop-close" onclick="reservIdx.popupCloseEvent()">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont layer-iscroll">
                        <div class="top_tit">
                        </div>
                        <div class="center_cont">
                            <!-- 딜리버리 맵 -->
                            <div class="map" id="deliveryMap"
                                style="width: 800px; height: 389px; position: relative; overflow: hidden; background: url(&quot;http://static.naver.net/maps/mantle/2x/pattern_1.png&quot;) 0px 0px repeat transparent;">
                                >
                                <div id="centerMarker" class="center-marker">
                                    <!-- 서비스 준비 중 -->
                                    <div id="cm-invalid">
                                        <div class="text invalid">서비스 준비 중</div>
                                        <div class="line invalid"></div>
                                        <div class="dot invalid"></div>
                                    </div>
                                    <!-- ds -->
                                    <div id="cm-ds">
                                        <div id="ds-text" class="text">여기에서 픽업</div>
                                        <div class="line"></div>
                                        <div class="dot"></div>
                                    </div>
                                    <!-- 이동중 -->
                                    <div id="cm-moving">
                                        <div class="dot moving"></div>
                                    </div>
                                </div>
                            </div>
                            <!--제주맵-->
                            <div class="map" id="jejuMap"
                                style="display:none; width: 800px; height: 389px; position: relative; overflow: hidden; background: url(&quot;http://static.naver.net/maps/mantle/2x/pattern_1.png&quot;) 0px 0px repeat transparent;">
                                >
                                <div id="centerMarker" class="center-marker">
                                    <!-- 서비스 준비 중 -->
                                    <div id="cm-invalid">
                                        <div class="text invalid">서비스 준비 중</div>
                                        <div class="line invalid"></div>
                                        <div class="dot invalid"></div>
                                    </div>
                                    <!-- ds -->
                                    <div id="cm-ds">
                                        <div id="ds-text" class="text">여기에서 픽업</div>
                                        <div class="line"></div>
                                        <div class="dot"></div>
                                    </div>
                                    <!-- 이동중 -->
                                    <div id="cm-moving">
                                        <div class="dot moving"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="layer_search_box">
                            <div class="del_search flex_between">
                                <input type="text" id="deliverAddrMapTx" placeholder="어디로 받고 싶으세요?">
                                <button type="button" class="btn_search"></button>
                            </div>
                        </div>
                        <div class="layer_btn_box">
                            <button type="button" class="layer_btn_cus layer_btn_type01 go_to_step02">다음</button>
                        </div>
                    </div>
                </div>
                <!--검색 step2 추천 검색어-->
                <div class="pop-inner del_step del_step_02" style="display: none;">
                    <div id="deliverySearchModalMap" class="popup-top">
                        <h4 id="img-notice-head">딜리버리 가능 지역</h4>
                        <button type="button" class="layer-popup-custom-close layer-popup-close"
                            data-layer="branchnotice01">
                            <span class="icon pop-close" onclick="reservIdx.popupCloseEvent()">닫기 버튼</span>
                        </button>
                    </div>
                    <div id="deliverySearchModalList" class="popup-cont layer-iscroll">
                        <div class="layer_search_box">
                            <div class="del_search flex_between">
                                <!--20231121 클래스 추가 S-->
                                <input type="text" placeholder="어디로 받고 싶으세요?" class="search_input">
                                <!--20231121 클래스 추가 E-->
                                <button type="button" class="btn_search"></button>
                            </div>
                        </div>
                        <div class="key_saerch_list">
                            <p>추천 검색어</p>
                            <ul>
                                <li>
                                    <button type="button">
                                        <span class="key_num key_num_red">1</span>
                                        <span>인천 국제 공항</span>
                                    </button>
                                </li>
                                <li>
                                    <button type="button">
                                        <span class="key_num key_num_red">2</span>
                                        <span>인천 국제 공항</span>
                                    </button>
                                </li>
                                <li>
                                    <button type="button">
                                        <span class="key_num key_num_red">3</span>
                                        <span>인천 국제 공항</span>
                                    </button>
                                </li>
                                <li>
                                    <button type="button">
                                        <span class="key_num">4</span>
                                        <span>인천 국제 공항</span>
                                    </button>
                                </li>
                                <li>
                                    <button type="button">
                                        <span class="key_num">5</span>
                                        <span>인천 국제 공항</span>
                                    </button>
                                </li>
                                <li>
                                    <button type="button">
                                        <span class="key_num">6</span>
                                        <span>인천 국제 공항</span>
                                    </button>
                                </li>
                                <li>
                                    <button type="button">
                                        <span class="key_num">7</span>
                                        <span>인천 국제 공항</span>
                                    </button>
                                </li>
                                <li>
                                    <button type="button">
                                        <span class="key_num">8</span>
                                        <span>인천 국제 공항</span>
                                    </button>
                                </li>
                            </ul>
                        </div>
                        <div class="layer_btn_box">
                            <button type="button" class="layer_btn_cus layer_btn_type02 go_to_step03">지도에서 선택하기 <i
                                    class="icon_i icon_wl_pin"></i></button>
                        </div>
                    </div>
                </div>
                <!--검색 step3 주소리스트-->
                <div class="pop-inner del_step del_step_03" style="display: none;">
                    <div class="popup-top">
                        <h4 id="img-notice-head">딜리버리 가능 지역</h4>
                        <button type="button" class="layer-popup-custom-close layer-popup-close"
                            data-layer="branchnotice01">
                            <span class="icon pop-close" onclick="reservIdx.popupCloseEvent()">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont layer-iscroll">
                        <div class="layer_search_box">
                            <div class="del_search flex_between">
                                <input type="text" id="deliverAddrListTx" placeholder="어디로 받고 싶으세요?">
                                <button type="button" class="btn_search"></button>
                            </div>
                        </div>
                        <div class="layer_search_list">
                            <ul id="deliverAddrResult">
                            </ul>
                            <p class="error_type01_delivery_addr" style="display: none;">올바른 주소인지 확인해주세요.</p>
                        </div>
                        <div class="layer_btn_box">
                            <button type="button" class="layer_btn_cus layer_btn_type02 go_to_step03">지도에서 선택하기 <i
                                    class="icon_i icon_wl_pin"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <!--레이어테스트-->
            <div class="layer-wrap layer-popup layer-cus">
                <div class="pop-inner">
                    <div class="popup-top">
                        <h4 id="img-notice-head" clas="branchName">가산디지털지점</h4>
                        <button type="button" class="layer-popup-custom-close layer-popup-close"
                            data-layer="branchnotice01">
                            <span class="icon pop-close" onclick="reservIdx.popupCloseEvent()">닫기 버튼</span>
                        </button>
                    </div>
                    <div class="popup-cont layer-iscroll">
                        <p>1111111111111111111111111111111111</p>
                    </div>
                </div>
            </div>
            <!-- Layer :: 지점안내  -->
            <script type="text/javascript"
                src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ea7w6if99d&submodules=geocoder"></script>
            <script type="text/javascript" src="/lrhp/js/web/hp/pc/reservation/horizonDatepicker3.m.js"></script>
            <script type="text/javascript"
                src="/lrhp/js/reserv/shortReservCommon_22Q4.js?ver=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
            <script type="text/javascript"
                src="/lrhp/pc/scripts/content_ui.js?ver=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
            <script type="text/javascript"
                src="/lrhp/js/web/hp/pc/reservation/reservationIndex_23Q1.js?ver=15e1d0b2-acaa-4ab4-b885-b033da14afbd"></script>
            <script type="text/javascript" src="/resource/js/jquery.cookie.js"></script>
            <script>
                var vworldKey = '6099A580-7179-3B05-BEC4-7BFCF9B664E0'; // https://www.lotterentacar.net
                if (document.location.hostname === 'lotterentacar.net') {
                    vworldKey = '344F7EC2-80C7-309A-88D4-4B17BF2DF3FD'; // https://lotterentacar.net
                } else if (document.location.hostname === 'local.lotterentacar.net') {
                    vworldKey = 'B076A435-027E-3D76-AD38-A53F673C1CB0'; // local
                } else if (document.location.hostname === 't.lotterentacar.net') {
                    vworldKey = '66143E0C-50B5-3D52-A0F1-78100C725265'; // t
                }
                var vworldURLPrefix = 'https://api.vworld.kr/req/data?service=data&request=GetFeature&data=LT_C_ADEMD_INFO&key=' +
                    vworldKey + '&domain=' + document.location.hostname + '&attrFilter=emd_cd:IN:';
                var rentB = "";
                var returnB = "";
                var rentA = "";
                var latitude = "";
                var longitude = "";
                function DimLayer(map) {
                    var KOREA_BOUNDS = {
                        north: 38.8977002,
                        south: 34.0230801,
                        west: 125.6627754,
                        east: 129.7387031,
                    };
                    this.koreaRange = [
                        [KOREA_BOUNDS.east, KOREA_BOUNDS.north], // 북동
                        [KOREA_BOUNDS.west, KOREA_BOUNDS.north], // 북서
                        [KOREA_BOUNDS.west, KOREA_BOUNDS.south], // 남서
                        [KOREA_BOUNDS.east, KOREA_BOUNDS.south], // 남동
                    ];
                    this.layer = new naver.maps.Polygon({
                        map,
                        paths: [[]],
                        fillColor: "#000000",
                        fillOpacity: 0.4,
                        strokeWeight: 0,
                    })
                }
                DimLayer.prototype.on = function (branchCode, placeCode, callback) {
                    var _layer = this.layer;
                    var _koreaRange = this.koreaRange;
                    $.ajax({
                        url: RESERV_API_PREFIX + '/reservation/branches/' + branchCode + '/ds-area.json'
                    }).done(function (rawEmdCodes) {
                        var polygons = [];
                        var set = new Set(rawEmdCodes.map(function (e) { return e.slice(0, 8) }))
                        var emdCodes = Array.from(set);
                        // up to 10 per request at vwolrd api
                        var tenBundleOfQuerys = emdCodes.reduce(function (resultArray, emdCode, i) {
                            var chunkIndex = Math.floor(i / 10);
                            if (resultArray[chunkIndex] === undefined) {
                                resultArray[chunkIndex] = []
                            }
                            resultArray[chunkIndex].push(emdCode);
                            return resultArray;
                        }, []);
                        var requests = tenBundleOfQuerys.map(function (query) {
                            return $.ajax({
                                url: vworldURLPrefix + query,
                                dataType: 'jsonp',
                            }).done(function (data) {
                                try {
                                    data.response.result.featureCollection.features.forEach(function (feature) {
                                        feature.geometry.coordinates.forEach(function (coord) {
                                            polygons.push(coord[0])
                                        })
                                    })
                                } catch (error) {
                                    console.log(error);
                                }
                            })
                        })
                        $.when.apply(null, requests).done(function (data) {
                            polygons.unshift(_koreaRange);
                            _layer.setPaths(polygons)
                            _layer.setVisible(true);
                            callback();
                        }).fail(function (_, status, errpr) {
                            callback();
                        });
                    })
                }
                DimLayer.prototype.off = function () {
                    this.layer.setVisible(false);
                }
                function NaverMap(map) {
                    this.map = map;
                }
                NaverMap.prototype.addBranchMarker = function (branch, markerEl) {
                    var marker = new naver.maps.Marker({
                        icon: {
                            content: markerEl,
                            anchor: new naver.maps.Point(35, 35),
                        },
                        map: this.map,
                        position: {
                            lat: branch.lat,
                            lng: branch.lng
                        }
                    });
                    marker.addListener('click', function () {
                        reservIdx.onSelectBranch(branch);
                    });
                    naver.maps.Event.addListener(this.map, "dragstart", function () {
                        //지도 이동 시 현위치 아이콘 off KJH_23.04
                        $('#myLoc').removeClass('active');
                    });
                };
                NaverMap.prototype.setCenter = function (lat, lng, zoomLevel = null) {
                    //zoomLevel값 있을때 지도 움직임에 오류가 있어 panTo를 setSenter로 수정 KJH_23.04
                    //this.map.panTo({ lat, lng }, { duration: 300 });
                    console.log("lat : " + lat + ", lng : " + lng);
                    this.map.setCenter({ lat, lng });
                    $('#myLoc').removeClass('active'); //현위치 아이콘 off KJH_23.04
                    if (zoomLevel !== null && zoomLevel > 9) {
                        this.map.setZoom(zoomLevel, false);
                    }
                }
                NaverMap.prototype.searchAddress = function (query, callback) {
                    $.ajax({
                        url: __CONTEXT_PATH + '/reservation/addressList.json?keyword=' + encodeURI(query),
                    }).done(function (data) {
                        /** 20221222  */
                        var places = data.places.map(function (place) {
                            var lat = place.lat.toString();
                            var lng = place.lng.toString();
                            var latlat = lat.substr(0, 2) + '.' + lat.substr(2);
                            var lnglng = lng.substr(0, 3) + '.' + lng.substr(3);
                            return {
                                name: place.name,
                                address: place.address,
                                subAddress: place.subAddress,
                                lat: latlat,
                                lng: lnglng,
                            };
                        });
                        var items = places.concat(data.addrs);
                        callback(items);
                    })
                }
                NaverMap.prototype.latlngFromAddress = function (address, callback) {
                    naver.maps.Service.geocode({ query: address }, function (status, response) {
                        if (status === naver.maps.Service.Status.OK) {
                            var addr = response.v2.addresses[0];
                            // todo: 위도 경도가 안불러와지는 경우가 있음 분석 요망
                            console.log(response);
                            callback({ lat: addr.y, lng: addr.x });
                        } else {
                            alert('주소를 찾을 수 없습니다.');
                        }
                    });
                }
                function CenterMarker(map) {
                    this._polyline = new naver.maps.Polyline({
                        map,
                        paths: [[]],
                        strokeColor: "#ff0000",
                        strokeOpacity: 0.6,
                        strokeWeight: 2,
                        strokeStyle: "dash",
                    });
                    this._default = function () {
                        $('#cm-invalid').hide();
                        $('#cm-ds').hide();
                        $('#cm-moving').hide();
                        this._polyline.setVisible(false);
                    }
                    this.invalid = function () {
                        this._default();
                        $('#cm-invalid').show();
                        $('.go_to_step02').attr('disabled', true);
                        $('.go_to_step02').css({ "background-color": "#ddd" });
                    };
                    this.useDS = function (pathA, pathB) {
                        this._default();
                        $('#cm-ds').show();
                        $('.go_to_step02').attr('disabled', false);
                        $('.go_to_step02').css({ "background-color": "#E70012" });
                        this._polyline.setPath([pathA, pathB]);
                        this._polyline.setVisible(true);
                    };
                    this.moving = function () {
                        this._default();
                        $('#cm-moving').show();
                        $('#myLoc').removeClass('active'); //현위치 아이콘 off KJH_23.04
                    };
                };
                function DeliveryServiceNaverMap(map) {
                    this.map = map;
                    this.markers = [];
                    this.dim = new DimLayer(map);
                    this.isClickBranchMarker = { value: false };
                    var _isClickBranchMarker = this.isClickBranchMarker;
                    var _centerMarker = new CenterMarker(map);
                    this.centerMarker = _centerMarker;
                    this.centerMarker.moving();
                    naver.maps.Event.addListener(map, "dragstart", function () {
                        _centerMarker.moving();
                    });
                    var _this = this;
                    naver.maps.Event.addListener(map, "idle", function (e) {
                        if (_this.isClickBranchMarker.value) {
                            _this.isClickBranchMarker.value = false;
                            return;
                        }
                        var centerLatLng = e.__targets.projection.target.center;
                        _this._checkLatLng(centerLatLng, _centerMarker);
                    });
                    naver.maps.Event.addListener(map, "center_changed", function (center) {
                        // 센터가 변경될 때마다 줌 기준위치를 센터로 변경
                        map.setOptions('zoomOrigin', center);
                    });
                    // 줌 시작 이벤트
                    naver.maps.Event.addListener(map, "zooming", function (e) {
                        _centerMarker.moving();
                    });
                }
                DeliveryServiceNaverMap.prototype = new NaverMap(this.map);
                // override
                DeliveryServiceNaverMap.prototype.setCenter = function (lat, lng, zoomLevel = null, panTo = true) {
                    this.centerMarker.moving();
                    console.log("deliveryMap lat : " + lat + ", lng : " + lng);
                    // $('#myLoc').removeClass('active'); //현위치 아이콘 off KJH_23.04
                    if (panTo) {
                        this.map.panTo({ lat, lng }, { duration: 300 });
                    } else {
                        this.map.setCenter({ lat, lng });
                    }
                    if (zoomLevel !== null && zoomLevel > 9) {
                        this.map.setZoom(zoomLevel, true);
                    }
                }
                // override
                DeliveryServiceNaverMap.prototype.addBranchMarker = function (branch, markerEl) {
                    var marker = new naver.maps.Marker({
                        icon: {
                            content: markerEl,
                            anchor: new naver.maps.Point(35, 35),
                        },
                        map: this.map,
                        position: {
                            lat: branch.lat,
                            lng: branch.lng
                        }
                    });
                    marker.el = markerEl;
                    var _isClickBranchMarker = this.isClickBranchMarker;
                    marker.addListener('click', function () {
                        _isClickBranchMarker.value = true;
                        reservIdx.landMap.setCenter(branch.lat, branch.lng);
                        // reservIdx.onSelectBranch(branch);
                        reservIdx.onSelectBranchDelivery(branch);
                    });
                    this.markers.push(marker);
                    if (rentB == branch.code) {
                        reservIdx.landMap.setCenter(branch.lat, branch.lng);
                    }
                };
                DeliveryServiceNaverMap.prototype.inspectDS = function () {
                    this._checkLatLng(this.map.getCenter(), this.centerMarker);
                };
                // latlng로 주소 검색
                function latlngToAddress(latlng, callback) {
                    var option = {
                        coords: latlng,
                        orders: [
                            naver.maps.Service.OrderType.LEGAL_CODE,
                            naver.maps.Service.OrderType.ROAD_ADDR,
                            naver.maps.Service.OrderType.ADDR,
                        ].join(","),
                    };
                    var responseHandler = function (status, response) {
                        if (status !== naver.maps.Service.Status.OK) {
                            return;
                        }
                        try {
                            response.emdCode = response.v2.results[0].code.id;
                            response.address = response.v2.address.roadAddress ? response.v2.address.roadAddress : response.v2.address.jibunAddress;
                            response.area3 = response.v2.results[0].region.area3.name;
                            response.zipCode = response.v2.results[1].land.addition1.value;
                            console.log("jsp latlngToAddress response")
                            console.log(response);
                        } catch (error) {
                            console.log("error");
                            console.log(error);
                            response.emdCode = null;
                            response.address = null;
                        }
                        callback(response);
                    };
                    naver.maps.Service.reverseGeocode(option, responseHandler);
                };
                DeliveryServiceNaverMap.prototype._checkLatLng = function (latlng, centerMarker) {
                    function whenInvalid() {
                        centerMarker.invalid();
                    }
                    function whenRentLocation(path) {
                        centerMarker.useDS([latlng.lng(), latlng.lat()], path);
                    }
                    function whenReturnLocation(path) {
                        centerMarker.useDS([latlng.lng(), latlng.lat()], path);
                    }
                    var mapRect = this.map.getElement().getBoundingClientRect();
                    if (mapRect.width === 0 || mapRect.height === 0) {
                        // block process when map is not visible
                        return;
                    }
                    // IE does not supports x and y on DOMRect
                    var centerX = (mapRect.left + mapRect.right) / 2;
                    var centerY = (mapRect.top + mapRect.bottom) / 2;
                    if (this.markers.some(function (marker) {
                        var markerBounds = marker.el.getBoundingClientRect();
                        var contains = centerX >= markerBounds.left - 4 && centerX <= markerBounds.right + 4
                            && centerY >= markerBounds.top - 4 && centerY <= markerBounds.bottom + 10;
                        if (contains) {
                            marker.trigger('click');
                        }
                        return contains;
                    })) {
                        return;
                    }
                    latlngToAddress(latlng, function (address) {
                        if (address.emdCode === null) {
                            centerMarker.invalid();
                            return;
                        }
                        reservIdx.onSelectLocationInDeliverMap(address.emdCode, address.address, address.area3, address.zipCode, {
                            whenInvalid,
                            whenRentLocation,
                            whenReturnLocation
                        })
                    })
                };
                // $(document).on("click","html", function () {
                //     var clickedBtnID = $(this).attr('id'); // or var clickedBtnID = this.id
                //     console.log("clickedBtnID : " + clickedBtnID);
                // });
                $(document).ready(function () {
                    /* 래디 콜백 전역 변수*/
                    LAYER_PARENT = '.layer-wrap',
                        LAYER_DIM = '.bg-dimmed';
                    //공통 모달 팝업
                    if ($('.layer-cus').length) {
                        MUI.layer.openClick('.layer-cus-open', LAYER_DIM, LAYER_PARENT, true, function (show, layer) {
                            //console.log('open');
                            //iscrollReset(show, layer);
                            show();
                        });
                    }
                    //모달 팝업 공통 닫기
                    if ($('.layer-popup').length) {
                        MUI.layer.closeClick('.layer-popup-close', LAYER_DIM, LAYER_PARENT, true, function (hide) {
                            //console.log('close');
                            MUI.IScrollSingle.iscrollDestroy();
                            hide();
                        });
                    }
                    //링크이동
                    const allClose = $('.final_select_item .tab__item_cus');
                    const secallClose = $('.reser_contents_inner .tab__item_cus');
                    //대여장소 지역 선택 active 효과
                    var sellistBtn1 = $('.select_tab_list01 ul li');
                    var sellistBtn2 = $('.select_tab_list02 ul li');
                    $(sellistBtn1).on('click', function () {
                        $(sellistBtn1).removeClass('active');
                        $(this).addClass('active');
                    });
                    $(sellistBtn2).on('click', function () {
                        $(sellistBtn2).removeClass('active');
                        $(this).addClass('active');
                    });
                    //최신검색 박스삭제
                    $('.recent_close_btn').on('click', function () {
                        $(this).parents('.recent_item').addClass('del');
                    });
                    //예약1단계 슬라이드 20231126
                    if ($('.reser-visual-list .reser-slide-wrap').length) {
                        MUI.slide.init($('.reser-visual-list .reser-slide-wrap'), 'slick', {
                            slidesToScroll: 1,
                            infinite: true,
                            autoplay: true,
                            arrows: false,
                            slidesToShow: 1,
                            centerMode: false,
                            variableWidth: false,
                            dots: false,
                            autoplaySpeed: 5000,
                            pauseOnHover: false,
                        });
                        var slideIdx = $(".reser-img-wrap.slick-slide").length;  //슬라이드 갯수
                        var slideIdxR = $(".reser-img-wrap.slick-slide").length - 2;  //실제 보여지는 슬라이드 갯수
                        var slideW = $('.reser-img-wrap.slick-slide').outerWidth();  //슬라이드 한개의 넓이
                        var slideAllW = slideW * slideIdxR;  //실제 슬라이드 총 넓이
                        var result = slideW / slideAllW * 100;  //슬라이드 넓이 한개를 백분율로 환산
                        $('.loading-ani').css('width', result);
                        $('.reser-visual-pager .num-2').text(slideIdxR);
                        $('.reser-visual-list .reser-slide-wrap').on('afterChange', function () {
                            var curIdx = $(".slick-active").attr("data-slick-index"); //슬라이드 갯수
                            var currentSlide = $('.reser-visual-list .reser-slide-wrap').slick('slickCurrentSlide');//현재 슬라이드 번호
                            curIdx = parseInt(curIdx);
                            $(".loading-ani").animate({
                                "width": (result * (currentSlide + 1)) + "%"
                            }, 300);
                            $('.reser-visual-pager .num-1').text(currentSlide + 1);
                            $('.reser-visual-pager .num-2').text(slideIdxR);
                        });
                        $('.reser-visual-pager .play').hide();
                        $('.reser-visual-pager .play').click(function () {
                            $('.reser-visual-list .reser-slide-wrap').slick('slickPlay');
                            $(this).hide();
                            $('.reser-visual-pager .stop').show();
                        });
                        $('.reser-visual-pager .stop').click(function () {
                            $('.reser-visual-list .reser-slide-wrap').slick('slickPause');
                            $(this).hide();
                            $('.reser-visual-pager .play').show();
                        });
                        $('.reser-visual-pager .num.num-1').click(function () {
                            $('.reser-visual-list .reser-slide-wrap').slick('slickPrev');
                        });
                        $('.reser-visual-pager .num.num-2').click(function () {
                            $('.reser-visual-list .reser-slide-wrap').slick('slickNext');
                        });
                    }
                    // $('.days_input').click(function(){
                    //     $(secallClose).hide();
                    //     $('.calendar_cus').show();
                    //     $('.content_day').show();
                    // });
                    // // 렌트장소 선택
                    // $('.rent_place').on('click', function(){
                    //     $(allClose).hide();
                    //     $('.select_tab_recent').show(); // 최근선택
                    //     $('.content_place').show();
                    // });
                    //
                    // // 반납장소 선택
                    // $('.return_place').on('click', function(){
                    //     $(allClose).hide();
                    //     $('.select_tab_recent').show(); // 최근선택
                    //     $('.content_place').show();
                    // });
                    // // 반납, 대여장소>최근선택
                    // $('.recent_select_btn').on('click',function(){
                    //     $(allClose).hide();
                    //     $('.select_tab_recent').show();
                    // });
                    //
                    // // 반납, 대여장소>주변지점 선택
                    // $('.near_select_btn').on('click', function(){
                    //     $(allClose).hide();
                    //     $('.select_tab_near').show();
                    // })
                    // $('.go_to_cal').on('click', function(){
                    //     $('.layer-popup').hide().removeClass('active');
                    //     $('.bg-dimmed').hide();
                    //     $('body').removeClass('fixed');
                    //     $(secallClose).hide();
                    //     $('.content_day').show();
                    // })
                    //주소창 텍스트 한글자 이상일때 리스트 보여주기
                    $('#addr-search').keydown(function () {
                        var textLength = $(this).val();
                        if (textLength.length > 1) {
                            $('.search_list').fadeIn();
                        } else {
                            $('.search_list').fadeOut();
                        }
                    });
                    // 딜리버리 가능지역 주소검색 키입력시
                    $('#deliverAddrListTx').keydown(function () {
                        // var textLength = $(this).val();
                        // if(textLength.length > 1) {
                        //     $('.search_list').fadeIn();
                        // } else {
                        //     $('.search_list').fadeOut();
                        // }
                    })
                    $('.recent_select_btn').on('click', function () {
                        $(allClose).hide();
                        $('.select_tab_recent').show();
                    });
                    $('.near_select_btn').on('click', function () {
                        $(allClose).hide();
                        $('.select_tab_near').show();
                    })
                    //
                    // // // <!-- 대여기간 선택 -->
                    // $('#go_to_cal_').on('click', function(){
                    //     $('.layer-popup').hide().removeClass('active');
                    //     $('.bg-dimmed').hide();
                    //     $('body').removeClass('fixed');
                    //     $(secallClose).hide();
                    //     $('.content_day').show();
                    // });
                    $('.btn_search').on('click', function () {
                        $(this).parent().siblings('div').hide();
                    });
                    $('html').click(function (e) {
                        // 대여, 반납장소 외 외부영억 클릭시 제주 드랍 다운 리스트 닫아주기
                        if ($(e.target).parent('.place_input').length <= 0 && !$(e.target).hasClass('jeju_dropbox')) {
                            $('.jeju_dropbox01').removeClass("on");
                            $('.jeju_dropbox02').removeClass("on");
                        }
                    });
                    var bMove = false;
                    var startY = 0;
                    var scrollTop = 0;
                    var slider = document.querySelector(".select_item");
                    slider.addEventListener("mousedown", function (e) {
                        bMove = true;
                        startY = e.pageY - slider.offsetTop;
                        scrollTop = slider.scrollTop;
                    });
                    slider.addEventListener("mouseleave", function () {
                        bMove = false;
                    });
                    slider.addEventListener("mouseup", function () {
                        bMove = false;
                    });
                    slider.addEventListener("mousemove", function (e) {
                        if (bMove) {
                            const x = e.pageY - slider.offsetTop;
                            const walk = x - startY;
                            slider.scrollTop = scrollTop - walk;
                        }
                    });
                    console.log(rentB + " / " + returnB + " / " + rentA + " / " + latitude + " / " + longitude);
                    reservIdx.init({
                        rentBranch: rentB
                        , returnBranch: returnB
                        , returnArea: rentA
                        , lat: latitude
                        , lng: longitude
                    });
                    // reservIdx.init();
                    // reservIdx.init({
                    //     lang: 'kor',
                    //     locale: 'ko-KR',
                    //     defaultCarType: '', // 소형 -> 전체(202304 수정)
                    //     allowSmartkey: true,
                    //     greencarTypes: ['11', '12'], // 소형, 중형
                    //     useLoginPopup: true,
                    //     words: {
                    //         rentBranch: rentB,
                    //         returnBranch: returnB,
                    //         rentLocationInfo: '대여위치',
                    //         returnLocationInfo: '반납위치',
                    //         rentCenterMarkerInfo: '여기에서 차량 받기',
                    //         returnCenterMarkerInfo: '여기에서 차량 반납',
                    //         branchTypeUnmanned: '(무인)',
                    //         branchTypePickup: '(픽업존)',
                    //         branchType24H: '(24시)',
                    //         placeDelivery: '[딜리버리] ',
                    //         placePickup: '[픽업존] ',
                    //         placeBranch: ' 지점',
                    //         recommendTitle: '추천 검색어',
                    //         rentDate: '대여일',
                    //         returnDate: '반납일',
                    //         day: '일',
                    //         days: '일',
                    //         hour: '시간',
                    //         hours: '시간',
                    //         minute: '분',
                    //         minutes: '분',
                    //         car: {
                    //             seats: '인승',
                    //             krw: '원',
                    //             sale: '할인',
                    //             class1: '1종 보통',
                    //             memberCharge: '회원가',
                    //             limit110: '110km/h 제한',
                    //             closed: '예약이 마감 되었습니다.',
                    //             upgrade: '업그레이드 차량 확인',
                    //         },
                    //         search: {
                    //             company: '롯데렌터카 ',
                    //             branch: ' 지점',
                    //         },
                    //         tabChange: '변경 시 선택하신 예약 정보 단계 이후 내용이 모두 초기화됩니다.',
                    //         leaveAlert: '예약 정보가 초기화됩니다. 떠나시겠습니까?',
                    //         login: {
                    //             default: '로그인하시면 다양한 회원혜택을 이용하실 수 있습니다.',
                    //             dsAndSmartkey: '회원전용 서비스를 선택하셨습니다. \n예약진행을 위해 로그인이 필요합니다. 로그인하시겠습니까?\n\n(* 회원전용서비스: 스마트키박스, 딜리버리 서비스)',
                    //             ds: '회원전용 서비스를 선택하셨습니다. \n예약진행을 위해 로그인이 필요합니다. 로그인하시겠습니까?\n\n(* 회원전용서비스: 스마트키박스, 딜리버리 서비스)',
                    //             smartkey: '회원전용 서비스를 선택하셨습니다. \n예약진행을 위해 로그인이 필요합니다. 로그인하시겠습니까?\n\n(* 회원전용서비스: 스마트키박스, 딜리버리 서비스)',
                    //         },
                    //         rentTimeAlert: '대여지점 운영시간 조회되지 않았습니다.',
                    //         returnTimeAlert: '반납지점 운영시간 조회되지 않았습니다.',
                    //         smartkeyTimeAlert: '선택하신 시간은 비대면 서비스만 가능합니다.',
                    //         smartkeyUnavailable: '선택하신 시간에는 비대면 서비스를 이용하실 수 없습니다.',
                    //         officeHoursAlert: '지점운영시간',
                    //         disabledMessage: {
                    //             rentLocation: '대여 장소를 선택해주세요.',
                    //             returnLocation: '반납 장소를 선택해주세요.',
                    //             date: '기간과 시간을 선택해주세요.',
                    //             vehicle: '차량을 선택해주세요.',
                    //             lessThan1hour: '최소 1시간 이상 대여해야 합니다.',
                    //             lessThan24hours: '제주예약은 24시간 이상 대여해야 합니다.',
                    //         },
                    //     },
                    //     message: {
                    //         onewayReturn: '편도 반납이 불가능한 지점입니다.',
                    //         sameday: '당일 예약이 불가능한 지점입니다.',
                    //         samedayAfter: '당일 예약은 현재시간부터 #hour 시간 이후 가능합니다. \n지금 바로 차량이 필요하시다면 지점으로 문의 주시기 바랍니다.',
                    //     },
                    //     initJejuMap: function () {
                    //         var el = document.getElementById("jejuMap");
                    //         var map = new naver.maps.Map(el, {
                    //             center: {
                    //                 lat: 33.3590628,
                    //                 lng: 126.534361
                    //             },
                    //             zoom: 11,
                    //             draggable: false,
                    //             keyboardShortcuts: false,
                    //             maxZoom: 11,
                    //             minZoom: 11,
                    //         });
                    //         el.addEventListener('transitionend', function () {
                    //             map.autoResize();
                    //         });
                    //         return new NaverMap(map);
                    //     },
                    //     initLandMap: function () {
                    //         var KOREA_BOUNDS = {
                    //             north: 38.8977002,
                    //             south: 34.0230801,
                    //             west: 125.6627754,
                    //             east: 129.7387031,
                    //         };
                    //
                    //         //초기 세팅 화면 중심, 줌 수정 KJH_23.04
                    //         var el = document.getElementById("deliveryMap");
                    //
                    //         var initZoom = 16;
                    //         var initLat = 37.50905496823595;
                    //         var initLag = 127.05990513104072;
                    //
                    //         // if (reservIdx.isLogin() === false && reservIdx.current.memType === 'noMember'){
                    //             initZoom = 11;
                    //             initLat = 37.5227835271291;
                    //             initLag = 126.97960374262219;
                    //         // }
                    //
                    //         var map = new naver.maps.Map(el, {
                    //             zoom: initZoom,
                    //             minZoom: 9,
                    //             zoomControl: true,
                    //             zoomControlOptions: {
                    //                 position: naver.maps.Position.RIGHT_CENTER,
                    //                 style: naver.maps.ZoomControlStyle.SMALL,
                    //                 legendDisabled: true,
                    //             },
                    //             center: new naver.maps.LatLng(initLat, initLag),
                    //         });
                    //         el.addEventListener('transitionend', function () {
                    //             map.autoResize();
                    //         });
                    //
                    //         // 지도 영역 제한
                    //         naver.maps.Event.addListener(map,
                    //             "bounds_changed",
                    //             function (e) {
                    //                 if (e._max._lat > KOREA_BOUNDS.north) {
                    //                     map.panBy({
                    //                         x: 0,
                    //                         y: 10
                    //                     });
                    //                 } else if (e._min._lat < KOREA_BOUNDS.south) {
                    //                     map.panBy({
                    //                         x: 0,
                    //                         y: -10
                    //                     });
                    //                 } else if (e._max._lng > KOREA_BOUNDS.east) {
                    //                     map.panBy({
                    //                         x: -10,
                    //                         y: 0
                    //                     });
                    //                 } else if (e._min._lng < KOREA_BOUNDS.west) {
                    //                     map.panBy({
                    //                         x: 10,
                    //                         y: 0
                    //                     });
                    //                 }
                    //             });
                    //
                    //         // 202302 회원/비회원 별로 DS/지점 지도표시 차이
                    //         // if(reservIdx.isLogin() === true && reservIdx.current.memType === 'member'){
                    //         //     return new DeliveryServiceNaverMap(map);	// DS 표시
                    //         // }else if (reservIdx.isLogin() === false && reservIdx.current.memType === 'noMember'){
                    //         //     return new NaverMap(map);					// 지점만 표시
                    //         // }else{
                    //         //     reservIdx.current.memType = 'member';
                    //             return new DeliveryServiceNaverMap(map);	// DS 표시
                    //         // }
                    //     },
                    // });
                    // // 회원/비회원 팝업 노출_23.02
                    // if(reservIdx.isLogin() === false && !reservIdx.current.memTypeFlag){
                    //     $("#tab-0").css("display", "");
                    //     reservIdx.initOneWay();   //placeholder 변경을 위한 구문
                    //     reservIdx.openResLogin();
                    // }
                    // else reservIdx.closeResLogin();
                });
            </script>
            <!--20231120 1단계 개선 스크립트 추가--------------------------------->
            <!-- <script>
$('.test_box').click(function(){
$('.reser_drop_wrap').slideToggle();
$('.bg-dimmed-cus').toggleClass('ac');
});
$('.bg-dimmed-cus').click(function(){
$('.reser_drop_wrap').slideToggle();
$(this).toggleClass('ac');
});
function goToScroll(name) {
var location = document.querySelector("." + name).offsetTop;
window.scrollTo({top: location - -100, behavior: 'smooth'});
}
</script> -->
            <!--최근선택 주변지점 및 지역 active 효과-->
            <script>
                // var sellistBtn1 = $('.select_tab_list01 ul li');
                // var sellistBtn2 = $('.select_tab_list02 ul li');
                // $(sellistBtn1).on('click',function(){
                //     $(sellistBtn1).removeClass('active');
                //     $(this).addClass('active');
                // });
                // $(sellistBtn2).on('click',function(){
                //     $(sellistBtn2).removeClass('active');
                //     $(this).addClass('active');
                // });
            </script>
            <!-- <script>
$('.open_list_btn').click(function(){
if($(this).next().hasClass('on')) {
$(this).next().removeClass('on');
}else {
$('.time_pop_list').removeClass('on');
$(this).next().addClass('on');
}
});
</script> -->
            <script>
                <!-- 날짜선택 -->
                // $('.dateNum').on('click', function(){
                //     if($(this).hasClass('start')) {
                //         $('.hour_item').find('.time_pop_list_01').addClass('on');
                //     }
                // });
                $('#sel_test').change(function () {
                    var selValue = $(this).val();
                    console.log(selValue, '테스트');
                    $(this).parents('div').removeClass('on');
                })
            </script>
            <!--최신검색 삭제-->
            <script>
                $('.recent_close_btn').on('click', function () {
                    $(this).parents('.recent_item').addClass('del');
                });
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
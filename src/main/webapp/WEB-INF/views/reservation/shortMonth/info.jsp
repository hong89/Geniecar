<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 7]><html dir="ltr" lang="ko" class="ie7"><![endif]-->
<!--[if IE 8]><html dir="ltr" lang="ko" class="ie8"><![endif]-->
<!--[if IE 9]><html dir="ltr" lang="ko" class="ie9"><![endif]-->
<%
    request.setCharacterEncoding("UTF-8");
%>
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
    <link rel="stylesheet" href="/lrhp/pc/styles/reset.css?cb=9e530021-db79-4977-91e5-30029cf536a0">
    <link rel="stylesheet" href="/lrhp/pc/styles/layout.css?cb=9e530021-db79-4977-91e5-30029cf536a0">
    <link rel="stylesheet" href="/lrhp/pc/styles/modules.css?cb=9e530021-db79-4977-91e5-30029cf536a0">
    <link rel="stylesheet" href="/lrhp/pc/styles/contents.css?cb=9e530021-db79-4977-91e5-30029cf536a0">
    <link rel="stylesheet" href="/lrhp/pc/styles/jquery.mCustomScrollbar.css?cb=9e530021-db79-4977-91e5-30029cf536a0">
    <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
    <script src="/lrhp/js/lib/html5shiv.js"></script>
    <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
    <script src="/lrhp/js/lib/clipboard.min.js"></script>
    <script src="/publish/js/md5.js?cb=9e530021-db79-4977-91e5-30029cf536a0"></script>
    <script src="/publish/js/cmmnUtil.js?cb=9e530021-db79-4977-91e5-30029cf536a0"></script>
    <!-- SSO 고도화 -->
    <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
    <script src='https://members.lpoint.com/api/js/json2.js'></script>
    <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
    <script src="/lrhp/js/sso/moment.js"></script>
    <script src="/lrhp/js/sso/odm-common.js"></script>
    <script src="/lrhp/js/sso/sso.rental.js?cb=9e530021-db79-4977-91e5-30029cf536a0"></script>
    <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=9e530021-db79-4977-91e5-30029cf536a0"></script>
    <script src="/lrhp/js/sso/api.rentcar.js?cb=9e530021-db79-4977-91e5-30029cf536a0"></script>
    <!-- Social Login -->
    <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
    <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
    <script src="/lrhp/js/social/social.rentacar.js?cb=9e530021-db79-4977-91e5-30029cf536a0"></script>
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
    <script src="/lrhp/js/common/gfn_util.js?cb=9e530021-db79-4977-91e5-30029cf536a0"></script>
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
        <img height="1" width="1" src="https://www.facebook.com/tr?id=1001781240353375&ev=PageView&noscript=1" />
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
    <script src="https://assets.adobedtm.com/0d3d26a8f9f8/8ca38b3d4546/launch-eb7bb6609f87.min.js" async></script>
    <script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=9e530021-db79-4977-91e5-30029cf536a0"></script>
    <!-- Adobe Analytics End -->
    <title>롯데렌터카</title>
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
                clientAkInfo: '{"clntEncKey":"LGzULzJdn1x27q0O","flwNo":"NvERag4rNu","domain":"https://members.lpoint.com"}' || '',
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
    <!--header 컴포넌트-->
    <header class="header">
        <!--해더네비-->
        <nav class="header-nav">
            <div class="inner">
                <div class="nav-wrap">
                    <div>
                        <a href="/hp/kor/main/index.do">
                            <img src="/lrhp/pc/images/common/logo-header.png" alt="대한민국 No1.롯데렌터카" />
                        </a>
                    </div>
                    <ul>
                        <li>
                            <a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-01"
                                data-on="true" data-siblings="true" id="T2FN01" data-link-area="GNB"
                                data-link-name="단기렌터카" data-link-text="단기렌터카">단기렌터카</a>
                        </li>
                        <li>
                            <a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-02"
                                data-on="true" data-siblings="true" id="T2FN02" data-link-area="GNB"
                                data-link-name="신차 장기렌터카" data-link-text="신차 장기렌터카">신차 장기렌터카</a>
                        </li>
                        <li>
                            <a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-03"
                                data-on="true" data-siblings="true" id="T2FN03" data-link-area="GNB"
                                data-link-name="중고차 장기렌터카" data-link-text="중고차 장기렌터카">중고차 장기렌터카</a>
                        </li>
                        <li>
                            <a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-04"
                                data-on="true" data-siblings="true" id="T2FN08" data-link-area="GNB"
                                data-link-name="법인 장기렌터카" data-link-text="법인 장기렌터카">법인 장기렌터카</a>
                        </li>
                        <li>
                            <a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-05"
                                data-on="true" data-siblings="true" id="T2FN07" data-link-area="GNB"
                                data-link-name="차방정" data-link-text="차방정">차방정</a>
                        </li>
                        <li>
                            <a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-06"
                                data-on="true" data-siblings="true" id="T2FN05" data-link-area="GNB"
                                data-link-name="고객지원" data-link-text="고객지원">고객지원</a>
                        </li>
                    </ul>
                </div>
                <div class="nav-menu">
                    <ul>
                        <li>
                            <button type="button" class="btn"
                                onclick="location.href='/hp/kor/login/login.do?returnurl=/hp/kor/myPage/main.do'"><i
                                    class="icon mypage">로그인페이지</i></button>
                            <!--div class="nav-menu-mypage-box">
                            <b>진행중 예약</b>
                        </div-->
                        </li>
                        <li>
                            <button type="button" class="btn draw-btn btn-ctr-menu" onclick="toggleAll()"><i
                                    class="icon main-draw">전체메뉴</i></button>
                        </li>
                        <li>
                            <button type="button" class="btn" onclick="location.href='/hp/eng/main/index.do'"><i
                                    class="icon global">영어설정</i></button>
                        </li>
                    </ul>
                </div>
            </div>
            <!--- 드롭다운 메뉴 추가-->
            <div class="draw-toggle-wrap draw-toggle-wrap-s">
                <div class="draw-toggle-area">
                    <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <div class="draw-toggle-cont draw-cont-01">
                        <div class="detail-layer-in">
                            <ul class="layer-gnb list-type-col4">
                                <li>
                                    <p><a href="/hp/kor/reservation/index.do?areaFlag=1" data-link-area="GNB"
                                            data-link-name="빠른예약" data-link-text="빠른예약">빠른예약</a></p>
                                    <div class="layer-gnb-list">
                                        <ul>
                                            <li>
                                                <a href="/hp/kor/reservation/index.do?areaFlag=1" target="_self"
                                                    data-link-area="GNB" data-link-name="빠른예약"
                                                    data-link-text="내륙예약">내륙예약</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/reservation/index.do?areaFlag=6" target="_self"
                                                    data-link-area="GNB" data-link-name="빠른예약"
                                                    data-link-text="제주예약">제주예약</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/reservation/shortMonth/info.do" data-link-area="GNB"
                                            data-link-name="단기렌터카 상품" data-link-text="단기렌터카 상품">단기렌터카 상품</a></p>
                                    <div class="layer-gnb-list">
                                        <ul>
                                            <li>
                                                <a href="/hp/kor/reservation/shortMonth/info.do" target="_self"
                                                    data-link-area="GNB" data-link-name="단기렌터카 상품"
                                                    data-link-text="월단기 렌터카">월단기 렌터카</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/reservation/driverInclude/info.do" target="_self"
                                                    data-link-area="GNB" data-link-name="단기렌터카 상품"
                                                    data-link-text="기사포함 렌터카">기사포함 렌터카</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/carLife/commuteRent.do" target="_self"
                                                    data-link-area="GNB" data-link-name="단기렌터카 상품"
                                                    data-link-text="출퇴근 렌터카">출퇴근 렌터카</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/reservation/shortInfo/pay.do" data-link-area="GNB"
                                            data-link-name="단기렌터카 안내" data-link-text="단기렌터카 안내">단기렌터카 안내</a></p>
                                    <div class="layer-gnb-list">
                                        <ul>
                                            <li>
                                                <a href="/hp/kor/reservation/shortInfo/pay.do" target="_self"
                                                    data-link-area="GNB" data-link-name="단기렌터카 안내"
                                                    data-link-text="대여 및 요금안내">대여 및 요금안내</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/reservation/shortInfo/checkIn.do" target="_self"
                                                    data-link-area="GNB" data-link-name="단기렌터카 안내"
                                                    data-link-text="체크인 서비스">체크인 서비스</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/reservation/shortInfo/service.do" target="_self"
                                                    data-link-area="GNB" data-link-name="단기렌터카 안내"
                                                    data-link-text="부가서비스안내">부가서비스안내</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/reservation/shortInfo/benefits.do" target="_self"
                                                    data-link-area="GNB" data-link-name="단기렌터카 안내"
                                                    data-link-text="회원혜택 안내">회원혜택 안내</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/reservation/overseas/index.do" data-link-area="GNB"
                                            data-link-name="해외렌터카" data-link-text="해외렌터카">해외렌터카</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/reservation/shortInfo/insu.do" data-link-area="GNB"
                                            data-link-name="사고대차 서비스" data-link-text="사고대차 서비스">사고대차 서비스</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <div class="draw-toggle-cont draw-cont-02">
                        <div class="detail-layer-in">
                            <ul class="layer-gnb list-type-col4">
                                <li>
                                    <p><a href="/hp/kor/sinchajang/estimate.do" data-link-area="GNB"
                                            data-link-name="다이렉트 견적" data-link-text="다이렉트 견적">다이렉트 견적</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/sinchajang/specials.do" data-link-area="GNB"
                                            data-link-name="마이카 소개" data-link-text="마이카 소개">마이카 소개</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/sinchajang/longTermRent/partnershipCard.do" data-link-area="GNB"
                                            data-link-name="제휴카드 혜택" data-link-text="제휴카드 혜택">제휴카드 혜택</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/sinchajang/membershipInfo.do" data-link-area="GNB"
                                            data-link-name="마이카 멤버십" data-link-text="마이카 멤버십">마이카 멤버십</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/sinchajang/longTermRent/personal.do" data-link-area="GNB"
                                            data-link-name="신차 장기렌터카 안내" data-link-text="신차 장기렌터카 안내">신차 장기렌터카 안내</a>
                                    </p>
                                    <div class="layer-gnb-list">
                                        <ul>
                                            <li>
                                                <a href="/hp/kor/sinchajang/longTermRent/personal.do" target="_self"
                                                    data-link-area="GNB" data-link-name="신차 장기렌터카 안내"
                                                    data-link-text="개인 장기렌터카">개인 장기렌터카</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <div class="draw-toggle-cont draw-cont-03">
                        <div class="detail-layer-in">
                            <ul class="layer-gnb list-type-col4">
                                <li>
                                    <p><a href="/hp/kor/usedCar/longTerm/usedCarList.do" data-link-area="GNB"
                                            data-link-name="중고차 검색" data-link-text="중고차 검색">중고차 검색</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/usedCar/succession/index.do" data-link-area="GNB"
                                            data-link-name="렌터카 승계 차량 검색" data-link-text="렌터카 승계 차량 검색">렌터카 승계 차량 검색</a>
                                    </p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/usedCar/sellmycar/myCarSellApply.do" data-link-area="GNB"
                                            data-link-name="내차 팔기 신청" data-link-text="내차 팔기 신청">내차 팔기 신청</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/usedCar/longTerm/info.do" data-link-area="GNB"
                                            data-link-name="중고차 장기렌터카 안내" data-link-text="중고차 장기렌터카 안내">중고차 장기렌터카 안내</a>
                                    </p>
                                    <div class="layer-gnb-list">
                                        <ul>
                                            <li>
                                                <a href="/hp/kor/usedCar/longTerm/info.do" target="_self"
                                                    data-link-area="GNB" data-link-name="중고차 장기렌터카 안내"
                                                    data-link-text="중고차 렌트서비스 안내 ">중고차 렌트서비스 안내 </a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/usedCar/succession/info.do" target="_self"
                                                    data-link-area="GNB" data-link-name="중고차 장기렌터카 안내"
                                                    data-link-text="렌터카 승계 안내">렌터카 승계 안내</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/usedCar/sellmycar/info.do" target="_self"
                                                    data-link-area="GNB" data-link-name="중고차 장기렌터카 안내"
                                                    data-link-text="내차 팔기 서비스 안내">내차 팔기 서비스 안내</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <div class="draw-toggle-cont draw-cont-04">
                        <div class="detail-layer-in">
                            <ul class="layer-gnb list-type-col4">
                                <li>
                                    <p><a href="/hp/kor/bizcar/index.do" data-link-area="GNB"
                                            data-link-name="비즈카 온라인 견적" data-link-text="비즈카 온라인 견적">비즈카 온라인 견적</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/sinchajang/longTermRent/corp.do" data-link-area="GNB"
                                            data-link-name="법인 장기렌트 안내" data-link-text="법인 장기렌트 안내">법인 장기렌트 안내</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <div class="draw-toggle-cont draw-cont-05">
                        <div class="detail-layer-in">
                            <ul class="layer-gnb list-type-col4">
                                <li>
                                    <p><a href="/hp/kor/cbj/index.do" data-link-area="GNB" data-link-name="차방정이란?"
                                            data-link-text="차방정이란?">차방정이란?</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/cbj/about/product.do" data-link-area="GNB"
                                            data-link-name="서비스 안내" data-link-text="서비스 안내">서비스 안내</a></p>
                                    <div class="layer-gnb-list">
                                        <ul>
                                            <li>
                                                <a href="/hp/kor/cbj/about/product.do" target="_self"
                                                    data-link-area="GNB" data-link-name="서비스 안내"
                                                    data-link-text="서비스안내">서비스안내</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/cbj/about/repair.do" target="_self"
                                                    data-link-area="GNB" data-link-name="서비스 안내"
                                                    data-link-text="점검/정비안내">점검/정비안내</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/cbj/about/notice.do" target="_self"
                                                    data-link-area="GNB" data-link-name="서비스 안내"
                                                    data-link-text="공지">공지</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/cbj/about/faq.do" target="_self" data-link-area="GNB"
                                                    data-link-name="서비스 안내" data-link-text="FAQ">FAQ</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/cbj/myPage/main.do" data-link-area="GNB" data-link-name="내 정보"
                                            data-link-text="내 정보">내 정보</a></p>
                                    <div class="layer-gnb-list">
                                        <ul>
                                            <li>
                                                <a href="/hp/kor/cbj/myPage/main.do" target="_self" data-link-area="GNB"
                                                    data-link-name="내 정보" data-link-text="내 차량 정보">내 차량 정보</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/cbj/benefit/coupon.do" target="_self"
                                                    data-link-area="GNB" data-link-name="내 정보" data-link-text="내 쿠폰함">내
                                                    쿠폰함</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/cbj/service/repairInfo.do" data-link-area="GNB"
                                            data-link-name="점검/정비" data-link-text="점검/정비">점검/정비</a></p>
                                    <div class="layer-gnb-list">
                                        <ul>
                                            <li>
                                                <a href="/hp/kor/cbj/service/repairInfo.do" target="_self"
                                                    data-link-area="GNB" data-link-name="점검/정비"
                                                    data-link-text="점검/정비 정보">점검/정비 정보</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/cbj/service/repairAbout.do" target="_self"
                                                    data-link-area="GNB" data-link-name="점검/정비"
                                                    data-link-text="방문점검 안내">방문점검 안내</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/cbj/service/repairShop.do" target="_self"
                                                    data-link-area="GNB" data-link-name="점검/정비"
                                                    data-link-text="인증 정비소">인증 정비소</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/cbj/board/review.do" target="_self"
                                                    data-link-area="GNB" data-link-name="점검/정비"
                                                    data-link-text="후기">후기</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                    <div class="draw-toggle-cont draw-cont-06">
                        <div class="detail-layer-in">
                            <ul class="layer-gnb list-type-col4">
                                <li>
                                    <p><a href="/hp/kor/info/noticeNewsMain.do" data-link-area="GNB"
                                            data-link-name="공지사항" data-link-text="공지사항">공지사항</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/info/allBranchArea.do" data-link-area="GNB"
                                            data-link-name="지점안내" data-link-text="지점안내">지점안내</a></p>
                                    <div class="layer-gnb-list">
                                        <ul>
                                            <li>
                                                <a href="/hp/kor/info/allBranchArea.do" target="_self"
                                                    data-link-area="GNB" data-link-name="지점안내" data-link-text="전국 지점">전국
                                                    지점</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/carLife/jejuAuto.do" target="_self"
                                                    data-link-area="GNB" data-link-name="지점안내"
                                                    data-link-text="제주오토하우스">제주오토하우스</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/info/carBranchArea.do" target="_self"
                                                    data-link-area="GNB" data-link-name="지점안내"
                                                    data-link-text="기사 포함 지점">기사 포함 지점</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/info/globalBranchArea.do" target="_self"
                                                    data-link-area="GNB" data-link-name="지점안내" data-link-text="해외 지점">해외
                                                    지점</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <p><a onclick="startChatbot()" id="T2FN0501" target="_blank" data-link-area="GNB"
                                            data-link-name="고객센터" data-link-text="고객센터">고객센터</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/carLife/enjoyList.do" data-link-area="GNB" data-link-name="매거진"
                                            data-link-text="매거진">매거진</a></p>
                                </li>
                                <li>
                                    <p><a href="/hp/kor/carLife/eventMain.do" data-link-area="GNB" data-link-name="이벤트"
                                            data-link-text="이벤트">이벤트</a></p>
                                    <div class="layer-gnb-list">
                                        <ul>
                                            <li>
                                                <a href="/hp/kor/carLife/eventMain.do" target="_self"
                                                    data-link-area="GNB" data-link-name="이벤트"
                                                    data-link-text="진행중인 이벤트">진행중인 이벤트</a>
                                            </li>
                                            <li>
                                                <a href="/hp/kor/carLife/winnerEventMain.do" target="_self"
                                                    data-link-area="GNB" data-link-name="이벤트"
                                                    data-link-text="당첨자발표">당첨자발표</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                </div>
                <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 1111-->
            </div>
            <!--- 드롭다운 메뉴 추가-->
            <!--- 드롭다운 메뉴 추가, 전체 메뉴는 높이가 다르기 때문에 따로 설정-->
            <div class="draw-toggle-wrap-all-ver2" id="menuDiv">
                <!-- 헤더 전체 메뉴 -->
                <div class="draw-toggle-cont-all draw-cont-07">
                    <div class="detail-layer-in detail-layer-main-in">
                        <ul class="layer-gnb-main-all">
                            <li>
                                <p>단기렌터카</p>
                            </li>
                            <li>
                                <p>신차 장기렌터카</p>
                            </li>
                            <li>
                                <p>중고차 장기렌터카</p>
                            </li>
                            <li>
                                <p>법인 장기렌터카</p>
                            </li>
                            <li>
                                <p>차방정</p>
                            </li>
                            <li>
                                <p>고객지원</p>
                            </li>
                        </ul>
                    </div>
                    <div class="detail-layer-in detail-layer-sub-in">
                        <ul class="menu-box-1depth-list">
                            <li>
                                <p><a href="/hp/kor/reservation/index.do?areaFlag=1" data-link-area="GNB"
                                        data-link-name="빠른예약" data-link-text="빠른예약">빠른예약</a></p>
                                <div class="layer-gnb-list">
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/reservation/index.do?areaFlag=1" target="_self"
                                                data-link-area="GNB" data-link-name="빠른예약"
                                                data-link-text="내륙예약">내륙예약</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/reservation/index.do?areaFlag=6" target="_self"
                                                data-link-area="GNB" data-link-name="빠른예약"
                                                data-link-text="제주예약">제주예약</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <p><a href="/hp/kor/reservation/shortMonth/info.do" data-link-area="GNB"
                                        data-link-name="단기렌터카 상품" data-link-text="단기렌터카 상품">단기렌터카 상품</a></p>
                                <div class="layer-gnb-list">
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/reservation/shortMonth/info.do" target="_self"
                                                data-link-area="GNB" data-link-name="단기렌터카 상품"
                                                data-link-text="월단기 렌터카">월단기 렌터카</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/reservation/driverInclude/info.do" target="_self"
                                                data-link-area="GNB" data-link-name="단기렌터카 상품"
                                                data-link-text="기사포함 렌터카">기사포함 렌터카</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/carLife/commuteRent.do" target="_self" data-link-area="GNB"
                                                data-link-name="단기렌터카 상품" data-link-text="출퇴근 렌터카">출퇴근 렌터카</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <p><a href="/hp/kor/reservation/shortInfo/pay.do" data-link-area="GNB"
                                        data-link-name="단기렌터카 안내" data-link-text="단기렌터카 안내">단기렌터카 안내</a></p>
                                <div class="layer-gnb-list">
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/reservation/shortInfo/pay.do" target="_self"
                                                data-link-area="GNB" data-link-name="단기렌터카 안내"
                                                data-link-text="대여 및 요금안내">대여 및 요금안내</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/reservation/shortInfo/checkIn.do" target="_self"
                                                data-link-area="GNB" data-link-name="단기렌터카 안내"
                                                data-link-text="체크인 서비스">체크인 서비스</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/reservation/shortInfo/service.do" target="_self"
                                                data-link-area="GNB" data-link-name="단기렌터카 안내"
                                                data-link-text="부가서비스안내">부가서비스안내</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/reservation/shortInfo/benefits.do" target="_self"
                                                data-link-area="GNB" data-link-name="단기렌터카 안내"
                                                data-link-text="회원혜택 안내">회원혜택 안내</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <p><a href="/hp/kor/reservation/overseas/index.do" data-link-area="GNB"
                                        data-link-name="해외렌터카" data-link-text="해외렌터카">해외렌터카</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/reservation/shortInfo/insu.do" data-link-area="GNB"
                                        data-link-name="사고대차 서비스" data-link-text="사고대차 서비스">사고대차 서비스</a></p>
                            </li>
                        </ul>
                        <ul class="menu-box-1depth-list">
                            <li>
                                <p><a href="/hp/kor/sinchajang/estimate.do" data-link-area="GNB"
                                        data-link-name="다이렉트 견적" data-link-text="다이렉트 견적">다이렉트 견적</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/sinchajang/specials.do" data-link-area="GNB" data-link-name="마이카 소개"
                                        data-link-text="마이카 소개">마이카 소개</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/sinchajang/longTermRent/partnershipCard.do" data-link-area="GNB"
                                        data-link-name="제휴카드 혜택" data-link-text="제휴카드 혜택">제휴카드 혜택</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/sinchajang/membershipInfo.do" data-link-area="GNB"
                                        data-link-name="마이카 멤버십" data-link-text="마이카 멤버십">마이카 멤버십</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/sinchajang/longTermRent/personal.do" data-link-area="GNB"
                                        data-link-name="신차 장기렌터카 안내" data-link-text="신차 장기렌터카 안내">신차 장기렌터카 안내</a></p>
                                <div class="layer-gnb-list">
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/sinchajang/longTermRent/personal.do" target="_self"
                                                data-link-area="GNB" data-link-name="신차 장기렌터카 안내"
                                                data-link-text="개인 장기렌터카">개인 장기렌터카</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                        <ul class="menu-box-1depth-list">
                            <li>
                                <p><a href="/hp/kor/usedCar/longTerm/usedCarList.do" data-link-area="GNB"
                                        data-link-name="중고차 검색" data-link-text="중고차 검색">중고차 검색</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/usedCar/succession/index.do" data-link-area="GNB"
                                        data-link-name="렌터카 승계 차량 검색" data-link-text="렌터카 승계 차량 검색">렌터카 승계 차량 검색</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/usedCar/sellmycar/myCarSellApply.do" data-link-area="GNB"
                                        data-link-name="내차 팔기 신청" data-link-text="내차 팔기 신청">내차 팔기 신청</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/usedCar/longTerm/info.do" data-link-area="GNB"
                                        data-link-name="중고차 장기렌터카 안내" data-link-text="중고차 장기렌터카 안내">중고차 장기렌터카 안내</a></p>
                                <div class="layer-gnb-list">
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/usedCar/longTerm/info.do" target="_self"
                                                data-link-area="GNB" data-link-name="중고차 장기렌터카 안내"
                                                data-link-text="중고차 렌트서비스 안내 ">중고차 렌트서비스 안내 </a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/usedCar/succession/info.do" target="_self"
                                                data-link-area="GNB" data-link-name="중고차 장기렌터카 안내"
                                                data-link-text="렌터카 승계 안내">렌터카 승계 안내</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/usedCar/sellmycar/info.do" target="_self"
                                                data-link-area="GNB" data-link-name="중고차 장기렌터카 안내"
                                                data-link-text="내차 팔기 서비스 안내">내차 팔기 서비스 안내</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                        <ul class="menu-box-1depth-list">
                            <li>
                                <p><a href="/hp/kor/bizcar/index.do" data-link-area="GNB" data-link-name="비즈카 온라인 견적"
                                        data-link-text="비즈카 온라인 견적">비즈카 온라인 견적</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/sinchajang/longTermRent/corp.do" data-link-area="GNB"
                                        data-link-name="법인 장기렌트 안내" data-link-text="법인 장기렌트 안내">법인 장기렌트 안내</a></p>
                            </li>
                        </ul>
                        <ul class="menu-box-1depth-list">
                            <li>
                                <p><a href="/hp/kor/cbj/index.do" data-link-area="GNB" data-link-name="차방정이란?"
                                        data-link-text="차방정이란?">차방정이란?</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/cbj/about/product.do" data-link-area="GNB" data-link-name="서비스 안내"
                                        data-link-text="서비스 안내">서비스 안내</a></p>
                                <div class="layer-gnb-list">
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/cbj/about/product.do" target="_self" data-link-area="GNB"
                                                data-link-name="서비스 안내" data-link-text="서비스안내">서비스안내</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/cbj/about/repair.do" target="_self" data-link-area="GNB"
                                                data-link-name="서비스 안내" data-link-text="점검/정비안내">점검/정비안내</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/cbj/about/notice.do" target="_self" data-link-area="GNB"
                                                data-link-name="서비스 안내" data-link-text="공지">공지</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/cbj/about/faq.do" target="_self" data-link-area="GNB"
                                                data-link-name="서비스 안내" data-link-text="FAQ">FAQ</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <p><a href="/hp/kor/cbj/myPage/main.do" data-link-area="GNB" data-link-name="내 정보"
                                        data-link-text="내 정보">내 정보</a></p>
                                <div class="layer-gnb-list">
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/cbj/myPage/main.do" target="_self" data-link-area="GNB"
                                                data-link-name="내 정보" data-link-text="내 차량 정보">내 차량 정보</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/cbj/benefit/coupon.do" target="_self" data-link-area="GNB"
                                                data-link-name="내 정보" data-link-text="내 쿠폰함">내 쿠폰함</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <p><a href="/hp/kor/cbj/service/repairInfo.do" data-link-area="GNB"
                                        data-link-name="점검/정비" data-link-text="점검/정비">점검/정비</a></p>
                                <div class="layer-gnb-list">
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/cbj/service/repairInfo.do" target="_self"
                                                data-link-area="GNB" data-link-name="점검/정비"
                                                data-link-text="점검/정비 정보">점검/정비 정보</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/cbj/service/repairAbout.do" target="_self"
                                                data-link-area="GNB" data-link-name="점검/정비"
                                                data-link-text="방문점검 안내">방문점검 안내</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/cbj/service/repairShop.do" target="_self"
                                                data-link-area="GNB" data-link-name="점검/정비" data-link-text="인증 정비소">인증
                                                정비소</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/cbj/board/review.do" target="_self" data-link-area="GNB"
                                                data-link-name="점검/정비" data-link-text="후기">후기</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                        <ul class="menu-box-1depth-list">
                            <li>
                                <p><a href="/hp/kor/info/noticeNewsMain.do" data-link-area="GNB" data-link-name="공지사항"
                                        data-link-text="공지사항">공지사항</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/info/allBranchArea.do" data-link-area="GNB" data-link-name="지점안내"
                                        data-link-text="지점안내">지점안내</a></p>
                                <div class="layer-gnb-list">
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/info/allBranchArea.do" target="_self" data-link-area="GNB"
                                                data-link-name="지점안내" data-link-text="전국 지점">전국 지점</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/carLife/jejuAuto.do" target="_self" data-link-area="GNB"
                                                data-link-name="지점안내" data-link-text="제주오토하우스">제주오토하우스</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/info/carBranchArea.do" target="_self" data-link-area="GNB"
                                                data-link-name="지점안내" data-link-text="기사 포함 지점">기사 포함 지점</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/info/globalBranchArea.do" target="_self"
                                                data-link-area="GNB" data-link-name="지점안내" data-link-text="해외 지점">해외
                                                지점</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <p><a onclick="startChatbot()" id="T2FN0501" target="_blank" data-link-area="GNB"
                                        data-link-name="고객센터" data-link-text="고객센터">고객센터</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/carLife/enjoyList.do" data-link-area="GNB" data-link-name="매거진"
                                        data-link-text="매거진">매거진</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/carLife/eventMain.do" data-link-area="GNB" data-link-name="이벤트"
                                        data-link-text="이벤트">이벤트</a></p>
                                <div class="layer-gnb-list">
                                    <ul>
                                        <li>
                                            <a href="/hp/kor/carLife/eventMain.do" target="_self" data-link-area="GNB"
                                                data-link-name="이벤트" data-link-text="진행중인 이벤트">진행중인 이벤트</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/carLife/winnerEventMain.do" target="_self"
                                                data-link-area="GNB" data-link-name="이벤트"
                                                data-link-text="당첨자발표">당첨자발표</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="detail-layer-in detail-layer-login-in">
                        <ul class="layer-gnb-login-all">
                            <!-- 로그아웃 일시 -->
                            <li>
                                <p><a href="/hp/kor/login/login.do?returnurl=/hp/kor/reservation/shortMonth/info.do"
                                        data-link-area="GNB" data-link-name="로그인" data-link-text="로그인">로그인</a></p>
                            </li>
                            <li>
                                <p><a href='/hp/kor/member/lpoint/join.do'>회원가입</a></p>
                            </li>
                            <li>
                                <p><a href="/hp/kor/myPage/main.do">예약확인</a></p>
                            </li>
                            <li>
                                <p><a href='/hp/eng/main/index.do'>English service</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //헤더 전체 메뉴 -->
            </div>
            <!--- 드롭다운 메뉴 추가-->
        </nav>
        <!--//해더네비-->
    </header>
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
    <script type="text/javascript">
        $(document).ready(function () {
            $('.register-chk').on("click", function (event) {
                if ($("#sessionMemberNo").val() == "") {
                    if (confirm("로그인 후 사용 가능합니다. 로그인하시겠습니까?")) {
                        location.href = __CONTEXT_PATH + "/" + __LANG + "/login/login.do?returnurl=/hp/kor/reservation/shortMonth/reservationMonthApply.do";
                        return false;
                    } else {
                        event.preventDefault();
                    }
                }
            });
        });
    </script>
    <main id="wrap">
        <input type="hidden" id="sessionMemberNo" value="">
        <div class="path-wrap">
            <div class="cover">
                <div class="inner">
                    <ul>
                        <li><a href=""> <span class="icon home">HOME</span></a></li>
                        <li><a href="">단기렌터카</a></li>
                        <li><a href="">월단기렌터카</a></li>
                        <li><a href="">월단기렌터카 안내</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--월간 렌터카-->
        <div class="short-container monthly-info-container">
            <div class="inner-type2">
                <!-- 페이지 타이틀 -->
                <section class="section-headline">
                    <h1 class="tit">월단기렌터카 안내</h1>
                    <p class="txt">일정기간 차량이 필요 할 때!</p>
                </section>
                <!-- //페이지 타이틀 -->
                <div class="round-banner">
                    <p>
                        1개월 이상 차량 대여가 필요하신 고객님이라면 차량 관리부터 <br> 사후관리까지 믿고 이용할 수 있는 롯데렌터카
                        월단기 서비스를 이용해 보세요.
                    </p>
                </div>
                <div class="section-explain">
                    <div class="explain-header">
                        <h2 class="tit-size-big">서비스 장점</h2>
                    </div>
                    <div class="explain-cont">
                        <ul class="multi-segment-list type-col2">
                            <li>
                                <div class="circle">
                                    <img src="/lrhp/pc/images/icon-mon01.jpg" alt="">
                                </div>
                                <div class="details">
                                    <p class="tit">토탈 차량 정비 서비스 포함</p>
                                    <ul class="lst dot">
                                        <li>롯데렌터카가 일반 정비, 순회 정비 등의 서비스 부담</li>
                                        <li>차량 고장으로 8시간 이상 정비 입고 시 대차 서비스 제공</li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <div class="circle">
                                    <img src="/lrhp/pc/images/icon-mon02.jpg" alt="">
                                </div>
                                <div class="details">
                                    <p class="tit">약정 주행거리 무제한</p>
                                    <ul class="lst dot">
                                        <li>약정 주행거리 없이 무제한 주행 가능</li>
                                        <li>장거리 주행해도 패널티 및 추가비용 없음</li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <div class="circle">
                                    <img src="/lrhp/pc/images/icon-mon03.jpg" alt="">
                                </div>
                                <div class="details">
                                    <p class="tit">장기간 계약의 부담 NO</p>
                                    <ul class="lst dot">
                                        <li>장기렌터카 대여를 고려중이나 중도해지 위약금이 부담된다면,<br>월단기렌터카로 몇 달 간 이용해보고 결정 가능</li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <div class="circle">
                                    <img src="/lrhp/pc/images/icon-mon04.jpg" alt="">
                                </div>
                                <div class="details">
                                    <p class="tit">B2B 법인고객 비용처리 가능</p>
                                    <ul class="lst dot">
                                        <li>법인고객의 월간단기렌터카 대여 시 세금계산서 발행 가능<br>
                                            <p style="font-size: 12px;">※「업무전용자동차보험특별약관」에 가입한 자동차를 대여한 법인에 한함</p>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="section-explain">
                    <div class="explain-header">
                        <h2 class="tit-size-big">상품 종류 및 추천 고객</h2>
                    </div>
                    <div class="explain-cont">
                        <div class="flex-monthly">
                            <div>
                                <div class="img">
                                    <img src="/lrhp/pc/images/img_premium.png" alt="">
                                    <span>Premium</span>
                                </div>
                                <p class="tit">운행 36개월 미만 & 주행거리 6만 km 미만 차량</p>
                                <div class="txt">
                                    <em class="bgc">추천고객</em>
                                    <ul class="lst dot mt-10">
                                        <li>가족들과 함께 이용할 예정인 고객입니다.</li>
                                        <li>(법인) 비즈니스 목적으로 이용할 예정입니다.</li>
                                    </ul>
                                </div>
                            </div>
                            <div>
                                <div class="img">
                                    <img src="/lrhp/pc/images/img_standard.png" alt="">
                                    <span>Standard</span>
                                </div>
                                <p class="tit">주행거리 6만 km 이상 ~ 12만 km 미만 차량</p>
                                <div class="txt">
                                    <em class="bgc">추천고객</em>
                                    <ul class="lst dot mt-10">
                                        <li>신차장기렌터카를 생각중이나 아직 부담이 됩니다.</li>
                                        <li>적당한 가격에 좋은 퀄리티의 차를 이용하고 싶습니다.</li>
                                    </ul>
                                </div>
                            </div>
                            <div>
                                <div class="img">
                                    <img src="/lrhp/pc/images/img_slim.png" alt="">
                                    <span>Slim</span>
                                </div>
                                <p class="tit">주행거리 12만 km 이상 차량</p>
                                <div class="txt">
                                    <em class="bgc">추천고객</em>
                                    <ul class="lst dot mt-10">
                                        <li>비싼 대여료의 부담을 줄이고 싶습니다.</li>
                                        <li>매달 저렴하게 다양한 차량을 이용해보고 싶습니다.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <section class="section-explain">
                    <div class="explain-header" style="margin-bottom:20px">
                        <h2 class="tit-size-big">차종 및 가격</h2>
                    </div>
                    <div class="explain-cont">
                        <div class="tab-cont tab-normal">
                            <div class="tab-cont-inner">
                                <div class="tab-nav car-type-tab rentalFeeTab">
                                    <ul class="menu-list">
                                        <li class="active">
                                            <button type="button">경차</button>
                                        </li>
                                        <li>
                                            <button type="button">소형<br>(SUV / RV 포함)</button>
                                        </li>
                                        <li>
                                            <button type="button">중형</button>
                                        </li>
                                        <li>
                                            <button type="button">준대형</button>
                                        </li>
                                        <li>
                                            <button type="button">SUV/RV<br>(중형)</button>
                                        </li>
                                        <li>
                                            <button type="button">SUV/RV<br>(준대형)</button>
                                        </li>
                                        <li>
                                            <button type="button">SUV/RV<br>(대형)</button>
                                        </li>
                                        <li>
                                            <button type="button">승합</button>
                                        </li>
                                        <li>
                                            <button type="button">고급</button>
                                        </li>
                                        <li>
                                            <button type="button">전기차</button>
                                        </li>
                                    </ul>
                                </div>
                                <ul class="lst dot">
                                    <li>해당 요금은 23년 5월 22일자 기준 요금입니다. (VAT 포함 가격)</li>
                                    <li>보험연령 만 26세 이상, 사고시 고객부담금 30만원, 대물 5천만원, 대인 무제한, 자손 5천만원 기준 대여료입니다.</li>
                                    <li>보험조건 및 보험연령에 따라 대여료는 변동될 수 있으며, 세부사항은 상담을 통해 확인하실 수 있습니다.</li>
                                    <li>아래의 표에 없는 차종은 상담 신청을 통해 확인하실 수 있습니다.</li>
                                </ul>
                                <div class="tab-cont car-type-tab rentalFeeTab">
                                    <!-- 경차 -->
                                    <div class="tab-cont-inner">
                                        <div class="tbl-box">
                                            <table>
                                                <colgroup>
                                                    <col width="25%">
                                                    <col>
                                                    <col>
                                                    <col>
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>차종명</th>
                                                        <th>Premium</th>
                                                        <th>Standard</th>
                                                        <th>Slim</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>기아 레이<br>기아 모닝</th>
                                                        <td>650,000 ~
                                                        </td>
                                                        <td> 550,000 ~
                                                        </td>
                                                        <td>450,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>GM 스파크
                                                        </th>
                                                        <td>590,000 ~
                                                        </td>
                                                        <td>500,000 ~
                                                        </td>
                                                        <td>미운영</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- 경차 -->
                                    <!-- 소형 -->
                                    <div class="tab-cont-inner" style="display: none;">
                                        <div class="tbl-box">
                                            <table>
                                                <colgroup>
                                                    <col width="33%">
                                                    <col>
                                                    <col>
                                                    <col>
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>차종명</th>
                                                        <th>Premium</th>
                                                        <th>Standard</th>
                                                        <th>Slim</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th style="word-break: keep-all;">현대 아반떼, 기아 K3, 현대 베뉴, 현대
                                                            코나,<br>기아 셀토스, 현대 아이오닉, 기아 스토닉, 기아 쏘울, 기아 니로</th>
                                                        <td>750,000 ~</td>
                                                        <td>630,000 ~</td>
                                                        <td>520,000 ~</td>
                                                    </tr>
                                                    <tr>
                                                        <th>KG 티볼리, GM 트랙스, GM 트레일블레이저,<br>르노 XM3, KG 코란도</th>
                                                        <td>680,000 ~
                                                        </td>
                                                        <td>570,000 ~
                                                        </td>
                                                        <td>미운영
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- 소형 -->
                                    <!-- 중형 -->
                                    <div class="tab-cont-inner" style="display: none;">
                                        <div class="tbl-box">
                                            <table>
                                                <colgroup>
                                                    <col width="25%">
                                                    <col>
                                                    <col>
                                                    <col>
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>차종명</th>
                                                        <th>Premium</th>
                                                        <th>Standard</th>
                                                        <th>Slim</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>기아 K5<br>
                                                            현대 쏘나타
                                                        </th>
                                                        <td>850,000 ~
                                                        </td>
                                                        <td>720,000 ~
                                                        </td>
                                                        <td>590,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>GM 말리부<br>
                                                            르노 SM6
                                                        </th>
                                                        <td>770,000 ~
                                                        </td>
                                                        <td>650,000 ~
                                                        </td>
                                                        <td>미운영
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- 중형 -->
                                    <!-- 준대형 -->
                                    <div class="tab-cont-inner" style="display: none;">
                                        <div class="tbl-box">
                                            <table>
                                                <colgroup>
                                                    <col width="25%">
                                                    <col>
                                                    <col>
                                                    <col>
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>차종명</th>
                                                        <th>Premium</th>
                                                        <th>Standard</th>
                                                        <th>Slim</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>현대 그랜져<br>
                                                            기아 K7<br>
                                                            기아 K8</th>
                                                        <td>1,100,000 ~
                                                        </td>
                                                        <td>930,000 ~
                                                        </td>
                                                        <td>770,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>GM 임팔라
                                                        </th>
                                                        <td>990,000 ~
                                                        </td>
                                                        <td>840,000 ~
                                                        </td>
                                                        <td>미운영
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- 준대형 -->
                                    <!-- SUV/RV (중형) -->
                                    <div class="tab-cont-inner" style="display: none;">
                                        <div class="tbl-box">
                                            <table>
                                                <colgroup>
                                                    <col width="25%">
                                                    <col>
                                                    <col>
                                                    <col>
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>차종명</th>
                                                        <th>Premium</th>
                                                        <th>Standard</th>
                                                        <th>Slim</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>현대 투싼<br>
                                                            기아 스포티지<br>
                                                        </th>
                                                        <td>900,000 ~
                                                        </td>
                                                        <td>760,000 ~
                                                        </td>
                                                        <td>630,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>르노 QM6
                                                        </th>
                                                        <td>810,000 ~
                                                        </td>
                                                        <td>680,000 ~
                                                        </td>
                                                        <td>미운영
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- SUV/RV (중형) -->
                                    <!-- SUV/RV (준중형) -->
                                    <div class="tab-cont-inner" style="display: none;">
                                        <div class="tbl-box">
                                            <table>
                                                <colgroup>
                                                    <col width="25%">
                                                    <col>
                                                    <col>
                                                    <col>
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>차종명</th>
                                                        <th>Premium</th>
                                                        <th>Standard</th>
                                                        <th>Slim</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>현대 싼타페<br>
                                                            기아 쏘렌토
                                                        </th>
                                                        <td>1,150,000 ~
                                                        </td>
                                                        <td>970,000 ~
                                                        </td>
                                                        <td>800,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>KG 토레스
                                                        </th>
                                                        <td>1,040,000 ~
                                                        </td>
                                                        <td>870,000 ~
                                                        </td>
                                                        <td>미운영
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- SUV/RV (준중형) -->
                                    <!-- SUV/RV (대형) -->
                                    <div class="tab-cont-inner" style="display: none;">
                                        <div class="tbl-box">
                                            <table>
                                                <colgroup>
                                                    <col width="25%">
                                                    <col>
                                                    <col>
                                                    <col>
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>차종명</th>
                                                        <th>Premium</th>
                                                        <th>Standard</th>
                                                        <th>Slim</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>현대 팰리세이드<br>
                                                            기아 모하비<br>
                                                            기아 카니발 하이리무진
                                                        </th>
                                                        <td>1,300,000 ~
                                                        </td>
                                                        <td>1,100,000 ~
                                                        </td>
                                                        <td>910,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>GM 트래버스<br>
                                                            KG 렉스턴
                                                        </th>
                                                        <td>1,170,000 ~
                                                        </td>
                                                        <td>990,000 ~
                                                        </td>
                                                        <td>미운영</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- SUV/RV (대형) -->
                                    <!-- 승합 -->
                                    <div class="tab-cont-inner" style="display: none;">
                                        <div class="tbl-box">
                                            <table>
                                                <colgroup>
                                                    <col width="25%">
                                                    <col>
                                                    <col>
                                                    <col>
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>차종명</th>
                                                        <th>Premium</th>
                                                        <th>Standard</th>
                                                        <th>Slim</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>기아 카니발<br>
                                                            (리무진 제외)
                                                        </th>
                                                        <td>1,100,000 ~
                                                        </td>
                                                        <td>930,000 ~
                                                        </td>
                                                        <td>770,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>현대 그랜드 스타렉스<br>
                                                            현대 스타리아
                                                        </th>
                                                        <td>1,000,000 ~
                                                        </td>
                                                        <td>850,000 ~
                                                        </td>
                                                        <td>700,000 ~
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- 승합 -->
                                    <!-- 고급 -->
                                    <div class="tab-cont-inner" style="display: none;">
                                        <div class="tbl-box">
                                            <table>
                                                <colgroup>
                                                    <col width="25%">
                                                    <col>
                                                    <col>
                                                    <col>
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>차종명</th>
                                                        <th>Premium</th>
                                                        <th>Standard</th>
                                                        <th>Slim</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>현대 제네시스 G70
                                                        </th>
                                                        <td>1,350,000 ~
                                                        </td>
                                                        <td>1,140,000 ~
                                                        </td>
                                                        <td>940,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>현대 제네시스 G80
                                                        </th>
                                                        <td>1,500,000 ~
                                                        </td>
                                                        <td>1,270,000 ~
                                                        </td>
                                                        <td>1,050,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>현대 제네시스 G90
                                                        </th>
                                                        <td>2,150,000 ~
                                                        </td>
                                                        <td>1,820,000 ~
                                                        </td>
                                                        <td>1,500,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>현대 제네시스 GV70
                                                        </th>
                                                        <td>1,450,000 ~
                                                        </td>
                                                        <td>1,230,000 ~
                                                        </td>
                                                        <td>1,010,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>현대 제네시스 GV80
                                                        </th>
                                                        <td>1,800,000 ~
                                                        </td>
                                                        <td>1,530,000 ~
                                                        </td>
                                                        <td>1,260,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>기아 스팅어</th>
                                                        <td>1,350,000 ~
                                                        </td>
                                                        <td>1,140,000 ~
                                                        </td>
                                                        <td>940,000 ~
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>기아 K9</th>
                                                        <td>1,700,000 ~
                                                        </td>
                                                        <td>1,440,000 ~
                                                        </td>
                                                        <td>1,190,000 ~
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- 고급 -->
                                    <!-- 전기차 -->
                                    <div class="tab-cont-inner" style="display: none;">
                                        <div class="tbl-box">
                                            <table>
                                                <colgroup>
                                                    <col width="25%">
                                                    <col>
                                                    <col>
                                                    <col>
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th>차종명</th>
                                                        <th>Premium</th>
                                                        <th>Standard</th>
                                                        <th>Slim</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>기아 니로EV<br>
                                                            현대 코나EV
                                                        </th>
                                                        <td>1,450,000 ~</td>
                                                        <td>1,230,000 ~</td>
                                                        <td>1,010,000 ~</td>
                                                    </tr>
                                                    <tr>
                                                        <th>기아 EV6<br>
                                                            현대 아이오닉5</th>
                                                        <td>1,650,000 ~</td>
                                                        <td>1,400,000 ~</td>
                                                        <td>1,150,000 ~</td>
                                                    </tr>
                                                    <tr>
                                                        <th>GM 볼트</th>
                                                        <td>1,310,000 ~</td>
                                                        <td>1,110,000 ~</td>
                                                        <td>미운영</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- 전기차 -->
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="section-explain-type2">
                    <div class="explain-header">
                        <h2 class="tit-size-big">대여 절차</h2>
                    </div>
                    <div class="explain-cont">
                        <ol class="process-list">
                            <li class="align-middle">
                                <div>
                                    <span class="num">01</span> <strong class="tit"> 상담 신청 </strong>
                                </div>
                            </li>
                            <li class="align-middle">
                                <div>
                                    <span class="num">02</span> <strong class="tit"> 견적 의뢰 </strong>
                                </div>
                            </li>
                            <li class="align-middle">
                                <div>
                                    <span class="num">03</span> <strong class="tit"> 계약 </strong>
                                </div>
                            </li>
                            <li class="align-middle">
                                <div>
                                    <span class="num">04</span> <strong class="tit"> 차량 인도 </strong>
                                </div>
                            </li>
                            <li class="align-middle">
                                <div>
                                    <span class="num">05</span> <strong class="tit">차량 이용</strong>
                                </div>
                            </li>
                            <li class="align-middle">
                                <div>
                                    <span class="num">06</span> <strong class="tit"> 차량 반납 </strong>
                                </div>
                            </li>
                        </ol>
                    </div>
                </section>
                <div class="btn-area">
                    <a href="/hp/kor/reservation/shortMonth/reservationMonthApply.do"
                        class="btn btn-red detail-layer-submit submit-normal">상담 신청</a>
                </div>
            </div>
        </div>
        <script src="/lrhp/js/web/hp/pc/contents/contentsPage.js?ver=9e530021-db79-4977-91e5-30029cf536a0"
            type="text/javascript"></script>
    </main>
    <!-- BODY e //-->
    <!-- FOOTER s -->
    <!--footer 컴포넌트-->
    <footer class="footer">
        <input type="hidden" name="serviceModeFooter" id="serviceModeFooter" value="real">
        <div class="footer-link">
            <div class="inner">
                <ul>
                    <li>
                        <a href="#n"
                            onclick="_rentMembers.native.goWithNoAuth('https://direct.lotterentacar.net/main/main.do?utm_source=lotterentacar&utm_medium=footer&utm_campaign=FamilySite&utm_content=신차장다이렉트', 'Y');ga('send', 'event', '풋터', 'goToDirect', '신차장다이렉트');">롯데렌터카<br>마이카</a>
                    </li>
                    <li>
                        <a href="#n"
                            onclick="_rentMembers.native.goWithNoAuth('https://manager.lotterentacar.net/main.do', 'Y');ga('send', 'event', '풋터', '패밀리사이트', '신차장_멤버십랜딩');">롯데렌터카<br>마이카
                            멤버십</a>
                    </li>
                    <li>
                        <a href="#n"
                            onclick="_rentMembers.native.goWithNoAuth('https://business.lotterental.com/login.do?utm_source=lotterentacar&utm_medium=main&utm_campaign=footer&utm_content=롯데렌탈비즈니스','Y');ga('send', 'event', '풋터', '패밀리사이트', '롯데렌탈비즈니스랜딩');">롯데렌터카<br>비즈카</a>
                    </li>
                    <!--
					<li>
						<a href="#n" onclick="_rentMembers.native.goWithNoAuth('https://www.lotteautoauction.net/hp/pub/cmm/viewMain.do', 'Y');ga('send', 'event', '풋터', '패밀리사이트', '오토옥션랜딩');">롯데오토옥션</a>
					</li>
					 -->
                    <li>
                        <a href="#n"
                            onclick="_rentMembers.native.goWithNoAuth('https://mycarsave.lotterentacar.net', 'Y');ga('send', 'event', '풋터', '패밀리사이트', '오토마켓랜딩');">롯데렌터카<br>마이카
                            세이브</a>
                    </li>
                    <li>
                        <a href="#n"
                            onclick="_rentMembers.native.goWithNoAuth('https://www.lotte-autoglobal.net', 'Y');ga('send', 'event', '풋터', '패밀리사이트', '오토글로벌랜딩');">롯데오토글로벌</a>
                    </li>
                    <li>
                        <a href="https://www.lotte-autolease.com"
                            onclick="ga('send', 'event', '풋터', '패밀리사이트', '오토리스랜딩');" target="_blank">롯데오토리스</a>
                    </li>
                    <li>
                        <a href="#n"
                            onclick="_rentMembers.native.goWithNoAuth('https://www.lotteautocare.com/?utm_source=lotterentacar&utm_medium=main&utm_campaign=footer&utm_content=롯데오토케어','Y');ga('send', 'event', '풋터', '패밀리사이트', '롯데오토케어');">롯데오토케어</a>
                    </li>
                    <li>
                        <a href="http://www.greencar.co.kr" onclick="ga('send', 'event', '풋터', '패밀리사이트', '그린카랜딩');"
                            target="_blank">그린카</a>
                    </li>
                    <li>
                        <a href="https://recruit.lotterental.net" target="_blank">인재채용</a>
                    </li>
                </ul>
                <!-- 211028 :: 패밀리사이트 수정  -->
                <div class="family">
                    <button type="button" class="btn btn-family family-btn" data-target="family-cont-01" data-on="true"
                        data-siblings="true">FAMILY SITE</button>
                    <div class="family-toggle-cont family-cont-01">
                        <div class="detail-layer-in">
                            <ul class="detail-layer-list-wrap">
                                <li>
                                    <p><a href="#">식품부문</a></p>
                                    <div class="detail-layer-list">
                                        <ul>
                                            <li>
                                                <a href="https://www.lotteconf.co.kr/" target="_blank">롯데제과</a>
                                            </li>
                                            <li>
                                                <a href="https://company.lottechilsung.co.kr/kor/main/index.do"
                                                    target="_blank">롯데칠성음료
                                                    (음료BG)</a>
                                            </li>
                                            <li>
                                                <a href="https://company.lottechilsung.co.kr/kor/main/index.do"
                                                    target="_blank">롯데칠성음료
                                                    (주류BG)</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lottefoods.co.kr/" target="_blank">롯데웰푸드</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L105"
                                                    target="_blank">롯데네슬레</a>
                                            </li>
                                            <li>
                                                <a href="http://www.asahibeerk.com/" target="_blank">롯데아시히주류</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottelmsc.com/" target="_blank">롯데유통사업본부</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotternd.com/KOR/" target="_blank">롯데중앙연구소</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottegrs.com/main.jsp" target="_blank">롯데지알에스</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <p><a href="#">유통부문</a></p>
                                    <div class="detail-layer-list">
                                        <ul>
                                            <li>
                                                <a href="https://www.lotteshopping.com/" target="_blank">롯데백화점</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotteon.com/p/display/main/lottemart?mall_no=4&amp;ch_no=100195&amp;ch_dtl_no=1000617"
                                                    target="_blank">롯데마트</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotteon.com/p/display/main/lottefresh?mall_no=5&amp;ch_no=100195&amp;ch_dtl_no=1000617"
                                                    target="_blank">롯데슈퍼</a>
                                            </li>
                                            <li>
                                                <a href="https://www.7-eleven.co.kr/" target="_blank">코리아세븐</a>
                                            </li>
                                            <li>
                                                <a href="http://www.e-himart.co.kr/app/display/showDisplayShop?originReferrer=himartindex"
                                                    target="_blank">롯데하이마트</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lottehomeshopping.com/user/main/index.lotte"
                                                    target="_blank">롯데홈쇼핑</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotteon.com/p/display/main/lotteon?mall_no=1"
                                                    target="_blank">롯데쇼핑e커머스</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotteon.com/p/display/main/lottelohbs?mall_no=7&amp;ch_no=100195&amp;ch_dtl_no=1000617"
                                                    target="_blank">롭스</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lottemembers.com/" target="_blank">롯데멤버스</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottecultureworks.com" target="_blank">롯데컬쳐웍스</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottecinema.co.kr" target="_blank">롯데시네마</a>
                                            </li>
                                            <li>
                                                <a href="https://www.charlottetheater.co.kr" target="_blank">샤롯데씨어터</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L210"
                                                    target="_blank">에프알엘코리아</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <p><a href="#">화학/건설/제조 부문</a></p>
                                    <div class="detail-layer-list">
                                        <ul>
                                            <li>
                                                <a href="https://www.lottemcc.com/index.do" target="_blank">롯데엠시시</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lottecon.co.kr/" target="_blank">롯데건설</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottecm.com/ko/main.do"
                                                    target="_blank">롯데CM사업본부</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lottelem.co.kr/" target="_blank">롯데기공</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotteal.co.kr/" target="_blank">롯데알미늄</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottefinechem.com/" target="_blank">롯데정밀화학</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottechem.com" target="_blank">롯데케미칼</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lotteineos.com/" target="_blank">롯데이네오스화학</a>
                                            </li>
                                            <li>
                                                <a href="https://kr.canon/ " target="_blank">캐논코리아</a>
                                            </li>
                                            <li>
                                                <a href="http://www.kpchemtech.co.kr/html/00_main/main.php"
                                                    target="_blank">케이피캠텍</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L311"
                                                    target="_blank">한국후지필름</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <p><a href="#">관광/서비스/금융부문</a></p>
                                    <div class="detail-layer-list">
                                        <ul>
                                            <li>
                                                <a href="https://www.lotteglogis.com/" target="_blank">롯데글로벌지스</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotterental.com" target="_blank">롯데렌탈</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotteresort.com/main/ko/index"
                                                    target="_blank">롯데리조트</a>
                                            </li>
                                            <li>
                                                <a href="https://kr.lottedfs.com/main/index.do"
                                                    target="_blank">롯데면세점</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L406"
                                                    target="_blank">롯데문화재단</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lottepnd.com/main.do" target="_blank">롯데물산</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L408"
                                                    target="_blank">롯데미래전략연구소</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottefoundation.or.kr/" target="_blank">롯데복지재단</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotte.co.kr/business/compDetail.do?compCd=L410"
                                                    target="_blank">롯데삼동복지재단</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotteskyhill.com/" target="_blank">롯데스카이힐CC</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lotteworld.com/gate.html" target="_blank">롯데월드</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div class="detail-layer-list">
                                        <ul>
                                            <li>
                                                <a href="https://ez.lotteacademy.co.kr/login/loginForm.do"
                                                    target="_blank">롯데인재개발원</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lotte.co.kr/business/compDetail.do?compCd=L415"
                                                    target="_blank">롯데자산개발</a>
                                            </li>
                                            <li>
                                                <a href="https://www.giantsclub.com/html/" target="_blank">롯데자이언츠</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottefoundation.or.kr/" target="_blank">롯데장학재단</a>
                                            </li>
                                            <li>
                                                <a href="https://www.ldcc.co.kr/" target="_blank">롯데정보통신</a>
                                            </li>
                                            <li>
                                                <a href="http://www.lottejtb.com/" target="_blank">롯데제이티비</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottecap.com/ma/ma/MAMA00100"
                                                    target="_blank">롯데캐피탈</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottehotel.com/global/ko.html"
                                                    target="_blank">롯데호텔</a>
                                            </li>
                                            <li>
                                                <a href="https://www.daehong.com/" target="_blank">대홍기획</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lottehotel.com/busan-hotel/ko.html"
                                                    target="_blank">부산롯데호텔</a>
                                            </li>
                                            <li>
                                                <a href="https://www.lotteintl.co.kr//" target="_blank">롯데상사</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- // 211028 :: 패밀리사이트 수정 -->
            </div>
        </div>
        <div class="inner">
            <div class="footer-logo">
                <img src="/lrhp/pc/images/common/logo-footer.png" alt="LOTTE rental" />
            </div>
            <div class="footer-bottom-menu">
                <div class="footer-infos-wrap">
                    <div class="sitemap">
                        <ul>
                            <li><a href="/hp/kor/compInfo.do" target="_self">회사소개</a></li>
                            <li><a href="/hp/kor/terms/personalInfo.do" class="txt_point" target="_self">개인정보처리방침</a>
                            </li>
                            <li><a href="/hp/kor/terms/videoInfo.do" class="txt_point" target="_self">영상정보처리기기
                                    운영관리방침</a></li>
                            <li><a href="/hp/kor/terms/use.do" target="_self">이용약관</a></li>
                            <li><a class="layer-refuse-email-open" data-layer="layer-refuse-email">이메일주소무단수집거부</a></li>
                            <li><a href="/hp/kor/visitRoad.do" target="_self">Contact us</a></li>
                            <!-- <li><a href="/hp/kor/contract/popCarlifeContract.do">계약서 조회</a></li> -->
                            <li><a href="/hp/kor/siteMap.do">사이트맵</a></li>
                        </ul>
                    </div>
                    <div class="site-infos">
                        <div class="information">
                            <ul class="entrepreneur-info">
                                <li>롯데렌탈㈜ 대표이사 최진환</li>
                                <li>
                                    <!-- 24.01.12 :: 등록증 레이어 -->
                                    <ul class="address">
                                        <li>경기도 안양시 동안구 전파로 88 신원비젼타워 8층 / 서울본사: 서울시 강남구 테헤란로 422 KT타워 6~9층</li>
                                        <li>사업자등록번호 : <a
                                                href="http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=2148779183"
                                                target="_blank"
                                                onclick="window.open(this.href, '', 'toolbar=no,scrollbars=yes,resizable=no,top=50,left=500,width=750,height=700'); return false;"
                                                class="btn_entrepreneur_info">214-87-79183</a> / 통신판매업신고번호 :
                                            제2010-경기안양-420호</li>
                                        <li>보험대차 1588-4920 / 일반상품렌탈 1577-5100+1</li>
                                        <li><a class="layer-infos-open" data-layer="layer-certificate"
                                                style="text-decoration: underline;">대출성 금융상품판매대리ㆍ중개업자등록증</a></li>
                                    </ul>
                                    <!-- // 24.01.12 :: 등록증 레이어 -->
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="footer-infos-bn">
                        <div class="footer-infos-bn-box">
                            <img src="/lrhp/pc/images/icons/ico-foot-bn.png" alt="업계최초 국내3대 고객만족도 평가 3관왕">
                        </div>
                        <div class="footer-infos-list">
                            <div class="detail-view-list-wrap">
                                <div class="swiper-container detail-view-list">
                                    <p class="detail-view-list-tit">롯데렌터카 수상 내역</p>
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <img src="/lrhp/pc/images/icons/ico-awarded01.png" alt="">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="/lrhp/pc/images/icons/ico-awarded02.png" alt="">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="/lrhp/pc/images/icons/ico-awarded03.png" alt="">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="/lrhp/pc/images/icons/ico-awarded04.png" alt="">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="/lrhp/pc/images/icons/ico-awarded05.png" alt="">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="/lrhp/pc/images/icons/ico-awarded06.png" alt="">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="/lrhp/pc/images/icons/ico-awarded07.png" alt="">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="/lrhp/pc/images/icons/ico-awarded08.png" alt="">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="/lrhp/pc/images/icons/ico-awarded09.png" alt="">
                                        </div>
                                    </div>
                                    <div class="swiper-pagination-wrap">
                                        <div class="swiper-button-next"></div>
                                        <div class="swiper-button-prev"></div>
                                        <!-- <div class="swiper-button-play">play</div>
    									<div class="swiper-button-pause">stop</div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer-infos-sns">
                            <p>롯데렌터카 공식 SNS 채널</p>
                            <ul>
                                <li>
                                    <a href="https://pf.kakao.com/_gVmbl" class="btn btn-foot-sns"><i
                                            class="icon snsK">카카오톡</i></a>
                                </li>
                                <li>
                                    <a href="https://www.facebook.com/official.lotterental" class="btn btn-foot-sns"><i
                                            class="icon snsF">페이스북</i></a>
                                </li>
                                <li>
                                    <a href="https://www.instagram.com/lotte_rentacar/" class="btn btn-foot-sns"><i
                                            class="icon snsI">인스타그램</i></a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/channel/UCih7WKy20DaLIibm32uAQAg"
                                        class="btn btn-foot-sns"><i class="icon snsY">유튜브</i></a>
                                </li>
                                <li>
                                    <a href="https://blog.naver.com/official_lotterental" class="btn btn-foot-sns"><i
                                            class="icon snsB">블로그</i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer-center-wrap">
                    <div class="footer-center-top">
                        <p>고객센터</p>
                        <b>1588-1230</b>
                    </div>
                    <div class="footer-center-info">
                        평일 08:30 ~ 19:00<br>
                        단, 사고처리 문의는 24시간 가능
                        <!-- 24.01.12 :: 해외 번호-->
                        <div class="overseas-footer">
                            <span>Overseas</span>
                            <p>+82-02-797-8000</p>
                        </div>
                        <!-- 24.01.12 :: 해외 번호-->
                    </div>
                </div>
                <div class="footer-app-wrap">
                    <p>앱 다운로드</p>
                    <ul>
                        <li><a href="https://play.google.com/store/apps/details?id=com.kt.main" target="_blank"><i
                                    class="icon app01">Google Play</i></a></li>
                        <li><a href="https://apps.apple.com/kr/app/%EB%A1%AF%EB%8D%B0%EB%A0%8C%ED%84%B0%EC%B9%B4/id405947384"
                                target="_blank"><i class="icon app02">App Store</i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
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
        <img src="/lrhp/pc/images/icon_talk.png" alt="챗봇상담" style="width:30px;" data-link-area="공통" data-link-name="하단"
            data-link-text="챗봇상담" />챗봇상담
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
                        <p>본 웹사이트에 게시된 이메일 주소가 전자우편 수집프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며 이를 위반시 정보통신망법에 의해 형사상
                            처벌됨을 유의하시기 바랍니다.</p>
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
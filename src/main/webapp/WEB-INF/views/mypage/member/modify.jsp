<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<html>
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
    <link rel="stylesheet" href="/lrhp/pc/styles/reset.css?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0">
    <link rel="stylesheet" href="/lrhp/pc/styles/layout.css?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0">
    <link rel="stylesheet" href="/lrhp/pc/styles/modules.css?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0">
    <link rel="stylesheet" href="/lrhp/pc/styles/contents.css?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0">
    <link rel="stylesheet" href="/lrhp/pc/styles/jquery.mCustomScrollbar.css?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0">
    <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
    <script src="/lrhp/js/lib/html5shiv.js"></script>
    <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
    <script src="/lrhp/js/lib/clipboard.min.js"></script>
    <script src="/publish/js/md5.js?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0"></script>
    <script src="/publish/js/cmmnUtil.js?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0"></script>
    <!-- SSO 고도화 -->
    <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
    <script src='https://members.lpoint.com/api/js/json2.js'></script>
    <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
    <script src="/lrhp/js/sso/moment.js"></script>
    <script src="/lrhp/js/sso/odm-common.js"></script>
    <script src="/lrhp/js/sso/sso.rental.js?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0"></script>
    <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0"></script>
    <script src="/lrhp/js/sso/api.rentcar.js?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0"></script>
    <!-- Social Login -->
    <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
    <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
    <script src="/lrhp/js/social/social.rentacar.js?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0"></script>
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
    <script src="/lrhp/js/common/gfn_util.js?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0"></script>
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
    <script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=aa79587f-47bf-43cc-8fa6-604fa88678c0"></script>
    <!-- Adobe Analytics End -->
    <!-- Adobe Analytics (temp)-->
    <!-- <script src="https://assets.adobedtm.com/0d3d26a8f9f8/8ca38b3d4546/launch-eb7bb6609f87.min.js" async></script> -->
    <title>
        롯데렌터카
    </title>
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
                clientAkInfo: '{"clntEncKey":"InVw+Z8KWs99dNW3","flwNo":"wC1KsQHul4","domain":"https://members.lpoint.com"}' || '',
                accessToken: 'cDArNTgva0p2NStobFJMeFlLQ2p5cEw1Nm9XS1J6VnBXd0Z1YWZiWXhCUGxRRGZlUUdyLzlDZnRhNjV5dnBvZg==' || '',
                siteNo: '1502',
                channelCd: '0',
                loginStatus: ('116394668' || '') == '' ? false : true,
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
        var aa_mem_no = '116394668';
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
        _dl.userInfo.marketing_check_internal = 'N';
        _dl.userInfo.marketing_check_third = 'N';
        _dl.userInfo.user_age = '26';
        _dl.userInfo.user_gender = 'F';
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
                                <a href="/hp/kor/myPage/coupon.do" class="underline" id="myCommonRentalCoupon">0장</a>
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
                                <a href="/hp/kor/myPage/carSeller.do" class="underline" id="commonMyCarSellCount">0건</a>
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
                                <a href="/hp/kor/myPage/reservationMonth.do" data-link-area="마이페이지" data-link-name="메뉴"
                                    data-link-text="월간단기렌터카 예약">월간단기렌터카 예약</a>
                            </li>
                            <li>
                                <a href="/hp/kor/myPage/reservationDriver.do" data-link-area="마이페이지" data-link-name="메뉴"
                                    data-link-text="기사포함단기렌터카 예약">기사포함단기렌터카 예약 </a>
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
                                        <a href="javascript:_rentMembers.page.href('/myPage/member/leave.do');">회원탈퇴</a>
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
                    <div class="container" data-id="template-container">
                        <div class="mypage-body-cont modify-lpoint">
                            <div class="mypage-body-cont-header">
                                <div class="tit-area">
                                    <h4 class="tit">회원정보 변경</h4>
                                </div>
                            </div>
                            <div class="section-form type2">
                                <div class="section-form type2">
                                    <p class="txt-color-red align-r mb-20">* 는 필수입력 항목입니다.</p>
                                    <div class="form-header">
                                        <h3 class="tit-size-mid">회원정보입력</h3>
                                    </div>
                                    <div class="form-cont">
                                        <div class="row type2 type3">
                                            <label for="" class="input-tit">이름 <span
                                                    class="txt-color-red">*</span></label>
                                            <div class="input-cont">
                                                <div class="txt user-name"></div>
                                            </div>
                                        </div>
                                        <div class="row type2 type3">
                                            <label for="" class="input-tit">아이디 <span
                                                    class="txt-color-red">*</span></label>
                                            <div class="input-cont">
                                                <div class="txt user-id"></div>
                                            </div>
                                        </div>
                                        <div class="row type2 type3">
                                            <label for="" class="input-tit">휴대폰번호 <span
                                                    class="txt-color-red">*</span></label>
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
                                                    <select name="user-mobile-head" id="user-mobile-head"
                                                        class="selectbox">
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
                                            <label for="" class="input-tit">이메일 <span
                                                    class="txt-color-red">*</span></label>
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
                                            <label for="" class="input-tit">주소 <span
                                                    class="txt-color-red">*</span></label>
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
                                                    <select name="user-phone-head" id="user-phone-head"
                                                        class="selectbox">
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
                                                                        class="txt-color-red">(선택)</span></label>
                                                            </div>
                                                            <button type="button" class="btnToggle"
                                                                data-target="toggleCont03" data-on="true"
                                                                data-siblings="false">자세히</button>
                                                        </div>
                                                        <div class="agree-body-cont toggleCont toggleCont03">
                                                            <iframe
                                                                src="https://members.lpoint.com/resources/html/privacy/iframe_1502_B1_ko.html"
                                                                width="100%" height="100%" frameborder="0"
                                                                scrolling="yes" marginwidth="0" marginheight="0"
                                                                allowTransparency="true" title=""></iframe>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="agree-body-header">
                                                            <div class="chk-icon-box">
                                                                <input type="checkbox" id="agree-rentcar-07"
                                                                    name="agree-rentcar-07" value="BQ">
                                                                <label for="agree-rentcar-07">마케팅 목적의 개인정보 수집∙이용 동의
                                                                    <span class="txt-color-red">(선택)</span></label>
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
                                                                width="100%" height="100%" frameborder="0"
                                                                scrolling="yes" marginwidth="0" marginheight="0"
                                                                allowTransparency="true" title=""></iframe>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="agree-body-header">
                                                            <div class="chk-icon-box">
                                                                <input type="checkbox" id="agree-rentcar-08"
                                                                    name="agree-rentcar-08">
                                                                <label for="agree-rentcar-08">마케팅 광고성 정보 수신 동의 <span
                                                                        class="txt-color-red">(선택)</span></label>
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
                                                                <label for="agree-rentcar-09">마케팅 목적의 개인정보 제 3자 제공 동의
                                                                    <span class="txt-color-red">(선택)</span></label>
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
                                                                width="100%" height="100%" frameborder="0"
                                                                scrolling="yes" marginwidth="0" marginheight="0"
                                                                allowTransparency="true" title=""></iframe>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="agree-body-header">
                                                            <div class="chk-icon-box">
                                                                <input type="checkbox" id="agree-rentcar-10"
                                                                    name="agree-rentcar-10">
                                                                <label for="agree-rentcar-10">제공받는 자의 광고성 정보 수신 동의 <span
                                                                        class="txt-color-red">(선택)</span></label>
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
                            </div>
                            <!-- //.mypage-body-cont -->
                            <form name="modifyForm" method="post">
                                <input type="hidden" name="bdMgtSn" value="" />
                                <input type="hidden" name="roadFullAddr" value="" />
                                <input type="hidden" name="roadAddrPart1" value="" />
                                <input type="hidden" name="addrDetail" value="" />
                                <input type="hidden" name="roadAddrPart2" value="" />
                                <input type="hidden" name="zipNo" value="" />
                                <input type="hidden" name="siNm" value="" />
                                <input type="hidden" name="sggNm" value="" />
                                <input type="hidden" name="emdNm" value="" />
                                <input type="hidden" name="rn" value="" />
                                <input type="hidden" name="buldMnnm" value="" />
                            </form>
                            <script
                                src="/lrhp/js/web/hp/pc/myPage/memberModify.js?ver=aa79587f-47bf-43cc-8fa6-604fa88678c0"
                                type="text/javascript"></script>
                            <!-- zipcode api -->
                            <script language="javascript">
                                var openAddressPopup = function () {
                                    //
                                    if (__ISMOBILE == "Y") {
                                        var popup = window.open("url://popup", "address_popup");
                                    } else {
                                        var popup = window.open(" ", "address_popup", "width=570, height=420, scrollbars=yes, resizable=yes");
                                    }
                                    //
                                    setTimeout(function () {
                                        var $form = $('<form></form>');
                                        $form.attr('name', 'form1');
                                        $form.attr('method', 'post');
                                        $form.attr('action', "/hp/common/address/popup.do");
                                        $form.attr('target', 'address_popup');
                                        $form.appendTo('body');
                                        $form.submit();
                                    }, 20);
                                };
                                var addressPopupCallBack = function (result) {
                                    document.modifyForm.siNm.value = result.siNm || "";
                                    document.modifyForm.sggNm.value = result.sggNm || "";
                                    document.modifyForm.emdNm.value = result.emdNm || "";
                                    document.modifyForm.rn.value = result.rn || "";
                                    document.modifyForm.buldMnnm.value = result.buldMnnm || "";
                                    //
                                    document.modifyForm.roadFullAddr.value = result.roadFullAddr || "";
                                    document.modifyForm.roadAddrPart1.value = result.roadAddrPart1 || "";
                                    document.modifyForm.roadAddrPart2.value = result.roadAddrPart2 || "";
                                    document.modifyForm.addrDetail.value = result.addrDetail || "";
                                    document.modifyForm.zipNo.value = result.zipNo || "";
                                    document.modifyForm.bdMgtSn.value = result.bdMgtSn || "";
                                    //
                                    var zipcode = document.modifyForm.zipNo.value || "";
                                    var detail01 = document.modifyForm.roadAddrPart1.value || "";
                                    var detail02 = (document.modifyForm.roadAddrPart2.value || "") + " " + (document.modifyForm.addrDetail.value || "");
                                    _mypageMemberModify.page.lpoint.set.address({
                                        zipcode: zipcode,
                                        detail01: detail01,
                                        detail02: detail02
                                    });
                                }
                            </script>
                            <script>
                                $(function () {
                                    _mypageMemberModify.init({
                                        active: "lpoint",
                                        ci: "L4DYVY4BbHb+7w8Y5RacwMJIZfCvN5idZP82/vIWxS92uUWDih73TCS6lBscNIxynUJRObidKrdQ5CvnrujgqA==" || "",
                                        user: {
                                            onlCno: "55396782" || "",						//고객번호
                                            cstNm: "홍경영" || "",						//이름
                                            onlId: "ruddud2284@gmail.com" || "",						//아이디
                                            tcccDc: "1" || "9",					//통신사 - 1(SKT), 2(KT), 3(LGU+), 4(SKT알뜰폰), 5(KT알뜰폰), 6(LGU+알뜰폰), 9(ETC)
                                            mbzNoC: "010" || "",						//휴대전화1 - 010, 011, 0130, 016, 017, 018, 019, 0502, 0505, 0506
                                            mmtExno: "2284" || "",					//휴대전화2
                                            mtlno: "8675" || "",						//휴대전화3
                                            elcAdd: "ruddud2284@gmail.com" || "",						//이메일
                                            telZonNo: "010" || "",					//전화번호1
                                            exno: "2284" || "",							//전화번호2
                                            tlno: "8675" || "",							//전화번호3
                                            addDc: "002" || "",						//주소구분코드  001(직장), 002(자택), 003(기타주소), 004(외국거주지)
                                            rdnmPnadd: "충청남도 계룡시 엄사면 번영로 43" || "",				//주소1
                                            rdnmBpsnoAdd: "(경남무궁화아파트) 104동" || "",		//주소2
                                            rdnmBpsnoAdd2: "(경남무궁화아파트)" || "",		//주소3
                                            lpointMlRcvYn: "" || "N",		//마케팅수신동의 이메일
                                            lpointSmsRcvYn: "" || "N",	//마케팅수신동의 SMS
                                            lpointDmRcvYn: "" || "N",		//마케팅수신동의 DM
                                            lpointTmRcvYn: "" || "N",		//마케팅수신동의 TM
                                            mlRcvYn: "N" || "N",					//롯데렌터카 이메일
                                            smsRcvYn: "N" || "N",				//롯데렌터카 SMS
                                            lpointChoPrvList: {									//LPoint 선택 약관
                                                p1: {
                                                    prvDvC: "" || "",				//약관구분코드
                                                    prvAgYn: "" || "N",			//약관동의여부
                                                    prvAgChDtti: "" || ""	//약관동의변경일시
                                                },
                                                p2: {
                                                    prvDvC: "" || "",
                                                    prvAgYn: "" || "N",
                                                    prvAgChDtti: "" || ""
                                                }
                                            },
                                            ccoChoPrvList: {									//렌터카 선택 약관
                                                p1: {
                                                    prvDvC: "B1" || "",
                                                    prvAgYn: "N" || "N",
                                                    prvAgChDtti: "20240117103624" || ""
                                                },
                                                p2: {
                                                    prvDvC: "BQ" || "",
                                                    prvAgYn: "N" || "N",
                                                    prvAgChDtti: "20240117103624" || ""
                                                },
                                                p3: {
                                                    prvDvC: "BE" || "",
                                                    prvAgYn: "N" || "N",
                                                    prvAgChDtti: "20240117103624" || ""
                                                }
                                            }
                                        },
                                        esCustomer: {
                                            kunner: "116394668" || "",			//고객번호
                                            address: {
                                                zipcode: "32810" || "",	//우편번호
                                                detail01: "충청남도 계룡시 엄사면 번영로 43" || "",		//주소상세1
                                                detail02: "(경남무궁화아파트) 104동" || ""		//주소상세2
                                            },
                                            phone: "010-2284-8675" || "",			//전화번호
                                            license: {
                                                country: "" || "",		//면허구분 - 1(국내), 2(국외)
                                                type: "" || "",			//면허종류
                                                number: "" || "",		//면허번호
                                                pdate: "" || "",			//발급일
                                                edate: "" || "",			//만료일
                                                name: "" || ""			//운전면허이름
                                            }
                                        },
                                        esMarketing: {
                                            mpinfoyn: "N" || "N",     // [롯데멤버스] 마케팅 목적의 개인정보 수집 이용 동의
                                            mainfoyn: "N" || "N",     // [롯데멤버스] 마케팅 광고성 정보 수신이용동의
                                            lsmsyn: "N" || "N",          // [롯데멤버스] SMS수신동의
                                            lemlyn: "N" || "N",          // [롯데멤버스] EMAIL수신동의
                                            tpinfoyn: "N" || "N",     // [롯데멤버스] 마케팅 목적의 개인정보 제3자 제공 동의
                                            tainfoyn: "N" || "N",     // [롯데멤버스] 제공받는 자의 광고성 정보 수신 동의
                                            ltsmsyn: "N" || "N",       // [롯데멤버스] 제3자 SMS수신동의
                                            ltemlyn: "N" || "N"        // [롯데멤버스] 제3자 EMAIL수신동의
                                        }
                                    });
                                });
                                function moveNextFocus() {
                                    // 좌우 화살표나 탭, 역탭이면 무시..
                                    if (event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 9 || event.keyCode == 16) return;
                                    var src = event.srcElement;
                                    if (src.value.length == src.maxLength) {
                                        var obj = getNextObject(src);
                                        try {
                                            obj.focus();
                                            obj.select();
                                        }
                                        catch (e) { }
                                    }
                                }
                                function moveNextFocusEmail() {
                                    // 좌우 화살표나 탭, 역탭이면 무시..
                                    if (event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 9 || event.keyCode == 16) return;
                                    var src = event.srcElement;
                                    if (src.value.length == src.maxLength) {
                                        var obj = document.querySelector("#user-email-head");
                                        try {
                                            obj.focus();
                                            obj.select();
                                        }
                                        catch (e) { }
                                    }
                                }
                                function getNextObject(obj) {
                                    var f = document.forms[0];
                                    for (var i = 0; i < f.length; i++) {
                                        var item = f[i];
                                        if (obj == item) {
                                            try {
                                                return f[i + 1];
                                            }
                                            catch (e) { }
                                        }
                                    }
                                }
                            </script>
                        </div>
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
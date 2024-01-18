<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>이벤트메인</title>
    </head>
    <body>
        <h1>이벤트</h1>
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
            <meta name="title" lang="ko" content="진행중 이벤트 | 롯데렌터카 공식 웹사이트">
            <meta name="description" lang="ko" content="롯데렌터카의 다양한 이벤트를 만나보세요!">
            <meta name="og:url" content="https://www.lotterentacar.net/hp/kor/carLife/eventMain.do">
            <meta name="og:title" lang="ko" content="진행중 이벤트 | 롯데렌터카 공식 웹사이트">
            <meta name="og:description" lang="ko" content="롯데렌터카의 다양한 이벤트를 만나보세요!">
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
            <link rel="shortcut icon" href="/images/favicon.ico">
            <link rel="stylesheet" href="/styles/reset.css">
            <link rel="stylesheet" href="/styles/layout.css">
            <link rel="stylesheet" href="/styles/modules.css">
            <link rel="stylesheet" href="/styles/contents.css">
            <link rel="stylesheet"
                href="/styles/jquery.mCustomScrollbar.css">
            <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
            <script src="/lrhp/js/lib/html5shiv.js"></script>
            <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
            <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
            <script src="/lrhp/js/lib/clipboard.min.js"></script>
            <script src="/publish/js/md5.js?cb=e82f8a01-e504-449b-8e80-62a3435aa7fb"></script>
            <script src="/publish/js/cmmnUtil.js?cb=e82f8a01-e504-449b-8e80-62a3435aa7fb"></script>
            <!-- SSO 고도화 -->
            <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
            <script src='https://members.lpoint.com/api/js/json2.js'></script>
            <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
            <script src="/lrhp/js/sso/moment.js"></script>
            <script src="/lrhp/js/sso/odm-common.js"></script>
            <script src="/lrhp/js/sso/sso.rental.js?cb=e82f8a01-e504-449b-8e80-62a3435aa7fb"></script>
            <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=e82f8a01-e504-449b-8e80-62a3435aa7fb"></script>
            <script src="/lrhp/js/sso/api.rentcar.js?cb=e82f8a01-e504-449b-8e80-62a3435aa7fb"></script>
            <!-- Social Login -->
            <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
            <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
            <script src="/lrhp/js/social/social.rentacar.js?cb=e82f8a01-e504-449b-8e80-62a3435aa7fb"></script>
            <!-- kcb okcert -->
            <script src="/lrhp/js/kcb/okcert.rentcar.js"></script>
            <!-- lrhp 퍼블  -->
            <!-- <script src="/lrhp/pc/scripts/jquery/jquery-ui.min.js"></script> -->
            <script src="/lrhp/js/lib/jquery-ui.1.12.1.min.js"></script>
            <script src="/scripts/jquery/plugins/slick.min.js"></script>
            <script src="/scripts/jquery/plugins/swiper.min.js"></script>
            <script src="/scripts/jquery/plugins/iscroll.min.js"></script>
            <script src="/scripts/MUI.js"></script>
            <script src="/scripts/common.js"></script>
            <!-- lrhp 공통 -->
            <script src="/lrhp/js/common/gfn_var.js"></script>
            <script src="/lrhp/js/common/gfn_msg.js"></script>
            <script src="/lrhp/js/common/gfn_util.js?cb=e82f8a01-e504-449b-8e80-62a3435aa7fb"></script>
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

            <noscript>
                <img height="1" width="1"
                    src="https://www.facebook.com/tr?id=1001781240353375&ev=PageView&noscript=1" />
            </noscript>
            <!-- End Facebook Pixel Code -->

            <title>
                롯데렌터카
            </title>
      
 
        </head>
        <div id="loding_div"></div>

<noscript>
	<div style="display:inline;">
		<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/949402874/?value=0&amp;guid=ON&amp;script=0"/>
	</div>
</noscript>
        <body>
            <!-- HEADER s -->

            <!-- HEADER e //-->
            <!-- BODY s -->
            <input type="hidden" name="lastPageNoOnPageList" id="lastPageNoOnPageList" value="1" />
            <form id="defaultFrm" name="defaultFrm" action="/hp/kor/carLife/eventMain.do" method="get">
                <input id="pageIndex" name="pageIndex" values="1" type="hidden" value="1" />
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
                                        <a>진행중이벤트</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--카라이프-->
                    <div class="carLife-container">
                        <div class="inner-type2">
                            <section class="section-headline">
                                <h1 class="tit">롯데렌터카 이벤트</h1>
                                <p class="txt">롯데렌터카의 다양한 이벤트를 지금 바로 만나보세요!</p>
                                <!-- 페이지 타이틀 -->
                                <div class="tooltip-top-wrap tooltipToggle-top tooltip-site">
                                    <button type="button" class="btn btn-share tooltipOpenBtn-top"
                                        data-target="tooltipCont-top" data-on="true" data-siblings="false"><span
                                            class="icon share">공유하기</span></button>
                                </div>
                                <!-- //페이지 타이틀 -->
                            </section>
                            <!-- 탭 -->
                            <div class="tab-nav tab-normal">
                                <ul class="tab-col2">
                                    <li class="active">
                                        <button type="button" onclick="fnGoEventPage()">진행중 이벤트</button>
                                    </li>
                                    <li>
                                        <button type="button" onclick="fnWinnerEventPage()">당첨자 발표</button>
                                    </li>
                                </ul>
                            </div>
                            <!-- //탭 -->
                            <!-- 이벤트 리스트 -->
                            <div class="tab-cont tab-normal">
                                <div>
                                    <!-- 상단 정렬 -->
                                    <div class="sorting-box">
                                        <strong>총 <span class="txt-red txt-bold">5</span>개</strong>
                                        <select class="select-normal" name="listType" id="listType"
                                            onchange="changeListType()">
                                            <option value="ongoing" selected="selected">최근등록순</option>
                                            <option value="soonEnd">마감임박순</option>
                                            <option value="expired">지난이벤트</option>
                                        </select>
                                    </div>
                                    <!-- //상단 정렬 -->
                                    <ul class="grid-col3">
                                        <li>
                                            <a href="javascript:fnFormview('597')">
                                                <div class="thumb">
                                                    <img src="/atch/getImage.do?atchFileId=FILE0000000003357891&fileSn=0"
                                                        alt=""
                                                        onerror="this.src='/images/@temp-carLife-event01.png'">
                                                </div>
                                                <div class="desc">
                                                    <p class="tit">롯데렌터카 이용객 전용 eSIM최저가 이벤트</p>
                                                    <span class="date">2024.01.01 ~ 2024.12.31</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:fnFormview('596')">
                                                <div class="thumb">
                                                    <img src="/atch/getImage.do?atchFileId=FILE0000000003274949&fileSn=0"
                                                        alt=""
                                                        onerror="this.src='/images/@temp-carLife-event01.png'">
                                                </div>
                                                <div class="desc">
                                                    <p class="tit">대한민국 No.1 롯데렌터카와 베트남 No.1 골프 코스 스카이레이크 제...</p>
                                                    <span class="date">2023.12.01 ~ 2024.05.31</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:fnFormview('594')">
                                                <div class="thumb">
                                                    <img src="/atch/getImage.do?atchFileId=FILE0000000003212353&fileSn=0"
                                                        alt=""
                                                        onerror="this.src='/images/@temp-carLife-event01.png'">
                                                </div>
                                                <div class="desc">
                                                    <p class="tit">롯데렌터카에서 따듯한 커피와 함께 포근한 여행 되세요!</p>
                                                    <span class="date">2023.11.28 ~ 2024.02.29</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:fnFormview('590')">
                                                <div class="thumb">
                                                    <img src="/atch/getImage.do?atchFileId=FILE0000000003089053&fileSn=0"
                                                        alt=""
                                                        onerror="this.src='/images/@temp-carLife-event01.png'">
                                                </div>
                                                <div class="desc">
                                                    <p class="tit">공항철도 이용한다면 롯데렌터카 회원 전용 공항철도 열차특별할인</p>
                                                    <span class="date">2023.10.01 ~ 2024.03.31</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:fnFormview('582')">
                                                <div class="thumb">
                                                    <img src="/atch/getImage.do?atchFileId=FILE0000000002670541&fileSn=0"
                                                        alt=""
                                                        onerror="this.src='/images/@temp-carLife-event01.png'">
                                                </div>
                                                <div class="desc">
                                                    <p class="tit">롯데렌터카 회원전용 아이스크림 홈런 무료체험 이벤트</p>
                                                    <span class="date">2023.07.17 ~ 2024.07.16</span>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
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
                    <script src="/lrhp/js/web/hp/pc/carLife/eventMain.js?ver=e82f8a01-e504-449b-8e80-62a3435aa7fb"
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
      
            <style>
                #launcher {
                    display: none;
                }
            </style>
            
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
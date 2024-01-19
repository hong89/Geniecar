<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="kor">
    <head>
        <meta charset="utf-8">
        <!-- Search Engine Optimization START -->
        <meta name="title" lang="ko" content="단기렌터카 체크인 서비스 | 롯데렌터카 공식 웹사이트">
        <meta name="description" lang="ko"
            content="롯데렌터카의 온라인 체크인 서비스를 소개합니다. 지점에 방문하지 않고 온라인에서 간편하게 체크인하면 지점에서의 픽업 절차가 보다 간소해집니다.">
        <meta name="og:url" content="https://www.lotterentacar.net/hp/kor/reservation/shortInfo/checkIn.do">
        <meta name="og:title" lang="ko" content="단기렌터카 체크인 서비스 | 롯데렌터카 공식 웹사이트">
        <meta name="og:description" lang="ko"
            content="롯데렌터카의 온라인 체크인 서비스를 소개합니다. 지점에 방문하지 않고 온라인에서 간편하게 체크인하면 지점에서의 픽업 절차가 보다 간소해집니다.">
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
        <link rel="stylesheet" href="/styles/reset.css?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042">
        <link rel="stylesheet" href="/styles/layout.css?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042">
        <link rel="stylesheet" href="/styles/modules.css?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042">
        <link rel="stylesheet" href="/styles/contents.css?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042">
        <link rel="stylesheet"
            href="/styles/jquery.mCustomScrollbar.css?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042">
        <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
        <script src="/lrhp/js/lib/html5shiv.js"></script>
        <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
        <script src="/lrhp/js/lib/clipboard.min.js"></script>
        <script src="/publish/js/md5.js?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042"></script>
        <script src="/publish/js/cmmnUtil.js?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042"></script>
        <!-- SSO 고도화 -->
        <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
        <script src='https://members.lpoint.com/api/js/json2.js'></script>
        <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
        <script src="/lrhp/js/sso/moment.js"></script>
        <script src="/lrhp/js/sso/odm-common.js"></script>
        <script src="/lrhp/js/sso/sso.rental.js?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042"></script>
        <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042"></script>
        <script src="/lrhp/js/sso/api.rentcar.js?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042"></script>
        <!-- Social Login -->
        <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
        <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
        <script src="/lrhp/js/social/social.rentacar.js?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042"></script>
        <!-- kcb okcert -->
        <script src="/lrhp/js/kcb/okcert.rentcar.js"></script>
        <!-- lrhp 퍼블  -->
        <!-- <script src="/scripts/jquery/jquery-ui.min.js"></script> -->
        <script src="/lrhp/js/lib/jquery-ui.1.12.1.min.js"></script>
        <script src="/scripts/jquery/plugins/slick.min.js"></script>
        <script src="/scripts/jquery/plugins/swiper.min.js"></script>
        <script src="/scripts/jquery/plugins/iscroll.min.js"></script>
        <script src="/scripts/MUI.js"></script>
        <script src="/scripts/common.js"></script>
        <!-- lrhp 공통 -->
        <script src="/lrhp/js/common/gfn_var.js"></script>
        <script src="/lrhp/js/common/gfn_msg.js"></script>
        <script src="/lrhp/js/common/gfn_util.js?cb=f745001b-3c0d-406f-bb1a-dfecc4f13042"></script>
        <script src="/lrhp/js/common/gfn_sub.js"></script>
        <script src="/lrhp/js/common/gfn_com.js"></script>
        <script src="/scripts/jquery/plugins/jquery.mCustomScrollbar.concat.min.js"></script>
        <!-- swiper 및 기타 특수한 경우에 대한 공통 JS 호출 -->
        <script src="/lrhp/js/common/commonPc.js"></script>
        <title> 롯데렌터카</title>
        <script async src="https://www.googletagmanager.com/gtag/js?id=AW-11174693828"></script>
    </head>
    <div id="loding_div"></div>
    <body>
        <!-- HEADER s -->
        <!-- HEADER e //-->
        <!-- BODY s -->
        <main id="wrap">
            <div class="path-wrap">
                <div class="cover">
                    <div class="inner">
                        <ul>
                            <li>
                                <a href="">
                                    <span class="icon home">HOME</span>
                                </a>
                            </li>
                            <li>
                                <a href="">단기렌터카</a>
                            </li>
                            <li>
                                <a href="">서비스안내</a>
                            </li>
                            <li>
                                <a href="">체크인서비스</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 단기렌터카 -->
            <div class="short-container checkin-container">
                <div class="inner-type2">
                    <!-- 페이지 타이틀 -->
                    <section class="section-headline">
                        <h1 class="tit">체크인 서비스</h1>
                        <p class="txt">온라인 사전 체크인으로 지점 방문 시 빠른 차량 픽업이 가능합니다.</p>
                    </section>
                    <!-- //페이지 타이틀 -->
                    <div class="round-banner">
                        <p>
                            온라인에서 대여에 필요한 사항을 확인하고, 계약서 상 동의절차를 진행하여<br>
                            지점 도착 후 차량의 상태확인과 주요 안내를 받고 빠르게 픽업하여 차량 이용을 시작할 수 있습니다.
                        </p>
                    </div>
                    <section class="section-explain">
                        <div class="explain-header">
                            <h2 class="tit-size-big">서비스 안내</h2>
                        </div>
                        <div class="explain-cont">
                            <p class="txt">
                                롯데렌터카는 [여객자동차 운수사업법 시행규칙 제 67조]에 의거 15인승 이하 차량만 대여가 가능합니다.<br>
                                운전면허증에 원동기가 함께 기재되어 있는 경우 운전경력증명서를 지참하셔야 차량대여가 가능합니다.
                            </p>
                        </div>
                    </section>
                    <section class="section-explain-type2">
                        <div class="explain-header">
                            <h2 class="tit-size-big">온라인 절차 안내</h2>
                        </div>
                        <div class="explain-cont">
                            <ol class="process-list">
                                <li>
                                    <span class="num">01</span>
                                    <strong class="tit">예약 정보 확인</strong>
                                    <ul class="lst dot-type2 txt">
                                        <li>
                                            예약내역에서 사전체크인할<br>
                                            예약의 예약정보를 확인해 주세요.
                                        </li>
                                        <li>
                                            수정이 필요한 경우 예약수정을 통해<br>
                                            예약정보를 변경하시기 바랍니다.
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <span class="num">02</span>
                                    <strong class="tit">사전 체크인 시작</strong>
                                    <p class="txt">
                                        내용에 변경사항이 없는 경우<br>
                                        예약정보 하단의 사전체크인<br>
                                        버튼을 눌러 체크인을 시작하세요.
                                    </p>
                                </li>
                                <li>
                                    <span class="num">03</span>
                                    <strong class="tit">예약자 연락처 확인</strong>
                                    <ul class="lst dot-type2 txt">
                                        <li>
                                            대여 중 연락드릴 예약자 정보의<br>
                                            연락처를 확인해 주세요.
                                        </li>
                                        <li>
                                            대여기간 동안 사용하실 연락처가<br>
                                            변경된 경우연락처정보를<br>
                                            수정해주시기 바랍니다.
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <span class="num">04</span>
                                    <strong class="tit">추가 운전자 등록</strong>
                                    <ul class="lst dot-type2 txt">
                                        <li>
                                            대여 중 동승자와 함께 운전하는<br>
                                            경우 추가운전자 등록을 해주세요.
                                        </li>
                                        <li>
                                            추가운전자는 최대 2명<br>
                                            (제2운전자, 공동임차인)까지<br>
                                            등록이 가능합니다.
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <span class="num">05</span>
                                    <strong class="tit">이용자동의</strong>
                                    <ul class="lst dot-type2 txt">
                                        <li>
                                            사전체크인을 위한<br>
                                            이용자 동의를 해주세요.
                                        </li>
                                        <li>
                                            방문 전 미리 차량을 준비하기 위해<br>
                                            고객님의 예약정보와 <br>
                                            운전자정보 조회를 위한 동의입니다.
                                        </li>
                                    </ul>
                                </li>
                            </ol>
                        </div>
                    </section>
                    <section class="section-explain-type2">
                        <div class="explain-header">
                            <h2 class="tit-size-big">내륙 대여절차 안내</h2>
                        </div>
                        <div class="explain-cont">
                            <ol class="process-list">
                                <li>
                                    <span class="num">01</span>
                                    <strong class="tit">지점 방문</strong>
                                    <p class="txt">
                                        지점에 방문하면 직원에게<br>
                                        예약자명을 말씀해 주세요.
                                    </p>
                                </li>
                                <li>
                                    <span class="num">02</span>
                                    <strong class="tit">예약자 확인</strong>
                                    <p class="txt">
                                        예약사항을 확인 후, 면허증을<br>
                                        담당직원에게 제시해 주세요.
                                    </p>
                                </li>
                                <li>
                                    <span class="num">03</span>
                                    <strong class="tit">차량 안내</strong>
                                    <p class="txt">
                                        대여기간 및 차종, 옵션 등<br>
                                        최종 확인하세요.
                                    </p>
                                </li>
                                <li>
                                    <span class="num">04</span>
                                    <strong class="tit">차량 이용</strong>
                                    <p class="txt">
                                        직원의 안내에 따라 미리 준비된<br>
                                        차량의 상태 및 유류량 확인 후<br>
                                        바로 차량을 이용하세요.
                                    </p>
                                </li>
                            </ol>
                            <ul class="lst dot">
                                <li>롯데렌터카 홈페이지 또는 모바일웹/APP으로 예약하는 경우 결제를 완료하셔야 예약이 완료됩니다.</li>
                            </ul>
                        </div>
                    </section>
                    <section class="section-explain-type2">
                        <div class="explain-header">
                            <h2 class="tit-size-big">제주 대여절차 안내</h2>
                        </div>
                        <div class="explain-cont">
                            <ol class="process-list">
                                <li>
                                    <span class="num">01</span>
                                    <strong class="tit">롯데렌터카 제주공항 데스크 방문</strong>
                                    <p class="txt">
                                        제주공항에 도착하면 GATE 2에 위치한<br>
                                        롯데렌터카 데스크에 방문하여<br>
                                        제주도착을 알려 주세요.
                                    </p>
                                </li>
                                <li>
                                    <span class="num">02</span>
                                    <strong class="tit">롯데렌터카 셔틀버스 탑승</strong>
                                    <p class="txt">
                                        GATE 5번으로 나가셔서<br>
                                        셔틀버스 탑승장 1구역 중 4번에서<br>
                                        롯데렌터카 셔틀버스에 탑승하세요
                                    </p>
                                </li>
                                <li>
                                    <span class="num">03</span>
                                    <strong class="tit">지점도착 및 예약자 확인</strong>
                                    <p class="txt">
                                        롯데렌터카 제주오토하우스에<br>
                                        도착하면 직원에게<br>
                                        예약자명을 말씀해 주세요.
                                    </p>
                                </li>
                                <li>
                                    <span class="num">04</span>
                                    <strong class="tit">차량안내 및 이용</strong>
                                    <p class="txt">
                                        직원의 안내에 따라 주차장으로<br>
                                        이동하여 차량 상태 및 유류량을<br>
                                        확인 후 바로 차량을 이용하세요.
                                    </p>
                                </li>
                            </ol>
                            <div class="location-area">
                                <div class="location">
                                    <img alt="" src="/images/img-jejuAirport-location.png">
                                </div>
                                <div class="infos">
                                    <div class="infos-header">
                                        <dl>
                                            <div class="infos-header-row">
                                                <dt>제주공항 데스크 위치</dt>
                                                <dd>
                                                    <p>2번 게이트</p>
                                                    <!-- <div class="btns">
													<button type="button" class="btn-auto line-darkgrey">자세히 보기</button>
												</div> -->
                                                </dd>
                                            </div>
                                            <div class="infos-header-row">
                                                <dt>
                                                    셔틀버스 탑승장 위치
                                                </dt>
                                                <dd>
                                                    1구역 중 4번
                                                </dd>
                                            </div>
                                            <div class="infos-header-row">
                                                <dt>셔틀버스 운영시간 및 배차</dt>
                                                <dd>07:00 ~ 23:00 / 약 8분</dd>
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
                                                렌터카 하우스 1구역 중 4번에서 롯데렌터카 셔틀버스에 탑승하세요.
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
                </div>
            </div>
            <!--//단기렌터카-->
            <script src="/lrhp/js/web/hp/pc/contents/contentsPage.js?ver=f745001b-3c0d-406f-bb1a-dfecc4f13042"
                type="text/javascript"></script>
        </main>
        <!-- BODY e //-->
        <!-- FOOTER s -->
        <!-- FOOTER e //-->
    </body>
    </html>
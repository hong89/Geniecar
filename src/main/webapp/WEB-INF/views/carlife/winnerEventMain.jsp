<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        
        <html>
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
            <link rel="shortcut icon" href="/images/favicon.ico">
            <link rel="stylesheet" href="/styles/reset.css?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df">
            <link rel="stylesheet" href="/styles/layout.css?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df">
            <link rel="stylesheet" href="/styles/modules.css?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df">
            <link rel="stylesheet" href="/styles/contents.css?cb=2526ceea-a684-4cd7-b2fa-c6cff3f9d5df">
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
   
        
            <title>
                롯데렌터카
            </title>
        </head>
        <div id="loding_div"></div>
        
       
        <body>
            <!-- HEADER s -->
          
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
                      
                    </main>
            </form>
            <!-- BODY e //-->
       
            <style>
                #launcher {
                    display: none;
                }
            </style>
          
            <!-- pc TOP 버튼 시작  ----------------------------------------------------------->
            <div class="fixedRight noLauncher">
                <button type="button" class="btn btn-goTop" data-link-area="공통" data-link-name="하단"
                    data-link-text="TOP">탑으로</button>
            </div>
            <!-- pc TOP 버튼 종료  ----------------------------------------------------------->
           
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
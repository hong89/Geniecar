<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
        <html>
        <head>
            <meta charset="utf-8">
            <!-- Search Engine Optimization START -->
            <meta name="title" lang="ko" content="공지사항 및 뉴스 | 롯데렌터카 공식 웹사이트">
            <meta name="description" lang="ko" content="롯데렌터카의 최신 공지와 뉴스를 확인하세요.">
            <meta name="og:url" content="https://www.lotterentacar.net/hp/kor/info/noticeNewsMain.do">
            <meta name="og:title" lang="ko" content="공지사항 및 뉴스 | 롯데렌터카 공식 웹사이트">
            <meta name="og:description" lang="ko" content="롯데렌터카의 최신 공지와 뉴스를 확인하세요.">
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
            <link rel="stylesheet" href="/styles/reset.css?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581">
            <link rel="stylesheet" href="/styles/layout.css?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581">
            <link rel="stylesheet" href="/styles/modules.css?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581">
            <link rel="stylesheet" href="/styles/contents.css?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581">
            <link rel="stylesheet"
                href="/styles/jquery.mCustomScrollbar.css?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581">
            <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
            <script src="/lrhp/js/lib/html5shiv.js"></script>
            <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
            <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
            <script src="/lrhp/js/lib/clipboard.min.js"></script>
            <script src="/publish/js/md5.js?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581"></script>
            <script src="/publish/js/cmmnUtil.js?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581"></script>
            <!-- SSO 고도화 -->
            <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
            <script src='https://members.lpoint.com/api/js/json2.js'></script>
            <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
            <script src="/lrhp/js/sso/moment.js"></script>
            <script src="/lrhp/js/sso/odm-common.js"></script>
            <script src="/lrhp/js/sso/sso.rental.js?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581"></script>
            <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581"></script>
            <script src="/lrhp/js/sso/api.rentcar.js?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581"></script>
            <!-- Social Login -->
            <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
            <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
            <script src="/lrhp/js/social/social.rentacar.js?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581"></script>
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
            <script src="/lrhp/js/common/gfn_util.js?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581"></script>
            <script src="/lrhp/js/common/gfn_sub.js"></script>
            <script src="/lrhp/js/common/gfn_com.js"></script>
            <script src="/scripts/jquery/plugins/jquery.mCustomScrollbar.concat.min.js"></script>
            <!-- swiper 및 기타 특수한 경우에 대한 공통 JS 호출 -->
            <script src="/lrhp/js/common/commonPc.js"></script>
            <!-- Adobe Analytics (운영)-->
            <script src="https://assets.adobedtm.com/0d3d26a8f9f8/8ca38b3d4546/launch-eb7bb6609f87.min.js"
                async></script>
            <script src="/scripts/adobe_analytics_tagging.js?cb=f8261b9a-8a4c-47c8-8886-ec536dfa3581"></script>
            <!-- Adobe Analytics End -->
            <title>롯데렌터카</title>
            <script async src="https://www.googletagmanager.com/gtag/js?id=AW-11174693828"></script>
        </head>
        <div id="loding_div"></div>
        <body>
            <!-- HEADER s -->
            <!-- HEADER e //-->
            <!-- BODY s -->
            <input type="hidden" name="lastPageNoOnPageList" id="lastPageNoOnPageList" value="10" />
            <form id="defaultFrm" name="defaultFrm" action="/hp/kor/info/noticeNewsMain.do" method="get">
                <input id="pageIndex" name="pageIndex" values="1" type="hidden" value="1" />
                <input type="hidden" name="boardSeq" id="boardSeq" />
                <input type="hidden" name="boardCd" id="inpBoardCd" value="" />
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
                                        <a>고객지원</a>
                                    </li>
                                    <li>
                                        <a>공지사항</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--공지사항/뉴스-->
                    <div class="customer-container">
                        <div class="inner-type2">
                            <!-- 페이지 타이틀 -->
                            <section class="section-headline">
                                <h1 class="tit">공지사항</h1>
                                <div class="tooltip-top-wrap tooltipToggle-top tooltip-site">
                                    <button type="button" class="btn btn-share tooltipOpenBtn-top"
                                        data-target="tooltipCont-top" data-on="true" data-siblings="false"><span
                                            class="icon share">공유하기</span></button>
                                </div>
                            </section>
                            <!-- //페이지 타이틀 -->
                            <!-- 검색 -->
                            <div class="search-wrap">
                                <div class="select-box">
                                    <select class="selectbox" name="searchCondition" id="searchCondition">
                                        <option value="" selected="selected">전체</option>
                                        <option value="1">제목</option>
                                        <option value="2">내용</option>
                                    </select>
                                </div>
                                <div class="inputT srch-input-box">
                                    <input type="text" id="searchKeyword" name="searchKeyword" title="검색어 입력"
                                        placeholder="검색어를 입력해주세요." value="" onkeydown="Enter_Check()">
                                </div>
                                <button type="button" class="btn" onclick="javascript:fn_search();">검색</button>
                            </div>
                            <!-- //검색 -->
                            <!-- 공지사항 목록 -->
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
                                                    <a href="javascript:fnFormview('1088')">
                                                        <span class="flag">공지</span>
                                                        이용약관 변경에 대한 공지
                                                        <span class="icon data-new">new</span>
                                                    </a>
                                                </td>
                                                <td>
                                                    2024.01.16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="javascript:fnFormview('1087')">
                                                        <span class="flag">공지</span>
                                                        2024 대한민국 퍼스트브랜드 대상 20년 연속 수상
                                                    </a>
                                                </td>
                                                <td>
                                                    2024.01.09
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="javascript:fnFormview('1086')">
                                                        <span class="flag">공지</span>
                                                        수탁사 변경에 따른 개인정보 처리방침 변경에 대한 공지
                                                    </a>
                                                </td>
                                                <td>
                                                    2023.12.14
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="javascript:fnFormview('1085')">
                                                        <span class="flag">공지</span>
                                                        IoT서비스 명칭 변경 및 롯데렌탈회원(자체회원) 도입에 따른 개인정보 처리방침 및 이용약...
                                                    </a>
                                                </td>
                                                <td>
                                                    2023.11.16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="javascript:fnFormview('1084')">
                                                        <span class="flag">공지</span>
                                                        개인정보 처리방침 변경에 대한 공지
                                                    </a>
                                                </td>
                                                <td>
                                                    2023.10.31
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="javascript:fnFormview('1083')">
                                                        <span class="flag">공지</span>
                                                        인재채용 개인정보 처리방침 변경에 대한 공지
                                                    </a>
                                                </td>
                                                <td>
                                                    2023.10.30
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="javascript:fnFormview('1082')">
                                                        <span class="flag">공지</span>
                                                        브랜드명칭 변경에 따른 개인정보 처리방침 및 이용약관 변경 공지
                                                    </a>
                                                </td>
                                                <td>
                                                    2023.10.18
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="javascript:fnFormview('1081')">
                                                        <span class="flag">공지</span>
                                                        롯데카드 시스템 작업에 따른 서비스 중단 안내
                                                    </a>
                                                </td>
                                                <td>
                                                    2023.10.11
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="javascript:fnFormview('1080')">
                                                        <span class="flag">공지</span>
                                                        방문/전화권유판매원의 신원확인 및 연락금지 요구권 안내
                                                    </a>
                                                </td>
                                                <td>
                                                    2023.10.11
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="javascript:fnFormview('1079')">
                                                        <span class="flag">공지</span>
                                                        롯데렌터카 서비스 브랜드 변경 및 모바일 앱 통합 공지
                                                    </a>
                                                </td>
                                                <td>
                                                    2023.10.10
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- //게시판 -->
                                <div class="pagination-wrap">
                                    <button type="button" class="btn btn-paging-prev" onclick="previewBoardView()"
                                        disabled>이전 페이지로 이동</button>
                                    <div class="pagination-list">
                                        <strong title="현재 페이지">1</strong>/<em>10</em>
                                    </div>
                                    <button type="button" class="btn btn-paging-next" onclick="nextBoardView()">다음 페이지로
                                        이동</button>
                                </div>
                            </div>
                            <!-- //공지사항 목록 -->
                        </div>
                    </div>
                    <!--//공지사항/뉴스-->
                    <script src="/lrhp/js/web/hp/pc/info/noticeNewsMain.js?ver=f8261b9a-8a4c-47c8-8886-ec536dfa3581"
                        type="text/javascript"></script>
                </main>
            </form>
            <!-- BODY e //-->
            <!-- FOOTER s -->
            <!-- FOOTER e //-->
        </body>
    </html>
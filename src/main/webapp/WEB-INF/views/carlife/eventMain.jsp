<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <html>
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
            <link rel="stylesheet" href="/styles/jquery.mCustomScrollbar.css">
            <script src="/lib/jquery-1.12.4.min.js"></script>
            <script src="/lib/html5shiv.js"></script>
            <script src="/lib/jquery.bxslider.js"></script>
            <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
            <script src="/lib/clipboard.min.js"></script>
            <!-- lrhp 퍼블  -->
            <!-- <script src="/lrhp/pc/scripts/jquery/jquery-ui.min.js"></script> -->
            <script src="/lib/jquery-ui.1.12.1.min.js"></script>
            <script src="/scripts/jquery/plugins/slick.min.js"></script>
            <script src="/scripts/jquery/plugins/swiper.min.js"></script>
            <script src="/scripts/jquery/plugins/iscroll.min.js"></script>
            <script src="/scripts/MUI.js"></script>
            <script src="/scripts/common.js"></script>
            <!-- lrhp 공통 -->
            <script src="/common/gfn_var.js"></script>
            <script src="/common/gfn_msg.js"></script>
            <script src="/common/gfn_util.js?cb=e82f8a01-e504-449b-8e80-62a3435aa7fb"></script>
            <script src="/common/gfn_sub.js"></script>
            <script src="/common/gfn_com.js"></script>
            <script src="/lrhp/pc/scripts/jquery/plugins/jquery.mCustomScrollbar.concat.min.js"></script>
            <!-- swiper 및 기타 특수한 경우에 대한 공통 JS 호출 -->
            <script src="/common/commonPc.js"></script>
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
            <input type="hidden" name="lastPageNoOnPageList" id="lastPageNoOnPageList" value="1" />
            <form id="defaultFrm" name="defaultFrm" action="/carLife/eventMain.do" method="get">
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
                                            <a href="javascript:fnFormview('594')">
                                                <div class="thumb">
                                                    <img alt="" />
                                                    <%--<img src="/atch/getImage.do?atchFileId=FILE0000000003212353&fileSn=0"
                                                         alt=""
                                                         onerror="this.src='/images/@temp-carLife-event01.png'">--%>
                                                </div>
                                                <div class="desc">
                                                    <p class="tit">롯데렌터카에서 따듯한 커피와 함께 포근한 여행 되세요!</p>
                                                    <span class="date">2023.11.28 ~ 2024.02.29</span>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- //이벤트 리스트 -->
                        </div>
                    </div>
                </main>
            </form>
            <!-- BODY e //-->
         
        </body>
    </html>
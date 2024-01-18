<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>롯데렌터카</title>
</head>
<body>
<header class="header">
    <nav class="header-nav">
        <div class="inner">
            <div class="nav-wrap">
                <div>
                    <a href="/hp/kor/main/index.do">
                        <img src="/lrhp/pc/images/common/logo-header.png" alt="대한민국 No1.롯데렌터카"/>
                    </a>
                </div>
                <ul>
                    <li>
                        <a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-01"
                           data-on="true" data-siblings="true" id="T2FN01" data-link-area="GNB" data-link-name="단기렌터카"
                           data-link-text="단기렌터카">단기렌터카</a>
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
                           data-on="true" data-siblings="true" id="T2FN07" data-link-area="GNB" data-link-name="차방정"
                           data-link-text="차방정">차방정</a>
                    </li>
                    <li>
                        <a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-06"
                           data-on="true" data-siblings="true" id="T2FN05" data-link-area="GNB" data-link-name="고객지원"
                           data-link-text="고객지원">고객지원</a>
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
                                               data-link-area="GNB" data-link-name="빠른예약" data-link-text="내륙예약">내륙예약</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/reservation/index.do?areaFlag=6" target="_self"
                                               data-link-area="GNB" data-link-name="빠른예약" data-link-text="제주예약">제주예약</a>
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
                                               data-link-area="GNB" data-link-name="단기렌터카 상품" data-link-text="월단기 렌터카">월단기
                                                렌터카</a>
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
                                               data-link-area="GNB" data-link-name="단기렌터카 안내" data-link-text="체크인 서비스">체크인
                                                서비스</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/reservation/shortInfo/service.do" target="_self"
                                               data-link-area="GNB" data-link-name="단기렌터카 안내" data-link-text="부가서비스안내">부가서비스안내</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/reservation/shortInfo/benefits.do" target="_self"
                                               data-link-area="GNB" data-link-name="단기렌터카 안내" data-link-text="회원혜택 안내">회원혜택
                                                안내</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <div class="draw-toggle-cont draw-cont-02">
                    <div class="detail-layer-in">
                        <ul class="layer-gnb list-type-col4">
                        </ul>
                    </div>
                </div>
                <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <div class="draw-toggle-cont draw-cont-03">
                    <div class="detail-layer-in">
                        <ul class="layer-gnb list-type-col4">
                        </ul>
                    </div>
                </div>
                <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <div class="draw-toggle-cont draw-cont-04">
                    <div class="detail-layer-in">
                        <ul class="layer-gnb list-type-col4">
                        </ul>
                    </div>
                </div>
                <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <div class="draw-toggle-cont draw-cont-05">
                    <div class="detail-layer-in">
                        <ul class="layer-gnb list-type-col4">
                        </ul>
                    </div>
                </div>
                <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <div class="draw-toggle-cont draw-cont-06">
                    <div class="detail-layer-in">
                        <ul class="layer-gnb list-type-col4">
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
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <p><a onclick="startChatbot()"
                                      id="T2FN0501" target="_blank"
                                      data-link-area="GNB" data-link-name="고객센터"
                                      data-link-text="고객센터">고객센터</a></p>
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
                                           data-link-area="GNB" data-link-name="빠른예약" data-link-text="내륙예약">내륙예약</a>
                                    </li>
                                    <li>
                                        <a href="/hp/kor/reservation/index.do?areaFlag=6" target="_self"
                                           data-link-area="GNB" data-link-name="빠른예약" data-link-text="제주예약">제주예약</a>
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
                                           data-link-area="GNB" data-link-name="단기렌터카 상품" data-link-text="월단기 렌터카">월단기
                                            렌터카</a>
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
                                           data-link-area="GNB" data-link-name="단기렌터카 안내" data-link-text="대여 및 요금안내">대여
                                            및 요금안내</a>
                                    </li>
                                    <li>
                                        <a href="/hp/kor/reservation/shortInfo/checkIn.do" target="_self"
                                           data-link-area="GNB" data-link-name="단기렌터카 안내" data-link-text="체크인 서비스">체크인
                                            서비스</a>
                                    </li>
                                    <li>
                                        <a href="/hp/kor/reservation/shortInfo/service.do" target="_self"
                                           data-link-area="GNB" data-link-name="단기렌터카 안내" data-link-text="부가서비스안내">부가서비스안내</a>
                                    </li>
                                    <li>
                                        <a href="/hp/kor/reservation/shortInfo/benefits.do" target="_self"
                                           data-link-area="GNB" data-link-name="단기렌터카 안내" data-link-text="회원혜택 안내">회원혜택
                                            안내</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <ul class="menu-box-1depth-list">
                    </ul>
                    <ul class="menu-box-1depth-list">
                    </ul>
                    <ul class="menu-box-1depth-list">
                    </ul>
                    <ul class="menu-box-1depth-list">
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
                                </ul>
                            </div>
                        </li>
                        <li>
                            <p><a onclick="startChatbot()"
                                  id="T2FN0501" target="_blank"
                                  data-link-area="GNB" data-link-name="고객센터"
                                  data-link-text="고객센터">고객센터</a></p>
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
                                        <a href="/hp/kor/carLife/winnerEventMain.do" target="_self" data-link-area="GNB"
                                           data-link-name="이벤트" data-link-text="당첨자발표">당첨자발표</a>
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
                            <p><a href="/hp/kor/login/login.do?returnurl=/hp/kor/main/index.do" data-link-area="GNB"
                                  data-link-name="로그인" data-link-text="로그인">로그인</a></p>
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
</body>
</html>
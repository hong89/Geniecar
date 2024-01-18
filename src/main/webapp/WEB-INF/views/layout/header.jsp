<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>롯데렌터카</title>
</head>
<body>
헤더
<%--<header class="header">
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
                                            <a href="/hp/kor/reservation/driverInclude/info.do" target="_self"
                                               data-link-area="GNB" data-link-name="단기렌터카 상품" data-link-text="기사포함 렌터카">기사포함
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
                    </div>
                </div>
                <!-- //헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <!-- 헤더 2뎁스 메뉴 - 렌터카 예약 - 로그인 했을때 -->
                <div class="draw-toggle-cont draw-cont-04">
                    <div class="detail-layer-in">
                        <ul class="layer-gnb list-type-col4">
                            <li>
                                <p><a href="/hp/kor/bizcar/index.do" data-link-area="GNB" data-link-name="비즈카 온라인 견적"
                                      data-link-text="비즈카 온라인 견적">비즈카 온라인 견적</a></p>
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
                                               data-link-area="GNB" data-link-name="점검/정비" data-link-text="점검/정비 정보">점검/정비
                                                정보</a>
                                        </li>
                                        <li>
                                            <a href="/hp/kor/cbj/service/repairAbout.do" target="_self"
                                               data-link-area="GNB" data-link-name="점검/정비" data-link-text="방문점검 안내">방문점검
                                                안내</a>
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
                                        <a href="/hp/kor/reservation/driverInclude/info.do" target="_self"
                                           data-link-area="GNB" data-link-name="단기렌터카 상품" data-link-text="기사포함 렌터카">기사포함
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
                            <p><a href="/hp/kor/sinchajang/estimate.do" data-link-area="GNB" data-link-name="다이렉트 견적"
                                  data-link-text="다이렉트 견적">다이렉트 견적</a></p>
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
                                           data-link-area="GNB" data-link-name="신차 장기렌터카 안내" data-link-text="개인 장기렌터카">개인
                                            장기렌터카</a>
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
                                        <a href="/hp/kor/usedCar/longTerm/info.do" target="_self" data-link-area="GNB"
                                           data-link-name="중고차 장기렌터카 안내" data-link-text="중고차 렌트서비스 안내 ">중고차 렌트서비스
                                            안내 </a>
                                    </li>
                                    <li>
                                        <a href="/hp/kor/usedCar/succession/info.do" target="_self" data-link-area="GNB"
                                           data-link-name="중고차 장기렌터카 안내" data-link-text="렌터카 승계 안내">렌터카 승계 안내</a>
                                    </li>
                                    <li>
                                        <a href="/hp/kor/usedCar/sellmycar/info.do" target="_self" data-link-area="GNB"
                                           data-link-name="중고차 장기렌터카 안내" data-link-text="내차 팔기 서비스 안내">내차 팔기 서비스 안내</a>
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
                            <p><a href="/hp/kor/cbj/service/repairInfo.do" data-link-area="GNB" data-link-name="점검/정비"
                                  data-link-text="점검/정비">점검/정비</a></p>
                            <div class="layer-gnb-list">
                                <ul>
                                    <li>
                                        <a href="/hp/kor/cbj/service/repairInfo.do" target="_self" data-link-area="GNB"
                                           data-link-name="점검/정비" data-link-text="점검/정비 정보">점검/정비 정보</a>
                                    </li>
                                    <li>
                                        <a href="/hp/kor/cbj/service/repairAbout.do" target="_self" data-link-area="GNB"
                                           data-link-name="점검/정비" data-link-text="방문점검 안내">방문점검 안내</a>
                                    </li>
                                    <li>
                                        <a href="/hp/kor/cbj/service/repairShop.do" target="_self" data-link-area="GNB"
                                           data-link-name="점검/정비" data-link-text="인증 정비소">인증 정비소</a>
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
                                        <a href="/hp/kor/info/globalBranchArea.do" target="_self" data-link-area="GNB"
                                           data-link-name="지점안내" data-link-text="해외 지점">해외 지점</a>
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
</header>--%>
</body>
</html>
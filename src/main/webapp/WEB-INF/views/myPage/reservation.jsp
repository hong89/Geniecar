<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
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
        <link rel="stylesheet" href="/lrhp/pc/styles/reset.css?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3">
        <link rel="stylesheet" href="/lrhp/pc/styles/layout.css?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3">
        <link rel="stylesheet" href="/lrhp/pc/styles/modules.css?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3">
        <link rel="stylesheet" href="/lrhp/pc/styles/contents.css?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3">
        <link rel="stylesheet"
            href="/lrhp/pc/styles/jquery.mCustomScrollbar.css?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3">
        <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
        <script src="/lrhp/js/lib/html5shiv.js"></script>
        <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
        <script src="/lrhp/js/lib/clipboard.min.js"></script>
        <script src="/publish/js/md5.js?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3"></script>
        <script src="/publish/js/cmmnUtil.js?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3"></script>
        <!-- SSO 고도화 -->
        <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
        <script src='https://members.lpoint.com/api/js/json2.js'></script>
        <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
        <script src="/lrhp/js/sso/moment.js"></script>
        <script src="/lrhp/js/sso/odm-common.js"></script>
        <script src="/lrhp/js/sso/sso.rental.js?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3"></script>
        <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3"></script>
        <script src="/lrhp/js/sso/api.rentcar.js?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3"></script>
        <!-- Social Login -->
        <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
        <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
        <script src="/lrhp/js/social/social.rentacar.js?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3"></script>
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
        <script src="/lrhp/js/common/gfn_util.js?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3"></script>
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
        <!-- Adobe Analytics (운영)-->
        <script src="https://assets.adobedtm.com/0d3d26a8f9f8/8ca38b3d4546/launch-eb7bb6609f87.min.js" async></script>
        <script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=db3d4375-0cb2-4028-9c9a-cec295a441b3"></script>
        <!-- Adobe Analytics End -->
        <!-- Adobe Analytics (temp)-->
        <!-- <script src="https://assets.adobedtm.com/0d3d26a8f9f8/8ca38b3d4546/launch-eb7bb6609f87.min.js" async></script> -->
        <title>롯데렌터카</title>
    </head>
    <div id="loding_div"></div>
    <body>
        <!-- HEADER s-->
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
                                    <a href="/hp/kor/myPage/coupon.do" class="underline"
                                        id="myCommonRentalCoupon">0장</a>
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
                                    <a href="/hp/kor/myPage/carSeller.do" class="underline"
                                        id="commonMyCarSellCount">0건</a>
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
                                    <a href="/hp/kor/myPage/reservationMonth.do" data-link-area="마이페이지"
                                        data-link-name="메뉴" data-link-text="월간단기렌터카 예약">월간단기렌터카 예약</a>
                                </li>
                                <li>
                                    <a href="/hp/kor/myPage/reservationDriver.do" data-link-area="마이페이지"
                                        data-link-name="메뉴" data-link-text="기사포함단기렌터카 예약">기사포함단기렌터카 예약 </a>
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
                                            <a
                                                href="javascript:_rentMembers.page.href('/myPage/member/leave.do');">회원탈퇴</a>
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
                        <div class="mypage-body">
                            <div class="mypage-body-cont">
                                <div class="mypage-body-cont-header">
                                    <div class="tit-area">
                                        <h4 class="tit">단기렌터카 예약</h4>
                                    </div>
                                    <div class="indicator-area">
                                        <ul class="menu-list">
                                            <li>
                                                <input type="radio" id="reservat01" name="reservat" value="all"
                                                    checked="checked" data-link-area="마이페이지" data-link-name="단기렌터카 예약"
                                                    data-link-text="전체">
                                                <label for="reservat01">전체</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="reservat02" name="reservat" value="결제대기"
                                                    data-link-area="마이페이지" data-link-name="단기렌터카 예약"
                                                    data-link-text="결제대기">
                                                <label for="reservat02">결제대기</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="reservat03" name="reservat" value="예약완료"
                                                    data-link-area="마이페이지" data-link-name="단기렌터카 예약"
                                                    data-link-text="예약완료">
                                                <label for="reservat03">예약완료</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="reservat04" name="reservat" value="이용중"
                                                    data-link-area="마이페이지" data-link-name="단기렌터카 예약"
                                                    data-link-text="이용중">
                                                <label for="reservat04">이용중</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="reservat05" name="reservat" value="이용완료"
                                                    data-link-area="마이페이지" data-link-name="단기렌터카 예약"
                                                    data-link-text="이용완료">
                                                <label for="reservat05">이용완료</label>
                                            </li>
                                            <li>
                                                <input type="radio" id="reservat06" name="reservat" value="취소"
                                                    data-link-area="마이페이지" data-link-name="단기렌터카 예약"
                                                    data-link-text="취소">
                                                <label for="reservat06">취소</label>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="nodata-card bg-card">
                                    <h3 class="tit">국내 차량 보유수 1위! 롯데렌터카</h3>
                                    <p class="txt">이용중인 렌터카 차량이 없습니다.</p>
                                    <div class="btn-box">
                                        <button type="button" class="btn btn-red"
                                            onclick="location.href = '/hp/kor/reservation/index.do?mnCd=T2FN0101';"
                                            data-link-area="마이페이지" data-link-name="단기렌터카 예약"
                                            data-link-text="제주/내륙 렌터카 예약하기">제주/내륙 렌터카 예약하기</button>
                                    </div>
                                </div>
                                <ul class="lst dot txt-color-red">
                                    <li>최근 90일 이내 예약건만 확인이 가능합니다.</li>
                                    <li>90일 이전 예약내역은 고객센터(1588-1230)로 문의해주시기 바랍니다.</li>
                                </ul>
                            </div>
                            <!-- //.mypage-body-cont -->
                        </div>
                        <!-- //.mypage-body -->
                        <!-- 지점안내 레이어-->
                        <!-- 레이어명 // 열리고 닫는 이벤트용 -->
                        <div class="layer-wrap layer-popup layer-mypage layer-sel-branch"
                            style="top: 0px; left: 142px; opacity: 0;">
                            <div class="pop-inner">
                                <div class="popup-top">
                                    <h4 id="vkgrpTx">강남지점안내</h4>
                                    <button type="button" class="layer-popup-close" data-layer="layer-sel-branch"><span
                                            class="icon pop-close">닫기 버튼</span></button>
                                </div>
                                <div class="popup-cont layer-iscroll" style="height: 664px; overflow-y: auto;">
                                    <div class="iscroll-in">
                                        <div class="map">
                                            <div class="cover" id="layer-sel-branch-map"
                                                style="width: 100%; height: 500px; position: relative; overflow: hidden;">
                                            </div>
                                            <dl class="infos">
                                                <dt>영업시간</dt>
                                                <dd id="workInterval"></dd>
                                                <dt>전화번호</dt>
                                                <dd id="workTel"></dd>
                                                <dt>주소</dt>
                                                <dd id="workAddr1"></dd>
                                                <dd id="workAddr2"></dd>
                                                <dt id="workNoticeTitl">공지사항</dt>
                                                <dd id="workNotice"></dd>
                                                <dt id="workEventTitl">이벤트</dt>
                                                <dd id="workEvent"></dd>
                                            </dl>
                                            <div class="swiper-container selBranchSwiper">
                                                <ul class="swiper-wrapper" id="branchImgSwiper">
                                                </ul>
                                                <div class="selBranchSwiper-pagination"></div>
                                                <!-- navigation buttons  -->
                                                <!-- <div class="selBranchSwiper-button-prev">
						<span class="icon swiper-prev"></span>
					</div>
					<div class="selBranchSwiper-button-next">
						<span class="icon swiper-next"></span>
					</div> -->
                                                <!-- // navigation buttons  -->
                                            </div>
                                        </div>
                                        <div class="popup-cont-bot-btns">
                                            <button type="button" class="btn btn-white layer-popup-close"
                                                data-layer="layer-sel-branch">확인</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 지점안내 레이어-->
                        <script type="text/javascript"
                            src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ea7w6if99d&submodules=geocoder"></script>
                        <script src="/lrhp/js/web/hp/pc/myPage/reservation.js?ver=db3d4375-0cb2-4028-9c9a-cec295a441b3"
                            type="text/javascript"></script>
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
        <!-- BODY e //-->
        <!-- FOOTER s -->
        <!-- FOOTER e //-->
    </body>
</html>
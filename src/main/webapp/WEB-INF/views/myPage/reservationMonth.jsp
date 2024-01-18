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
        <link rel="stylesheet" href="/lrhp/pc/styles/reset.css?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871">
        <link rel="stylesheet" href="/lrhp/pc/styles/layout.css?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871">
        <link rel="stylesheet" href="/lrhp/pc/styles/modules.css?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871">
        <link rel="stylesheet" href="/lrhp/pc/styles/contents.css?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871">
        <link rel="stylesheet"
            href="/lrhp/pc/styles/jquery.mCustomScrollbar.css?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871">
        <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
        <script src="/lrhp/js/lib/html5shiv.js"></script>
        <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
        <script src="/lrhp/js/lib/clipboard.min.js"></script>
        <script src="/publish/js/md5.js?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871"></script>
        <script src="/publish/js/cmmnUtil.js?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871"></script>
        <!-- SSO 고도화 -->
        <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
        <script src='https://members.lpoint.com/api/js/json2.js'></script>
        <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
        <script src="/lrhp/js/sso/moment.js"></script>
        <script src="/lrhp/js/sso/odm-common.js"></script>
        <script src="/lrhp/js/sso/sso.rental.js?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871"></script>
        <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871"></script>
        <script src="/lrhp/js/sso/api.rentcar.js?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871"></script>
        <!-- Social Login -->
        <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
        <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
        <script src="/lrhp/js/social/social.rentacar.js?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871"></script>
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
        <script src="/lrhp/js/common/gfn_util.js?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871"></script>
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
        <script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=71a31adc-d1d3-49e9-be3a-4903d0b25871"></script>
        <title>롯데렌터카</title>
    </head>
    <div id="loding_div"></div>
    <body>
        <!-- HEADER s -->
        <!-- HEADER e -->
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
                        <div class="mypage-body-cont">
                            <div class="mypage-body-cont-header">
                                <div class="tit-area">
                                    <h4 class="tit">월간단기렌터카 예약</h4>
                                </div>
                                <div class="indicator-area">
                                    <ul class="menu-list">
                                        <li>
                                            <input type="radio" id="reservat01" name="searchKeyword" value="all"
                                                data-link-area="마이페이지" data-link-name="월간단기렌터카 예약" data-link-text="전체"
                                                checked="checked">
                                            <label for="reservat01">전체</label>
                                        </li>
                                        <li>
                                            <input type="radio" id="reservat02" name="searchKeyword" value="결제대기"
                                                data-link-area="마이페이지" data-link-name="월간단기렌터카 예약"
                                                data-link-text="결제대기">
                                            <label for="reservat02">결제대기</label>
                                        </li>
                                        <li>
                                            <input type="radio" id="reservat03" name="searchKeyword" value="계약완료"
                                                data-link-area="마이페이지" data-link-name="월간단기렌터카 예약"
                                                data-link-text="예약완료">
                                            <label for="reservat03">계약완료</label>
                                        </li>
                                        <li>
                                            <input type="radio" id="reservat04" name="searchKeyword" value="이용중"
                                                data-link-area="마이페이지" data-link-name="월간단기렌터카 예약" data-link-text="이용중">
                                            <label for="reservat04">이용중</label>
                                        </li>
                                        <li>
                                            <input type="radio" id="reservat05" name="searchKeyword" value="이용완료"
                                                data-link-area="마이페이지" data-link-name="월간단기렌터카 예약"
                                                data-link-text="이용완료">
                                            <label for="reservat05">이용완료</label>
                                        </li>
                                        <li>
                                            <input type="radio" id="reservat06" name="searchKeyword" value="취소"
                                                data-link-area="마이페이지" data-link-name="월간단기렌터카 예약" data-link-text="취소">
                                            <label for="reservat06">취소</label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="infos-section">
                                <div class="result-none">
                                    월간단기렌터카 예약 내역이 없습니다.
                                </div>
                            </div>
                            <ul class="lst dot txt-color-red">
                                <li>최근 90일 이내 예약건만 확인이 가능합니다.</li>
                                <li>90일 이전 예약내역은 고객센터(1588-1230)로 문의해주시기 바랍니다.</li>
                            </ul>
                            <div class="btn-box">
                                <input type="hidden" id="vbeln" value="">
                                <a href="#" onclick="gfn_goContract({'search_no': ''});" class="btn-wide btn-white"
                                    data-link-area="마이페이지" data-link-name="월간단기렌터카 예약" data-link-text="계약서조회 바로가기">계약서
                                    조회 바로가기</a>
                            </div>
                        </div>
                        <script
                            src="/lrhp/js/web/hp/pc/myPage/reservationMonth.js?ver=71a31adc-d1d3-49e9-be3a-4903d0b25871"
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
        <!-- FOOTER s -->
        <!-- FOOTER e //-->
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
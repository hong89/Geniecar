<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <!-- Search Engine Optimization START -->
        <meta name="title" lang="ko" content="월단 단기 렌터카 온라인 상담 신청 | 롯데렌터카 공식 웹사이트">
        <meta name="description" lang="ko" content="이용 지역과 차량 등급별로 원하시는 차량을 선택하세요. 차량별 월비용 즉시 확인 가능.">
        <meta name="og:url"
            content="https://www.lotterentacar.net/hp/kor/reservation/shortMonth/reservationMonthApply.do">
        <meta name="og:title" lang="ko" content="월단 단기 렌터카 온라인 상담 신청 | 롯데렌터카 공식 웹사이트">
        <meta name="og:description" lang="ko" content="이용 지역과 차량 등급별로 원하시는 차량을 선택하세요. 차량별 월비용 즉시 확인 가능.">
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
        <link rel="stylesheet" href="/lrhp/pc/styles/reset.css?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba">
        <link rel="stylesheet" href="/lrhp/pc/styles/layout.css?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba">
        <link rel="stylesheet" href="/lrhp/pc/styles/modules.css?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba">
        <link rel="stylesheet" href="/lrhp/pc/styles/contents.css?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba">
        <link rel="stylesheet"
            href="/lrhp/pc/styles/jquery.mCustomScrollbar.css?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba">
        <script src="/lrhp/js/lib/jquery-1.12.4.min.js"></script>
        <script src="/lrhp/js/lib/html5shiv.js"></script>
        <script src="/lrhp/js/lib/jquery.bxslider.js"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script>
        <script src="/lrhp/js/lib/clipboard.min.js"></script>
        <script src="/publish/js/md5.js?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba"></script>
        <script src="/publish/js/cmmnUtil.js?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba"></script>
        <!-- SSO 고도화 -->
        <script src='https://members.lpoint.com/api/js/serialize.object.js'></script>
        <script src='https://members.lpoint.com/api/js/json2.js'></script>
        <script src='https://members.lpoint.com/api/js/lotte.sso.api.js'></script>
        <script src="/lrhp/js/sso/moment.js"></script>
        <script src="/lrhp/js/sso/odm-common.js"></script>
        <script src="/lrhp/js/sso/sso.rental.js?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba"></script>
        <script src="/lrhp/js/sso/sso.rentacar.v2.js?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba"></script>
        <script src="/lrhp/js/sso/api.rentcar.js?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba"></script>
        <!-- Social Login -->
        <script src="/lrhp/js/social/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
        <script src="/lrhp/js/social/kakao.min.v1.39.7.js"></script>
        <script src="/lrhp/js/social/social.rentacar.js?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba"></script>
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
        <script src="/lrhp/js/common/gfn_util.js?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba"></script>
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
        <script src="/lrhp/pc/scripts/adobe_analytics_tagging.js?cb=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba"></script>
        <!-- Adobe Analytics End -->
        <title>롯데렌터카</title>
        <script async src="https://www.googletagmanager.com/gtag/js?id=AW-11174693828"></script>
    </head>
    <div id="loding_div"></div>
    <body>
        <!-- HEADER s -->
        <!-- HEADER e //-->
        <!-- BODY s -->
        <form id="frm" name="frm" method="post" action="/hp/kor/reservation/shortMonth/reservationMonthComplete.do">
            <input type="hidden" name="reqer" id="reqer" value="" />
            <input type="hidden" name="equnr" id="equnr" value="" />
            <input type="hidden" name="cstmrNo" id="cstmrNo" value="" />
            <input type="hidden" name="tId" id="tId" value="" />
            <input type="hidden" id="sessionMemberNo" name="member_no" value="116394668" />
            <input type="hidden" name="proid" value="" />
            <!-- <input type="hidden" name="regist_branch_code" value="0002243" />	          -->
            <input type="hidden" name="member_div_code" value="" /><!-- 회원등급(A6510:일반회원) -->
            <input type="hidden" name="LicenseDiv" value="">
            <input type="hidden" value="N" name="katr6">
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
                                    <a>단기렌터카</a>
                                </li>
                                <li>
                                    <a>월단기렌터카</a>
                                </li>
                                <li>
                                    <a>서비스신청</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--월간 렌터카-->
                <div class="short-container">
                    <div class="inner-type2">
                        <!-- 페이지 타이틀 -->
                        <section class="section-headline">
                            <h1 class="tit">상담 <span class="txt-color-brown">신청</span></h1>
                        </section>
                        <!-- //페이지 타이틀 -->
                        <!-- 진행 단계 -->
                        <div class="section-top">
                            <ol class="step-list">
                                <li class="active">
                                    <span class="icon complete"></span>
                                    <p class="txt">상담작성</p>
                                </li>
                                <li>
                                    <span class="icon progress"></span>
                                    <p class="txt">작성완료</p>
                                </li>
                            </ol>
                        </div>
                        <!-- //진행 단계 -->
                        <p class="txt-color-red align-r mb-20">* 는 필수입력 항목입니다.</p>
                        <fieldset>
                            <section class="section-form">
                                <div class="form-header">
                                    <h2 class="tit-size-mid">예약자 정보입력</h2>
                                </div>
                                <div class="form-cont">
                                    <div class="row type2">
                                        <label for="input02" class="input-tit">이름<span class="txt-red">*</span></label>
                                        <div class="input-cont">
                                            <div class="inputT">
                                                <input type="text" id="name" name="name" value="홍경영"
                                                    placeholder="이름을 입력하세요" readonly="readonly">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row type2">
                                        <label for="input02" class="input-tit">연락처<span class="txt-red">*</span></label>
                                        <div class="input-cont">
                                            <div class="inputT">
                                                <input type="text" id="tel" name="tel" value="010-2284-8675"
                                                    placeholder="휴대전화 (-없이) 입력 하세요" readonly="readonly">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row type2">
                                        <label for="emailAddr1" class="input-tit">이메일 <span
                                                class="txt-red">*</span></label>
                                        <div class="inputT">
                                            <input type="text" id="emailAddr1" name="EMAILADDR1" title="이메일 정보 입력하세요."
                                                value="ruddud2284" placeholder="이메일 정보 입력하세요.">
                                        </div>
                                        <em class="at">@</em>
                                        <div class="inputT">
                                            <input type="text" id="emailAddr2" name="EMAILADDR2" value="gmail.com"
                                                title="이메일 종류 선택">
                                        </div>
                                        <div class="select-box">
                                            <select class="selectbox" name="emailList" id="emailList">
                                                <option value="">직접입력</option>
                                                <option value="hanmail.net">hanmail.net</option>
                                                <option value="naver.com">naver.com</option>
                                                <option value="nate.com">nate.com</option>
                                                <option value="gmail.com" selected="selected">gmail.com</option>
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
                                    <div class="row type2">
                                        <label for="" class="input-tit">사용목적 <span class="txt-red">*</span></label>
                                        <div class="textarea">
                                            <span class="txt_must"
                                                style="top:0; margin-top:-22px; color:#a9a9a9; font-size:13px">글자수
                                                (<span id="testCount">0</span> / 200)</span>
                                            <textarea name="REQMAT" id="reqmat" cols="30" rows="10"
                                                onkeyup="gfn_chkword(this, 200)"
                                                placeholder="차량 사용 목적을 입력해주세요."></textarea>
                                            <!-- <textarea name="REQMAT" id="reqmat" cols="30" rows="10" placeholder="차량 사용 목적을 입력하세요"></textarea> -->
                                        </div>
                                    </div>
                                    <div class="row type2">
                                        <label for="rentArea" class="input-tit">희망 대여 지역 <span
                                                class="txt-red">*</span></label>
                                        <div class="select-area">
                                            <select class="selectbox" name="rentArea" id="rentArea" title="희망대여지점">
                                                <option value="" selected="selected">희망지역(시/도)선택</option>
                                                <option value="1">서울 </option>
                                                <option value="2">인천/경기/강원</option>
                                                <option value="3">대전/충청/세종</option>
                                                <option value="4">광주/전라</option>
                                                <option value="5">대구/부산/울산/경상</option>
                                                <option value="6">제주도</option>
                                            </select>
                                            <select class="selectbox" name="rentPlace" id="rentPlace" title="희망대여지점"
                                                disabled>
                                                <option selected="selected" value="">희망지역(구/시)선택</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <section class="section-form">
                                <div class="form-header">
                                    <h2 class="tit-size-mid">개인정보 수집이용동의</h2>
                                    <input type="hidden" id="agreeChk3" name="agreeChk3" value="">
                                </div>
                                <!-- 20201217 : 마크업 변경(약관 공통화) -->
                                <div class="form-cont agree-area agreeAccor">
                                    <div class="row">
                                        <div class="agree-header">
                                            <div class="agree-header-top">
                                                <div class="chk-icon-box type-circle">
                                                    <input type="checkbox" name="agree1" id="agree1" value="1"
                                                        onClick="agreementCheck(this);">
                                                    <label for="agree1">
                                                        전체동의
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="agree-header-cont">
                                                <ul class="lst dot txt-color-red">
                                                    <li>전체동의는 필수 및 선택항목에 대한 동의도 포함되어 있으며, 개별적으로도 동의를 선택하실 수 있습니다.</li>
                                                    <li>선택항목에 대한 동의를 거부하시는 경우에도 서비스는 이용이 가능합니다.</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="agree-body">
                                            <ul>
                                                <li>
                                                    <div class="agree-body-header policyArea">
                                                        <div class="chk-icon-box">
                                                            <input type="checkbox" id="agree2" name="agree2" value="2"
                                                                onchange="agreementCheck(this);">
                                                            <label for="agree2" id="policy-title-12">
                                                                약관명
                                                            </label>
                                                        </div>
                                                        <button type="button" class="btnToggle "
                                                            data-target="policy-toggleCont12" data-on="true"
                                                            data-siblings="false">
                                                            자세히
                                                        </button>
                                                    </div>
                                                    <div class="agree-body-cont toggleCont policy-toggleCont12 "
                                                        style="display:none;">
                                                        <section class="provisionWrap">
                                                            <!-- <h1>개인정보 수집 및 이용 동의(필수)</h1> -->
                                                            <p class="tit"><strong>본인은 롯데렌탈㈜가 아래의 내용과 같이 본인의 개인정보를 수집 ·
                                                                    이용하는데 동의합니다.</strong></p>
                                                            <ul class="agree-list-type1">
                                                                <li><strong>개인정보의 수집 및 이용 목적</strong>
                                                                    <ul class="agree-list-type2">
                                                                        <li class="nodot"><i
                                                                                class="ico-point"></i><strong
                                                                                class="t-highlight">롯데렌터카 장기대여 견적신청,
                                                                                견적회신 및 상담, 장기대여 계약의 체결 · 이행 · 관리, 신청서비스
                                                                                제공, 본인여부 확인, 분쟁 및 민원 처리</strong></li>
                                                                    </ul>
                                                                </li>
                                                                <li><strong>수집하는 개인정보 항목</strong>
                                                                    <ul class="agree-list-type2">
                                                                        <li class="nodot"><i class="ico-point"></i>성명,
                                                                            휴대전화, 이메일주소, 지역</li>
                                                                    </ul>
                                                                </li>
                                                                <li><strong class="t-highlight">개인정보 보유 및 이용 기간</strong>
                                                                    <ul class="agree-list-type2">
                                                                        <li class="nodot"><i
                                                                                class="ico-point"></i><strong
                                                                                class="t-highlight">동의일로부터 1년</strong>
                                                                        </li>
                                                                        <li class="texRed">귀하는 동의를 거부할 권리가 있으나, 위 사항에
                                                                            동의하지 않으실 경우 롯데렌터카 견적신청, 견적회신 또는 상담 등이 불가능 할
                                                                            수 있음을 알려드립니다.</li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </section>
                                                    </div>
                                                </li>
                                                <div id="nomember_agree" style="display: none;">
                                                    <li>
                                                        <div class="agree-body-header policyArea">
                                                            <div class="chk-icon-box">
                                                                <input type="checkbox" id="agree3" name="agree3"
                                                                    value="3" onchange="agreementCheck(this);">
                                                                <label for="agree3" id="policy-title-13">
                                                                    약관명
                                                                </label>
                                                            </div>
                                                            <button type="button" class="btnToggle "
                                                                data-target="policy-toggleCont13" data-on="true"
                                                                data-siblings="false">
                                                                자세히
                                                            </button>
                                                        </div>
                                                        <div class="agree-body-cont toggleCont policy-toggleCont13 "
                                                            style="display:none;">
                                                            <section class="provisionWrap">
                                                                <!-- <h1>마케팅 · 광고 · 홍보 등 활용을 위한 개인정보 수집 및 이용 동의(선택)</h1> -->
                                                                <p class="tit"><strong>본인은 롯데렌탈㈜가 아래의 내용과 같이 신상품(서비스) 안내
                                                                        등을 위하여 본인의 개인정보를 수집 · 이용하는데 동의합니다.</strong></p>
                                                                <ul class="agree-list-type1">
                                                                    <li><strong class="t_udl">개인정보의 수집 및 이용 목적</strong>
                                                                        <ul class="agree-list-type2">
                                                                            <li><strong class="t_udl">롯데렌탈㈜의 신상품(서비스)
                                                                                    소개, 프로모션 및 이벤트 안내</strong></li>
                                                                        </ul>
                                                                    </li>
                                                                    <li><strong>수집하는 개인정보 항목</strong>
                                                                        <ul class="agree-list-type2">
                                                                            <li>성명, 휴대전화, 이메일주소, 지역</li>
                                                                        </ul>
                                                                    </li>
                                                                    <li><strong class="t_udl">개인정보 보유 및 이용 기간</strong>
                                                                        <ul class="agree-list-type2">
                                                                            <li><strong class="t_udl">동의일로부터 1년</strong>
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                                <p>※ 귀하는 동의를 거부할 권리가 있으나, 위 사항에 동의하지 않으실 경우 신상품(서비스)소개,
                                                                    이벤트 안내 등에 따른 혜택의 제한이 있을 수 있습니다.<br>
                                                                    그 밖의 롯데렌터카 견적신청 등과 관련된 불이익은 없습니다.</p>
                                                            </section>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="agree-body-header policyArea">
                                                            <div class="chk-icon-box">
                                                                <input type="checkbox" id="agree4" name="agree4"
                                                                    value="4" onclick="agreementCheck(this);">
                                                                <label for="agree4" id="policy-title-19">
                                                                    마케팅 광고성 정보 수신 동의(선택)
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </div>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <div class="btn-area">
                                <a href="javascript:history.back();" class="btn btn-white" data-link-area="월간 렌터카"
                                    data-link-name="상담작성" data-link-text="취소">취소</a>
                                <button type="button" class="btn btn-red" onclick="noSelectCarApply()"
                                    data-link-area="월간 렌터카" data-link-name="상담작성" data-link-text="다음">다음</button>
                            </div>
                        </fieldset>
                    </div>
                </div>
                <!-- //월간 렌터카 -->
            </main>
        </form>
        <script
            src="/lrhp/js/web/hp/pc/reservationMonth/reservationMonthApply.js?ver=cf5160eb-19c6-4daf-aee7-2e2ee7bf28ba"
            type="text/javascript"></script>
        <!-- BODY e //-->
        <!-- FOOTER s -->
        <!-- FOOTER e //-->
    </body>
    </html>
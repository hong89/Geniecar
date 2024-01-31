<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    .breadcrumb-item a {
        text-decoration: none;
        color: #41087c;
    }

    .mypage-header {
        background-color: #41087c;
        color: #f8f7fd;
    }

    ul {
        list-style: none;
    }

    .btn-goLink {
        color: #f8f7fd;
    }

    .underline {
        color: #f8f7fd;
    }

    aside {
        width: 300px;
        background-color: #f8f7fd;
    }

    aside .nav-link {

        color: #41087c;
    }
    form span{
        color: red;
    }
</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;

                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    addr = addr + extraAddr;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipCode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addressDetail").focus();
            }
        }).open();
    }

    function oninputPhone(target) {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
    }
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute top-0 end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">마이페이지</li>
            </ol>
        </nav>
    </div>

    <div id="mypageheader" class="mb-5">
        <section class="text-center pb-4">
            <h1 class="fw-bolder">마이페이지</h1>
            <p>지니카 회원을 위한 다양한 혜택이 준비되어 있습니다.</p>
        </section>
        <section class="mypage-header p-5">
            <div id="myInfos-area">
                <div class="border-bottom mb-5 row">
                    <h3 class="mb-4 col">
                        <strong class="name" id='commonMemberName'>${member.name}님</strong>
                        <span>일반회원&nbsp;</span>
                    </h3>
                    <div class="text-end col">
                        <a href="/mypage/license.do" class="btn-goLink me-3">운전면허증</a>
                    </div>
                </div>
                <ul class="row text-center">
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel02.png">
                        <p>포인트</p>
                        <a href="/mypage/point.do" class="underline" id="myCommonRentalPoint">0</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel03.png">
                        <p>할인쿠폰</p>
                        <a href="/mypage/coupon.do" class="underline" id="myCommonRentalCoupon">0장</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel05.png">
                        <p>결제 내역</p>
                        <a href="/mypage/carSeller.do" class="underline"
                           id="commonMyCarSellCount">0건</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel06.png">
                        <p>렌터카 상담</p>
                        <a href="/mypage/rentCarConsulting.do" class="underline"
                           id="commonRentalConsultCount">0건</a>
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <div class="d-flex flex-row bd-highlight mb-3">
        <aside class="p-3 fs-5">
            <ul class="nav flex-column">
                <li class="nav-item mb-4">
                    <a href="/mypage/reservation.do" class="nav-link" data-link-area="마이페이지"
                       data-link-name="메뉴" data-link-text="단기렌터카 예약">단기렌터카 예약</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/reservationMonth.do" class="nav-link" data-link-area="마이페이지"
                       data-link-name="메뉴" data-link-text="월간단기렌터카 예약">월간단기렌터카 예약</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/rentCarConsulting.do" class="nav-link">렌터카 상담 </a>
                </li>

                <li class="nav-item mb-4">
                    <a href="/mypage/point.do" class="nav-link">포인트</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/coupon.do" class="nav-link">할인쿠폰</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/license.do" class="nav-link">운전면허증</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/customer/question.do" class="nav-link">1:1 고객센터</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="#" class="nav-link">회원</a>
                    <ul>
                        <li class="nav-item mb-4">
                            <a href="/mypage/member/modify.do" class="nav-link">회원정보 변경</a>
                        </li>
                        <li class="nav-item mb-4">
                            <a href="/mypage/member/password.do" class="nav-link">비밀번호 변경</a>
                        </li>
                        <li class="nav-item mb-4">
                            <a href="/mypage/member/leave.do" class="nav-link">회원탈퇴</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </aside>
        <article class="p-5 container-fluid">
            <div class="border-bottom pb-5">
                <h2 class="fw-bolder">회원정보 변경</h2>
            </div>
            <form action ="/mypage/member/domodify.do" method="post">
                <p class="text-end"><span>*는 필수입력입니다.</span></p>
                <div class="p-4 mb-5" style="background-color: #f8f7fd; color: #23093d;">
                    <h4 class="fw-bolder">회원 정보입력</h4>
                </div>
                <div class="row p-1 m-2">
                    <div class="col-2">
                        <label for="name" class="col-form-label">이름<span>*</span></label>
                    </div>
                    <div class="col-auto">
                        <p class="form-control border-0">${member.name}</p>
                    </div>
                </div>
                <div class="row p-1 m-2">
                    <div class="col-2">
                        <label for="id" class="col-form-label">아이디<span>*</span></label>
                    </div>
                    <div class="col-auto">
                        <p class="form-control border-0">${member.id}</p>
                        <input type="hidden" name="id" value="${member.id}" >
                    </div>
                </div>
                <div class="row p-1 m-2">
                    <div class="col-2">
                        <label for="id" class="col-form-label">생년월일<span>*</span></label>
                    </div>
                    <div class="col-auto">
                        <p class="form-control border-0" ><fmt:formatDate value="${member.birthday}" pattern="yyyy-MM-dd" /></p>
                    </div>
                </div>
                <div class="row p-1 m-2">
                    <div class="col-2">
                        <label for="hp" class="col-form-label">전화 번호<span>*</span></label>
                    </div>
                    <div class="col-6">
                        <input type="text" id="hp" name="hp" class="form-control" oninput="oninputPhone(this)" maxlength="13" value="${member.hp}">
                    </div>
                </div>
                <div class="row p-1 m-2">
                    <div class="col-2">
                        <label for="zipCode" class="col-form-label">   </label>
                    </div>
                    <div class="col-6 row ">
                        <input type="button" class="btn text-white col-auto ms-3 me-1" style="background: #41087c;"
                                    onclick="execDaumPostcode()" value="우편번호 찾기">
                        <input type="text" id="zipCode" name="zipCode" class="form-control col" value="${member.zipCode}" readonly="readonly">
                    </div>
                </div>
                <div class="row p-1 m-2">
                    <div class="col-2">
                        <label for="address" class="col-form-label">주소<span>*</span></label>
                    </div>
                    <div class="col-6">
                        <input type="text" id="address" name="address" class="form-control" value="${member.address}" readonly="readonly">
                    </div>
                </div>
                <div class="row p-1 m-2">
                    <div class="col-2">
                        <label for="addressDetail" class="col-form-label">   </label>
                    </div>
                    <div class="col-6">
                        <input type="text" id="addressDetail" name="addressDetail" class="form-control"
                             value="${member.addressDetail}">
                    </div>
                </div>
                <div class="d-flex justify-content-center mt-4">
                    <button class="btn me-2" style="border:1px solid #41087c;">취소</button> <button  class="btn text-white" style="background-color: #41087c;">수정</button>
                </div>
            </form>
        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

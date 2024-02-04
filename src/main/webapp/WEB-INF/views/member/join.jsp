<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <style>
        .join-container>div {
            padding: 10px;
        }
        
    </style>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        
        $(function () {
            window.onpageshow = function (event) {
                if (event.persisted) {
                    window.location.reload();
                }
            };
        })

        $(function () {
            const checkAllTerms = document.querySelector("#checkAllTerms");
            let checkTerm = document.querySelectorAll("[name=checkTerm]");
            const agreements = {
                termsOfService: false,
                privacyPolicy: false,
            };
            checkAllTerms.addEventListener('click', (e) => {
                const { checked } = e.target;
                if (checked) {
                    checkTerm.forEach((item) => {
                        item.checked = true;
                        agreements[item.id] = true;
                    });
                } else {
                    checkTerm.forEach((item) => {
                        item.checked = false;
                        agreements[item.id] = false;
                    });
                }
            });
            checkTerm.forEach((item) => item.addEventListener('input', toggleCheckbox));
            function toggleCheckbox(e) {
                const { checked , id } = e.target;
                agreements[id] = checked;
                checkAllStatus();
            }
            function checkAllStatus() {
                const { termsOfService, privacyPolicy} = agreements;
                if (termsOfService && privacyPolicy) {
                    checkAllTerms.checked = true;
                } else {
                    checkAllTerms.checked = false;
                }
            }
        })
        $(function() {
            $('[id=nextBtn]').click(function () {
                var checkTerms = $('input:checkbox[id="checkAllTerms"]:checked').val();
                if(checkTerms == null||checkTerms != 'on'){
                    alert("이용 약관에 동의해주세요.");
                    return false;
                } else {
                    document.getElementById("1").style.display ='none';
                    document.getElementById("3").style.display ='block';
                    return false;
                }
            });

            $('[id=backBtn]').click(function () {
                document.getElementById("3").style.display ='none';
                document.getElementById("1").style.display ='block';
            
            });
        })
        $(function () {
            $('#submitBtn').click(function () {
                var pw = $('[name=pw]').val();
                var pwCheck = $('[name=pwCheck]').val();
                var name = $('[name=name]').val();
                var gender = $('input:radio[name="gender"]:checked').val();
                var birthday = $('[name=birthday]').val();
                var hp = $('[name=hp]').val();
                var zipCode = $('[name=zipCode]').val();
                var address = $('[name=address]').val();
                var addressDetail = $('[name=addressDetail]').val();

                if (!$.trim($('[name=id]').val())) {
                    alert('아이디를 중복체크 해주세요.');
                    return false;
                } else if (pw == '' || pw == null) {
                    alert("비밀번호를 입력해주세요");
                    return false;
                } else if (pwCheck == '' || pwCheck == null) {
                    alert("비밀번호 확인을 입력해주세요");
                    return false;
                } else if (pw != pwCheck) {
                    alert("비밀번호가 일치하지 않습니다.");
                    return false;
                } else if (name == '' || name == null) {
                    alert("이름을 입력해주세요");
                    return false;
                } else if (gender == null) {
                    alert("성별을 입력해주세요");
                    return false;
                } else if (birthday == '' || birthday == null) {
                    alert("생일을 입력해주세요");
                    return false;
                } else if (hp == '' || hp == null) {
                    alert("전화번호를 입력해주세요");
                    return false;
                } else if (zipCode == '' || zipCode == null) {
                    alert("우편번호를 입력해주세요");
                    return false;
                }else if (address == '' || address == null) {
                    alert("주소를 입력해주세요");
                    return false;
                }else if (addressDetail == '' || addressDetail == null) {
                    alert("나머지 주소를 입력해주세요");
                    return false;
                }
                $('[name=doJoin]').submit();
            });
        })
        
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

        function fn_overlapped() {
            var _id = $("#_id").val();
            if (_id == '') {
                alert("ID를 입력해주세요");
                return;
            }
            $.ajax({
                type: "post",
                async: false,
                url: "/member/overlapped.do",
                dataType: "text",
                data: { id: _id },
                success: function (data, Status) {
                    if (data == "false") {
                        alert("사용할 수 있는 ID입니다.");
                        $('#btnOverlapped').prop("disabled", true);
                        $('#_id').prop("disabled", true);
                        $('#id').val(_id);
                    } else {
                        alert("이미 사용 중인 아이디 입니다.");
                    }
                },
                error: function (data, Status) {
                    alert("에러가 발생했습니다.");
                }
            });
        }

        function oninputPhone(target) {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/(^02.{0}|^01.{1}|[0-9]{2,3})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
        }

        
    </script>
    <div class="container-xl">
        <!--------------------------------------------------상단---------------------------------------------------------->

            <h1 class="mt-3 mb-4 text-center fw-bolder">회원가입</h1>
            <div id="1" style="display:block" class="p-3">
                <section class = "mb-3 d-flex justify-content-center">
                    <ul class="list-group list-group-horizontal ">
                        <li class="list-group-item border-0 d-flex align-items-center flex-column bd-highlight mb-3">
                            <img src="/images/icons/ico-chk-on.png" width="50" class="p-2 bd-highlight">약관 동의
                        </li>
                        <li class="list-group-item border-0 d-flex align-items-center flex-column bd-highlight mb-3">
                            <img src="/images/icons/ico-chk-off.png" width="50" class="p-2 bd-highlight">정보입력
                        </li>
                        <li class="list-group-item border-0 d-flex align-items-center flex-column bd-highlight mb-3">
                            <img src="/images/icons/ico-chk-off.png" width="50" class="p-2 bd-highlight">회원가입 완료
                        </li>
                    </ul>
                </section>
                <section class="ps-4 pe-4">
                    <div class="p-4 mb-5" style="background-color: #f8f7fd; color: #23093d; ">
                        <h4 class="fw-bolder ps-3">서비스 약관 동의</h4>
                    </div>
                    <div class = "me-2 mb-3">
                        <input type="checkbox" id ="checkAllTerms" >
                        <label for="checkAllTerms" class="col-form-label fs-5">전체동의</label>
                    </div>
                    <div class="accordion" id="accordionExample">
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <input type="checkbox" class="me-2" name="checkTerm" id="termsOfService"><strong>회원사 약관(필수)</strong>
                            </button>
                          </h2>
                          <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                              <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                            </div>
                          </div>
                        </div>
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" >
                                <input type="checkbox" class="me-2" name="checkTerm" id="privacyPolicy"><strong>필수입력정보 수집동의(필수)</strong>
                            </button>
                          </h2>
                          <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                              <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                            </div>
                          </div>
                        </div>

                    </div>
                    <div class="position-relative mb-5 pb-5">
                        <div class="position-absolute top-100 start-50 translate-middle">
                            <button type="button" class="btn" style="border: 1px solid #41087c; width: 110px;" onclick="history.back()">취소</button>
                            <button id ="nextBtn" class="btn text-white" style="background-color: #41087c; width: 110px;">다음</button>
                        </div>
                    </div>
                </section>
            </div>
            <div id="3" style="display:none" class="p-3">
                <div class = "mb-3 d-flex justify-content-center">
                    <ul class="list-group list-group-horizontal ">
                        <li class="list-group-item border-0 d-flex align-items-center flex-column bd-highlight mb-3">
                            <img src="/images/icons/ico-chk-on.png" width="50" class="p-2 bd-highlight">약관 동의
                        </li>
                        <li class="list-group-item border-0 d-flex align-items-center flex-column bd-highlight mb-3">
                            <img src="/images/icons/ico-chk-on.png" width="50" class="p-2 bd-highlight">정보입력
                        </li>
                        <li class="list-group-item border-0 d-flex align-items-center flex-column bd-highlight mb-3">
                            <img src="/images/icons/ico-chk-off.png" width="50" class="p-2 bd-highlight">회원가입 완료
                        </li>
                    </ul>
                </div>
                <div class="p-4 mb-5" style="background-color: #f8f7fd; color: #23093d; ">
                    <h4 class="fw-bolder ps-3">회원 정보입력</h4>
                </div>
                <form action="/member/completeJoin.do" method="post" autocomplete="on">
                    <div class="row g-3 align-items-center join-container">
                        <div class="col-2"></div>
                        <div class="col-2">
                            <label for="id" class="col-form-label">아이디</label>
                        </div>
                        <div class="col-auto">
                            <input type="text" id="_id" class="form-control">
                            <input type="hidden" name="id" id="id" />
                        </div>
                        <div class="col-2">
                            <button type="button" class="btn text-white" onClick="fn_overlapped()"
                                style="background: #41087c; width: 110px;">중복확인</button>
                        </div>
                    </div>

                    <div class="row g-3 align-items-center join-container">
                        <div class="col-2"></div>
                        <div class="col-2">
                            <label for="pw" class="col-form-label">비밀번호</label>
                        </div>
                        <div class="col-auto">
                            <input type="password" id="pw" name="pw" class="form-control"
                                aria-describedby="passwordHelpInline">
                        </div>
                        <div class="col-auto">
                            <span id="passwordHelpInline" class="form-text">
                                8~20자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.
                            </span>
                        </div>
                    </div>
                    <div class="row g-3 align-items-center join-container">
                        <div class="col-2"></div>
                        <div class="col-2">
                            <label for="pwCheck" class="col-form-label">비밀번호 확인</label>
                        </div>
                        <div class="col-auto">
                            <input type="password" id="pwCheck" name="pwCheck" class="form-control">
                        </div>
                    </div>
                    <div class="row g-3 align-items-center join-container">
                        <div class="col-2"></div>
                        <div class="col-2">
                            <label for="name" class="col-form-label">이름</label>
                        </div>
                        <div class="col-auto">
                            <input type="text" id="name" name="name" class="form-control">
                        </div>
                    </div>
                    <div class="row g-3 align-items-center join-container">
                        <div class="col-2"></div>
                        <div class="col-2">
                            <label class="col-form-label">성별</label>
                        </div>
                        <div class="col-auto">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" value="M">
                                <label class="form-check-label">M</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" value="F">
                                <label class="form-check-label">F</label>
                            </div>
                        </div>
                    </div>
                    <div class="row g-3 align-items-center join-container">
                        <div class="col-2"></div>
                        <div class="col-2">
                            <label for="birthday" class="col-form-label">생년월일</label>
                        </div>
                        <div class="col-auto">
                            <input type="date" id="birthday" name="birthday" class="form-control">
                        </div>
                    </div>
                    <div class="row g-3 align-items-center join-container">
                        <div class="col-2"></div>
                        <div class="col-2">
                            <label for="hp" class="col-form-label">전화번호</label>
                        </div>
                        <div class="col-auto">
                            <input type="text" id="hp" name="hp" class="form-control" oninput="oninputPhone(this)" maxlength="13">
                        </div>
                    </div>

                    <div class="row g-3 align-items-center join-container">
                        <div class="col-2"></div>
                        <div class="col-2">
                            <label for="zipCode" class="col-form-label">주소</label>
                        </div>
                        <div class="col-auto row">
                            <input type="button" class="btn text-white col-4 me-1" style="background: #41087c;"
                                onclick="execDaumPostcode()" value="우편번호 찾기"><input type="address" id="zipCode"
                                name="zipCode" class="form-control col" readonly="readonly">
                        </div>
                    </div>
                    <div class="row g-3 align-items-center join-container">
                        <div class="col-2"></div>
                        <div class="col-2">
                            <label for="address" class="col-form-label"></label>
                        </div>
                        <div class="col-auto">
                            <input type="address" id="address" name="address" class="form-control" readonly="readonly">
                        </div>
                    </div>
                    <div class="row g-3 align-items-center join-container">
                        <div class="col-2"></div>
                        <div class="col-2">
                            <label for="addressDetail" class="col-form-label"></label>
                        </div>
                        <div class="col-auto">
                            <input type="address" id="addressDetail" name="addressDetail" class="form-control">
                        </div>
                    </div>
                    <div class="position-relative mb-5 pb-5">
                        <div class="col-4"></div>
                        <div class="position-absolute top-100 start-50 translate-middle">
                            <button type="button" class="btn" style="border: 1px solid #41087c; width: 110px;" id="backBtn">뒤로가기</button>
                            <button type="submit" class="btn text-white" id="submitBtn" style="background: #41087c; width: 110px;">가입하기</button>
                        </div>
                    </div>
                </form>
            </div>


        <!--------------------------------------------------하단---------------------------------------------------------->
    </div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <html>

            <head>
                <meta charset="UTF-8">
                <title>복사해서 사용하세요</title>
                <!-- 추가 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                    crossorigin="anonymous">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                    crossorigin="anonymous"></script>
                <!-- 스타일 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
                    crossorigin="anonymous">
                <!-- 자바스크립트 -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
                    integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
                    crossorigin="anonymous"></script>

                <!-- 공통 css 파일 -->
                <link rel="stylesheet" type="text/css" href="/styles/content.css" />
                <!-- 제이쿼리 -->
                <script src="https://code.jquery.com/jquery-3.7.1.js"></script>


                <style>
                    .join-container>div {
                        padding: 10px;
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

                    function fn_overlapped() {
                        var _id = $("#_id").val();
                        if (_id == '') {
                            alert("ID를 입력하세요");
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
                                    alert("사용할 수 없는 ID입니다.");
                                }
                            },
                            error: function (data, Status) {
                                alert("에러가 발생했습니다.");
                            }
                        });
                    }

                    $(function () {
                        $('#submitBtn').click(function () {
                            var pw = $('[name=pw]').val();
                            var pwCheck = $('[name=pwCheck]').val();
                            var name = $('[name=name]').val();
                            var gender = $('input:radio[name="gender"]:checked').val();
                            var birthday = $('[name=birthday]').val();
                            var hp = $('[name=hp]').val();
                            var zipCode = $('[name=zipCode]').val();
                            
                            if (!$.trim($('[name=id]').val())) {
                                alert('아이디를 중복체크 해주세요.');
                                return false;
                            } else if (pw == ''||pw == null) {
                                alert("비밀번호를 입력하세요");
                                return false;
                            } else if (pwCheck == ''||pwCheck == null) {
                                alert("비밀번호 확인");
                                return false;
                            } else if (pw != pwCheck) {
                                alert("비밀번호가 다릅니다.");
                                return false;
                            } else if(name == ''||name == null){
                                alert("이름");
                                return false;
                            } else if(gender == null){
                                alert("성별");
                                return false;
                            } else if(birthday == ''||birthday == null){
                                alert("생일");
                                return false;
                            } else if(hp == ''||hp == null){
                                alert("전화번호");
                                return false;
                            } else if(zipCode == ''||zipCode == null){
                                alert("우편번호");
                                return false;
                            }
                           
                            $('[name=frmMember]').submit();
                            
                        });
                    })
                </script>
            </head>

            <body>
                <div class="container-xl">
                    <!--------------------------------------------------상단---------------------------------------------------------->

                    <form action="/member/doJoin.do" method="post" name="doJoin">
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
                                <label for="gender" class="col-form-label">성별</label>
                            </div>
                            <div class="col-auto">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" id="gender1" value="M">
                                    <label class="form-check-label" for="gender1">M</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" id="gender2" value="F">
                                    <label class="form-check-label" for="gender2">F</label>
                                </div>
                            </div>
                        </div>
                        <div class="row g-3 align-items-center join-container">
                            <div class="col-2"></div>
                            <div class="col-2">
                                <label for="birthday" class="col-form-label">생일</label>
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
                                <input type="tel" id="hp" name="hp" class="form-control">
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
                                    name="zipCode" class="form-control col">
                            </div>
                        </div>
                        <div class="row g-3 align-items-center join-container">
                            <div class="col-2"></div>
                            <div class="col-2">
                                <label for="address" class="col-form-label"></label>
                            </div>
                            <div class="col-auto">
                                <input type="address" id="address" name="address" class="form-control">
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
                        <div class="row g-3 align-items-center join-container">
                            <div class="col-2"></div>
                            <div class="col-2">
                            </div>
                            <div class="col-auto">
                                <button type="button" class="btn"
                                    style="border: 1px solid #41087c; width: 110px;">취소</button>
                                <button type="submit" class="btn text-white" id="submitBtn"
                                    style="background: #41087c; width: 110px;">다음</button>
                            </div>
                        </div>
                    </form>


                    <!--------------------------------------------------하단---------------------------------------------------------->
                </div>
            </body>

            </html>
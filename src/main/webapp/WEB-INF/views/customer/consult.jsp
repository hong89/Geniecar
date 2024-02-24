<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--복사해서 사용하세요--%>
<div class="container-xl">
    <script>
        $(function () {
            let msg = "${msg}";
            $('#locations').on('change', function () {
                var groupCode = $(this).val().substring(3, 6);
                $.get("/customer/branch.do", {groupCode: groupCode}, function (res) {
                    var str = "<option selected>선택</option>";
                    $.each(res, function (i) {
                        str += "<option value='" + res[i].fullCode + "'>" + res[i].codeName + "</option>";
                    });
                    $('#branches').html(str);
                });
            });
/*
            $('#submitBtn').on('click', function () {
                var name = $('[name=name]').val();
                var tel = $('[name=tel]').val();
                var email = $('[name=email]').val();
                var purpose = $('[name=purpose]').val();
                var wishRegion = $('[name=wishRegion]').val();

                if (name == null || name.length == 0) {
                    alert("이름을 입력해 주세요.");
                    return false;
                } else if (tel == null || tel.length == 0) {
                    alert("연락받으실 전화번호를 입력해 주세요.");
                    return false;
                } else if (email == null || email.length == 0) {
                    alert("연락받으실 이메일을 입력해 주세요.");
                    return false;
                } else if (purpose == null || purpose.length == 0) {
                    alert("사용 목적을 입력해 주세요.");
                    return false;
                } else if (wishRegion == null || wishRegion.length == 0) {
                    alert("희망 대여 지역을 선택해 주세요.");
                    return false;
                }
                $('#consultForm').submit();
            });

*/
            });
        function mainLink() {
            location.href = '/main/index.do';
        }

    </script>
    <!--------------------------------------------------상단---------------------------------------------------------->

    <section class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute top-0 end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">상담신청</li>
            </ol>
        </nav>
    </section>
    <section class="pb-4">
        <h1 class="fw-bolder text-center pb-5 mb-5">상담신청</h1>
        <p class="text-end"><span>*는 필수입력입니다.</span></p>
        <div class="mt-4 mb-4 p-4" style="background-color: #f8f7fd; color: #23093d;">
            <h4 class="fw-bold">예약자 정보 입력</h4>
        </div>
        <form id="consultForm" method="post" action="/consult/insertConsult.do">
            <div class="row p-1 m-3 text-center">
                <div class="col-2">
                    <label for="name" class="col-form-label">이름<span>*</span></label>
                </div>
                <div class="col-auto">
                    <input type="text" id="name" name="name" class="form-control"
                           placeholder="이름을 입력하세요" pattern="^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}" required />
                </div>
            </div>
            <div class="row p-1 m-3 text-center">
                <div class="col-2">
                    <label for="tel" class="col-form-label">연락처<span>*</span></label>
                </div>
                <div class="col-6">
                    <input type="tel" id="tel" name="tel" class="form-control" pattern="\d*" minlength="10"
                           maxlength="11" placeholder="휴대전화번호를(-없이) 입력하세요" required />
                </div>
            </div>
            <div class="row p-1 m-3 text-center">
                <div class="col-2">
                    <label for="email" class="col-form-label">이메일<span>*</span></label>
                </div>
                <div class="col-6">
                    <input type="email" id="email" name="email" class="form-control" placeholder="이메일을 입력하세요"
                           pattern="^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}"
                           required />
                </div>
            </div>
            <div class="row p-1 m-3 text-center">
                <div class="col-2">
                    <label for="purpose" class="col-form-label">사용목적<span>*</span></label>
                </div>
                <div class="col-6">
                    <textarea style="resize: none; height: 150px;" id="purpose" name="purpose" class="form-control"
                              placeholder="차량사용 목적을 입력하세요" maxlength="200"  required ></textarea>
                </div>
            </div>
            <div class="row p-1 m-3 text-center">
                <div class="col-2">
                    <label for="locations" class="col-form-label">희망대여지역<span>*</span></label>
                </div>
                <div class="col-3">
                    <select class="form-select" id="locations" name="locations">
                        <option selected>희망지역(시/도)선택</option>
                        <c:forEach var="loc" items="${locations}">
                            <option value="${loc.fullCode}">${loc.codeName}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-3">
                    <select class="form-select" id="branches" name="wishRegion" required />
                        <option value="" selected>선택</option>
                    </select>
                </div>
            </div>
            <div class="mt-4 mb-4 p-4" style="background-color: #f8f7fd; color: #23093d;">
                <h4 class="fw-bold">개인정보 수집이용 동의</h4>
            </div>
            <div class="ps-4 pe-4">
                <div class="card" style="width: 100%">
                    <div class="card-header p-3" style="background: #f8f7fd">
                        <input type="checkbox" value="agree" required />
                        &nbsp;&nbsp;&nbsp;개인정보 수집 및 이용 동의(필수)
                    </div>
                    <div class="card-body p-3">
                        <p class="card-text">
                            본인은 지니카가 아래의 내용과 같이 본인의 개인정보를 수집 · 이용하는데 동의합니다.<br/><br/>
                            개인정보의 수집 및 이용 목적<br/>
                            <span style="color:red;font-weight: bold;text-decoration: underline;">
                                롯데렌터카 장기대여 견적신청, 견적회신 및 상담, 장기대여 계약의 체결 · 이행 · 관리,
                                신청서비스 제공, 본인여부 확인, 분쟁 및 민원 처리<br/></span>
                            수집하는 개인정보 항목<br/>
                            성명, 휴대전화, 이메일주소, 지역<br/>
                            <span style="color:red;font-weight: bold; text-decoration: underline;">
                                개인정보 보유 및 이용 기간<br/>
                            동의일로부터 1년<br/><br/></span>
                            <span style="color:red;">귀하는 동의를 거부할 권리가 있으나,
                                위 사항에 동의하지 않으실 경우 롯데렌터카 견적신청,
                            견적회신 또는 상담 등이 불가능 할 수 있음을 알려드립니다.</span>
                        </p>
                    </div>
                </div>
            </div>

            <div class="text-center text-center m-5">
                <button class="btn" style="border: 1px solid #41087c;"
                        onclick="mainLink(); return false;">메인으로
                </button>
                <button class="btn text-white" style="background-color: #41087c;" id="submitBtn" type="submit">신청하기</button>
            </div>
        </form>
    </section>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

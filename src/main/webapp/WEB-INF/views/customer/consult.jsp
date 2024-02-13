<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--복사해서 사용하세요--%>
<div class="container-xl">
    <script>
        $(function() {
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
        })
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
            <h4 class ="fw-bold">예약자 정보 입력</h4>
        </div>
        <form >
            <div class="row p-1 m-3 text-center">
                <div class="col-2">
                    <label for="name" class="col-form-label">이름<span>*</span></label>
                </div>
                <div class="col-auto">
                    <input type="text" id="name" name="name" class="form-control" placeholder="이름을 입력하세요">
                </div>
            </div>
            <div class="row p-1 m-3 text-center">
                <div class="col-2">
                    <label for="hp" class="col-form-label">연락처<span>*</span></label>
                </div>
                <div class="col-6">
                    <input type="text" id="hp" name="hp" class="form-control" oninput="oninputPhone(this)" maxlength="13" placeholder="휴대전화번호를(-없이) 입력하세요">
                </div>
            </div>
            <div class="row p-1 m-3 text-center">
                <div class="col-2">
                    <label for="email" class="col-form-label">이메일<span>*</span></label>
                </div>
                <div class="col-6">
                    <input type="email" id="email" name="email" class="form-control" placeholder="이메일을 입력하세요">
                </div>
            </div>
            <div class="row p-1 m-3 text-center">
                <div class="col-2">
                    <label for="purpose" class="col-form-label">사용목적<span>*</span></label>
                </div>
                <div class="col-6">
                    <textarea style ="resize: none; height: 150px;" id="purpose" name="purpose" class="form-control" placeholder="차량사용 목적을 입력하세요" maxlength="200" ></textarea>
                </div>
            </div>
            <div class="row p-1 m-3 text-center">
                <div class="col-2">
                    <label for="wishRegion" class="col-form-label">희망대여지역<span>*</span></label>
                </div>
                <div class="col-6 row">
                    <select class="form-select col" id="locations" name="locations" style="display: inline; width: auto;">
                        <option selected>희망지역(시/도)선택</option>
                        <c:forEach var="loc" items="${locations}">
                            <option value="${loc.fullCode}">${loc.codeName}</option>
                        </c:forEach>
                    </select>
                    <select class="form-select col" id="branches" name="wishRegion" style=" display: inline;width: auto;">
                        <option value="" selected>희망지역(구/시)선택</option>
                    </select>
                </div>
            </div>
            <div class="mt-4 mb-4 p-4" style="background-color: #f8f7fd; color: #23093d;">
                <h4 class ="fw-bold">개인정보 수집이용 동의</h4>
            </div>
            <div class="accordion p-4" id="accordionExample">
                <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <input type="checkbox" class="me-2" name="checkTerm" id="termsOfService"><strong>개인정보 수집 및 이용 동의(필수)</strong>
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                    본인은 지니카가 아래의 내용과 같이 본인의 개인정보를 수집 · 이용하는데 동의합니다.

                        개인정보의 수집 및 이용 목적
                        롯데렌터카 장기대여 견적신청, 견적회신 및 상담, 장기대여 계약의 체결 · 이행 · 관리, 신청서비스 제공, 본인여부 확인, 분쟁 및 민원 처리
                        수집하는 개인정보 항목
                        성명, 휴대전화, 이메일주소, 지역
                        개인정보 보유 및 이용 기간
                        동의일로부터 1년
                        귀하는 동의를 거부할 권리가 있으나, 위 사항에 동의하지 않으실 경우 롯데렌터카 견적신청, 견적회신 또는 상담 등이 불가능 할 수 있음을 알려드립니다.
                    </div>
                </div>
                </div>
            </div>
            <div class="text-center text-center m-3">
                <button class = "btn"  style="border: 1px solid #41087c;">취소</button>
                <button class="btn text-white" style="background-color: #41087c;">다음</button>
            </div>
        </form>
    </section>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

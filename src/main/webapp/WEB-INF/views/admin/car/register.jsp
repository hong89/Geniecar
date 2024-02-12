<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    #registerForm {
        padding: 70px;
    }

    #frmInsert {
        padding-top: 70px;
        padding-bottom: 50px;
    }

    #frmInsert > button {
        margin-top: 50px;
    }

</style>
<script>
    $(function () {
        $('#company, #carFuelCode, #carTypeCode').on('change', function(){
            var company = $('#company').val()
            var carFuelCode = $('#carFuelCode').val()
            var carTypeCode = $('#carTypeCode').val()

            if(company && carFuelCode && carTypeCode){
                var reqData = {company: company, carFuelCode: carFuelCode, carTypeCode: carTypeCode};
                $.get("/admin/car/selectCarNameList.do", reqData, function (res) {
                    var str = "<option selected>선택</option>";
                    $.each(res, function (i) {
                        str += "<option value='" + res[i].no + "'>" + res[i].carName + "</option>";
                    });
                    $('#carNo').html(str);
                });
            }else{
                var str = "<option selected>선택</option>";
                $('#carNo').html(str);
            }
        });

        $('#carNumber').on('blur', function () {
            if ($('#carNumber').val().length !== 6) {
                alert("고유번호 6자리를 모두 입력해주세요.")
            } else {
                // 모든 값 입력하면 차대번호 출력
                var carIdentifiedNum = [
                    'ROK'  // 제조국
                    , $('#company').val().substring(3, 6)  // 제조사
                    , $('#carTypeCode').val().substring(4, 6) // 구분
                    , 'M'  // 의미없음
                    , $('#createYear').val()  // 제조년도
                    , $('#factory').val()  // 공장
                    , $('#carNumber').val()  // 고유번호
                ];
                $('#carIdentificationNumber').val(carIdentifiedNum.join(''));
            }
        });

        $('#frmSubmit').on('click', function () {
            $('#carIdentificationNumber').attr('disabled', false);
            $('#frmInsert').submit();
            return false;
        });
    });

</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">차량 등록</h1>
            </section>

            <form name="frmInsert" action="/admin/car/insertRentalCar.do" id="frmInsert" method="post">
                <div class="mb-3 row">
                    <label for="company" class="col-sm-3 col-form-label">제조사</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="company" name="company">
                            <option selected value="">선택</option>
                            <c:forEach var="code" items="${codeList}">
                                <option value="${code.fullCode}">${code.codeName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carFuelCode" class="col-sm-3 col-form-label">연료</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="carFuelCode"
                                name="carFuelCode">
                            <option selected value="">선택</option>
                            <c:forEach var="fuelCode" items="${fuelCodeList}">
                                <option value="${fuelCode.fullCode}">${fuelCode.codeName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carTypeCode" class="col-sm-3 col-form-label">차종</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="carTypeCode"
                                name="carTypeCode">
                            <option selected value="">선택</option>
                            <c:forEach var="segCode" items="${segCodeList}">
                                <option value="${segCode.fullCode}">${segCode.codeName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNo" class="col-sm-3 col-form-label">차명</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="carNo"
                                name="carNo">
                            <option selected value="">선택</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="createYear" class="col-sm-3 col-form-label">생산년도</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="createYear">
                            <option selected>선택</option>
                            <option value="K">2021</option>
                            <option value="L">2022</option>
                            <option value="M">2023</option>
                            <option value="O">2024</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="factory" class="col-sm-3 col-form-label">생산공장</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="factory">
                            <option selected>선택</option>
                            <option value="A">아산</option>
                            <option value="C">전주</option>
                            <option value="U">울산</option>
                            <option value="M">인도</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNumber" class="col-sm-3 col-form-label">고유번호<small>(6자리)</small></label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="carNumber" minlength="6" maxlength="6"
                               oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carIdentificationNumber" class="col-sm-3 col-form-label">차대번호</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="carIdentificationNumber"
                               name="carIdentificationNumber" disabled
                               style="background: #f8f7fd">
                    </div>
                </div>
                <button type="button" class="btn text-white" style="background: #41087c" id="frmSubmit">등록하기</button>

            </form>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

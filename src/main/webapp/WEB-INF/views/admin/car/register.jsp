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
        $('#company').on('change', function () {
            // 제조사를 변경하면 해당 제조사의 차량이 나오도록 처리
            var groupCode = $(this).val().substring(3, 6);
            alert(groupCode)
            $.get("/admin/car/selectCodeByGroupCode.do", {groupCode: groupCode}, function (res) {
                console.log(res);
                var str = "<option selected>선택</option>";
                $.each(res, function (i) {
                    str += "<option value='" + res[i].fullCode + "'>" + res[i].codeName + "</option>";
                });
                $('#carNameCode').empty().append(str);
                $('#carFuelCode').empty().append("<option selected>선택</option>");
            });
        });
        // 차량이 선택되면 연료 가져올 수 있도록 처리
        $(document).on('change', '#carNameCode', function () {
            var carNameCode = $(this).val();
            console.log(carNameCode)
            $.get("/admin/car/selectCarByFullCode.do", {carNameCode: carNameCode}, function (res) {
                console.log(res);
                var str = "<option selected>선택</option>";
                $.each(res, function (i) {
                    str += "<option value='" + res[i].carFuelCode + "'>" + res[i].fuelName + "</option>";
                });
                $('#carFuelCode').empty().append(str);
                $('#carTypeCode').val(res[0].carTypeCode);
            });

        });

        $('#carNumber').on('change', function () {
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
    });

    function frmSubmit() {
        $('#carIdentificationNumber').enabled();
        $('#frmInsert').submit();
        return false;
    }
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div id="registerForm">
        <h3>차량 등록</h3>

        <form name="frmInsert" action="/admin/car/insertRentalCar.do" id="frmInsert" method="post">
            <div class="mb-3 row">
                <label for="company" class="col-sm-3 col-form-label">제조사</label>
                <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" id="company" name="company">
                        <option selected>선택</option>
                        <c:forEach var="code" items="${codeList}">
                            <option value="${code.fullCode}">${code.codeName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="carNameCode" class="col-sm-3 col-form-label">차명</label>
                <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" id="carNameCode"
                            name="carNameCode">
                        <option selected>선택</option>
                    </select>
                </div>
            </div>
            <input type="hidden" class="form-control" id="carTypeCode" name="carTypeCode">
            <div class="mb-3 row">
                <label for="carFuelCode" class="col-sm-3 col-form-label">연료</label>
                <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" id="carFuelCode"
                            name="carFuelCode">
                        <option selected>선택</option>
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
                    <input type="text" class="form-control" id="carIdentificationNumber" name="carIdentificationNumber"
                           disabled
                           style="background: #f8f7fd">
                </div>
            </div>
            <button type="button" class="btn text-white" style="background: #41087c" onclick="frmSubmit();">등록하기</button>

        </form>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

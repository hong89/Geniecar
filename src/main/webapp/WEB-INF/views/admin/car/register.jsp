<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    #registerForm {
        padding: 30px;
    }
</style>
<script>
    $(function () {
        $('#company').on('change', function () {
            // 제조사를 변경하면 해당 제조사의 차량이 나오도록 처리
            let groupCode = $(this).val();
            $.get("/admin/car/selectCodeByGroupCode.do", {groupCode: groupCode}, function (res) {
                console.log(res);
                var str = "<option selected>선택</option>";
                $.each(res , function(i){
                    str += "<option value='" + res[i].fullCode + "'>" + res[i].codeName + "</option>";
                });
                $('#carNameCode').empty().append(str);
                $('#carFuel').empty().append("<option selected>선택</option>");
            });
        });
        // 차량이 선택되면 차종과 연료 가져올 수 있도록 처리
        $(document).on('change','#carNameCode', function(){
           let carNameCode = $(this).val();
           console.log(carNameCode)
           $.get("/admin/car/selectCarByFullCode.do", {carNameCode: carNameCode}, function (res){
              console.log(res);
              var str = "<option selected>선택</option>";
               $.each(res , function(i){
                   str += "<option value='" + res[i].carFuelCode + "'>" + res[i].fuelName + "</option>";
               });
              $('#carFuel').empty().append(str);
              $('#carTypeCode').append("<input type='hidden' value='res[i].carFuelCode'>");
           });

        });
    });
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div id="registerForm">
        <h3>차량 등록</h3>

        <form name="frmInsert" action="/business/car/registerInsert.do">
            <input type="hidden" name="nation" value="K"/> 생산국가
            <input type="hidden" name="detailCarModel" value="M"/> 세부차종
            <input type="hidden" name="carBodyShape" value="4"/> 차체형상
            <input type="hidden" name="safetyLevel" value="3"/> 안전레벨
            <input type="hidden" name="lhd" value="P"/> 확인란
            <input type="hidden" name="manufacture" value="O"/> 제조년월

            <div class="mb-3 row">
                <label for="company" class="col-sm-3 col-form-label">제조사</label>
                <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" id="company" name="company">
                        <option selected>선택</option>
                        <c:forEach var="code" items="${codeList}">
                            <option value="${code.code}">${code.codeName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="carNameCode" class="col-sm-3 col-form-label">차명</label>
                <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" id="carNameCode" name="carNameCode"></select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="carFuel" class="col-sm-3 col-form-label">연료</label>
                <div class="col-sm-9">
                    <select class="form-select" aria-label="Default select example" id="carFuel"></select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="carNumber" class="col-sm-3 col-form-label">고유번호<small>(6자리)</small></label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="carNumber">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="carIdentificationNumber" class="col-sm-3 col-form-label">고유번호<small>(6자리)</small></label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="carIdentificationNumber">
                </div>
            </div>
            <button type="button" class="btn text-white" style="background: #41087c" onclick="submit();">등록하기</button>

        </form>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

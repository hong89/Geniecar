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

</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">신차 등록</h1>
            </section>

            <form name="frmInsert" action="/admin/car/insertNewCar.do" id="frmInsert" method="post">
                <div class="mb-3 row">
                    <label for="company" class="col-sm-3 col-form-label">제조사</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="company" name="company">
                            <option selected>선택</option>
                            <option>현대</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carTypeCode" class="col-sm-3 col-form-label">차량타입</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="carTypeCode" name="carTypeCode">
                            <option selected>선택</option>
                            <option>현대</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNameCode" class="col-sm-3 col-form-label">차량이름</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="carNameCode" name="carNameCode" placeholder="차량 이름을 입력해주세요.">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label class="col-sm-3 col-form-label">연료</label>
                    <div class="col-sm-9" style="align-self:center">
                        <div class="row">
                            <div class="col"><label for="FUEGAS"><input type="checkbox" name="carFuelCode" id="FUEGAS"> 가솔린 </label></div>
                            <div class="col"><label for="FUEDIE"><input type="checkbox" name="carFuelCode" id="FUEDIE"> 디젤 </label></div>
                            <div class="col"><label for="FUELPG"><input type="checkbox" name="carFuelCode" id="FUELPG"> LPG </label></div>
                            <div class="col"><label for="FUEHYB"><input type="checkbox" name="carFuelCode" id="FUEHYB"> 하이브리드 </label></div>
                            <div class="col"><label for="FUEELE"><input type="checkbox" name="carFuelCode" id="FUEELE"> 전기 </label></div>
                        </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="defaultCost" class="col-sm-3 col-form-label">가솔린 가격</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="defaultCost" name="defaultCost" placeholder="10분 단위 가격을 작성해주세요.">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="defaultCost" class="col-sm-3 col-form-label">디젤 가격</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="defaultCost" name="defaultCost" placeholder="10분 단위 가격을 작성해주세요.">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="defaultCost" class="col-sm-3 col-form-label">LPG 가격</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="defaultCost" name="defaultCost" placeholder="10분 단위 가격을 작성해주세요.">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="defaultCost" class="col-sm-3 col-form-label">가솔린 가격</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="defaultCost" name="defaultCost" placeholder="10분 단위 가격을 작성해주세요.">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="defaultCost" class="col-sm-3 col-form-label">전기 가격</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="defaultCost" name="defaultCost" placeholder="10분 단위 가격을 작성해주세요.">
                    </div>
                </div>










                <button type="button" class="btn text-white" style="background: #41087c" id="frmSubmit">등록하기</button>

            </form>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

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
        $('[name$=carFuelCode]').on('change', function () {
            var className = $(this).attr('id').toLowerCase();

            if ($(this).is(':checked')) {
                $('.' + className).prop('disabled', false);
            } else {
                $('.' + className).prop('disabled', true).val('');
            }

        });
    });


</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">신차 등록</h1>
            </section>

            <form name="frmInsert" action="/admin/car/insertNewCars.do" id="frmInsert" method="post"
                  enctype="multipart/form-data">
                <div class="row">
                    <div class="col-8 pt-4">
                        <div class="mb-3 row">
                            <label for="company" class="col-sm-3 col-form-label">제조사</label>
                            <div class="col-sm-9">
                                <select class="form-select" aria-label="Default select example" id="company"
                                        name="company">
                                    <option selected>선택</option>
                                    <c:forEach var="com" items="${companies}">
                                        <option value="${com.fullCode}">${com.codeName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="carTypeCode" class="col-sm-3 col-form-label">차량타입</label>
                            <div class="col-sm-9">
                                <select class="form-select" aria-label="Default select example" id="carTypeCode"
                                        name="carTypeCode">
                                    <option selected>선택</option>
                                    <c:forEach var="type" items="${carsType}">
                                        <option value="${type.fullCode}">${type.codeName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="carName" class="col-sm-3 col-form-label">차량이름</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="carName" name="carName"
                                       placeholder="차량 이름을 입력해주세요.">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label class="col-sm-3 col-form-label">연료</label>
                            <div class="col-sm-9" style="align-self:center">
                                <div class="row">
                                    <c:forEach var="fuel" items="${carsFuel}" varStatus="index">
                                        <div class="col-4 text-start"><label for="${fuel.fullCode}">
                                            <input type="checkbox" name="rentalCosts[${index.index}].carFuelCode"
                                                   id="${fuel.fullCode}" value="${fuel.fullCode}">
                                                ${fuel.codeName} </label>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="fuelGas" class="col-sm-3 col-form-label">가솔린 가격</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control fuegas" id="fuelGas"
                                       name="rentalCosts[0].defaultCost" disabled="disabled"
                                       placeholder="10분 단위 가격을 작성해주세요.">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="fuelDie" class="col-sm-3 col-form-label">디젤 가격</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control fuedie" id="fuelDie"
                                       name="rentalCosts[1].defaultCost" disabled="disabled"
                                       placeholder="10분 단위 가격을 작성해주세요.">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="fuelLPG" class="col-sm-3 col-form-label">LPG 가격</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control fuelpg" id="fuelLPG"
                                       name="rentalCosts[2].defaultCost" disabled="disabled"
                                       placeholder="10분 단위 가격을 작성해주세요.">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="fuelHyb" class="col-sm-3 col-form-label">하이브리드 가격</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control fuehyb" id="fuelHyb"
                                       name="rentalCosts[3].defaultCost" disabled="disabled"
                                       placeholder="10분 단위 가격을 작성해주세요.">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="fuelEle" class="col-sm-3 col-form-label">전기 가격</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control fueele" id="fuelEle"
                                       name="rentalCosts[4].defaultCost" disabled="disabled"
                                       placeholder="10분 단위 가격을 작성해주세요.">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="carImage" class="col-sm-3 form-label">차량 사진</label>
                            <div class="col-sm-9">
                                <input class="form-control" type="file" id="carImage" name="carImage">
                            </div>
                        </div>
                    </div>
                    <div class="col-4">
                        <p>10분 단위 기준 비용</p>
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">구분</th>
                                <th scope="col">차종</th>
                                <th scope="col">가솔린</th>
                                <th scope="col">이외</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td rowspan="5">세단</td>
                                <td>경형</td>
                                <td>1600</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>준중형</td>
                                <td>1800</td>
                                <td>2000</td>
                            </tr>
                            <tr>
                                <td>중형</td>
                                <td>2900</td>
                                <td>3000</td>
                            </tr>
                            <tr>
                                <td>준대형</td>
                                <td>4800</td>
                                <td>5300</td>
                            </tr>
                            <tr>
                                <td>대형</td>
                                <td>6300</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td rowspan="5">SUV</td>
                                <td>경형</td>
                                <td>2400</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>소형</td>
                                <td>3000</td>
                                <td>3400</td>
                            </tr>
                            <tr>
                                <td>준중형</td>
                                <td>3700</td>
                                <td>4000</td>
                            </tr>
                            <tr>
                                <td>중형</td>
                                <td>4100</td>
                                <td>4500</td>
                            </tr>
                            <tr>
                                <td>대형</td>
                                <td>6500</td>
                                <td>6800</td>
                            </tr>

                            </tbody>
                        </table>
                        <p style="text-align: left; font-size: small">* 평균 비용으로 차량에 따라 기준 비용이 달라질 수 있습니다.</p>
                    </div>
                </div>
                <button type="submit" class="btn text-white" style="background: #41087c" id="frmSubmit">등록하기</button>
            </form>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

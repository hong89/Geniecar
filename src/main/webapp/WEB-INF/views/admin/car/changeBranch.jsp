<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
    $(function () {
        // 지역을 선택하면 해당 지역의 지점이 나오도록 처리
        $('#locations').on('change', function () {
            var groupCode = $(this).val().substring(3, 6);
            $.get("/admin/car/selectCodeByGroupCode.do", {groupCode: groupCode}, function (res) {
                var str = "<option selected>선택</option>";
                $.each(res, function (i) {
                    str += "<option value='" + res[i].fullCode + "'>" + res[i].codeName + "</option>";
                });
                $('#branches').html(str);
            });
        });

        // 제조사를 선택하면 해당 차량이 나오도록 처리
        $('#companies, #seg').on('change', function () {
            var data = {
                company: $('#companies').val(),
                carTypeCode: $('#seg').val()
            }

            if(data.company || data.carTypeCode){
                $.get("/admin/car/selectRentalCars.do", data, function (res) {
                    var str = "";
                    $.each(res, function (i) {
                        str += "<tr>";
                        str += "<td class='text-center'>";
                        str += "<input type='checkbox' name='checkCar' value='" + res[i].carIdentificationNumber + "' /></td>";
                        str += "<td class='text-center'>";
                        str += res[i].carIdentificationNumber + "</td>";
                        str += "<td class='text-center'>";
                        str += res[i].carName + "</td>";
                        str += "<td class='text-center'>";
                        str += res[i].carType + "</td>";
                        str += "<td class='text-center'>";
                        str += res[i].carFuel + "</td>";
                        str += "<td class='text-center'>";
                        str += res[i].companyName + "</td>";
                        str += "</tr>";
                    });
                    $('#carList').html(str);
                });
            }
        });
    });

</script>
<div class="container-xl" >
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">차량 지점 배정</h1>
            </section>

            <form name="frmInsert" action="/admin/car/insertBranchesCar.do" id="frmInsert" method="post">
                <div class="mb-3 row">
                    <label for="locations" class="col-sm-3 col-form-label">지역</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="locations" name="locations">
                            <option selected>선택</option>
                            <c:forEach var="loc" items="${locations}">
                                <option value="${loc.fullCode}">${loc.codeName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="branches" class="col-sm-3 col-form-label">지점</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="branches" name="branches">
                            <option selected>선택</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="companies" class="col-sm-3 col-form-label">제조사</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="companies" name="companies">
                            <option selected value="">선택</option>
                            <c:forEach var="com" items="${companies}">
                                <option value="${com.fullCode}">${com.codeName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="seg" class="col-sm-3 col-form-label">차종</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="seg" >
                            <option selected value="" >선택</option>
                            <c:forEach var="seg" items="${segCodeList}">
                                <option value="${seg.fullCode}">${seg.codeName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <table class="mt-5 table caption-top">
                    <thead>
                    <tr>
                        <td class="col"><strong>선택</strong></td>
                        <td class="col"><strong>차대번호</strong></td>
                        <td class="col"><strong>차량명</strong></td>
                        <td class="col"><strong>차량타입</strong></td>
                        <td class="col"><strong>연료</strong></td>
                        <td class="col"><strong>제조사</strong></td>
                    </tr>
                    </thead>
                    <tbody id="carList"></tbody>
                </table>

                <button class="btn text-white mt-5" type="button" style="background: #41087c; width: 100%;"
                        onclick="submit();">
                    배정하기
                </button>
            </form>
        </div>


    </div>

<!--------------------------------------------------하단---------------------------------------------------------->
</div>

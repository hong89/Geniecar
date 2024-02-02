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
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">차량 인수 등록</h1>
            </section>

            <form name="frmEvent" action="/business/car/registerInsert.do">
                <div class="mb-3 row">
                    <label for="rentalCarBranchNo" class="col-sm-3 col-form-label">렌터카 지점</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="rentalCarBranchNo" value="서울역 지점" disabled>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carIdentificationNumber" class="col-sm-3 col-form-label">차대번호</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="carIdentificationNumber" value="AAAABBBBCCCC12345"
                               disabled>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carName" class="col-sm-3 col-form-label">차량명</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="carName" value="아반떼" disabled>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carType" class="col-sm-3 col-form-label">차종</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="carType" value="준중형" disabled>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carFuel" class="col-sm-3 col-form-label">연료</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="carFuel" value="가솔린" disabled>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="defaultCost" class="col-sm-3 col-form-label">기본 대여료</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="defaultCost" minlength="4" maxlength="6" placeholder="10분단위"
                               oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="defaultSaleRate" class="col-sm-3 col-form-label">기본 할인율 (50)</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="defaultSaleRate">
                            <option selected>선택</option>
                            <option value="50">50</option>
                            <option value="55">55</option>
                            <option value="60">60</option>
                            <option value="65">65</option>
                            <option value="70">70</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="weekSaleRate" class="col-sm-3 col-form-label">일주일 할인율 (60)</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="weekSaleRate">
                            <option selected>선택</option>
                            <option value="60">60</option>
                            <option value="65">65</option>
                            <option value="70">70</option>
                            <option value="75">75</option>
                            <option value="80">80</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="monthSaleRate" class="col-sm-3 col-form-label">월 할인율 (70)</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="monthSaleRate">
                            <option selected>선택</option>
                            <option value="70">70</option>
                            <option value="75">75</option>
                            <option value="80">80</option>
                            <option value="85">85</option>
                            <option value="90">90</option>
                        </select>
                    </div>
                </div>
                <button type="button" class="btn text-white" style="background: #41087c" onclick="submit();">인수하기
                </button>

            </form>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

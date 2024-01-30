<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    #registerForm {
        padding: 30px;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div id="registerForm">
        <h3>차량 등록</h3>

        <form name="frmEvent" action="/business/car/registerInsert.do">
            <div class="mb-3 row">
                <label for="carIdentificationNumber" class="col-sm-2 col-form-label">차대번호</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="carIdentificationNumber">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="carTypeCode" class="col-sm-2 col-form-label">차종</label>
                <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" id="carTypeCode">
                        <option selected>선택</option>
                        <option value="소형">소형</option>
                        <option value="준중형">준중형</option>
                        <option value="중형">중형</option>
                        <option value="준대형">준대형</option>
                        <option value="대형">대형</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="carNameCode" class="col-sm-2 col-form-label">차명</label>
                <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" id="carNameCode">
                        <option selected>선택</option>
                        <option value="아반떼">아반떼</option>
                        <option value="소나타">소나타</option>
                        <option value="k4">k4</option>
                        <option value="캐스퍼">캐스퍼</option>
                        <option value="그랜저">그랜저</option>
                        <option value="쏘렌토">쏘렌토</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="carFuel" class="col-sm-2 col-form-label">연료</label>
                <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" id="carFuel">
                        <option selected>선택</option>
                        <option value="디젤">디젤</option>
                        <option value="휘발유">휘발유</option>
                        <option value="전기">전기</option>
                        <option value="하이브리드">하이브리드</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="company" class="col-sm-2 col-form-label">제조사</label>
                <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" id="company">
                        <option selected>선택</option>
                        <option value="현대">현대</option>
                        <option value="기아">기아</option>
                        <option value="제네시스">제네시스</option>
                        <option value="쉐보레">쉐보레</option>
                        <option value="르노코리아">르노코리아</option>
                        <option value="KG모빌리티">KG모빌리티</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="rentalCarBranchNo" class="col-sm-2 col-form-label">렌터카 지점</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="rentalCarBranchNo">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="rentalStatusCode" class="col-sm-2 col-form-label">렌트 상태</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="rentalStatusCode">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="defaultCost" class="col-sm-2 col-form-label">기본 대여료<br>(10분 단위)</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="defaultCost">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="fileMultiple" class="col-sm-2 col-form-label">차량사진</label>
                <div class="col-sm-10"><input class="form-control" type="file" id="fileMultiple" multiple>
                </div>
            </div>
            <button type="button" class="btn text-white" style="background: #41087c" onclick="submit();">등록하기</button>

        </form>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

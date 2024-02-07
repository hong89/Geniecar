<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>




<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

        <h2 class="text-center mb-4 pt-5">쿠폰 생성 페이지</h2>
        <form>
            <div class="mb-3 row">
                <label for="couponNumber" class="col-sm-4 col-form-label">쿠폰 번호</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="couponNumber" placeholder="쿠폰 번호" required>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="couponName" class="col-sm-4 col-form-label">쿠폰 이름</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="couponName" placeholder="쿠폰 이름" required>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="usableArea" class="col-sm-4 col-form-label">사용 가능 지역</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="usableArea" placeholder="사용 가능 지역" required>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="couponType" class="col-sm-4 col-form-label">쿠폰 유형</label>
                <div class="col-sm-8">
                    <select class="form-select" id="couponType" required>
                        <option value="할인">할인</option>
                        <option value="적립">적립</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="expirationDate" class="col-sm-4 col-form-label">만료 날짜</label>
                <div class="col-sm-8">
                    <input type="date" class="form-control" id="expirationDate" placeholder="만료 날짜" required>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="couponValue" class="col-sm-4 col-form-label">쿠폰 가액</label>
                <div class="col-sm-8">
                    <input type="number" class="form-control" id="couponValue" placeholder="쿠폰 가액" required>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="maxDiscountAmount" class="col-sm-4 col-form-label">최대 할인 금액</label>
                <div class="col-sm-8">
                    <input type="number" class="form-control" id="maxDiscountAmount" placeholder="최대 할인 금액" required>
                </div>
            </div>
            <div class="mb-3 text-center">
                <button type="submit" class="btn text-white" style="background-color: #41087c; width: 110px;">쿠폰 생성</button>
            </div>
        </form>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

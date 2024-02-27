INSERT INTO POINT(NO ,POINT ,INCREASE ,HISTORY ,REG_DATE ,CURRENT_POINT ,TOTAL_USE_POINT ,MEMBER_ID) VALUES 
(SEQ_POINT_NO.NEXTVAL, 3240, '+' ,'RES2024026-00000004', '2024-02-26',12720,21000 ,'hong');


INSERT INTO RENTAL_CAR_RESERVATION (RESERVATION_NO, RENTAL_PLACE, RETURN_PLACE, RENTAL_DATE, RETURN_DATE, CAR_IDENTIFICATION_NUMBER, RENTAL_CAR_BRANCH_NO, RESERVATION_MEMBER_ID, REGULAR_PRICE, SALE_RATE, FINAL_RESERVATION_PRICE, REG_ID, REG_DATE) VALUES 
('RES2024026-00000004', 'SEO001', 'SEO001', TO_DATE('2024-02-26 12:00:00','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2024-02-27 22:00:00','YYYY-MM-DD HH24:MI:SS'), 'ROKGEN05MNU822916', 'SEO001', 'hong', 129600, 50, 64800, 'hong', sysdate);

INSERT INTO PAYMENT (PAY_NO, APPLY_NUM, BANK_NAME, BUYER_ADDR, BUYER_EMAIL, BUYER_NAME, BUYER_POSTCODE, BUYER_TEL, CARD_NAME, CARD_NUMBER, CARD_QUOTA, CURRENCY, CUSTOM_DATA, IMP_UID, MERCHANT_UID, NAME, PAID_AMOUNT, PAID_AT, PAY_METHOD, PG_PROVIDER, PG_TID, PG_TYPE, STATUS, SUCCESS, REG_ID, REG_DATE, MOD_ID, MOD_DATE) VALUES 
(6, '00584065', null, null, null, '홍경영', null, '010-4321-4321', '현대카드', '404933*********3', 0, 'KRW', null, 'imp_358546933790', 'RES2024026-00000004', 'geniecar_아반떼_0일 1시간 40분', 1000, 1708366575, 'card', 'html5_inicis', 'StdpayCARDINIBillTst20240220031614781794', 'payment', 'paid', 'true', 'hong', sysdate, null, null);


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">지점 등록</h1>
            </section>

            <form name="frmInsert" action="/admin/car/insertRentalCar.do" id="frmInsert" method="post">
                <div class="mb-3 row">
                    <label for="company" class="col-sm-3 col-form-label">지역코드</label>
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
                    <label for="carNameCode" class="col-sm-3 col-form-label">지점코드</label>
                    <div class="col-sm-9">
                        <input class="form-control" >
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNameCode" class="col-sm-3 col-form-label">위치</label>
                    <div class="col-sm-9 row ">
                        <div class="col-md">
                            <input type="text" class="form-control " id="floatingInputGrid" placeholder="위도" >
                        </div>
                        <div class="col-md">
                            <input type="text" class="form-control" id="floatingInputGrid" placeholder="경도" >
                        </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carFuelCode" class="col-sm-3 col-form-label">도로명 주소</label>
                    <div class="col-sm-9 row">
                        <button class="btn text-white ms-1" style="width:140px; background-color: #41087c;">도로명 주소찾기</button>
                        <input class="form-control ms-1" style="width: 500px;">
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNameCode" class="col-sm-3 col-form-label">지번 주소</label>
                    <div class="col-sm-9">
                        <input class="form-control" >
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNameCode" class="col-sm-3 col-form-label">영업 시간</label>
                    <div class="col-sm-9">
                        <input class="form-control" >
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="carNameCode" class="col-sm-3 col-form-label">전화번호</label>
                    <div class="col-sm-9">
                        <input class="form-control" >
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="factory" class="col-sm-3 col-form-label">길안내</label>
                    <div class="col-sm-9">
                        <input class="form-control" >
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="factory" class="col-sm-3 col-form-label">단기렌터카 운영 여부</label>
                    <div class="col-sm-9 text-start">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox1" >
                            <label class="form-check-label" for="inlineCheckbox1">Y</label>
                          </div>
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox2" >
                            <label class="form-check-label" for="inlineCheckbox2">N</label>
                          </div>
                    </div>
                </div>
                <div class="mb-3 row">
                    <label for="factory" class="col-sm-3 col-form-label">24시간 운영여부</label>
                    <div class="col-sm-9 text-start">
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox1" >
                            <label class="form-check-label" for="inlineCheckbox1">Y</label>
                          </div>
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox2" >
                            <label class="form-check-label" for="inlineCheckbox2">N</label>
                          </div>
                    </div>
                </div>

                <button type="button" class="btn text-white" style="background: #41087c" id="frmSubmit">등록하기</button>

            </form>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

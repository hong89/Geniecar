<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>\
<style>
    #carTable tr td {
        font-size: 18px;
        padding: 13px;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <h1 class="pb-5 tit"> 차량 상세</h1>
            <div class="row">
                <div class="col-6">
                    <img src="/images/carImage/${car.no}.png" class="rounded mx-auto d-block"
                         alt="car" width="70%"/>
                </div>
                <div class="col-6">
                    <table class="table table-bordered border-secondary" id="carTable">
                        <tr>
                            <td class="col-1"><strong>차량번호</strong></td>
                            <td class="col-1">${car.no}</td>
                        </tr>
                        <tr>
                            <td><strong>차대번호</strong></td>
                            <td>${car.carIdentificationNumber}</td>
                        </tr>
                        <tr>
                            <td><strong>제조사</strong></td>
                            <td>${car.companyName}</td>
                        </tr>
                        <tr>
                            <td><strong>차명</strong></td>
                            <td>${car.carName}</td>
                        </tr>
                        <tr>
                            <td><strong>차량타입</strong></td>
                            <td>${car.typeName}</td>
                        </tr>
                        <tr>
                            <td><strong>연료타입</strong></td>
                            <td>${car.fuelName}</td>
                        </tr>
                        <tr>
                            <td><strong>렌터비용</strong></td>
                            <td>${car.defaultCost}원</td>
                        </tr>
                        <tr>
                            <td><strong>사용여부</strong></td>
                            <td>
                                <c:choose>
                                    <c:when test="${car.rentalAbleStatus == 'Y'}">
                                        사용가능
                                    </c:when>
                                    <c:when test="${car.rentalAbleStatus == 'N'}">
                                        사용중
                                    </c:when>
                                    <c:otherwise>
                                        대기
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="pt-5">
                    <button type="button" class="btn text-white" style="background: #41087c"
                            onclick="location.href='newCarList.do?'">목록가기
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

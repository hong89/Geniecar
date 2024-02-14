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
                <div class="col-12">
                    <img src="/images/carImage/${newCar.no}.png" class="rounded mx-auto d-block" alt="car" width="70%"/>
                </div>
                <div class="col-12 pt-5"></div>
                    <table class="table table-bordered border-secondary" id="carTable">
                        <tr>
                            <td class="col-1"><strong>등록번호</strong></td>
                            <td class="col-1">${newCar.no}</td>
                            <td class="col-1"><strong>제조사</strong></td>
                            <td class="col-1">${newCar.companyName}</td>
                        </tr>
                        <tr>
                            <td><strong>차명</strong></td>
                            <td>${newCar.carName}</td>
                            <td><strong>렌트비용</strong></td>
                            <td>${newCar.defaultCost}원</td>
                        </tr>
                        <tr>
                            <td><strong>차량타입</strong></td>
                            <td>${newCar.typeName}</td>
                            <td><strong>연료타입</strong></td>
                            <td>${newCar.fuelName}</td>
                        </tr>
                    </table>
                <div class="pt-5">
                    <button type="button" class="btn text-white" style="background: #41087c"
                            onclick="location.href='newCarList.do?'">목록가기
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

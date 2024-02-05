<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">차량 목록</h1>
            </section>
            <table class="pt-5 table caption-top">
                <thead>
                <tr>
                    <td class="col-2"><strong>차량명</strong></td>
                    <td class="col-2"><strong>차량타입</strong></td>
                    <td class="col-2"><strong>연료</strong></td>
                    <td class="col-2"><strong>사용여부</strong></td>
                    <td class="col-2"><strong>차대번호</strong></td>
                    <td class="col-2"><strong>차량번호</strong></td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="car" items="${branchRentalCar}">
                    <tr>
                        <td>${car.carName}</td>
                        <td>${car.carType}</td>
                        <td>${car.carFuel}</td>
                        <td>
                            <c:choose>
                                <c:when test="${car.rentalAbleStatus == 'Y'}">
                                    사용가능
                                </c:when>
                                <c:otherwise>
                                    사용중
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>${car.carIdentificationNumber}</td>
                        <td>${fn:substring(car.carIdentificationNumber, 11, 13)}
                            허 ${fn:substring(car.carIdentificationNumber, 13, 17)}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

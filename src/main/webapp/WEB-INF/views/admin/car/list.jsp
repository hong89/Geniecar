<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">지점별 차량 목록</h1>
            </section>
            <table class="pt-5 table caption-top">
                <thead>
                <tr>
                    <td class="col"><strong>지점</strong></td>
                    <td class="col"><strong>차량명</strong></td>
                    <td class="col"><strong>차량타입</strong></td>
                    <td class="col"><strong>연료</strong></td>
                    <td class="col"><strong>회사</strong></td>
                    <td class="col"><strong>차대번호</strong></td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="car" items="${carList}">
                    <tr>
                        <td class="text-center">${car.branch}</td>
                        <td class="text-center">${car.carName}</td>
                        <td class="text-center">${car.carType}</td>
                        <td class="text-center">${car.carFuel}</td>
                        <td class="text-center">${car.company}</td>
                        <td class="text-center"><small>${car.carIdentificationNumber}</small></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div>
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

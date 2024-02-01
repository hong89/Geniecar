<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">보유 차량 목록</h1>
                <div class="row pb-5">
                    <div class="col-3">
                        <select class="form-select" aria-label="Default select example">
                            <option selected>선택</option>
                            <c:forEach var="com" items="${companies}">
                            <option value="${com.fullCode}">${com.codeName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="col-6"></div>
                    <div class="col-3">
                        <button class="btn text-white" type="button" onclick="location.href='/admin/car/changeBranch.do'"
                                style="background: #41087c; width: 100%;">지점 배정하기
                        </button>
                    </div>
                </div>
            </section>
            <table class="pt-5 table caption-top">
                <thead>
                <tr>
                    <td class="col"><strong>차대번호</strong></td>
                    <td class="col"><strong>차량명</strong></td>
                    <td class="col"><strong>차량타입</strong></td>
                    <td class="col"><strong>연료</strong></td>
                    <td class="col"><strong>제조사</strong></td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="list" items="${rentalCarList}">
                    <tr>
                        <td class="text-center">${list.carIdentificationNumber}</td>
                        <td class="text-center">${list.carName}</td>
                        <td class="text-center">${list.carType}</td>
                        <td class="text-center">${list.carFuel}</td>
                        <td class="text-center">${list.companyName}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div>
            <!---->
            <!--paginate -->
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item">
                        <a class="page-link" href="javascript:void(0);" aria-label="Previous">
                            <span aria-hidden="true"
                                  onclick="movePage(1,${pagination.cntPerPage},${pagination.pageSize});">&lt;&lt;</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="javascript:void(0);" aria-label="Previous">
                            <span aria-hidden="true" onclick="movePage(${pagination.currentPage}
                            <c:if test="${pagination.hasPreviousPage == true}">-1</c:if>,${pagination.cntPerPage},${pagination.pageSize});">&lt;</span>
                        </a>
                    </li>

                    <c:forEach begin="${pagination.firstPage}" end="${pagination.lastPage}" var="idx">
                        <li class="page-item">
                            <a class="page-link" href="javascript:void(0);"
                               onclick="movePage(${idx},${pagination.cntPerPage},${pagination.pageSize});">
                                <c:out value="${idx}"/>
                            </a>
                        </li>
                    </c:forEach>

                    <li class="page-item">
                        <a class="page-link" aria-label="Next" href="javascript:void(0);"
                           onclick="movePage(${pagination.currentPage}
                           <c:if test="${pagination.hasNextPage == true}">+1</c:if>,${pagination.cntPerPage},${pagination.pageSize});">
                            <span aria-hidden="true">&gt;</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" aria-label="Next" href="javascript:void(0);"
                           onclick="movePage(${pagination.totalRecordCount},${pagination.cntPerPage},${pagination.pageSize});">
                            <span aria-hidden="true">&gt;&gt;</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /paginate -->

            <!---->
            <script>

                //페이지 이동
                function movePage(currentPage, cntPerPage, pageSize) {

                    var url = "admin/car/stockList.do";
                    url += "?currentPage=" + currentPage;
                    url += "&cntPerPage=" + cntPerPage;
                    url += "&pageSize=" + pageSize;

                    location.href = url;
                }

            </script>

        </div>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

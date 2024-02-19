<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">렌터카 진행 내역</h1>
            </section>
            <table class="pt-5 table caption-top align-middle">
                <thead>
                <tr>
                    <td class="col"><strong>예약번호</strong></td>
                    <td class="col"><strong>대여장소</strong></td>
                    <td class="col"><strong>반납장소</strong></td>
                    <td class="col"><strong>대여기간</strong></td>
                    <td class="col"><strong>차량번호</strong></td>
                    <td class="col"><strong>예약명</strong></td>
                    <td class="col"><strong>최종가격</strong></td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="res" items="${progressList}">
                    <tr>
                        <td class="col">
                            <a href="/business/rental/rentDetail.do?reservationNo=${res.reservationNo}">
                                    ${res.reservationNo}
                            </a>
                        </td>
                        <td class="col">${res.rentalPlaceName}</td>
                        <td class="col">${res.returnPlaceName}</td>
                        <td class="col"><fmt:formatDate value="${res.rentalDate}" pattern="MM/dd HH:mm"/>
                            <br/>~ <fmt:formatDate value="${res.returnDate}" pattern="MM/dd HH:mm"/></td>
                        <td class="col">${fn:substring(res.carIdentificationNumber, 11, 13)}허
                                ${fn:substring(res.carIdentificationNumber, 13, 17)}</td>
                        <td class="col">${res.reservationMemberName}</td>
                        <td class="col">${res.finalReservationPrice}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div>
            <!--paginate -->
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item">
                        <a class="page-link" href="javascript:void(0);" aria-label="Previous">
                            <span aria-hidden="true"
                                  onclick="movePage(1);">&lt;&lt;</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="javascript:void(0);" aria-label="Previous">
                            <span aria-hidden="true" onclick="movePage(${pagination.currentPage} <c:if
                                    test="${pagination.hasPreviousPage}">-1</c:if>);">&lt;</span>
                        </a>
                    </li>

                    <c:forEach begin="${pagination.firstPage}" end="${pagination.lastPage}" var="idx">
                        <li class="page-item">
                            <a class="page-link" href="javascript:void(0);"
                               onclick="movePage(${idx},${pagination.cntPerPage}, ${pagination.pageSize});">
                                <%--<c:out value="${idx}"/>--%>
                                <c:if test="${idx != 0}">${idx}</c:if>
                                <c:if test="${idx == 0}">1</c:if>
                            </a>
                        </li>
                    </c:forEach>

                    <li class="page-item">
                        <a class="page-link" aria-label="Next" href="javascript:void(0);"
                           onclick="movePage(${pagination.currentPage} <c:if
                                   test="${pagination.hasNextPage == true}">+1</c:if>);">
                            <span aria-hidden="true">&gt;</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" aria-label="Next" href="javascript:void(0);"
                           onclick="movePage(${pagination.totalRecordCount});">
                            <span aria-hidden="true">&gt;&gt;</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /paginate -->
            <!---->
            <script>

                $('#formSelect').on('change', function () {
                    movePage(1);
                });

                //페이지 이동
                function movePage(currentPage) {

                    var url = "/business/rental/rentProgress.do";
                    var params = [];
                    params.push("currentPage=" + (currentPage || 1));

                    var formSelectVal = $('#formSelect').val();
                    if (formSelectVal) {
                        params.push("keyword=" + formSelectVal);
                    }

                    var queryParams = '';
                    for (var i = 0; i < params.length; i++) {
                        if (i == 0) queryParams = '?' + params[i];
                        else queryParams += '&' + params[i]
                    }
                    location.href = url + queryParams;
                }

            </script>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

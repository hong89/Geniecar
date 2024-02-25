<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script>
    $(function () {
        $('#nameSearchBtn').on('click', function () {
            var searchName = $('[name=startDate]').val();
            var searchDate = $('[name=name]').val();
            $('#searchForm').submit();
        });
    });
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">렌터카 취소 내역</h1>
            </section>

            <div class="row pb-5">
                <form id="searchForm" action="rentCancel.do" method="get">
                    <div class="row">
                        <div class="col-5">
                            <div class="row">
                                <div class="col-4 text-end align-self-center">대여시작일</div>
                                <div class="col-8">
                                    <input type="date" class="form-control" name="startDate"
                                           value="<c:out value='${pagination.startDate}' />"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-5">
                            <div class="row">
                                <div class="col-4 text-end align-self-center">예약자명</div>
                                <div class="col-8">
                                    <input type="text" class="form-control" name="name" placeholder="이름 검색"
                                           value="<c:out value='${pagination.name}' />"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <button type="button" class="btn text-white w-100" style="background: #41087c;"
                                    id="nameSearchBtn">
                                검색
                            </button>
                        </div>
                    </div>
                </form>
            </div>

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
                <c:forEach var="com" items="${cancelList}">
                    <tr>
                        <td class="col">
                            <a href="/admin/rental/rentDetail.do?reservationNo=${com.reservationNo}">
                                    ${com.reservationNo}
                            </a>
                        </td>
                        <td class="col">${com.rentalPlaceName}</td>
                        <td class="col">${com.returnPlaceName}</td>
                        <td class="col"><fmt:formatDate value="${com.rentalDate}" pattern="MM/dd HH:mm" />
                            <br/>~ <fmt:formatDate value="${com.returnDate}" pattern="MM/dd HH:mm" /></td>
                        <td class="col">${fn:substring(com.carIdentificationNumber, 11, 13)}허
                                ${fn:substring(com.carIdentificationNumber, 13, 17)}</td>
                        <td class="col">${com.reservationMemberName}</td>
                        <td class="col">${com.finalReservationPrice}</td>
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

                    var url = "/admin/rental/rentCancel.do";
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

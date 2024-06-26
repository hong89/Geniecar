<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <h1 class="pb-5 tit">지점별 차량 목록</h1>
            <div class="row pb-5">
                <div class="col-3">
                    <select class="form-select" id="formSelect" aria-label="Default select example">
                        <option value="" selected>선택</option>
                        <c:forEach var="branch" items="${branches}">
                            <option value="${branch.fullCode}"
                                    <c:if test="${not empty param.keyword and param.keyword eq branch.fullCode}">selected</c:if>>
                                    ${branch.codeName}
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-9"></div>
            </div>


            <table class="pt-5 table caption-top">
                <thead>
                <tr>
                    <td class="col-2"><strong>지점</strong></td>
                    <td class="col-2"><strong>차량명</strong></td>
                    <td class="col-2"><strong>차량타입</strong></td>
                    <td class="col-2"><strong>연료</strong></td>
                    <td class="col-2"><strong>회사</strong></td>
                    <td class="col-2"><strong>차대번호</strong></td>
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
                                <c:out value="${idx}"/>
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

                    var url = "/admin/car/list.do";
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

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">단기 렌트 결제 내역</h1>
            </section>
            <table class="pt-5 table caption-top">
                <thead>
                <tr>
                    <td align="center" scope="col">No.</td>
                    <td align="center" scope="col"><strong>모델명</strong></td>
                    <td align="center" scope="col"><strong>작성자</strong></td>
                    <td align="center" scope="col"><strong>결제일</strong></td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td align="center">10</td>
                    <td align="center"><a href="#">제네시스</a></td>
                    <td align="center">최윤서</td>
                    <td align="center">2023.12.31</td>
                </tr>
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

                    var url = "/admin/car/newCarList.do";
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

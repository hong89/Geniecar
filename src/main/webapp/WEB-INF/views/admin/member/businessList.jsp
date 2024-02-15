<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <section class="text-center">
            <h1 class="pb-5">사업자 유저 목록</h1>
        </section>
        <section>
            <table class="pt-5 table">
                <thead>
                <tr>
                    <td align="center" scope="col">No.</td>
                    <td align="center" scope="col">ID</td>
                    <td align="center" scope="col"><strong>이름</strong></td>
                    <td align="center" scope="col"><strong>지점명</strong></td>
                    <td align="center" scope="col"><strong>가입일</strong></td>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="business" items="${businessList }" varStatus="status">
                        <tr>
                            <td align="center">${status.count}</td>
                            <td align="center">${business.ID}</td>
                            <td align="center"><a href="/admin/member/businessDetail.do?id=${business.ID}">${business.NAME }</a></td>
                            <td align="center">${business.BRANCH}</td>
                            <td align="center"><fmt:formatDate value="${business.JOIN_DATE}" pattern="yyyy-MM-dd" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>    
        <button type="button" class="btn" style="border: 1px solid #41087c;" onclick="location.href='/admin/member/waitingList.do'">승인대기목록</button>
    </div>
    <div>
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
                        <span aria-hidden="true" onclick="movePage(${pagination.currentPage} <c:if test="${pagination.hasPreviousPage}">-1</c:if>);">&lt;</span>
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
        <script>

            $('#formSelect').on('change', function () {
                movePage(1);
            });

            //페이지 이동
            function movePage(currentPage) {

                var url = "/admin/member/businessList.do";
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
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

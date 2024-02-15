<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    td > a  {
        display: block;
        width: 100%;
        height: 100%;
    } 
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <section class="text-center">
            <h1 class="pb-5">일반 유저 목록</h1>
        </section>
        <section>
            <table class="pt-5 table">
                <thead>
                <tr>
                    <td align="center" scope="col">ID</td>
                    <td align="center" scope="col"><strong>이름</strong></td>
                    <td align="center" scope="col"><strong>성별</strong></td>
                    <td align="center" scope="col"><strong>가입일</strong></td>
                    <td align="center" scope="col"><strong>탈퇴여부</strong></td>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${userList }" varStatus="status">
                        <tr>
                            <td align="center">${user.id}</td>
                            <td align="center"><a href="/admin/member/userDetail.do?id=${user.id}">${user.name }</a></td>
                            <td align="center">${user.gender}</td>
                            <td align="center"><fmt:formatDate value="${user.joinDate}" pattern="yyyy-MM-dd" /></td>
                            <td align="center">${user.withdrawalYn}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>

            
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

                    var url = "/admin/member/userList.do";
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

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
                    <td align="center" scope="col">No.</td>
                    <td align="center" scope="col">ID</td>
                    <td align="center" scope="col"><strong>이름</strong></td>
                    <td align="center" scope="col"><strong>성별</strong></td>
                    <td align="center" scope="col"><strong>가입일</strong></td>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${userList }" varStatus="status">
                        <tr>
                            <td align="center">${status.count}</td>
                            <td align="center">${user.id}</td>
                            <td align="center"><a href="/admin/member/userDetail.do?id=${user.id}">${user.name }</a></td>
                            <td align="center">${user.gender}</td>
                            <td align="center"><fmt:formatDate value="${user.joinDate}" pattern="yyyy-MM-dd" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>

            
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

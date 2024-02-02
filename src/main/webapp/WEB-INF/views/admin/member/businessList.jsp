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
                    <td align="center" scope="col"><strong>지점코드</strong></td>
                    <td align="center" scope="col"><strong>가입일</strong></td>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="business" items="${businessList }" varStatus="status">
                        <tr>
                            <td align="center">${status.count}</td>
                            <td align="center">${business.id}</td>
                            <td align="center"><a href="/admin/member/businessDetail.do?id=${business.id}">${business.name }</a></td>
                            <td align="center">${business.branchCode}</td>
                            <td align="center"><fmt:formatDate value="${business.joinDate}" pattern="yyyy-MM-dd" /></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

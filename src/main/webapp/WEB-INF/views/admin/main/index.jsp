<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- <script>
    window.onload = function() {
        var currentUrl = window.location.href;

        if (currentUrl.indexOf('typeCode=') === -1) {
            var typeCode = 'QNA';
            var newUrl = currentUrl + (currentUrl.indexOf('?') !== -1 ? '&' : '?') + 'typeCode=' + typeCode;
            window.location.href = newUrl;
        }
    };
</script> -->

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">상담 신청 목록</h1>
            </section>
            
            <div class="pt-5">
                <table class="table caption-top">
                    <thead>
                        <tr>
                            <td align="center" scope="col"><strong>No.</strong></td>
                            <td align="center" scope="col"><strong>제목</strong></td>
                            <td align="center" scope="col"><strong>작성일</strong></td>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="notice" items="${boardList1}" begin="0" end="4">
                            <tr>
                                <td align="center">${notice.rn}</td>
                                <td align="left"><a href="/admin/board/detailNotice.do?no=${notice.no}">${notice.title}</a></td>
                                <td align="center">${notice.regDate}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">1:1 문의 목록</h1>
            </section>
            
            <div class="pt-5">
                <table class="table caption-top">
                    <thead>
                        <tr>
                            <td align="center" scope="col"><strong>No.</strong></td>
                            <td align="center" scope="col"><strong>제목</strong></td>
                            <td align="center" scope="col"><strong>작성일</strong></td>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="notice" items="${boardList2}" begin="0" end="4">
                            <tr>
                                <td align="center">${notice.rn}</td>
                                <td align="left"><a href="/admin/board/detailNotice.do?no=${notice.no}">${notice.title}</a></td>
                                <td align="center">${notice.regDate}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
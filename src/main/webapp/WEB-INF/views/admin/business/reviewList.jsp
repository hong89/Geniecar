<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    // 검색수행
    function fn_search(i_page) {
        var page = i_page;
        if (page == null || page == '' || page == 'undefined') {
            page = 1;
        }
        location.href = "/admin/board/list.do?typeCode=" + $("#typeCode").val() + "&title=" + $("#title").val() + "&PageNum=" + page;
    }
</script>
<style>
    .card img {
        width: 100%;
        height: 300px;
        max-width: 100%;
        max-height: 100%;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pt-5">
        <div class="inner-type2">
            <c:set var="selectTypeCode" value=""/>
            <c:choose>
                <c:when test="${boardVo.typeCode eq 'NOTICE'}">
                    <c:set var="selectTypeCode" value="공지사항"/>
                </c:when>
                <c:when test="${boardVo.typeCode eq 'FAQ'}">
                    <c:set var="selectTypeCode" value="FAQ"/>
                </c:when>
                <c:when test="${boardVo.typeCode eq 'EVENT'}">
                    <c:set var="selectTypeCode" value="이벤트"/>
                </c:when>
                <c:when test="${boardVo.typeCode eq 'EVENTWINNER'}">
                    <c:set var="selectTypeCode" value="이벤트 당첨자"/>
                </c:when>
                <c:when test="${boardVo.typeCode eq 'CONSULTING'}">
                    <c:set var="selectTypeCode" value="상담 신청"/>
                </c:when>
                <c:when test="${boardVo.typeCode eq 'QNA'}">
                    <c:set var="selectTypeCode" value="1:1 문의"/>
                </c:when>
                <c:when test="${boardVo.typeCode eq 'REVIEW'}">
                    <c:set var="selectTypeCode" value="이용 후기"/>
                </c:when>
            </c:choose>
            <section class="text-center">
                <h1 class="tit">${selectTypeCode} 목록</h1>
            </section>
            <div class="pt-5">
                <<<<<<< HEAD
                <td class="text-center">
                    <div class="d-flex" style="float:right">
                        <input type="text" id="title" name="title" value="${boardVo.title}" class="form-control"
                               placeholder="검색어를 입력해주세요." onkeypress="if(event.keyCode == 13){fn_search();}"
                               style="flex: 1; margin-right: 10px;">
                        <input type="hidden" id="typeCode" name="typeCode" value="${boardVo.typeCode}">
                        <button type="button" class="btn text-white" onclick="javascript:fn_search(1)"
                                style="background-color: #41087c;">검색
                        </button>
                    </div>
                </td>
            </div>
        </div>
            <%-- <div class="pt-5">
                 <div class="py-5 inner-type2">
                     <div class="row row-cols-1 row-cols-md-3 g-4 P-5">
                         <c:forEach var="notice" items="${boardList}">
                         <div class="col">
                           <div class="card h-100">
                             <a href="/customer/reviewDetail.do?no=${notice.no}" style="text-decoration-line: none; color:black">
                                 <c:forEach var="imageFile" items="${notice.imageFiles}">
                                     <c:if test="${not empty imageFile.saveName}">
                                         <img src="/downloadFile/${imageFile.saveName}" alt="images">
                                     </c:if>
                                 </c:forEach>
                             <div class="card-body">
                               <h5 class="card-title">${notice.title}</h5><hr/>
                               <p class="card-text">${notice.content}</p>
                 <table class="table caption-top">
                     <tr>
                         <td class="text-center">
                             <div class="mx-auto" style="max-width: 500px;">
                                 <div class="d-flex">
                                     <input type="text" id="title" name="title" value="${boardVo.title}" class="form-control" placeholder="검색어를 입력해주세요." style="flex: 1; margin-right: 10px;">
                                     <input type="hidden" id="typeCode" name="typeCode" value="${boardVo.typeCode}">
                                     <button type="button" class="btn text-white" onclick="javascript:fn_search(1)" style="background-color: #41087c;">검색</button>
                                 </div>
                             </div>
                         </td>
                     </tr>
                 </table>--%>

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
                <c:forEach var="notice" items="${boardList}">
                    <tr>
                        <td align="center">${notice.no}</td>
                        <td align="left"><a href="/admin/board/detailNotice.do?no=${notice.no}">${notice.title}</a>
                        </td>
                        <td align="center">${notice.regDate}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
                <c:if test="${boardVo.startPageBlock > boardVo.pageBlock}">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:forEach begin="${boardVo.startPageBlock}" end="${boardVo.endPageBlock}" step="1"
                           varStatus="status">
                    <li class="page-item"><a class="page-link" href="#"
                                             onclick="javascript:fn_search('${status.index}')">${status.index}</a>
                    </li>
                </c:forEach>
                <c:if test="${boardVo.endPageBlock < boardVo.pageCount}">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>

<!--------------------------------------------------하단---------------------------------------------------------->
</div>
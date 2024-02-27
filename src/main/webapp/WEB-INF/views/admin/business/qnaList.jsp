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
        var baseUrl = "/admin/business/qnaList.do";
        var typeCode = $("#typeCode").val();
        var title = $("#title").val();
        
        var encodedUrl = baseUrl + "?typeCode=" + encodeURIComponent(typeCode) +
                        "&title=" + encodeURIComponent(title) +
                        "&PageNum=" + page;
        
        location.href = encodedUrl;
    }
    $(document).ready(function() {
    $(".increaseHit").click(function(e) {
        e.preventDefault(); // 기본 동작 방지

        var articleUrl = $(this).attr("href"); // 해당 글의 URL 가져오기
        var no = $(this).data("no");

        $.ajax({
            type: "POST",
            url: "/admin/board/increaseHit.do",
            data: { no: no },
            success: function(response) {
                console.log("Hit increased successfully.");
                window.location.href = articleUrl;
            },
            error: function(xhr, status, error) {
                console.error("Error occurred while increasing hit:", error);
                window.location.href = articleUrl;
            }
        });
    });
});
</script>
<style>
    .table thead tr td {
        border-bottom:#41087c solid 3px;
        padding: 15px;
        font-size: 1.2em;
    }
    .table tbody tr td {
        border-bottom:#d1c9ff solid 2px;
        padding: 15px;
    }
    pre {
        margin: auto 0;
        font-family: 'Noto Sans KR', sans-serif;
        font-optical-sizing: auto;
        font-weight: 400;
        font-style: normal;
        font-size: 16px;
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
            <div class="p-5">
                <td class="text-center">
                    <div class="d-flex" style="float:right">
                        <input type="text" id="title" name="title" value="${boardVo.title}" class="form-control" placeholder="검색어를 입력해주세요." onkeypress="if(event.keyCode == 13){fn_search();}" style="flex: 1; margin-right: 10px;">
                        <input type="hidden" id="typeCode" name="typeCode" value="${boardVo.typeCode}">
                        <button type="button" class="btn text-white" onclick="javascript:fn_search(1)" style="background-color: #41087c;">검색</button>
                    </div>
                </td>
            </div>
            <div class="pt-5">
                <table class="table caption-top">
                    <thead>
                    <tr>
                        <td align="center" scope="col"><strong>No.</strong></td>
                        <td align="center" scope="col"><strong>제목</strong></td>
                        <td align="center" scope="col"><strong>작성일</strong></td>
                        <td align="center" scope="col"><strong>조회수</strong></td>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="notice" items="${boardList}">
                        <tr>
                            <td align="center">${notice.rn}</td>
                            <td align="left"><pre><a href="/admin/business/adminQnaDetail.do?no=${notice.no}" class="increaseHit" data-no="${notice.no}" style="text-decoration-line: none; color:black">${notice.title}</pre></a>
                            </td>
                            <td align="center"><fmt:formatDate value="${notice.regDate}" pattern="yyyy-MM-dd"/></td>
                            <td align="center">${notice.hit}</td>
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

    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

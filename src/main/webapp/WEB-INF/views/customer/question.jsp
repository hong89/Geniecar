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
        location.href = "/customer/question?typeCode=" + $("#typeCode").val() + "&title=" + $("#title").val() + "&PageNum=" + page;
    }
</script>

<style>


</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">고객 지원</li>
                <li class="breadcrumb-item active" aria-current="page">1:1 문의</li>
            </ol>
        </nav>
    </div>

    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">1:1 문의</h1>
            </section>
            <div class="pt-5">
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
                </table>
            </div>
            <div class="pt-5">
                <table class="table caption-top">
                    <thead>
                    <tr>
                        <td align="center" scope="col"><strong></strong></td>
                        <td align="center" scope="col"><strong>제목</strong></td>
                        <td align="center" scope="col"><strong>작성일</strong></td>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="notice" items="${boardList}">
                        <tr>
                            <td align="center">공지</td>
                            <td align="left"><a href="/info/noticeDetail.do?no=${notice.no}" style="text-decoration-line: none; color:black">${notice.title}</a>
                            </td>
                            <td align="center"><fmt:formatDate value="${notice.regDate}" pattern="yyyy-MM-dd"/></td>
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
    
    <P>차가 시동이 안걸려서 바꾸고 싶어요</P>
    <P>배터리가 방전된거 같아요 어떻게 처리하나요?</P>
    <P>차상태가 안 좋아서 바꾸고 싶어요!</P>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

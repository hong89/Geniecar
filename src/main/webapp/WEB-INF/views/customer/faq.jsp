<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
                <li class="breadcrumb-item active" aria-current="page">자주하는 질문</li>
            </ol>
        </nav>
    </div>

    <div class="explain-header">
        <h2 class="tit-size-big">FAQ</h2>
        <hr/>
    </div>

    <div class="py-5">
        <div class="accordion" id="accordionExampl">
            <c:forEach var="notice" items="${boardList}">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="heading${notice.no}">
                        <button class="accordion-button" type="button" style="background-color:#f8f7fd; box-shadow: none;"
                                data-bs-toggle="collapse" data-bs-target="#collapse${notice.no}"
                                aria-expanded="false" aria-controls="collapse${notice.no}">
                            <span class="ico-q"><img src="/images/common/Qmark.png" width="30">&nbsp;&nbsp;</span>${notice.title}
                        </button>
                    </h2>
                    <div id="collapse${notice.no}" class="accordion-collapse collapse"
                         aria-labelledby="heading${notice.no}" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            ${notice.content}
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div>
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

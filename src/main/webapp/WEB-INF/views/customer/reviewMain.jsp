<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<style>
    .nav-pills .nav-link.active,
    .nav-pills .show > .nav-link {
        background-color: #41087c !important;
        color: white;
    }
    .card img {
        width: 100%;
        height: 300px;
        max-width: 100%;
        max-height: 100%;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">이용후기</li>
            </ol>
        </nav>
    </div>

    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">후기</h1>
            </section>

            <div class="pt-3">
                <p>
                    <span class="icon time2"></span><strong style="font-size: 30px;">이용 후기</strong>
                    <span class="icon date2"></span>
                    <button type="button" class="btn text-white" style="background: #41087c; float: right;"
                            onclick="location.href='/customer/reviewRegister.do'">후기등록
                    </button>
                </p>
            </div><hr/>
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
                    </div>
                    <div class="card-footer">작성일 :&nbsp;
                      <small class="text-muted">${notice.regDate}</small>
                    </div>
                    </a>
                  </div>
                </div>
                </c:forEach>
              </div>
           
            <nav class="p-5" aria-label="Page navigation example">
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

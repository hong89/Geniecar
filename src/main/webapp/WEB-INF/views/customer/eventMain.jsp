<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<style>
    .nav-pills .nav-link.active,
    .nav-pills .show > .nav-link {
        background-color: #41087c !important;
        color: white;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">고객 지원</li>
                <li class="breadcrumb-item active" aria-current="page">이벤트</li>
                <li class="breadcrumb-item active" aria-current="page">진행중 이벤트</li>
            </ol>
        </nav>
    </div>

    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">지니카 이벤트</h1>
                <p class="txt">지니카의 다양한 이벤트를 지금 바로 만나보세요!</p>
            </section>

            <nav class="my-5 nav nav-pills flex-column flex-sm-row">
                <a class="flex-sm-fill text-sm-center nav-link active" aria-current="page" href="/customer/eventMain.do?typeCode=EVENT">진행중 이벤트</a>
                <a class="flex-sm-fill text-sm-center nav-link" href="/customer/winnerEventMain.do?typeCode=EVENTWINNER">당첨자 발표</a>
            </nav>

            <div class="row row-cols-1 row-cols-md-3 g-4 P-5">
                <c:forEach var="notice" items="${boardList}">
                <div class="col">
                  <div class="card h-100">
                    <a href="/customer/eventDetail.do?no=${notice.no}" style="text-decoration-line: none; color:black">
                        <c:forEach var="imageFile" items="${notice.imageFiles}">
                            <c:if test="${not empty imageFile.saveName}">
                                <img class="form-control" src="/downloadFile/${imageFile.saveName}" alt="images" width="300" height="500">
                            </c:if>
                        </c:forEach>
                    <div class="card-body">
                      <h5 class="card-title">${notice.title}</h5><hr/>
                      <p class="card-text">${notice.content}</p>
                    </div>
                    <div class="card-footer">이벤트 기간 :&nbsp;
                      <small class="text-muted">${notice.startDate} ~ ${notice.endDate}</small>
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

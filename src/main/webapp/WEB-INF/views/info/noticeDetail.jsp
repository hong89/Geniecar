<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    .responsive-image {
        max-width: 100%;
        height: auto;
     }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit pb-5">공지사항 상세 내용</h1>
            </section>
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="title" name="title" value="${notice.title}" readonly>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="content" class="col-sm-2 col-form-label">내용</label>
                <div class="col-sm-10"><textarea class="form-control" id="content" name="content" rows="20"
                                                 style="width: 100%;" readonly><pre>${notice.content}</pre></textarea>
                </div>
            </div>
            <c:if test="${not empty imageFiles}">
                <c:forEach var="imageFile" items="${imageFiles}">
                    <c:if test="${not empty imageFile.saveName}">
                        <div class="mb-3 row">
                            <label for="images" class="col-sm-2 col-form-label">이미지</label>
                            <div class="col-sm-10">
                                <img class="form-control responsive-image" src="/downloadFile/${imageFile.saveName}" alt="images" width="300px" height="500px" aria-readonly="true">
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </c:if>
        </div>
        <div>
            <div class="p-5" style="text-align: center;">
                <a href="/info/noticeNewsMain.do?typeCode=${notice.typeCode}" class="btn text-white"
                   style="background-color: #41087c;">목록으로 돌아가기</a>
            </div>
        </div>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
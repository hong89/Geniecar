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
            <p align="left" style="font-size:20px;">
                <strong>${notice.title}</strong>
                <span style="float: right; font-size:15px;">${notice.regDate}</span>
            </p><hr/>
            <pre align="left">${notice.content}</pre> 
            <c:if test="${not empty imageFiles}">
                <div class="text-center">
                    <c:forEach var="imageFile" items="${imageFiles}">
                        <c:if test="${not empty imageFile.saveName}">
                            <div class="mb-3 row">
                                <div class="col-sm-12">
                                    <img class="responsive-image" src="/downloadFile/${imageFile.saveName}" alt="images" width="1000px" aria-readonly="true">
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </div>
            </c:if>
        </div>
        <div>
            <button type="button" class="btn text-white" style="background: #41087c"
                    onclick="location.href='list.do?typeCode=${notice.typeCode}'">목록가기
            </button>
            <button type="button" class="btn text-white" style="background: #41087c"
                    onclick="location.href='updateNoticeForm.do?no=${notice.no}'">수정하기
            </button>
            <button type="button" class="btn text-white" style="background: #41087c"
                    onclick="location.href='deleteNotice.do?no=${notice.no}&fileNo=${notice.fileNo}'">삭제하기
            </button>
        </div>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

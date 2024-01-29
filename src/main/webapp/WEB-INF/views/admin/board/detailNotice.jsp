<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    #registerForm {
        padding: 30px;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">공지사항 상세 내용</h1>
            </section>
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="title" name="title" value="${notice.title}">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="content" class="col-sm-2 col-form-label">내용</label>
                <div class="col-sm-10"><textarea class="form-control" id="content" name="content" rows="20"
                                                 style="width: 100%;">${notice.content}</textarea>
                </div>
            </div>
            <button type="button" class="btn text-white" style="background: #41087c"
                    onclick="location.href='list.do?typeCode=${notice.typeCode}'">목록가기
            </button>
            <button type="button" class="btn text-white" style="background: #41087c"
                    onclick="location.href='updateNoticeForm.do?no=${notice.no}'">수정하기
            </button>
            <button type="button" class="btn text-white" style="background: #41087c"
                    onclick="location.href='deleteNotice.do?no=${notice.no}'">삭제하기
            </button>
        </div>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

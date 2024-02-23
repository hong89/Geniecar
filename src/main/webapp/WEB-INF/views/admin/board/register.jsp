<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    function submitForm() {
        var title = document.getElementById("title").value;
        if (title.length > 100) {
            alert("제목은 100자를 초과할 수 없습니다.");
        } else {
            document.registerForm.submit();
        }
    }
</script>

<style>
    #registerForm {
        padding: 30px;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div id="registerForm">
        <h3>등록하기</h3>

        <form name="registerForm" action="/admin/board/insertBoard.do" method="post" enctype="multipart/form-data">
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">구분</label>
                <div class="col-sm-10">
                    <select class="form-select" id="typeCode" name="typeCode">
                        <option value="NOTICE">공지사항</option>
                        <option value="FAQ">FAQ</option>
                        <option value="EVENT">이벤트</option>
                        <option value="EVENTWINNER">이벤트 당첨자</option>
                        <option value="CONSULTING">상담 신청</option>
                        <option value="QNA">1:1 문의</option>
                        <option value="REVIEW">이용 후기</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="title" name="title">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="content" class="col-sm-2 col-form-label">내용</label>
                <div class="col-sm-10"><textarea class="form-control" id="content" name="content" rows="20"
                                                 style="width: 100%;"></textarea>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="fileMultiple" class="col-sm-2 col-form-label">파일</label>
                <div class="col-sm-10">
                    <input class="form-control" type="file" id="fileMultiple" name="file" multiple>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">이벤트 시작일</label>
                <div class="col-sm-2">
                    <input type="date" class="form-control" id="startDate" name="startDate">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">이벤트 종료일</label>
                <div class="col-sm-2">
                    <input type="date" class="form-control" id="endDate" name="endDate">
                </div>
            </div>
            <button type="button" class="btn text-white" style="background: #41087c" onclick="submitForm();">등록하기</button>

        </form>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

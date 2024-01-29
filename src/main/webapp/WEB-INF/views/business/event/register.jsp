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

    <div id="registerForm">
        <h3>이벤트 등록</h3>

        <form name="frmEvent" action="/business/event/registerInsert.do">
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="title">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="content" class="col-sm-2 col-form-label">내용</label>
                <div class="col-sm-10"><textarea class="form-control" id="content" rows="20"
                                                 style="width: 100%;"></textarea>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="fileMultiple" class="col-sm-2 col-form-label">파일</label>
                <div class="col-sm-10"><input class="form-control" type="file" id="fileMultiple" multiple>
                </div>
            </div>
            <button type="button" class="btn text-white" style="background: #41087c" onclick="submit();">등록하기</button>

        </form>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

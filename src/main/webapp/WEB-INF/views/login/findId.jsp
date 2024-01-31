<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--복사해서 사용하세요--%>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <script>
        function oninputPhone(target) {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
    }
    </script>
    
    <form action="/login/resultFindId.do" method="post">
        <h3 class="mt-5 mb-4 text-center fw-bolder">아이디 찾기</h3>
        <div class="row g-3 align-items-center join-container mb-3">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="name" class="col-form-label">이름</label>
            </div>
            <div class="col-auto">
                <input type="text" id="name" name="name" class="form-control">
            </div>
        </div>
        <div class="row g-3 align-items-center join-container mb-3">
            <div class="col-2"></div>
            <div class="col-2">
                <label for="hp" class="col-form-label">전화번호</label>
            </div>
            <div class="col-auto">
                <input type="text" id="hp" name="hp" class="form-control" oninput="oninputPhone(this)" maxlength="13">
            </div>
        </div>
        <div class="row g-3 align-items-center join-container mb-3">
            <div class="col-4"></div>
            <div class="col-auto">
                <button type="button" class="btn" style="border: 1px solid #41087c; width: 110px;" onclick="history.back()">취소</button>
                <button type="submit" class="btn text-white" id="submitBtn" style="background: #41087c; width: 110px;">찾기</button>
            </div>
        </div>
    </form>






    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

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
        <h3>예약 등록</h3>

        <form name="frmEvent" action="/business/consult/registerInsert.do">

            오더 테이블 생성 후 내용 추가<br>
            <button type="button" class="btn text-white" style="background: #41087c" onclick="submit();">등록하기</button>

        </form>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

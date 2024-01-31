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
    
    <form action="/login/resultFindPw.do" method="post">
        <input type="text" id="id" name="id" class="form-control"  placeholder="id">
        <input type="text" id="name" name="name" class="form-control"  placeholder="이름">
        <input type="text" id="hp" name="hp" class="form-control" oninput="oninputPhone(this)" maxlength="13" placeholder="전화번호">
        <input type="submit">
    </form>






    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

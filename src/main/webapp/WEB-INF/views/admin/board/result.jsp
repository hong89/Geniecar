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

    <h1>업로드가 완료되었습니다.</h1>
				
    <div class="result-images">
	<c:forEach var="imageFileName" items="${map.fileList}"  >
		<img src="/download?imageFileName=${imageFileName}">
		<br><br>
	</c:forEach>
	</div>
	<a href='/uploadForm.do'>다시 업로드 하기</a>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    var cnt=1;
    function fn_addFile(){
        $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
        cnt++;
    }
</script>

<style>
    #registerForm {
        padding: 30px;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <h1>파일 업로드 하기</h1>
	<form action="/uploadForm.do" method="post" enctype="multipart/form-data">
		<label>아이디:</label>
		
		<label>이름:</label>
			
			<input type="button" value="파일추가" onClick="fn_addFile()" /><br>
			<div id="d_file"></div>
		<input type = "submit" value="업로드" >
	</form>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

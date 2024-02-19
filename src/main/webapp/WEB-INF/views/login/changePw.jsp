<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--복사해서 사용하세요--%>
<script>
    $(function () {
        let msg = "${msg}";
        if(msg ==="ok") {alert("비밀번호가 변경되었습니다.")};
        
        $('#submitBtn').click(function () {
            var pw = $('#pw').val();
            var pw_ = $('#pw_').val();
            var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*?_]).{8,16}$/;

            if (pw === "") {
                alert("새 비밀번호를 입력하세요");
                $("#pw").focus();
                return false;
            } else if (!passwordRegex.test(pw)) {
                    alert("비밀번호는 8~20자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.");
                    return false;                
            }else if(password2 === "") {
                alert("새 비밀번호 확인을 입력하세요");
                $("#pw_").focus();
                return false;
            } else if (pw != pw_) {
                alert("비밀번호가 일치하지 않습니다.");
                return false;
            }
            $('#passwordForm').submit();
            
        });
    })
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <form method="post" name = "changePw" action="/login/dochangePw.do">
        <label>새 비밀번호</label>
        <input type="password" name="pw" id= "pw">
        <label>새 비밀번호 확인</label>
        <input type="password" name="pw_" id="pw_">
        <input type="hidden" id = "id" name = "id" value="${id}">
        <button id="submitBtn">변경하기</button>

    </form>
    






    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

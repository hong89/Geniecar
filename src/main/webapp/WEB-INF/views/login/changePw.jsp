<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--복사해서 사용하세요--%>
<script>
    $(function () {
        let msg = "${msg}";
        if(msg =="ok"){ alert("비밀번호가 변경되었습니다."); }
        
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
            } else if(pw_ === "") {
                alert("새 비밀번호 확인을 입력하세요");
                $("#pw_").focus();
                return false;
            } else if (pw != pw_) {
                alert("비밀번호가 일치하지 않습니다.");
                return false;
            }
            $('#changePw').submit();
            
        });
    })
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class = "row">
        <div class="col"></div>
        <div class="col text-center">
            <h1 class="m-5 text-center fw-bolder">비밀번호 변경</h1>
            <form method="post" id = "changePw" action="/login/dochangePw.do"> 
                <p class="form-text text-center pt-3 pb-2">
                    8~20자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.
                </p>               
                <div class="row mb-4">
                    <div class="col">
                        <label for ="pw" class="col-form-label">새 비밀번호</label>
                    </div>
                    <div class="col">
                        <input type="password" name="pw" id= "pw" class="form-control" style="width: 210px;">
                    </div>
                </div>
                
                <div class="row mb-5">
                    <div class="col r">
                        <label class="col-form-label" for="pw_">새 비밀번호 확인</label>
                    </div>
                    <div class="col ">
                        <input class="form-control" type="password" name="pw_" id="pw_"  style="width: 210px;">
                    </div>
                    <input type="hidden" id = "id" name = "id" value="${id}" >
                </div>
                
                <button type="button" class="btn text-white" id="submitBtn" style="background: #41087c; width: 110px;" >변경하기</button>
        
            </form>

        </div>
        <div class="col"></div>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

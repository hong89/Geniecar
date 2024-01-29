<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:if test='${not empty message }'>
    <script>
        window.onload = function () {
            result();
        }

        function result() {
            alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
        }
    </script>
</c:if>
<style>


</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div class="row">
        <div class="col">
        </div>

        <div class="col">
            <form action="/login/dologin.do" method="post">
                <img class="mb-4" src="/images/common/logo-full-image.png" alt="지니카">
                <h5 class="mb-3 fw-normal text-center">로그인 방식을 선택해 주세요</h5>

                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" name="id" placeholder="">
                    <label for="floatingInput">Id</label>
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control" id="floatingPassword" name="pw"
                           placeholder="Password">
                    <label for="floatingPassword">Password</label>
                </div>
                <button class="w-100 btn btn-lg mt-3 text-white" type="submit"
                        style="background-color:#41087c;">로그인
                </button>

                <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=cf11928680449247d8d486d6f2f78403&redirect_uri=http://localhost:8085/main/index.do">
                    <img src="/images/kakao_login_large_wide.png" class="w-100 mt-3">
                </a>
                <button class="w-100 btn btn-lg btn-success mt-3" type="submit">네이버 로그인</button>
            </form>
        </div>
        <div class="col">
        </div>
        <!--------------------------------------------------하단---------------------------------------------------------->
    </div>
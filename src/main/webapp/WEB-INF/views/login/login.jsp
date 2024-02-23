<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    a {
        text-decoration: none;
        color: #23093d;
    }

</style>
<script>


</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div class="row">
        <div class="col"></div>
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
                <button class="w-100 btn btn-lg mt-3 text-white" type="submit" style="background-color:#41087c;">로그인
                </button>
                <div class="row">
                    <div class="col-6">
                        <%-- 카카오 로그인 버튼 노출 영역 --%>
                        <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=d32e45df85093ba4bbab108ac5afd304&redirect_uri=http://localhost:8085/login/kakao.do">
                            <img class="mt-3" src="/images/kakao_login_btn.png" width="100%"/>
                        </a>
                    </div>
                    <div class="col-6">
                        <%-- 네이버 로그인 버튼 노출 영역 --%>
                        <a href="${apiURL}">
                            <img class="mt-3" src="/images/naver_login_btn.png" width="100%"/>
                        </a>
                    </div>
                </div>
                <div class="w-100 mt-3 text-center">
                    <a href="/login/findId.do">아이디 찾기</a> /
                    <a href="/login/findPw.do">비밀번호 찾기</a>
                </div>
                <div class="w-100 mt-3 text-center">
                    <a href="/member/memberJoin.do">회원가입</a> /
                    <a href="/member/businessJoin.do">사업자 회원가입</a>
                </div>
            </form>
        </div>
        <div class="col"></div>
        <!--------------------------------------------------하단---------------------------------------------------------->
    </div>
</div>

<script>
    <c:if test="${not empty errorMsg}">
    alert('${errorMsg}');
    </c:if>
</script>
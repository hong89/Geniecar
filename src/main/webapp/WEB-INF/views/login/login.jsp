<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<style>
    a{
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
                <button class="w-100 btn btn-lg mt-3 text-white" type="submit" style="background-color:#41087c;">로그인</button>
                <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=cf11928680449247d8d486d6f2f78403&redirect_uri=http://localhost:8085/main/index.do">
                    <img src="/images/kakao_login_large_wide.png" class="w-100 mt-3" /></a>
                <!-- //네이버 로그인 버튼 노출 영역 -->
                <div id="naver_id_login" class="w-100 mt-3"></div>
                <script type="text/javascript">
                    var naver_id_login = new naver_id_login("4vXvpWdKFJd1iXo7QRxe", "http://localhost:8085/mypage/main.do");
                    var state = naver_id_login.getUniqState();
                    naver_id_login.setButton("green", 3, 90);
                    naver_id_login.setDomain("http://localhost:8085");
                    naver_id_login.setState(state);
                    naver_id_login.setPopup();
                    naver_id_login.init_naver_id_login();
                </script>
                <div class="w-100 mt-3 text-center"><a href="/login/findId.do">아이디 찾기</a>/<a href="/login/findPw.do">비밀번호 찾기</a></div>
                <div class="w-100 mt-3 text-center"><a href="/member/memberJoin.do">회원가입</a>/<a href="/member/businessJoin.do">사업자 회원가입</a></div>
            </form>
        </div>
        <div class="col"></div>
        <!--------------------------------------------------하단---------------------------------------------------------->
    </div>
</div>

<script>









































































    
</script>
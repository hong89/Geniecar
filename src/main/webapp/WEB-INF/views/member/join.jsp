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
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div class="row p-4">
        <div class="col"></div>
        <div class="col">
            <img class="mt-5 mb-5" src="/images/common/logo-full-image.png" alt="지니카">
            
            <button class="w-100 btn btn-lg mb-4 text-white" onClick="location.href='/member/memberJoin.do'" style="background-color:#41087c;">회원가입</button>
            <button class="w-100 btn btn-lg mb-4 text-white" onClick="location.href='/member/businessJoin.do'" style="background-color:#41087c;">사업자 회원가입</button>
            <h5 class="m-3 fw-normal text-center">이미 계정이 있나요? <a href="/login/login.do">로그인</a></h5>      
        </div>
        <div class="col"></div>
        <!--------------------------------------------------하단---------------------------------------------------------->
    </div>
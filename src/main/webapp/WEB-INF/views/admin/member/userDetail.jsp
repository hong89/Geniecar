<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--복사해서 사용하세요--%>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <section class="text-center">
            <h1 class="pb-5">유저 정보</h1>
        </section>
        <section>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="id" class="">아이디</label>
                </div>
                <div class="col-auto">
                    <p class="">${user.id}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="name" class="">이름</label>
                </div>
                <div class="col-auto">
                    <p class="">${user.name}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="id" class="">성별</label>
                </div>
                <div class="col-auto">
                    <p class="">${user.gender}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="id" class="">생년월일</label>
                </div>
                <div class="col-auto">
                    <p class="" ><fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd" /></p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="hp" class="">전화 번호</label>
                </div>
                <div class="col-auto">
                    <p class="">${user.hp}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="zipCode" class="">   </label>
                </div>
                <div class="col-auto">
                    <p class="">${user.zipCode}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="address" class="">주소</label>
                </div>
                <div class="col-auto">
                    <p class="">${user.address}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="addressDetail" class="">   </label>
                </div>
                <div class="col-auto">
                    <p class="">${user.addressDetail}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="joinDate" class="">가입일</label>
                </div>
                <div class="col-auto">
                    <p class=""><fmt:formatDate value="${user.joinDate}" pattern="yyyy-MM-dd" /></p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="joinDate" class="">마지막 로그인</label>
                </div>
                <div class="col-auto">
                    <p class=""><fmt:formatDate value="${user.lastLoginDate}" pattern="yyyy-MM-dd hh:mm:ss" /></p>
                </div>
            </div>
            <div class="d-flex justify-content-center mt-4">
                <button class="btn me-2" style="border:1px solid #41087c;" onclick='location.href="/admin/member/userList.do"'>목록으로</button>
                <button class="btn me-2" style="border:1px solid #41087c;" onclick=''>강퇴</button> 
            </div>
        </section>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--복사해서 사용하세요--%>
<div class="container-xl">
    <script>
        function fn_kick() {
            var id = $("#id").val();
            $.ajax({
                type: "get",
                url: "/admin/member/kick.do",
                dataType: "text",
                data: { id: id },
                success: function (data, Status) {
                    alert("완료되었습니다.");
                    document.location.reload();
                },
                error: function (data, Status) {
                    alert("에러가 발생했습니다.");
                }
            });
        }
    </script>
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
                    <p class="">${business.id}</p>
                    <input type="hidden" value="${business.id}" id ="id">
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="name" class="">이름</label>
                </div>
                <div class="col-auto">
                    <p class="">${business.name}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="addressDetail" class="">지점</label>
                </div>
                <div class="col-auto">
                    <p class="">${business.branchCode}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="id" class="">성별</label>
                </div>
                <div class="col-auto">
                    <p class="">${business.gender}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="id" class="">생년월일</label>
                </div>
                <div class="col-auto">
                    <p class="" ><fmt:formatDate value="${business.birthday}" pattern="yyyy-MM-dd" /></p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="hp" class="">전화 번호</label>
                </div>
                <div class="col-auto">
                    <p class="">${business.hp}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="zipCode" class="">   </label>
                </div>
                <div class="col-auto">
                    <p class="">${business.zipCode}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="address" class="">주소</label>
                </div>
                <div class="col-auto">
                    <p class="">${business.address}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="addressDetail" class="">   </label>
                </div>
                <div class="col-auto">
                    <p class="">${business.addressDetail}</p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="joinDate" class="">가입일</label>
                </div>
                <div class="col-auto">
                    <p class=""><fmt:formatDate value="${business.joinDate}" pattern="yyyy-MM-dd" /></p>
                </div>
            </div>
            <div class="row p-1 m-2">
                <div class="col-2">
                    <label for="joinDate" class="">마지막 로그인</label>
                </div>
                <div class="col-auto">
                    <p class=""><fmt:formatDate value="${business.lastLoginDate}" pattern="yyyy-MM-dd hh:mm:ss" /></p>
                </div>
            </div>
            <div class="d-flex justify-content-center mt-4">
                <button class="btn me-2" style="border:1px solid #41087c;" onclick='location.href="/admin/member/businessList.do"'>목록으로</button>
                <button class="btn me-2" style="border:1px solid #41087c;" onclick='fn_kick()'>강퇴</button> 
            </div>
        </section>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

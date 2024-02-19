<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
    function mainLink() {
        location.href = '/main/index.do';
    }
</script>
<%--복사해서 사용하세요--%>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <section class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute top-0 end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">상담신청</li>
            </ol>
        </nav>
    </section>
    <section class="pb-4">
        <h1 class="fw-bolder text-center pb-5 mb-5">상담신청 완료</h1>

        <div class="mt-4 mb-4 p-4 text-center" style="background-color: #f8f7fd; color: #23093d; height: 500px">
            <h4 style="padding-top: 150px">상담신청이 완료되었습니다.</h4>
            <h4>남겨주신 연락처로 24시간 이내에 연락드리겠습니다.</h4>
            <h4>이용해 주셔서 감사합니다.</h4>
        </div>
        <div class="text-center text-center m-5">
            <button class="btn" style="border: 1px solid #41087c;"
                    onclick="mainLink(); return false;">메인으로
            </button>
        </div>
    </section>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

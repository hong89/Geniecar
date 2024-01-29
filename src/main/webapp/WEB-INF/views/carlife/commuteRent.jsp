<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    .float-end {
        display: inline;
    }

    .content1 {
        text-align: center;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">단기렌터카</li>
                <li class="breadcrumb-item active" aria-current="page">출퇴근렌터카</li>
                <li class="breadcrumb-item active" aria-current="page">출퇴근렌터카 상품 안내</li>
            </ol>
        </nav>
    </div>

    <div class="content1">
        <h3>출퇴근 렌터카</h3><br/>
        <a href="/carlife/commuteRent.do">
            <img class="mb-4" src="/images/commuteRent.png" alt="출퇴근 페이지">
        </a>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

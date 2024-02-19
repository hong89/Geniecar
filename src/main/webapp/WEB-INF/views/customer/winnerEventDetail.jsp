<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    .bot-row {
        display: flex;
        justify-content: space-between;
    }

    .ntc-tit-container {
        display: flex;
        align-items: center;
    }

    .ntc-tit {
        margin-right: auto;
    }

    .ntc-date {
        margin-left: auto;
    }

</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">고객지원</li>
                <li class="breadcrumb-item active" aria-current="page">이벤트</li>
                <li class="breadcrumb-item active" aria-current="page">진행중 이벤트</li>
            </ol>
        </nav>
    </div>

    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit pb-5">당첨자 상세 내용</h1>
            </section>
            <p style="font-size:20px;">
                <strong>${notice.title}</strong>
                <span style="float: right; font-size:15px;">${notice.regDate}</span>
            </p><hr/>
            <p>${notice.content}</p>
        </div>
        <div>
            <div class="p-5" style="text-align: center;">
                <a href="javascript:history.back();" class="btn text-white"
                   style="background-color: #41087c;">목록으로 돌아가기</a>
            </div>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

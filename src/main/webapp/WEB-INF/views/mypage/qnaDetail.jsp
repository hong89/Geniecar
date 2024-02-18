<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
 
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit pb-5">1:1 문의 상세 내용</h1>
            </section>
            <p style="font-size:20px;">
                <strong>${notice.title}</strong>
                <span style="float: right; font-size:15px;">${notice.regDate}</span>
            </p><hr/>
            <pre>${notice.content}</pre>   
        </div>
        <div>
            <div class="p-5" style="text-align: center;">
                <a href="/mypage/qna.do?typeCode=${notice.typeCode}" class="btn text-white"
                   style="background-color: #41087c;">목록가기</a>
                <a href="/mypage/deleteNotice.do?no=${notice.no}&fileNo=${notice.fileNo}" class="btn text-white"
                   style="background-color: #41087c;">삭제하기</a>
            </div>
        </div>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
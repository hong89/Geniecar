<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>복사해서 사용하세요</title>
    <!-- 추가 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <!-- 스타일 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <!-- 자바스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
            integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
            crossorigin="anonymous"></script>

    <!-- 공통 css 파일 -->
    <link rel="stylesheet" type="text/css" href="/styles/content.css"/>
    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<style>
		
	</style>
</head>
<body>
<div class="container-xl">
	<!--------------------------------------------------상단---------------------------------------------------------->
	<div class="pt-5">
		<section class="text-center pb-4">
            <h1 class="fw-bolder">공지사항 상세 내용</h1>
        </section>
		<div class="explain-header">
			<p style="float: right;">2023.11.20</p>
			<h2 class="tit-size-big">지니카 서비스 가입 정상화 완료 안내</h2><hr/>
		</div>
		<div class="explain-cont">
			정부 24 시스템 장애로 인해 지연되었던 차방정 서비스 정상화를 안내 드립니다.<br/>
			해당 시간 동안 불편함을 끼쳐드려 죄송합니다.<br/>
			11월20일 오전 10시30분 기준 재 안내<br/>
			<br/>
			정부 24 사이트 정상화되었으나, 현재 조회량 집중 등 서비스가 불안정한 상황으로<br/>
			지니카 서비스 가입 및 차량등록 시도 시 조회 불가 및 타임아웃 발생할 수 있는 점 안내 드립니다.
		</div>
	</div>
	<div class="p-5" style="text-align: center;">
		<a href="${contextPath}/info/noticeNewsMain.do" class="btn text-white"
			style="background-color: #41087c;">목록으로 돌아가기</a>
	</div>		
	<!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>
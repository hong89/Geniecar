<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>복사해서 사용하세요</title>
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
        #footer {
            padding: 20px 0 30px 0;
        }

        #footerAddress {
            padding: 20px 0;
        }
    </style>
</head>
<body>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div id="footer">
        <ul class="nav justify-content-center" style="background-color: #23093d; padding: 10px;">
            <li class="nav-item">
                <a class="nav-link text-white" target="_self" href="/company/compInfo.do">회사소개</a></li>
            <li class="nav-item">
                <a class="nav-link text-white" target="_self" href="/company/personalInfo.do">개인정보처리방침</a></li>
            <li class="nav-item">
                <a class="nav-link text-white" target="_self" href="/company/videoInfo.do">영상정보처리기기 운영관리방침</a></li>
            <li class="nav-item">
                <a class="nav-link text-white" target="_self" href="/company/use.do">이용약관</a></li>
            <li class="nav-item">
                <a class="nav-link text-white" target="_self" href="/company/personalInfo.do">이메일주소무단수집거부</a></li>
            <li class="nav-item">
                <a class="nav-link text-white" target="_self" href="/company/visitRoad.do">Contact us</a></li>
            <li class="nav-item">
                <a class="nav-link text-white" target="_self" href="/company/siteMap.do">사이트맵</a></li>
        </ul>


        <div class="row" id="footerAddress">
            <div class="col-sm-8">
                <div>
                    <img src="/images/common/logo-full-image.png" width="160px;" alt="GenieCar"/>
                </div>
                ㈜지니카 대표이사 진대표<br/>
                대전광역시 서구 대덕대로 182 오라클빌딩 10층<br/>
                사업자등록번호 : 123-45-67891 / 통신판매업신고번호 : 제2024-대전서구-1005호<br/>
                보험대차 1234-4321 / 일반상품렌탈 1234-5432<br/>

            </div>
            <div class="col-sm-2">
                <p>고객센터</p>
                <b>1234-1234</b>
                평일 09:00 ~ 18:00<br>
                단, 사고처리 문의는 24시간 가능
            </div>
            <div class="col-sm-2">
                <div class="footer-app-wrap">
                    <p>앱 다운로드</p>
                    <ul>
                        <li><a href="https://play.google.com/store/apps" target="_blank"><i
                                class="icon app01">Google Play</i></a></li>
                        <li>
                            <a href="https://www.apple.com/kr/store"
                               target="_blank"><i class="icon app02">App Store</i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

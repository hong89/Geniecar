<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    footer {
        padding: 20px 0 30px 0;
    }

    #footerAddress {
        padding: 20px 0;
    }

    .footer-address {
        padding: 5px 40px;
    }

    .footer-address1 {
        padding: 30px 40px;
    }
</style>
<!--------------------------------------------------상단---------------------------------------------------------->
<footer>
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
        <div class="col-sm-6 footer-address">
            <div>
                <img src="/images/common/logo-full-image.png" width="160px;" alt="GenieCar"/>
            </div>
            ㈜지니카 대표이사 진대표<br/>
            대전광역시 서구 대덕대로 182 오라클빌딩 10층<br/>
            사업자등록번호 : 123-45-67891 / 통신판매업신고번호 : 제2024-대전서구-1005호<br/>
            보험대차 1234-4321 / 일반상품렌탈 1234-5432<br/>

        </div>
        <div class="col-sm-3 footer-address1">
            <p>고객센터</p>
            <b>1234-1234</b>
            평일 09:00 ~ 18:00<br>
            단, 사고처리 문의는 24시간 가능
        </div>
        <div class="col-sm-3 footer-address1">
            <div class="footer-app-wrap">
                <p>앱 다운로드</p>
                <a href="https://play.google.com/store/apps" target="_blank">
                    <img src="/images/icons/ico-app01.png"/></a>
                <a href="https://www.apple.com/kr/store" target="_blank">
                    <img src="/images/icons/ico-app02.png"/></a>
            </div>
        </div>
    </div>
</footer>


<!--------------------------------------------------하단---------------------------------------------------------->

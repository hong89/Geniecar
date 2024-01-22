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

    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
            class="position-absolute end-0">
            <ol class="breadcrumb">
                 <li class="breadcrumb-item"><a href="${contextPath}/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">고객 지원</li>
                <li class="breadcrumb-item active" aria-current="page">1:1 고객 센터</li>
            </ol>
        </nav>
    </div>

    <div class="p-5 carLife-container">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">1:1 고객 센터</h1>
            </section>
                    <table class="pt-5 table caption-top">
                        <thead>
                            <tr>
                                <td align="center"scope="col"></td>
                                <td align="center"scope="col"><strong>제목</strong></td>
                                <td align="center"scope="col"><strong>작성일</strong></td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td align="center">문의</td>
                                <td align="center"><a href="#">차가 시동이 안걸려서 바꾸고 싶어요</a></td>
                                <td align="center">2024.01.11</td>
                        
                            </tr>
                            <tr>
                                <td align="center">문의</td>
                                <td align="center"><a href="#">배터리가 방전된거 같아요 어떻게 처리하나요?</a></td>
                                <td align="center">2023.10.10</td>
                            </tr>
                            <tr>
                                <td align="center">문의</td>
                                <td align="center"><a href="#">차상태가 안 좋아서 바꾸고 싶어요!</a></td>
                                <td align="center">2023.07.01</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
        </div>
    </div>



























    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

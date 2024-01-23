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
</head>
<body>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
<div class="p-5">
    <div class="inner-type2">
        <section class="text-center">
            <h1 class="pb-5 tit">출퇴근 렌트 결제 내역</h1>
        </section>
                <table class="pt-5 table caption-top">
                    <thead>
                        <tr>
                            <td align="center"scope="col">No.</td>
                            <td align="center"scope="col"><strong>모델명</strong></td>
                            <td align="center"scope="col"><strong>작성자</strong></td>
                            <td align="center"scope="col"><strong>결제일</strong></td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td align="center">10</td>
                            <td align="center"><a href="#">스파크</a></td>
                            <td align="center">김재화</td>
                            <td align="center">2023.12.31</td>
                        </tr>
                        <tr>
                            <td align="center">9</td>
                            <td align="center"><a href="#">제네시스</a></td>
                            <td align="center">안승권</td>
                            <td align="center">2023.11.28</td>
                        </tr>
                        <tr>
                            <td align="center">8</td>
                            <td align="center"><a href="#">소나타</a></td>
                            <td align="center">신유진</td>
                            <td align="center">2023.10.25</td>
                        </tr>
                        <tr>
                            <td align="center">7</td>
                            <td align="center"><a href="#">셀토스</a></td>
                            <td align="center">김광복</td>
                            <td align="center">2023.09.14</td>
                        </tr>
                        <tr>
                            <td align="center">6</td>
                            <td align="center"><a href="#">스포티지</a></td>
                            <td align="center">노호섭</td>
                            <td align="center">2023.05.31</td>
                        </tr>
                        <tr>
                            <td align="center">5</td>
                            <td align="center"><a href="#">마티즈</a></td>
                            <td align="center">문태을</td>
                            <td align="center">2023.05.31</td>
                        </tr>
                        <tr>
                            <td align="center">4</td>
                            <td align="center"><a href="#">K5</a></td>
                            <td align="center">고숙환</td>
                            <td align="center">2023.04.31</td>
                        </tr>
                        <tr>
                            <td align="center">3</td>
                            <td align="center"><a href="#">K3</a></td>
                            <td align="center">천현화</td>
                            <td align="center">2024.03.11</td>
                        </tr>
                        <tr>
                            <td align="center">2</td>
                            <td align="center"><a href="#">티코</a></td>
                            <td align="center">조승연</td>
                            <td align="center">2023.02.10</td>
                        </tr>
                        <tr>
                            <td align="center">1</td>
                            <td align="center"><a href="#">K7</a></td>
                            <td align="center">김태희</td>
                            <td align="center">2023.01.01</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        <div>
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

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
    <script>
        // 검색수행
        function fn_search(i_page){
            var page = i_page;
            if(page == null || page == '' || page == 'undefined'){
                page = 1;
            }
            location.href = "/admin/board/list.do?typeCode="+$("#typeCode").val()+"&title="+$("#title").val()+"&PageNum="+page;
        }
    </script>
</head>
<body>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">FAQ 목록</h1>
            </section>
            <div class="pt-5">
                <table class="table caption-top">
                    <tr>
                        <th>제목</th>
                        <td>
                            <input type="text" id="title" name="title" value="${boardVo.title}">
                            <input type="hidden" id="typeCode" name="typeCode" value="${boardVo.typeCode}">
                        </td>
                        <td><input type="button" value="검색" onclick="javascript:fn_search(1)"></td>
                    </tr>
                </table>
            </div>
            <div class="pt-5">
                <table class="table caption-top">
                    <thead>
                        <tr>
                            <td align="center"scope="col"><strong>No.</strong></td>
                            <td align="center"scope="col"><strong>제목</strong></td>
                            <td align="center"scope="col"><strong>작성일</strong></td>
                        </tr>
                    </thead>
    
                    <tbody>
                        <c:forEach var="notice" items="${boardList}">
                            <tr>    
                                <td align="center">${notice.no}</td>
                                <td align="left"><a href="/info/noticeDetail.do?boardNo=${notice.no}">${notice.title}</a></td>
                                <td align="center">${notice.regDate}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <c:if test="${boardVo.startPageBlock > boardVo.pageBlock}">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <c:forEach begin="${boardVo.startPageBlock}" end="${boardVo.endPageBlock}" step="1" varStatus="status">
                        <li class="page-item"><a class="page-link" href="#" onclick="javascript:fn_search('${status.index}')">${status.index}</a></li>
                    </c:forEach>
                    <c:if test="${boardVo.endPageBlock < boardVo.pageCount}">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </div>
    
    </div>


























    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
</body>
</html>

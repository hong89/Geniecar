<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">${boardVo.typeCode} 목록</h1>
            </section>
            <div class="pt-5">
                <table class="table caption-top">
                    <tr>
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
                        <td align="center" scope="col"><strong>No.</strong></td>
                        <td align="center" scope="col"><strong>제목</strong></td>
                        <td align="center" scope="col"><strong>작성일</strong></td>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="notice" items="${boardList}">
                        <tr>
                            <td align="center">${notice.no}</td>
                            <td align="left"><a href="/admin/board/detailNotice.do?no=${notice.no}">${notice.title}</a>
                            </td>
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
                    <c:forEach begin="${boardVo.startPageBlock}" end="${boardVo.endPageBlock}" step="1"
                               varStatus="status">
                        <li class="page-item"><a class="page-link" href="#"
                                                 onclick="javascript:fn_search('${status.index}')">${status.index}</a>
                        </li>
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

    Q&A 목록
    <div class="pt-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">Q&A 목록</h1>
            </section>
            <div class="pt-5">
                <table class="table caption-top">
                    <thead>
                    <tr>
                        <td align="center" scope="col">No.</td>
                        <td align="center" scope="col"><strong>제목</strong></td>
                        <td align="center" scope="col"><strong>작성자</strong></td>
                        <td align="center" scope="col"><strong>작성일</strong></td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td align="center">5</td>
                        <td align="center"><a href="#">차가 터질것 같아요.</a></td>
                        <td align="center">김가은</td>
                        <td align="center">2024.01.11</td>
                    </tr>
                    <tr>
                        <td align="center">4</td>
                        <td align="center"><a href="#">차 타고 바다 건널 수 있나요?</a></td>
                        <td align="center">김지숙</td>
                        <td align="center">2023.10.10</td>
                    </tr>
                    <tr>
                        <td align="center">3</td>
                        <td align="center"><a href="#">블랙박스가 자꾸 꺼져요!</a></td>
                        <td align="center">이진희</td>
                        <td align="center">2023.07.01</td>
                    </tr>
                    <tr>
                        <td align="center">2</td>
                        <td align="center"><a href="#">기름이 없으면 어떻하나요?</a></td>
                        <td align="center">김용오</td>
                        <td align="center">2023.07.01</td>
                    </tr>
                    <tr>
                        <td align="center">1</td>
                        <td align="center"><a href="#">차 안에서는 잘 수 없나요? 너무 졸려요!</a></td>
                        <td align="center">이성재</td>
                        <td align="center">2023.07.01</td>
                    </tr>
                    </tbody>
                </table>
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

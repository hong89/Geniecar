<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    .nav-pills .nav-link.active,
    .nav-pills .show > .nav-link {
        background-color: #41087c !important;
        color: white;
    }


</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="${contextPath}/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">고객 지원</li>
                <li class="breadcrumb-item active" aria-current="page">공지사항</li>
            </ol>
        </nav>
    </div>

    <div class="carLife-container">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">공지사항</h1>
            </section>

            <div class="tab-cont tab-normal">
                <div>
                    <form class="p-5 row row-cols-lg-auto g-3 align-items-center justify-content-center"
                          style="text-align: center;">
                        <div class="col-3">
                            <label class="visually-hidden" for="inlineFormSelectPref">Preference</label>
                            <select class="form-select" id="inlineFormSelectPref">
                                <option value="1">전체</option>
                                <option value="2">제목</option>
                                <option value="3">내용</option>
                            </select>
                        </div>
                        <div class="col-3">
                            <label class="visually-hidden" for="inlineFormInputGroupUsername">Use</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="inlineFormInputGroupUsername"
                                       placeholder="검색어를 입력해주세요.">
                            </div>
                        </div>
                        <div class="col-3">
                            <button type="submit" class="btn text-white" style="background-color: #41087c;">검색</button>
                        </div>
                    </form>

                    <table class="table caption-top">
                        <thead>
                        <tr>
                            <td align="center" scope="col"></td>
                            <td align="center" scope="col"><strong>제목</strong></td>
                            <td align="center" scope="col"><strong>작성일</strong></td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td align="center">공지</td>
                            <td align="center"><a href="${contextPath}/info/noticeDetail.do">지니카 서비스 가입 정상화 완료 안내</a>
                            </td>
                            <td align="center">2023.11.20</td>

                        </tr>
                        <tr>
                            <td align="center">공지</td>
                            <td align="center"><a href="${contextPath}/info/noticeDetail.do">2024 대한민국 퍼스트브랜드 대상 20년 연속
                                수상</a></td>
                            <td align="center">2023.10.10</td>
                        </tr>
                        <tr>
                            <td align="center">공지</td>
                            <td align="center"><a href="${contextPath}/info/noticeDetail.do">수탁사 변경에 따른 개인정보 처리방침 변경에 대한
                                공지</a></td>
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

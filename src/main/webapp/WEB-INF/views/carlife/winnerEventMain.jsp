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
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">CAR뮤니티</li>
                <li class="breadcrumb-item active" aria-current="page">이벤트</li>
                <li class="breadcrumb-item active" aria-current="page">당첨자발표</li>
            </ol>
        </nav>
    </div>

    <div class="carLife-container">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">당첨자 발표</h1>
                <p class="txt">당첨을 축하드립니다!</p>
            </section>

            <nav class="mt-5 nav nav-pills flex-column flex-sm-row">
                <a class="flex-sm-fill text-sm-center nav-link" href="/carlife/eventMain.do">진행중 이벤트</a>
                <a class="flex-sm-fill text-sm-center nav-link active" aria-current="page"
                   href="/carlife/winnerEventMain.do">당첨자 발표</a>
            </nav>

            <!-- 이벤트 리스트 -->
            <div class="tab-cont tab-normal">
                <div>
                    <!-- 검색 -->
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
                            <button type="submit" class="btn btn-primary" style="background-color: #41087c;">검색</button>
                        </div>
                    </form>

                    <table class="table caption-top">
                        <thead>
                        <tr>
                            <td scope="col"><strong>No</strong></td>
                            <td align="center" scope="col"><strong>제목</strong></td>
                            <td align="center" scope="col"><strong>작성일</strong></td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">3</th>
                            <td align="center"><a href="#">2023 고객만족도 설문조사 4분기 이벤트 당첨자발표</a></td>
                            <td align="center">2024.01.11</td>

                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td align="center"><a href="#">2023 고객만족도 설문조사 3분기 이벤트 당첨자발표</a></td>
                            <td align="center">2023.10.10</td>
                        </tr>
                        <tr>
                            <th scope="row">1</th>
                            <td align="center"><a href="#">2023 고객만족도 설문조사 2분기 이벤트 당첨자발표</a></td>
                            <td align="center">2023.07.01</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

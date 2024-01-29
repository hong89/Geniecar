<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>


</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
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
                    <td align="center" scope="col"></td>
                    <td align="center" scope="col"><strong>제목</strong></td>
                    <td align="center" scope="col"><strong>작성일</strong></td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td align="center">문의</td>
                    <td align="center"><a href="/customer/questionDetail.do">차가 시동이 안걸려서 바꾸고 싶어요</a></td>
                    <td align="center">2024.01.11</td>

                </tr>
                <tr>
                    <td align="center">문의</td>
                    <td align="center"><a href="/customer/questionDetail.do">배터리가 방전된거 같아요 어떻게 처리하나요?</a></td>
                    <td align="center">2023.10.10</td>
                </tr>
                <tr>
                    <td align="center">문의</td>
                    <td align="center"><a href="/customer/questionDetail.do">차상태가 안 좋아서 바꾸고 싶어요!</a></td>
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


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

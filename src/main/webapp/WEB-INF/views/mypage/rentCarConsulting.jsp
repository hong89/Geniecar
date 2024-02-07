<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    .breadcrumb-item a {
        text-decoration: none;
        color: #41087c;
    }
    span{
        color: red;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute top-0 end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">상담신청</li>
            </ol>
        </nav>
    </div>
    <div>
        <section class="pb-4">
            <h1 class="fw-bolder text-center pb-5 mb-5">상담신청</h1>
            <p class="text-end"><span>*는 필수입력입니다.</span></p>
            <div class="mt-4 mb-4 p-4" style="background-color: #f8f7fd; color: #23093d;">
                <h4 class ="fw-bold">예약자 정보 입력</h4>
            </div>
            <form>
                <div class="row p-1 m-3 text-center">
                    <div class="col-2">
                        <label for="name" class="col-form-label">이름<span>*</span></label>
                    </div>
                    <div class="col-auto">
                        <input type="text" id="name" name="name" class="form-control" placeholder="이름을 입력하세요">
                    </div>
                </div>
                <div class="row p-1 m-3 text-center">
                    <div class="col-2">
                        <label for="hp" class="col-form-label">연락처<span>*</span></label>
                    </div>
                    <div class="col-6">
                        <input type="text" id="hp" name="hp" class="form-control" oninput="oninputPhone(this)" maxlength="13" placeholder="휴대전화번호를(-없이) 입력하세요">
                    </div>
                </div>
                <div class="row p-1 m-3 text-center">
                    <div class="col-2">
                        <label for="email" class="col-form-label">이메일<span>*</span></label>
                    </div>
                    <div class="col-6">
                        <input type="email" id="email" name="email" class="form-control" placeholder="이메일을 입력하세요">
                    </div>
                </div>
                <div class="row p-1 m-3 text-center">
                    <div class="col-2">
                        <label for="purpose" class="col-form-label">사용목적<span>*</span></label>
                    </div>
                    <div class="col-6">
                        <textarea style ="resize: none; height: 150px;" id="purpose" name="purpose" class="form-control" placeholder="차량사용 목적을 입력하세요" maxlength="200" ></textarea>
                    </div>
                </div>
                <div class="row p-1 m-3 text-center">
                    <div class="col-2">
                        <label for="purpose" class="col-form-label">희망대여지역<span>*</span></label>
                    </div>
                    <div class="col-6 row">
                        <select class="form-select col">
                            <option >희망지역(시/도)선택</option>
                            <option>희망지역(구/시)선택</option>
                        </select>
                        <select class="form-select col">
                            <option>희망지역(구/시)선택</option>
                            <option>희망지역(시/도)선택</option>
                        </select>
                    </div>
                </div>
                <div class="text-center text-center">
                    <button class = "btn"  style="border: 1px solid #41087c;">취소</button>
                    <button class="btn text-white" style="background-color: #41087c;">다음</button>
                </div>
            </form>
            <div class="mt-4 mb-4 p-4" style="background-color: #f8f7fd; color: #23093d;">
                <h4 class ="fw-bold">개인정보 수집이용 동의</h4>
            </div>
        </section>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
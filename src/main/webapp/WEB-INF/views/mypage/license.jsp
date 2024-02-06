<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    .breadcrumb-item a {
        text-decoration: none;
        color: #41087c;
    }

    .mypage-header {
        background-color: #41087c;
        color: #f8f7fd;
    }

    ul {
        list-style: none;
    }

    .btn-goLink {
        color: #f8f7fd;
    }

    .underline {
        color: #f8f7fd;
    }

    aside {
        width: 300px;
        background-color: #f8f7fd;
    }

    aside .nav-link {

        color: #41087c;
    }
    #LicenseGradeCode{
        position: absolute;
        top:30px;
        left: 40px;
        height: 40px;
        max-width: 125px;
    }
    #license{
        position: absolute;
        top:35px;
        left:190px;
    }
    #imgProfil{
        position: absolute;
        top:105px;
        left:35px;
        width: 180px;
        height: 175px;
    }
    #licenseNumber{
        position: absolute;
        top:90px;
        left:225px;
        height: 40px;
    }
    #LicenseNumber1{
        height: 40px;
    }
    #LicenseNumber2{
        width: 70px; height: 40px;
    }
    #LicenseNumber3{
        width: 160px;height: 40px;
    }
    #LicenseNumber4{
        width: 70px;height: 40px;
    }
    #labelName{
        position: absolute;
        top:155px;
        left: 245px;;
        width: 80px;
        height: 40px;
        text-align: center;
    }
    #inputName{
        position: absolute;
        top:150px;
        left:335px;
        height: 40px;
    }
    #labelBirthday{
        position: absolute;
        top:215px;
        left: 245px;;
        width: 80px;
        height: 40px;
    }
    #inputBirthday{
        position: absolute;
        top:210px;
        left:335px;
        height: 40px;
    }
    #labelExpirationDate{
        position: absolute;
        top:285px;
        left: 245px;;
        width: 80px;
        height: 40px;
    }
    #inputExpirationDate{
        position: absolute;
        top:280px;
        left:335px;
        height: 40px;
    }
    #labelIssueDate{
        position: absolute;
        top:355px;
        left: 245px;;
        width: 80px;
        height: 40px;
    }
    #inputIssueDate{
        position: absolute;
        top:350px;
        left:335px;
        height: 40px;
    }
</style>
<script>
    function onlyNumber(){
        const reg = /\D/g;
        event.target.value = event.target.value.replace(reg, "");
    }
    
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute top-0 end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">마이페이지</li>
            </ol>
        </nav>
    </div>

    <div id="mypageheader" class="mb-5">
        <section class="text-center pb-4">
            <h1 class="fw-bolder">마이페이지</h1>
            <p>지니카 회원을 위한 다양한 혜택이 준비되어 있습니다.</p>
        </section>
        <div class="mypage-header p-5">
            <div class="myInfos-area">
                <div class="border-bottom mb-5 row">
                    <h3 class="mb-4 col">
                        <strong class="name" id='commonMemberName'>홍경영님</strong>
                        <span>일반회원&nbsp;</span>
                    </h3>
                    <div class="btns text-end col">
                        <a href="/mypage/license.do" class="btn-goLink me-3">운전면허증</a>
                    </div>
                </div>
                <ul class="row text-center">
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel02.png">
                        <p>포인트</p>
                        <a href="/mypage/point.do" class="underline" id="myCommonRentalPoint">0</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel03.png">
                        <p>할인쿠폰</p>
                        <a href="/mypage/coupon.do" class="underline" id="myCommonRentalCoupon">0장</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel05.png">
                        <p>결제 내역</p>
                        <a href="/mypage/carSeller.do" class="underline"
                           id="commonMyCarSellCount">0건</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel06.png">
                        <p>렌터카 상담</p>
                        <a href="/mypage/rentCarConsulting.do" class="underline"
                           id="commonRentalConsultCount">0건</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="d-flex flex-row bd-highlight mb-3">
        <aside class="p-3 fs-5">
            <ul class="nav flex-column">
                <li class="nav-item mb-4">
                    <a href="/mypage/reservation.do" class="nav-link" data-link-area="마이페이지"
                       data-link-name="메뉴" data-link-text="단기렌터카 예약">단기렌터카 예약</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/reservationMonth.do" class="nav-link" data-link-area="마이페이지"
                       data-link-name="메뉴" data-link-text="월간단기렌터카 예약">월간단기렌터카 예약</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/rentCarConsulting.do" class="nav-link">렌터카 상담 </a>
                </li>

                <li class="nav-item mb-4">
                    <a href="/mypage/point.do" class="nav-link">포인트</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/coupon.do" class="nav-link">할인쿠폰</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/license.do" class="nav-link">운전면허증</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/customer/question.do" class="nav-link">1:1 고객센터</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="#" class="nav-link">회원</a>
                    <ul>
                        <li class="nav-item mb-4">
                            <a href="/mypage/member/modify.do" class="nav-link">회원정보 변경</a>
                        </li>
                        <li class="nav-item mb-4">
                            <a href="/mypage/member/password.do" class="nav-link">비밀번호 변경</a>
                        </li>
                        <li class="nav-item mb-4">
                            <a href="/mypage/member/leave.do" class="nav-link">회원탈퇴</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </aside>
        <article class="p-5 container-fluid">
            <div class="border-bottom pb-5">
                <h2 class="fw-bolder">운전면허 정보</h2>
            </div>
            <form>
                <div class="border rounded-3 row p-4 m-5" style="width: 670px; height: 422px; position: relative;">
                    <div id="LicenseGradeCode">
                        <select name="" id="" class="border rounded-1" style="height: 40px;">
                            <option value="" selected>선택</option>
                            <option value="">1종대형</option>
                            <option value="">1종보통</option>
                            <option value="">2종보통</option>
                            <option value="">2종오토</option>
                        </select>
                    </div>
                    <div id ="license">
                         <h4>자동차운전면허증(Driver's License)</h4>
                    </div>
                    <img src ="/images/blank-profile.png" id="imgProfil">
                    <div class = "" id="licenseNumber">   
                        <select id="LicenseNumber1" class="border rounded-1">
                            <option value="" selected="selected">선택</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                            <option value="13" >13</option>
                            <option value="14" >14</option>
                            <option value="15" >15</option>
                            <option value="16" >16</option>
                            <option value="17" >17</option>
                            <option value="18" >18</option>
                            <option value="19" >19</option>
                            <option value="20" >20</option>
                            <option value="21" >21</option>
                            <option value="22" >22</option>
                            <option value="23" >23</option>
                            <option value="24" >24</option>
                            <option value="25" >25</option>
                            <option value="26" >26</option>
                            <option value="27" >27</option>
                            <option value="28" >28</option>
                            <option value="서울" >서울</option>
                            <option value="부산" >부산</option>
                            <option value="경기" >경기</option>
                            <option value="강원" >강원</option>
                            <option value="충북" >충북</option>
                            <option value="충남" >충남</option>
                            <option value="전북" >전북</option>
                            <option value="전남" >전남</option>
                            <option value="경북" >경북</option>
                            <option value="경남" >경남</option>
                            <option value="제주" >제주</option>
                            <option value="대구" >대구</option>
                            <option value="인천" >인천</option>
                            <option value="광주" >광주</option>
                            <option value="대전" >대전</option>
                            <option value="울산" >울산</option>
                        </select>
                        <input type="text" name="LicenseNumber2" id="LicenseNumber2" value="" maxlength="2" class="border rounded-1" oninput="onlyNumber()">
                        <input type="password" name="LicenseNumber3" id="LicenseNumber3" value="" maxlength="6" class="border rounded-1" oninput="onlyNumber()">
                        <input type="text" name="LicenseNumber4" id="LicenseNumber4" value="" maxlength="2" class="border rounded-1" oninput="onlyNumber()">
                    </div>
                    <div id="">
                        <label for="name" id="labelName">이름</label>
                        <div class="">
                            <input type="text" id="inputName" name = "name" value="" class="border rounded-1">
                        </div>
                    </div>
                    <div id="">
                        <label for="birthday" id="labelBirthday">생년월일</label>
                        <div class="">
                            <input id="inputBirthday" name = "birthday" value="" class="border rounded-1" placeholder=" YYMMDD" maxlength="6" oninput="onlyNumber()">
                        </div>
                    </div>
                    <div id="">
                        <label for="expirationDate" id="labelExpirationDate">만료일자</label>
                        <div class="">
                            <input id="inputExpirationDate" name = "expirationDate" value="" class="border rounded-1" placeholder=" YYYYMMDD" maxlength="8" oninput="onlyNumber()">
                        </div>
                    </div>
                    <div id="">
                        <label for="issueDate" id="labelIssueDate" >발급일자</label>
                        <div class="">
                            <input id="inputIssueDate" name = "issueDate" value="" class="border rounded-1" placeholder=" YYYYMMDD" maxlength="8" oninput="onlyNumber()">
                        </div>
                    </div>  
                </div>
                <button class="btn text-white" style="background-color: #41087c; width: 100px;">등록하기</button>
            </form>
        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
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
    #licenseGradeCode{
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
    #inputLicenseNumber{
        position: absolute;
        top:90px;
        left:225px;
        height: 40px;
    }
    #licenseNumber1{
        height: 40px;
    }
    #licenseNumber2{
        width: 70px; height: 40px;
    }
    #licenseNumber3{
        width: 160px;height: 40px;
    }
    #licenseNumber4{
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
    function oninputPhone(target) {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/([0-9]{4})([0-9]{2})([0-9]{2})/g, "$1-$2-$3");
    }

    $(function () {
        var isnull = document.getElementById('isnull').value;
        if(isnull == ""){
            $('#submitBtn').click(function () {
                $('#licenseNumber').val($("#licenseNumber1").val()+ "-" + $("#licenseNumber2").val() + "-" + $("#licenseNumber3").val() + "-" + $("#licenseNumber4").val());
                chk();
                $("form").attr("action", "/mypage/addLicense.do");
            });
        }
        if(isnull !== ""){
            $("#licenseGradeCode").val("${license.licenseGradeCode}").attr("selected","selected");
            var licenseNumber = document.getElementById('licenseNumber').value;
            var lilicenseNumber = licenseNumber.split('-');
            $('#licenseNumber1').val(lilicenseNumber[0]);
            $('#licenseNumber2').val(lilicenseNumber[1]);
            $('#licenseNumber3').val(lilicenseNumber[2]);
            $('#licenseNumber4').val(lilicenseNumber[3]);
            $('#submitBtn').click(function () {
                $('#licenseNumber').val($("#licenseNumber1").val()+ "-" + $("#licenseNumber2").val() + "-" + $("#licenseNumber3").val() + "-" + $("#licenseNumber4").val());
                $("form").attr("action", "/mypage/updateLicense.do");
            });
        }
        
    })
    function check() {
      var form = document.form;
      if (!form.licenseGradeCode.value) {
            alert("면허 종류를 선택해 주세요");
            form.licenseGradeCode.focus();
            return false;
        }else if(!form.licenseNumber1.value){
            alert("면허 번호를 입력해주세요");
            form.licenseNumber1.focus();
            return false;
        }else if(!form.licenseNumber2.value){
            alert("면허 번호를 입력해주세요");
            form.licenseNumber2.focus();
            return false;
        }else if(form.licenseNumber2.value.length<2){
            alert("면허 번호를 올바르게 입력해주세요");
            form.licenseNumber2.focus();
            return false;
        }else if(!form.licenseNumber3.value){
            alert("면허 번호를 입력해주세요");
            form.licenseNumber3.focus();
            return false;
        }else if(form.licenseNumber3.value.length<6){
            alert("면허 번호를 올바르게 입력해주세요");
            form.licenseNumber3.focus();
            return false;
        }else if(!form.licenseNumber4.value){
            alert("면허 번호를 입력해주세요");
            form.licenseNumber4.focus();
            return false;
        }else if(form.licenseNumber4.value.length<2){
            alert("면허 번호를 올바르게 입력해주세요");
            form.licenseNumber4.focus();
            return false;
        }else if(!form.driverName.value){
            alert("이름을 입력해주세요");
            form.driverName.focus();
            return false;
        }else if(!form.driverBirth.value){
            alert("생년월일을 입력해주세요");
            form.driverBirth.focus();
            return false;
        }else if(!form.licenseIssueDate.value){
            alert("만료일자를 입력해주세요");
            form.licenseIssueDate.focus();
            return false;
        }else if(!form.licenseIssueDate.value){
            alert("발급일자를 입력해주세요");
            form.licenseIssueDate.focus();
            return false;
        }
    }
    function chkCharCode(event) {
            const regExp = /[^ㄱ-힣]/g;
            const ele = event.target;
            if (regExp.test(ele.value)) {
                ele.value = ele.value.replace(regExp, '');
            }
        };
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
                        <strong class="name" id='commonMemberName'>${member.name}님</strong>
                        <span>일반회원&nbsp;</span>
                    </h3>
                </div>
                <ul class="row text-center">
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel02.png">
                        <p>포인트</p>
                        <a href="/mypage/point.do" class="underline" id="myCommonRentalPoint">${mypage.point}P</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel05.png">
                        <p>결제 내역</p>
                        <a href="/mypage/carSeller.do" class="underline"
                           id="commonMyCarSellCount">0건</a>
                    </li>
                    <li class="col">
                        <img alt="" class="mb-3" src="/images/icons/ico-myPannel06.png">
                        <p>1:1문의</p>
                        <a href="/mypage/qna.do?typeCode=QNA" class="underline"
                           id="commonRentalConsultCount">${mypage.qna}건</a>
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
                       data-link-name="메뉴" data-link-text="단기렌터카 예약">렌터카 예약</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/point.do" class="nav-link">포인트</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/license.do" class="nav-link">운전면허증</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/myReview.do?typeCode=REVIEW" class="nav-link">이용 후기</a>
                </li>
                <li class="nav-item mb-4">
                    <a href="/mypage/qna.do?typeCode=QNA" class="nav-link">1:1 문의</a>
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
            <form method="post" id="form" name ="form" onsubmit="return check()">
                <input type="hidden" value="${license}" id="isnull">
                <div class="border rounded-3 row p-4 m-5" style="width: 670px; height: 422px; position: relative;">
                    <div id="">
                        <select name="licenseGradeCode" id="licenseGradeCode" class="border rounded-1" style="height: 40px;" value = "${license.licenseGradeCode}">
                            <option value="">선택 </option>
                            <option value="1종대형">1종대형</option>
                            <option value="1종보통">1종보통</option>
                            <option value="2종보통">2종보통</option>
                            <option value="2종오토">2종오토</option>
                        </select>
                    </div>
                    <div id ="license">
                         <h4>자동차운전면허증(Driver's License)</h4>
                    </div>
                    <img src ="/images/blank-profile.png" id="imgProfil">
                    <div class = "" id="inputLicenseNumber">   
                        <select id="licenseNumber1" name="licenseNumber1" class="border rounded-1" >
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
                    <!--    <option value="서울" >서울</option>
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
                            <option value="울산" >울산</option>  -->
                        </select>
                        <input type="text" id="licenseNumber2" value="" maxlength="2" class="border rounded-1" oninput="onlyNumber()">
                        <input type="password" id="licenseNumber3" value="" maxlength="6" class="border rounded-1" oninput="onlyNumber()">
                        <input type="text" id="licenseNumber4" value="" maxlength="2" class="border rounded-1" oninput="onlyNumber()">
                        <input type="hidden" name="licenseNumber" id="licenseNumber" value="${license.licenseNumber}">
                    </div>
                    <div id="">
                        <label for="driverName" id="labelName">이름</label>
                        <div class="">
                            <input type="text" id="inputName" name = "driverName" class="border rounded-1" value="${license.driverName}" onkeyup="chkCharCode(event)">
                            <input type="hidden" name="memberId" value="${member.id}">
                        </div>
                    </div>
                    <div id="">
                        <label for="birthday" id="labelBirthday">생년월일</label>
                        <div class="">
                            <input id="inputBirthday" name = "driverBirth" value="<fmt:formatDate value='${license.driverBirth}' pattern='yyyy-MM-dd' />" class="border rounded-1" placeholder=" YYYYMMDD"maxlength="10" oninput="oninputPhone(this)">
                        </div>
                    </div>
                    <div id="">
                        <label for="licenseTestDate" id="labelExpirationDate">만료일자</label>
                        <div class="">
                            <input id="inputExpirationDate" name = "licenseTestDate" value="<fmt:formatDate value='${license.licenseTestDate}' pattern='yyyy-MM-dd' />" class="border rounded-1" placeholder=" YYYYMMDD" maxlength="10" oninput="oninputPhone(this)"> 
                        </div>
                    </div>
                    <div id="">
                        <label for="licenseIssueDate" id="labelIssueDate" >발급일자</label>
                        <div class="">
                            <input id="inputIssueDate" name = "licenseIssueDate" value="<fmt:formatDate value='${license.licenseIssueDate}' pattern='yyyy-MM-dd' />" class="border rounded-1" placeholder=" YYYYMMDD" maxlength="10" oninput="oninputPhone(this)">
                        </div>
                    </div>  
                </div> 
                <div class="text-center">
                    <button class="btn text-white" id="submitBtn" style="background-color: #41087c; width: 100px;" >등록하기</button>
                </div> 
            </form>

        </article>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/4.1.0/mustache.min.js"></script>
<script src="/js/lib/moment.js"></script>
<script src="/js/calendar.js"></script>
<style>
    .breadcrumb-item a {
        text-decoration: none;
        color: #41087c;
    }

    .location-name {
        align-self: center;
        border-radius: 30px;
        height: 50px;
        padding-top: 10px;
        margin: 0 10px;
        font-size: 20px;
    }

    .location-name > a, #searchName > a {
        color: black;
        text-decoration-line: none;
    }

    #searchName {
        align-self: center;
        text-align: center;
        border-radius: 30px;
        height: 50px;
        padding-top: 10px;
        font-size: 18px;
    }

    #mainContainer {
        margin-top: -50px;
    }

    .locations {
        padding: 10px;
        cursor : pointer;
    }

    .rental-car-branch {
        cursor: pointer;
    }

    #searchCarTemplate {
        padding-top: 30px;
    }

    #searchCarTemplate div {
        padding: 7px;
    }

    .rental-start-calendar th, .rental-start-calendar td {
        width: 1%;
        text-align: center;
        padding: 10px;
    }

    .days{
        cursor: pointer;
    }
</style>
<script>
    $(function () {

    });
</script>
<!--------------------------------------------------상단---------------------------------------------------------->
<div class="container-xl">
    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">빠른 예약</li>
                <li class="breadcrumb-item active" aria-current="page">내륙 예약</li>
            </ol>
        </nav>
    </div>
</div>

<div id="carouselExampleAutoplaying" class="carousel slide d-flex justify-content-center" data-bs-ride="carousel">
    <div class="carousel-outer">
        <div class="carousel-item active">
            <img src="/images/banner_01.png" class="d-block w-110" alt="event">
        </div>
        <div class="carousel-item">
            <img src="/images/banner_03.png" class="d-block w-110" alt="event">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
            data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<div class="container-xl" id="mainContainer">
    <div class="container text-center">
        <div class="row">
            <div class="col">
                <div class="card" style="width: 100%;">

                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" style="height: 70px;">
                            <div class="row">
                                <div class="col-1 location-name" style="background: #f8f7fd;">
                                    <a href="#">
                                        제주
                                    </a>
                                </div>
                                <div class="col-1 location-name" style="background: #f8f7fd;">
                                    <a href="#">
                                        내륙
                                    </a>
                                </div>
                                <div class="col-1 location-name">
                                    <a href="#" id="backBtn">
                                        <i class="fa-solid fa-rotate-left"></i>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item" style="height: 70px; text-align: left">
                            <div class="row">
                                <div class="col-3">
                                    <p class="card-text"><small><strong>대여장소</strong></small><br/>
                                        <img src="/images/icons/location-dot-solid.svg" width="15px"/>
                                        <span id="rentalPlace">어디서 대여할까요?</span></p>

                                </div>
                                <div class="col-3">
                                    <p class="card-text"><small><strong>반납장소</strong></small><br/>
                                        <img src="/images/icons/location-dot-solid.svg" width="15px"/>
                                        <span id="returnPlace">어디로 반납할까요?</span></p>

                                </div>
                                <div class="col-4">
                                    <p class="card-text"><small><strong>대여기간</strong></small><br/>
                                        <img src="/images/icons/clock-solid.svg" width="17px"/>
                                        <span id="rentalDate">얼마 동안 대여할까요?</span></p>

                                </div>
                                <div class="col-2" id="searchName" style="background: #f8f7fd;">
                                    <a href="/reservation/step2.do">
                                        차량 검색하기
                                    </a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 지역 선택 영역 -->
    <div class="container" id="containerArea">

    </div>

    <%--지점 목록 영역 시작--%>
    <script type="x-tmpl-mustache" id="locationTemplate" style="display: none">
        <div class="row" style="padding-top: 50px; height: 550px;">
            <div class="col-2" style="height: 300px; border-right: 1px solid #23093d;">
                <h5><strong>대여 장소를 <br/>선택해 주세요</strong></h5>
            </div>
            <div class="col-3">
                <div class="card mb-3" style="height: 300px; border: none;">
                    <div class="card-body">
                        <div class="row">
                            <c:forEach var="location" items="${locationList}">
                                <div class="col-6 locations text-center" data-location-code="${location.fullCode}">
                                        ${location.codeName}
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-7">
                <div class="card mb-3" style="height: 300px; background: #f8f7fd;">
                    <div class="card-body">
                        <div class="row" id="branchListArea"></div>
                    </div>
                </div>
            </div>
        </div>
    </script>
    <%--지점 목록 영역 끝--%>

    <%--지점 목록 영역 시작--%>
    <script type="x-tmpl-mustache" id="branchTemplate" style="display: none">
        <div class="row">
            {{#locations}}
            <div class="col-4" style="padding: 5px 10px 10px 20px">
                <span class="rental-car-branch" data-no="{{no}}">
                    <img src="/images/icons/location-dot-solid.svg" width="15px"/>
                    &nbsp;&nbsp;{{branchName}}
                </span>
            </div>
            {{/locations}}
        </div>
    </script>
    <%--지점 목록 영역 끝--%>

    <script>
        $(function () {
            var currentStep = 1;
            var rentalForm = {
                rentalPlace: '',
                returnPlace: '',
                rentalCarBranchNo: '',
            };

            //step1. 지역 목록 출력
            var template = $('#locationTemplate').html();
            var data = {"locations": []};
            var rendered = Mustache.render(template, data);
            $('#containerArea').html(rendered);



            //TODO 같은 지역 클릭 시 이벤트 발생되지 않도록 구현 필요
            //step1. 지점 목록 출력
            $('#containerArea').on("click", ".locations", function () {
                var locationCode = $(this).data('locationCode');
                $.get("/reservation/selectBranch.do", {locationCode: locationCode}, function (res) {
                    data.locations = res;
                    $('#branchListArea').html(Mustache.render($('#branchTemplate').html(), data));
                });
            });

            //step1. 지점 목록 클릭 시 달력 step2 페이지로 전환
            //TODO 지점 스타일 적용 시 태그 변경될 수 있으니 같이 변경 필요
            $('#containerArea').on('click', '#branchListArea span', function () {
                rentalForm.rentalPlace = rentalForm.returnPlace = rentalForm.rentalCarBranchNo = $(this).data('no');
                $('#rentalPlace').empty().append($(this).text());
                $('#returnPlace').empty().append($(this).text());
                var dateTemplate = $('#dateTemplate').html();
                var dateRendered = Mustache.render(dateTemplate, data);
                $('#containerArea').html(dateRendered);
            });

            //TODO 뒤로 가기
            $('#containerArea').on('click', '#backBtn', function(){
                if(currentStep == 1){

                }else if(currentStep == 2){

                }else{ //step == 3

                }
                return false;
            });

        });
    </script>

    <%--달력 시작--%>
    <script type="x-tmpl-mustache" id="calendarTemplate" style="display: none">
        <%--첫번째 달력--%>
        <div class="col p-2">
            <div class="rental-start-calendar">
                <h4 class="text-center p-2"><img src="/images/icons/chevron-left.svg" id="dateLeftBtn" />{{leftDate.yearMonth}}</h4>
                <table>
                    <thead>
                    <tr class="weekdays">
                        <th data-weekday="sun"  style="color:red;">일</th>
                        <th data-weekday="mon" >월</th>
                        <th data-weekday="tue" >화</th>
                        <th data-weekday="wed" >수</th>
                        <th data-weekday="thu" >목</th>
                        <th data-weekday="fri" >금</th>
                        <th data-weekday="sat"  style="color:blue;">토</th>
                    </tr>
                    </thead>
                    <tbody>
                    {{#leftDate.list}}
                        <tr class="days">
                            {{#.}}
                                <td data-column="{{.}}">{{.}}</td>
                            {{/.}}
                        </tr>
                    {{/leftDate.list}}
                    </tbody>
                </table>
            </div>
        </div>

        <%--두번째 달력--%>
        <div class="col p-2">
            <div class="rental-start-calendar">
                <h4 class="text-center p-2">{{rightDate.yearMonth}}<img src="/images/icons/chevron-right.svg" id="dateRightBtn" /></h4>
                <table>
                    <thead>
                    <tr class="weekdays">
                        <th data-weekday="sun" style="color:red;">일</th>
                        <th data-weekday="mon">월</th>
                        <th data-weekday="tue">화</th>
                        <th data-weekday="wed">수</th>
                        <th data-weekday="thu">목</th>
                        <th data-weekday="fri">금</th>
                        <th data-weekday="sat" style="color:blue;">토</th>
                    </tr>
                    </thead>
                    <tbody>
                    {{#rightDate.list}}
                        <tr class="days">
                            {{#.}}
                                <td data-column="{{.}}">{{.}}</td>
                            {{/.}}
                        </tr>
                    {{/rightDate.list}}
                    </tbody>
                </table>
            </div>
        </div>
    </script>

    <%--달력 끝--%>

    <!-- 날짜 선택 영역 -->
    <div type="x-tmpl-mustache" id="dateTemplate" style="display: none">
        <div class="row" style="padding-top: 50px;">
            <div class="col-2" style="border-right: 1px solid #23093d;">
                <h5><strong>대여 기간을 <br/>선택해 주세요</strong></h5>
            </div>
            <div class="col-10">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-11">
                        <div class="card mb-3" style="background: #f8f7fd;">
                            <div class="card-body">
                                <div class="row" id="calendarArea">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-1"></div>
                    <div class="col-5 text-center card mb-3"
                         style="height: 50px; background: #f8f7fd; margin-left:10px; width: 460px; padding-top: 10px;">
                        대여일을 선택해주세요
                    </div>
                    <div class="col-5 text-center card mb-3"
                         style="height: 50px; background: #f8f7fd; margin-left:30px; width: 460px; padding-top: 10px;">
                        반납일을 선택해주세요
                    </div>

                    <div class="col-1"></div>
                    <div class="col-2 text-center card mb-3"
                         style="height: 50px; background: #f8f7fd; margin-left:10px; width: 220px; padding-top: 10px;">
                        시간 선택
                    </div>
                    <div class="col-2 text-center card mb-3"
                         style="height: 50px; background: #f8f7fd; margin-left:20px; width: 220px; padding-top: 10px;">
                        분 선택
                    </div>
                    <div class="col-2 text-center card mb-3"
                         style="height: 50px; background: #f8f7fd; margin-left:30px; width: 220px; padding-top: 10px;">
                        시간 선택
                    </div>
                    <div class="col-2 text-center card mb-3"
                         style="height: 50px; background: #f8f7fd; margin-left:20px; width: 220px; padding-top: 10px;">
                        분 선택
                    </div>
                    <div class="col-1"></div>
                    <div class="col-11"><p class="text-center">총 x일 x시간 x분 대여</p></div>
                </div>
            </div>
        </div>
    </div>

    <!-- 차량 선택 영역 -->
    <div type="x-tmpl-mustache" id="searchCarTemplate" style="display: none">
        <div class="row" style="padding-top: 50px;">
            <div class="col-3" style="height: 600px; border: 1px solid #23093d; border-radius: 20px; padding: 20px;">
                <p><strong>차종</strong></p>
                <div class="row">
                    <div class="col-auto"><input type="checkbox"> 전체보기</div>
                    <div class="col-auto"><input type="checkbox"> 경형</div>
                    <div class="col-auto"><input type="checkbox"> 준중형</div>
                    <div class="col-auto"><input type="checkbox"> 중형</div>
                    <div class="col-auto"><input type="checkbox"> 준대형</div>
                    <div class="col-auto"><input type="checkbox"> 대형</div>
                    <div class="col-auto"><input type="checkbox"> suv경형</div>
                    <div class="col-auto"><input type="checkbox"> suv소형</div>
                    <div class="col-auto"><input type="checkbox"> suv준중형</div>
                </div>
                <hr/>
                <p><strong>인승</strong></p>
                <div class="row">
                    <div class="col-auto"><input type="checkbox"> 전체보기</div>
                    <div class="col-auto"><input type="checkbox"> 5인승</div>
                    <div class="col-auto"><input type="checkbox"> 7인승</div>
                    <div class="col-auto"><input type="checkbox"> 9인승</div>
                </div>
                <hr/>
                <p><strong>연료</strong></p>
                <div class="row">
                    <div class="col-auto"><input type="checkbox"> 전체보기</div>
                    <div class="col-auto"><input type="checkbox"> 디젤</div>
                    <div class="col-auto"><input type="checkbox"> 전기</div>
                    <div class="col-auto"><input type="checkbox"> 가솔린</div>
                    <div class="col-auto"><input type="checkbox"> 하이브리드</div>
                </div>
                <div style="background: #f8f7fd; border-radius: 30px; height: 50px; text-align: center; padding-top:12px; align-content: center; margin-top: 10px">
                    <a><strong>필터 초기화</strong></a>
                </div>

            </div>
            <div class="col-1"></div>
            <div class="col-8">
                <div class="row">
                    <!-- 반복 영역 -->
                    <c:forEach begin="1" step="1" end="10">
                        <div class="col-6">
                            <div class="card mb-3">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="/images/carImage/sample.jpg" class="img-fluid rounded-start"
                                             style="padding-top: 15px" alt="...">
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <p class="card-text">더 뉴 K3 (G)</p>
                                            <p class="card-text" style="color: red">85,300원</p>
                                            <p class="card-text"><small class="text-body-secondary">가솔린/5인승</small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

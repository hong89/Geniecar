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
    }

    #searchCarTemplate {
        padding-top: 30px;
    }

    #searchCarTemplate div {
        padding: 7px;
    }

    .cursor-pointer {
        cursor: pointer;
    }

    .rental-start-calendar th, .rental-start-calendar td {
        width: 1%;
        text-align: center;
        padding: 10px;
    }

    .days {
        cursor: pointer;
    }

    .date-inactive {
        color: #ddd;
        cursor: default;
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
        <div class="col-6 locations cursor-pointer text-center" data-location-code="${location.fullCode}">
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
                <span class="cursor-pointer" data-no="{{no}}">
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
            var data = {"locations": []};
            //var template = $('#locationTemplate').html();
            /*var rendered = Mustache.render(template, data);
            $('#containerArea').html(rendered);*/

            var dateTemplate = $('#dateTemplate').html();
            var dateRendered = Mustache.render(dateTemplate, data);
            $('#containerArea').html(dateRendered);

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
                $('#rentalPlace').text($(this).text());
                $('#returnPlace').text($(this).text());
                var dateTemplate = $('#dateTemplate').html();
                var dateRendered = Mustache.render(dateTemplate, data);
                $('#containerArea').html(dateRendered);
            });

            //TODO 뒤로 가기
            $('#containerArea').on('click', '#backBtn', function () {
                if (currentStep == 1) {

                } else if (currentStep == 2) {

                } else { //step == 3

                }
                return false;
            });

            moment.locale();

            var reservationDateObj = {
                today: moment().format('YYYY-MM-DD'),
                leftDate: {
                    yearMonth: '',
                    startDay: '',
                    daysInMonth: 0,
                    list: [],
                },

                rightDate: {
                    yearMonth: '',
                    startDay: '',
                    daysInMonth: 0,
                    list: []
                },
                dateCalculator: function () {
                    this.leftDate.list = []; //초기화
                    this.rightDate.list = []; //초기화

                    let _leftMoment = moment(this.today);
                    let _rightMoment = _leftMoment.clone().add('1', 'M');

                    this.leftDate.yearMonth = _leftMoment.format('YYYY.MM');
                    this.leftDate.daysInMonth = _leftMoment.daysInMonth();
                    this.leftDate.startDay = _leftMoment.clone().startOf('month').format('d');

                    this.rightDate.yearMonth = _rightMoment.format('YYYY.MM');
                    this.rightDate.daysInMonth = _rightMoment.daysInMonth();
                    this.rightDate.startDay = _rightMoment.clone().startOf('month').format('d');
                },
                nextMonth: function () {
                    var nextMonth = moment(this.today).add('1', 'M');
                    //다음달은 6개월까지만 보여지도록
                    if (nextMonth.diff(moment().format('YYYY-MM'), 'months') >= 7) return;

                    this.today = moment(this.today).add('1', 'M');
                    this.run();
                },
                beforeMonth: function () {
                    //이번달 전은 보이지 않게
                    if (moment().format('YYYY.MM') == this.leftDate.yearMonth) return;

                    this.today = moment(this.today).subtract('1', 'M');
                    this.run();
                },
                fillDate: function (date) {
                    var isStart = false, currentDay = 0, isEnd = false;
                    var isSameMonth = moment().format('YYYY.MM') == date.yearMonth;
                    var today = Number(moment().format('DD'));

                    for (var j = 0; j < 6; j++) {
                        if (isEnd) break;
                        date.list[j] = [];

                        for (var i = 0; i < 7; i++) {
                            if (currentDay >= date.daysInMonth) {
                                isEnd = true;
                                break;
                            }
                            if (!isStart && i == Number(date.startDay)) isStart = true;

                            var dayInfo = {
                                date: isStart ? ++currentDay : '',
                                className: isSameMonth && isStart && currentDay < today ? 'date-inactive' : '' //이전 날짜 음영처리
                            }
                            date.list[j].push(dayInfo);
                        }
                    }
                },
                run: function () {
                    this.dateCalculator();

                    this.fillDate(this.leftDate);
                    this.fillDate(this.rightDate);

                    var calendarTemplate = $('#calendarTemplate').html();
                    var calendarRendered = Mustache.render(calendarTemplate, reservationDateObj);
                    $('#calendarArea').html(calendarRendered);
                },
            }

            reservationDateObj.run(); //달력 모듈 실행

            //달력 왼쪽 클릭 시
            $('#containerArea').on('click', '#dateLeftBtn', function () {
                reservationDateObj.beforeMonth();
            });

            //달력 오른쪽 클릭 시
            $('#containerArea').on('click', '#dateRightBtn', function () {
                reservationDateObj.nextMonth();
            });

            //달력 날짜 클릭 시
            $('#containerArea').on('click', '.days > td', function(){

            });



        });
    </script>

    <%--달력 시작--%>
    <script type="x-tmpl-mustache" id="calendarTemplate" style="display: none">
        <%--첫번째 달력--%>
        <div class="col p-2">
            <div class="rental-start-calendar">
                <h4 class="text-center p-2"><img src="/images/icons/chevron-left.svg" id="dateLeftBtn" class="cursor-pointer" />{{leftDate.yearMonth}}</h4>
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
                                <td data-day="{{date}}" class="{{className}}">{{date}}</td>
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
                <h4 class="text-center p-2">{{rightDate.yearMonth}}<img src="/images/icons/chevron-right.svg" id="dateRightBtn" class="cursor-pointer" /></h4>
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
                                <td data-day="{{date}}" class="{{className}}">{{date}}</td>
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
                                <div class="row" id="calendarArea" style="height: 367px !important;">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-1"></div>
                    <div class="col-5 text-center card mb-3" id="startRentalDate" data-date=""
                         style="height: 50px; background: #f8f7fd; margin-left:10px; width: 460px; padding-top: 10px;">
                        대여일을 선택해주세요
                    </div>
                    <div class="col-5 text-center card mb-3" id="returnRentalDate" data-date=""
                         style="height: 50px; background: #f8f7fd; margin-left:30px; width: 460px; padding-top: 10px;">
                        반납일을 선택해주세요
                    </div>

                    <div class="col-1"></div>
                    <select class="form-select" aria-label="Default select example" disabled="disabled"
                            style="height: 50px; margin-left:10px; width: 220px;">
                        <option selected>선택</option>
                        <%--<option value="00">00시</option>
                        <option value="01">01시</option>
                        <option value="02">02시</option>
                        <option value="03">03시</option>
                        <option value="04">04시</option>
                        <option value="05">05시</option>
                        <option value="06">06시</option>
                        <option value="07">07시</option>--%>
                        <option value="08">08시</option>
                        <option value="09">09시</option>
                        <option value="10">10시</option>
                        <option value="11">11시</option>
                        <option value="12">12시</option>
                        <option value="13">13시</option>
                        <option value="14">14시</option>
                        <option value="15">15시</option>
                        <option value="16">16시</option>
                        <option value="17">17시</option>
                        <option value="18">18시</option>
                        <option value="19">19시</option>
                        <option value="20">20시</option>
                        <option value="21">21시</option>
                        <option value="22">22시</option>
                        <%--<option value="23">23시</option>--%>
                    </select>
                    <select class="form-select" aria-label="Default select example" disabled="disabled"
                            style="height: 50px; margin-left:20px; width: 220px;">
                        <option selected>선택</option>
                        <option value="00">00분</option>
                        <option value="10">10분</option>
                        <option value="20">20분</option>
                        <option value="30">30분</option>
                        <option value="40">40분</option>
                        <option value="50">50분</option>
                    </select>
                    <select class="form-select" aria-label="Default select example" disabled="disabled"
                            style="height: 50px; margin-left:30px; width: 220px;">
                        <option selected>선택</option>
                        <%--<option value="00">00시</option>
                        <option value="01">01시</option>
                        <option value="02">02시</option>
                        <option value="03">03시</option>
                        <option value="04">04시</option>
                        <option value="05">05시</option>
                        <option value="06">06시</option>
                        <option value="07">07시</option>--%>
                        <option value="08">08시</option>
                        <option value="09">09시</option>
                        <option value="10">10시</option>
                        <option value="11">11시</option>
                        <option value="12">12시</option>
                        <option value="13">13시</option>
                        <option value="14">14시</option>
                        <option value="15">15시</option>
                        <option value="16">16시</option>
                        <option value="17">17시</option>
                        <option value="18">18시</option>
                        <option value="19">19시</option>
                        <option value="20">20시</option>
                        <option value="21">21시</option>
                        <option value="22">22시</option>
                        <%--<option value="23">23시</option>--%>
                    </select>
                    <select class="form-select" aria-label="Default select example" disabled="disabled"
                            style="height: 50px; margin-left:20px; width: 220px;">
                        <option selected>선택</option>
                        <option value="00">00분</option>
                        <option value="10">10분</option>
                        <option value="20">20분</option>
                        <option value="30">30분</option>
                        <option value="40">40분</option>
                        <option value="50">50분</option>
                    </select>
                    <div class="col-1 mt-3"></div>
                    <div class="col-11 mt-3"><p class="text-center">총 x일 x시간 x분 대여</p></div>

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

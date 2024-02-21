<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/4.1.0/mustache.min.js"></script>
<script src="/js/lib/moment.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/locale/ko.js"></script>
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

    .location-name > a, #searchName {
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
        cursor: default;
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
        cursor: pointer !important;
    }

    .rental-start-calendar th, .rental-start-calendar td {
        width: 1%;
        text-align: center;
        padding: 10px;
    }

    .days {
        cursor: pointer;
    }

    .prev-date, .date-inactive {
        color: #ddd;
        cursor: default;
    }

    .selected-start-date{
        color: #ff404b;
        width: 38px;
        height: 38px;
    }

    .on-rental-date{
        color: #ff404b;
        width: 38px;
        height: 38px;
    }

    .selected-return-date{
        color: #ff404b;
        width: 38px;
        height: 38px;
    }

    .car-disabled > .card{
        display: flex;
        align-items: center;
        justify-content: center;
        flex-flow: column;
        /*width: 100%;
        height: 100%;*/
        background: rgba(0, 0, 0, 0.6);
        color: #fff;
    }

    .region-on{
        background: #FEF3F4 !important;
        color: #e70012;
    }
</style>
<script>
    var returnPlaceChangeMode = false;
    var currentStep = 1;
    //지역 목록 출력
    var data = {"locations": []};
    var commonMessage = {
        rentalPlace: '어디서 대여할까요?',
        returnPlace: '어디로 반납할까요?',
        period: '얼마 동안 대여할까요?',
        resetMsg: '변경 시 선택하신 예약 정보 단계 이후 내용이 모두 초기화됩니다.'
    }
    //지점 목록 출력
    var locationCode = '';
    var rentalForm = {
        getStartFullDate: function(){
            return this.startDate + ' ' + this.startHour + ':' + this.startMinute;
        },
        getReturnFullDate: function(){
            return this.returnDate + ' ' + this.returnHour + ':' + this.returnMinute;
        },
        getPeriodDate: function(){
            return this.periodDay + '일 ' + this.PeriodHour + '시간 ' + this.PeriodMinute + '분';
        },
        init: function(){
            if(!returnPlaceChangeMode){
                this.rentalPlaceCd = '';
                this.rentalCarBranchCd = '';
            }
            this.returnPlaceCd = '';
            this.startDate = '';
            this.returnDate = '';
            this.startHour = '';
            this.returnHour = '';
            this.startMinute = '00';
            this.returnMinute = '00';
        }
    };

    $(function(){

        rentalForm.init();

        function step1Print(){
            var template = $('#locationTemplate').html();
            var rendered = Mustache.render(template, data);
            $('#containerArea').html(rendered);
        }
        step1Print();

        $('#containerArea').on("click", ".locations", function () {
            if(locationCode == $(this).data('locationCode')){
                return false;
            }
            locationCode = $(this).data('locationCode');
            $.get("/reservation/selectBranch.do", {locationCode: locationCode}, function (res) {
                data.locations = res;
                $('#branchListArea').html(Mustache.render($('#branchTemplate').html(), data));
            });
        });

        <c:if test='${regionType eq "2"}'>
            $('#containerArea .locations:eq(0)').click();
        </c:if>

        //예약 날짜 선택 화면 출력
        function step2Print(data){
            var dateTemplate = $('#dateTemplate').html();
            var dateRendered = Mustache.render(dateTemplate, data);
            $('#containerArea').html(dateRendered);
            currentStep = 2;
        }

        //지점 목록 클릭 시 달력 페이지로 전환
        $('#containerArea').on('click', '#branchListArea span', function () {
            var branchCode = $(this).data('branchCode');
            if(!returnPlaceChangeMode){
                rentalForm.rentalPlaceCd = rentalForm.rentalCarBranchCd = branchCode;
                $('#rentalPlace').text($(this).text());
            }

            rentalForm.returnPlaceCd = branchCode;
            $('#returnPlace').text($(this).text());

            step2Print(data);

            returnPlaceChangeMode = false;
            locationCode = '';
        });


        //뒤로 가기 or 대여장소 변경
        $('#backBtn, #rentalPlace').on('click', function () {
            if (currentStep != 1) {
                if(!confirm(commonMessage.resetMsg)) return false;
                returnPlaceChangeMode = false;
                step1Print();
                reservationDateObj.reset();
                rentalForm.init();
                carSearchOnOff(false);

                $('#rentalPlace').text(commonMessage.rentalPlace);
                $('#returnPlace').text(commonMessage.returnPlace);
                $('#rentalDate').text(commonMessage.period);
            }
            currentStep = 1;
            return false;
        });

        //반납 장소 변경
        $('#returnPlace').on('click', function(){
            if (currentStep != 1) {
                if(!confirm(commonMessage.resetMsg)) return false;
                returnPlaceChangeMode = true;
                step1Print();
                reservationDateObj.reset();
                rentalForm.init();
                carSearchOnOff(false);
                $('#returnPlace').text(commonMessage.returnPlace);
                $('#rentalDate').text(commonMessage.period);
            }
        });

        var reservationDateObj = {
            dateSelectMode: 'S', //S: 빌리는 날짜 선택 모드, R: 반납 날짜 선택 모드, A: 모든 날짜 선택된 모드
            today: moment().format('YYYY-MM-DD'),
            calendar: [], //{yearMonth: '', days: []}
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

                var isEmpty = true;
                for (var i = 0; i < this.calendar.length; i++){
                    if(this.calendar[i].yearMonth == date.yearMonth){
                        isEmpty = false;
                        date.list = this.calendar[i].days;
                        break;
                    }
                }

                if(!isEmpty) return;

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
                            className: isSameMonth && isStart && currentDay < today ? 'prev-date ' : '' //이전 날짜 음영처리
                        }
                        date.list[j].push(dayInfo);
                    }
                }

                this.calendar.push({yearMonth: date.yearMonth, days: date.list});
            },
            run: function () {
                this.dateCalculator();

                this.fillDate(this.leftDate);
                this.fillDate(this.rightDate);

                var calendarTemplate = $('#calendarTemplate').html();
                var calendarRendered = Mustache.render(calendarTemplate, reservationDateObj);
                $('#calendarArea').html(calendarRendered);
            },
            reset: function(){
                for (var i = 0; i < reservationDateObj.calendar.length; i++){
                    for(var j = 0; j < reservationDateObj.calendar[i].days.length; j++){
                        for(var k = 0; k < reservationDateObj.calendar[i].days[j].length; k++){
                            if(reservationDateObj.calendar[i].days[j][k].className.indexOf('prev-date') != -1){
                                reservationDateObj.calendar[i].days[j][k].className = 'prev-date';
                            }else{
                                reservationDateObj.calendar[i].days[j][k].className = '';
                            }
                        }
                    }
                }

                $('span[id^=rentalPeriod]').text('0');
                this.dateSelectMode = 'S';

            }
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
        $('#containerArea').on('click', '.days > td:not(.date-inactive)', function(){
            var yearMonth, day = $(this).data('day');
            if(reservationDateObj.dateSelectMode === 'S'){ //빌리는 날짜 선택
                yearMonth = $(this).closest('.rental-start-calendar').find('h4.year-month').data('yearMonth') + ''

                var isSameMonth = false;
                LOOP: for (var i = 0; i < reservationDateObj.calendar.length; i++){
                    if(reservationDateObj.calendar[i].yearMonth == yearMonth){
                        isSameMonth = true;
                    }
                    for(var j = 0; j < reservationDateObj.calendar[i].days.length; j++){
                        for(var k = 0; k < reservationDateObj.calendar[i].days[j].length; k++){
                            if(isSameMonth && Number(reservationDateObj.calendar[i].days[j][k].date) == day){
                                reservationDateObj.calendar[i].days[j][k].className += 'selected-start-date ';
                                break LOOP;
                            }

                            if(!reservationDateObj.calendar[i].days[j][k].className && reservationDateObj.calendar[i].days[j][k].date){
                                reservationDateObj.calendar[i].days[j][k].className += 'date-inactive ';
                            }
                        }
                    }
                }

                reservationDateObj.run();

                //시간 선택 오픈
                $('#startDateSelectHour').prop('disabled', false).focus();
                $('#startDateSelectMinute').prop('disabled', false);

                //날짜 표시
                yearMonth = $(this).closest('.rental-start-calendar').find('h4.year-month').data('yearMonth') + '';
                yearMonth = dateFormatReplace(yearMonth);
                day = day < 10 ? '0' + day : day;
                rentalForm.startDate = moment(yearMonth + '-' + day).format('YYYY-MM-DD');
                $('#startRentalDate').text(rentalForm.startDate);
                //모드 변경
                reservationDateObj.dateSelectMode = 'R';
            }
            else if(reservationDateObj.dateSelectMode === 'R'){ //반납 날짜 선택
                yearMonth = $(this).closest('.rental-start-calendar').find('h4.year-month').data('yearMonth') + ''

                //시작날짜와 반납 날짜까지 대여 기간 표시
                var isStart = false;
                LOOP: for (var i = 0; i < reservationDateObj.calendar.length; i++){
                    for(var j = 0; j < reservationDateObj.calendar[i].days.length; j++){
                        for(var k = 0; k < reservationDateObj.calendar[i].days[j].length; k++){
                            if(reservationDateObj.calendar[i].days[j][k].className.indexOf('selected-start-date') != -1){
                                isStart = true;
                            }

                            if(isStart && reservationDateObj.calendar[i].yearMonth == yearMonth
                                && Number(reservationDateObj.calendar[i].days[j][k].date) == day){
                                reservationDateObj.calendar[i].days[j][k].className += 'selected-return-date ';
                                break LOOP;
                            }else if(isStart && reservationDateObj.calendar[i].days[j][k].className.indexOf('selected-start-date') == -1){
                                reservationDateObj.calendar[i].days[j][k].className += 'on-rental-date ';
                            }
                        }
                    }
                }

                reservationDateObj.run();

                //날짜 표시
                yearMonth = $(this).closest('.rental-start-calendar').find('h4.year-month').data('yearMonth') + '';
                yearMonth = dateFormatReplace(yearMonth);
                day = day < 10 ? '0' + day : day;
                rentalForm.returnDate = moment(yearMonth + '-' + day).format('YYYY-MM-DD');
                $('#returnRentalDate').text(rentalForm.returnDate);

                //시간 선택 오픈
                $('#returnDateSelectHour').prop('disabled', false).focus();
                $('#returnDateSelectMinute').prop('disabled', false);


                carSearchOnOff(true);

                //모드 변경
                reservationDateObj.dateSelectMode = 'A';
            }else{ //모두 선택된 경우
                //초기화
                $('#startRentalDate').text('대여일을 선택해주세요');
                $('#returnRentalDate').text('반납일을 선택해주세요');
                $('[id$=DateSelectHour]').val('');
                $('[id$=DateSelectMinute]').val('00');
                $('[id*=DateSelect]').prop('disabled', true);
                $('#rentalDate').text(commonMessage.period);
                carSearchOnOff(false);
                reservationDateObj.reset();
                reservationDateObj.run();
                reservationDateObj.dateSelectMode = 'S';
            }

            function dateFormatReplace(yearMonth){
                return yearMonth.replace('.', '-');
            }

        });

        //시간 변경
        $('#containerArea').on('change', '#startDateSelectHour', function(){
            rentalForm.startHour = $(this).val();
            timeChange();
        });

        $('#containerArea').on('change', '#startDateSelectMinute', function(){
            rentalForm.startMinute = $(this).val();
            timeChange();
        });

        $('#containerArea').on('change', '#returnDateSelectHour', function(){
            rentalForm.returnHour = $(this).val();
            timeChange();
        });

        $('#containerArea').on('change', '#returnDateSelectMinute', function(){
            rentalForm.returnMinute = $(this).val();
            timeChange();
        });

        function timeChange(){
            if(rentalForm.startHour == '22' && rentalForm.startMinute != '00'){
                alert('영업시간은 22시까지 입니다.');
                $('#startDateSelectMinute').val('00');
                $('#startDateSelectMinute').change();
            }else if(rentalForm.returnHour == '22' && rentalForm.returnMinute != '00'){
                alert('영업시간은 22시까지 입니다.');
                $('#returnDateSelectMinute').val('00');
                $('#returnDateSelectMinute').change();
            }

            if(rentalForm.startHour && rentalForm.returnHour){
                var returnDate = moment(rentalForm.getReturnFullDate());
                var startDate = moment(rentalForm.getStartFullDate());
                rentalForm.periodDay = returnDate.diff(startDate, 'days');
                rentalForm.PeriodHour = moment.duration(returnDate.diff(startDate)).hours();
                rentalForm.PeriodMinute = moment.duration(returnDate.diff(startDate)).minutes();
                rentalForm.rentalStartDate = startDate.format('YYYY-MM-DD HH:mm');
                rentalForm.rentalReturnDate = returnDate.format('YYYY-MM-DD HH:mm');
                rentalForm.rentalStartDateStr = startDate.format('MM/DD (dd) HH:mm');
                rentalForm.rentalReturnDateStr = returnDate.format('MM/DD (dd) HH:mm');
                $('#rentalPeriodDay').text(rentalForm.periodDay);
                $('#rentalPeriodHour').text(rentalForm.PeriodHour);
                $('#rentalPeriodMinute').text(rentalForm.PeriodMinute);
                $('#rentalDate').text(rentalForm.rentalStartDateStr + ' ~ ' + rentalForm.rentalReturnDateStr);
                carSearchOnOff(true);
            }else{
                carSearchOnOff(false);
            }
        }

        function carSearchOnOff(isOn){
            if(isOn){
                $('#searchName').css('background', '#f8f7fd').addClass('cursor-pointer');
            }
            else{
                $('#searchName').css('background', '#ddd').removeClass('cursor-pointer');
            }
        }

        function step3Print(){
            var carReservationAreaTemplate = $('#searchCarTemplate').html();
            var dateRendered = Mustache.render(carReservationAreaTemplate);
            $('#containerArea').html(dateRendered);
            currentStep = 3;
        }

        function rentalCarListPrint(data){
            var carReservationListTemplate = $('#searchRentalCarTemplate').html();
            var dateRendered = Mustache.render(carReservationListTemplate, data);
            $('#rentalCarListArea').html(dateRendered);
        }

        $(function(){
            //차량 검색하기 버튼 클릭 시
            $(document).on('click', '#searchName.cursor-pointer', function () {
                //todo spinner 시작
                step3Print();
                searchRentalCars(step3Print);
            });

            //렌트카 차량 목록 조회
            function searchRentalCars(){
                var searchRentalCar = {
                    rentalPlaceCd: rentalForm.rentalPlaceCd,
                    rentalDate: rentalForm.getStartFullDate(),
                    returnDate: rentalForm.getReturnFullDate(),
                    typeCodes: [],
                    seaters: [],
                    fuelCodes: []
                };

                //차종
                $('#containerArea [name=carTypeCode]:checked').each(function (){
                    if($(this).val() == 'all') return;
                    searchRentalCar.typeCodes.push($(this).val());
                });
                //인승
                $('#containerArea [name=seater]:checked').each(function (){
                    if($(this).val() == 'all') return;
                    searchRentalCar.seaters.push(Number($(this).val()));
                });
                //연료
                $('#containerArea [name=fuelType]:checked').each(function (){
                    if($(this).val() == 'all') return;
                    searchRentalCar.fuelCodes.push($(this).val());
                });

                $.get('searchCar.do', searchRentalCar, function (res){
                    res.forEach(function(obj){
                        if(obj.rentalAvailable != 'Y'){
                            obj.carDisabled = 'car-disabled';
                        }
                        obj.fmSaleCost = numberCostFormat(obj.saleCost + '');
                        obj.fmTotalCost = numberCostFormat(obj.totalCost + '');
                    });

                    var renderData = {
                        rentalCars: res,
                    };

                    rentalCarListPrint(renderData);
                });
            }

            function numberCostFormat(cost){
                return cost.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")
            }

            //필터 초기화
            $('#containerArea').on('click', '#carSearchListFilterBtn', function () {
                $('.car-filter').prop('checked', false);
                searchRentalCars();
                return false;
            });

            $('#containerArea').on('click', '.rental-car:not(.car-disabled)', function () {
                $('[name=rentalDate]').val(rentalForm.rentalStartDate); //대여 일시
                $('[name=rentalPrintDate]').val(rentalForm.rentalStartDateStr); //대여 일시
                $('[name=rentalPlace]').val(rentalForm.rentalPlaceCd); //대여 지점
                $('[name=returnDate]').val(rentalForm.rentalReturnDate); //반납 일시
                $('[name=returnPrintDate]').val(rentalForm.rentalReturnDateStr); //반납 일시
                $('[name=returnPlace]').val(rentalForm.returnPlaceCd); //반납 지점
                $('[name=rentalPeriod]').val(rentalForm.getPeriodDate()); //총 대여기간
                $('[name=totalCost]').val($(this).find('.total-cost').data('totalCost')); //차량대여요금
                $('[name=saleCost]').val($(this).find('.sale-cost').data('saleCost')); //할인요금
                $('[name=carNo]').val($(this).data('carNo'));
                $('[name=saleRate]').val($(this).data('perSale'));

                $('#step2Form').submit();
            });

            //차종 필터 선택 변경
            $('#containerArea').on('change', '[name=carTypeCode]', function () {
                var $checkbox = $('#containerArea [name=carTypeCode]');
                if($(this).val() == 'all'){
                    $checkbox.prop('checked', $(this).is(':checked'));
                }else if(!$(this).is(':checked')){
                    $checkbox.eq(0).prop('checked', false);
                }else if($checkbox.length - 1 == $('#containerArea [name=carTypeCode]:checked').length){
                    $checkbox.eq(0).prop('checked', true);
                }
                searchRentalCars();
            });

            //인승 필터 선택 변경
            $('#containerArea').on('change', '[name=seater]', function () {
                var $checkbox = $('#containerArea [name=seater]');
                if($(this).val() == 'all'){
                    $checkbox.prop('checked', $(this).is(':checked'));
                }else if(!$(this).is(':checked')){
                    $checkbox.eq(0).prop('checked', false);
                }else if($checkbox.length - 1 == $('#containerArea [name=seater]:checked').length){
                    $checkbox.eq(0).prop('checked', true);
                }
                searchRentalCars();
            });

            //연료 필터 선택 변경
            $('#containerArea').on('change', '[name=fuelType]', function () {
                var $checkbox = $('#containerArea [name=fuelType]');
                if($(this).val() == 'all'){
                    $checkbox.prop('checked', $(this).is(':checked'));
                }else if(!$(this).is(':checked')){
                    $checkbox.eq(0).prop('checked', false);
                }else if($checkbox.length - 1 == $('#containerArea [name=fuelType]:checked').length){
                    $checkbox.eq(0).prop('checked', true);
                }
                searchRentalCars();
            });
        });
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

    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" style="height: 80%;"
            data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>

    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" style="height: 80%"
             data-bs-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Next</span>
     </button>
</div>

<div class="container-xl" id="mainContainer">
    <div class="container text-center">
        <div class="row" >
            <div class="col">
                <div class="card" style="width: 100%;">

                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" style="height: 70px;">
                            <div class="row">
                                <div class="col-1 location-name <c:if test='${regionType ne "1"}'>region-on</c:if>" style="background: #f1f1f1; color: #8f9191">
                                    <a href="index.do?regionType=2" style="display: block;">
                                        제주
                                    </a>
                                </div>
                                <div class="col-1 location-name <c:if test='${regionType eq "1"}'>region-on</c:if>" style="background: #f1f1f1; color: #8f9191" >
                                    <a href="index.do?regionType=1" style="display: block;">
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
                                        <span id="rentalPlace" class="cursor-pointer">어디서 대여할까요?</span></p>

                                </div>
                                <div class="col-3">
                                    <p class="card-text"><small><strong>반납장소</strong></small><br/>
                                        <img src="/images/icons/location-dot-solid.svg" width="15px"/>
                                        <span id="returnPlace" class="cursor-pointer">어디로 반납할까요?</span></p>

                                </div>
                                <div class="col-4">
                                    <p class="card-text"><small><strong>대여기간</strong></small><br/>
                                        <img src="/images/icons/clock-solid.svg" width="17px"/>
                                        <span id="rentalDate">얼마 동안 대여할까요?</span></p>

                                </div>
                                <%--/reservation/step2.do #f8f7fd--%>
                                <div class="col-2" id="searchName" style="background: #ddd; display: block; " >
                                    차량 검색하기
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 지역 선택 영역 -->
    <div class="container" id="containerArea"></div>

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
                <span class="cursor-pointer" data-branch-code="{{branchCode}}">
                    <img src="/images/icons/location-dot-solid.svg" width="15px"/>
                    &nbsp;&nbsp;{{branchName}}
                </span>
            </div>
            {{/locations}}
        </div>

    </script>
    <%--지점 목록 영역 끝--%>

    <%--달력 시작--%>
    <script type="x-tmpl-mustache" id="calendarTemplate" style="display: none">
        <%--첫번째 달력--%>
        <div class="col p-2">
            <div class="rental-start-calendar">
                <h4 class="text-center p-2 year-month" data-year-month="{{leftDate.yearMonth}}">
                    <img src="/images/icons/chevron-left.svg" id="dateLeftBtn" class="cursor-pointer" />
                    {{leftDate.yearMonth}}
                </h4>
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
                <h4 class="text-center p-2 year-month" data-year-month="{{rightDate.yearMonth}}">
                    {{rightDate.yearMonth}}
                    <img src="/images/icons/chevron-right.svg" id="dateRightBtn" class="cursor-pointer" />
                </h4>
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
                    <select id="startDateSelectHour" class="form-select" aria-label="Default select example" disabled="disabled"
                            style="height: 50px; margin-left:10px; width: 220px;">
                        <option selected value="">선택</option>
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
                    </select>
                    <select id="startDateSelectMinute" class="form-select" aria-label="Default select example" disabled="disabled"
                            style="height: 50px; margin-left:20px; width: 220px;">
                        <option value="00">00분</option>
                        <option value="10">10분</option>
                        <option value="20">20분</option>
                        <option value="30">30분</option>
                        <option value="40">40분</option>
                        <option value="50">50분</option>
                    </select>
                    <select id="returnDateSelectHour" class="form-select" aria-label="Default select example" disabled="disabled"
                            style="height: 50px; margin-left:30px; width: 220px;">
                        <option selected value="">선택</option>
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
                    </select>
                    <select id="returnDateSelectMinute" class="form-select" aria-label="Default select example" disabled="disabled"
                            style="height: 50px; margin-left:20px; width: 220px;">
                        <option value="00">00분</option>
                        <option value="10">10분</option>
                        <option value="20">20분</option>
                        <option value="30">30분</option>
                        <option value="40">40분</option>
                        <option value="50">50분</option>
                    </select>
                    <div class="col-1 mt-3"></div>
                    <div class="col-11 mt-3"><p class="text-center">총
                        <span id="rentalPeriodDay">0</span>일
                        <span id="rentalPeriodHour">0</span>시간
                        <span id="rentalPeriodMinute">0</span>분 대여</p></div>

                </div>
            </div>
        </div>
    </div>

    <form id="step2Form" action="/reservation/step2.do" method="post" >
        <input type="hidden" name="rentalDate" value="" /> <%--대여 일시--%>
        <input type="hidden" name="rentalPrintDate" value="" /> <%--대여 일시 출력용--%>
        <input type="hidden" name="rentalPlace" value="" /> <%--대여 지점--%>
        <input type="hidden" name="returnDate" value="" /> <%--반납 일시--%>
        <input type="hidden" name="returnPrintDate" value="" /> <%--반납 일시 출력용--%>
        <input type="hidden" name="returnPlace" value="" /> <%--반납 지점--%>
        <input type="hidden" name="rentalPeriod" value="" /> <%--총 대여기간--%>
        <input type="hidden" name="carNo" value="" /><%--자동차 no--%>
        <input type="hidden" name="totalCost" value="" /> <%--대여요금--%>
        <input type="hidden" name="saleCost" value="" /> <%--할인요금--%>
        <input type="hidden" name="saleRate" value="" /> <%--할인율--%>
    </form>

    <!-- 차량 선택 영역 -->
    <div type="x-tmpl-mustache" id="searchCarTemplate" style="display: none">
        <div class="row" style="padding-top: 50px;">
            <div class="col-3" style="height: 600px; border: 1px solid #23093d; border-radius: 20px; padding: 20px;">
                <p><strong>차종</strong></p>
                <div class="row">
                    <div class="col-auto"><label><input type="checkbox" class="car-filter" name="carTypeCode" value="all" /> 전체보기</label></div>
                    <c:forEach items="${carTypeList}" var="carType">
                        <div class="col-auto"><label class="cursor-pointer"><input type="checkbox" class="car-filter" name="carTypeCode" value="${carType.fullCode}" /> ${carType.codeName}</label></div>
                    </c:forEach>
                </div>
                <hr/>
                <p><strong>인승</strong></p>
                <div class="row">
                    <div class="col-auto"><label class="cursor-pointer"><input type="checkbox" class="car-filter" name="seater" value="all" /> 전체보기</label></div>
                    <div class="col-auto"><label class="cursor-pointer"><input type="checkbox" class="car-filter" name="seater" value="5" /> 5인승</label></div>
                    <div class="col-auto"><label class="cursor-pointer"><input type="checkbox" class="car-filter" name="seater" value="7" /> 7인승</label></div>
                    <div class="col-auto"><label class="cursor-pointer"><input type="checkbox" class="car-filter" name="seater" value="9" /> 9인승</label></div>
                </div>
                <hr/>
                <p><strong>연료</strong></p>
                <div class="row">
                    <div class="col-auto"><label><input type="checkbox" class="car-filter" name="fuelType" value="all" /> 전체보기</label></div>
                    <c:forEach items="${fuelTypeList}" var="fuelType">
                        <div class="col-auto"><label class="cursor-pointer"><input type="checkbox" class="car-filter" name="fuelType" value="${fuelType.fullCode}" /> ${fuelType.codeName}</label></div>
                    </c:forEach>
                </div>
                <div style="background: #f8f7fd; border-radius: 30px; height: 50px; text-align: center; padding-top:12px; align-content: center; margin-top: 10px">
                    <a href="#" id="carSearchListFilterBtn"><strong>필터 초기화</strong></a>
                </div>

            </div>
            <div class="col-1"></div>
            <div class="col-8">
                <div class="row" id="rentalCarListArea">
                    <%--렌트카 목록 영역--%>
                </div>
            </div>
        </div>
    </div>

    <div type="x-tmpl-mustache" id="searchRentalCarTemplate" style="display: none">
        {{#rentalCars}}
            <div class="col-6 cursor-pointer rental-car {{carDisabled}}" data-car-no="{{carNo}}" data-per-sale="{{perSale}}">
                <div class="card mb-3">
                    <div class="row g-0">
                        <div class="col-md-5 align-self-center">
                            <img src="/images/carImage/{{carNo}}.png" class="img-fluid rounded-start" style="padding-top: 20px; margin-left: 5px;" alt="{{carName}}">
                        </div>
                        <div class="col-md-7">
                            <div class="card-body">
                                <p class="card-text" data-car-name="{{carName}}">{{carName}}</p>
                                <p class="card-text sale-cost" data-sale-cost="{{saleCost}}" style="color: red">{{fmSaleCost}}원<small>({{perSale}}%) 할인</small></p>
                                <p class="card-text total-cost" data-total-cost="{{totalCost}}" style="color: gray; text-decoration: line-through">{{fmTotalCost}}원</p>
                                <p class="card-text"><small class="text-body-secondary">{{carFuelName}} / {{seater}}인승</small></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        {{/rentalCars}}
        {{^rentalCars}}
            <div  style="display: block;">
                <p>예약 가능한 차량이 없습니다. <br> 다른 차종을 확인해주세요.</p>
            </div>
        {{/rentalCars}}
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

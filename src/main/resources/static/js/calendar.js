$(function(){
    var returnPlaceChangeMode = false;
    var currentStep = 1;
    var rentalForm = {
        getStartFullDate: function(){
            return this.startDate + ' ' + this.startHour + ':' + this.startMinute;
        },
        getReturnFullDate: function(){
            return this.returnDate + ' ' + this.returnHour + ':' + this.returnMinute;
        },
        init: function(){
            if(!returnPlaceChangeMode){
                this.rentalPlaceNo = '';
                this.rentalCarBranchNo = '';
            }
            this.returnPlaceNo = '';
            this.startDate = '';
            this.returnDate = '';
            this.startHour = '';
            this.returnHour = '';
            this.startMinute = '00';
            this.returnMinute = '00';
        }
    };
    rentalForm.init();

    var commonMessage = {
        rentalPlace: '어디서 대여할까요?',
        returnPlace: '어디로 반납할까요?',
        period: '얼마 동안 대여할까요?',
        resetMsg: '변경 시 선택하신 예약 정보 단계 이후 내용이 모두 초기화됩니다.'
    }

    //지역 목록 출력
    var data = {"locations": []};
    function step1Print(){
        var template = $('#locationTemplate').html();
        var rendered = Mustache.render(template, data);
        $('#containerArea').html(rendered);
    }
    step1Print();

    //step2로 skip
    /*var dateTemplate = $('#dateTemplate').html();
    var dateRendered = Mustache.render(dateTemplate, data);
    $('#containerArea').html(dateRendered);*/

    //지점 목록 출력
    var locationCode = '';
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

    //지점 목록 클릭 시 달력 페이지로 전환
    $('#containerArea').on('click', '#branchListArea span', function () {
        var no = $(this).data('no');
        if(!returnPlaceChangeMode){
            rentalForm.rentalPlaceNo = rentalForm.rentalCarBranchNo = no;
            $('#rentalPlace').text($(this).text());
        }

        rentalForm.returnPlaceNo = no;
        $('#returnPlace').text($(this).text());

        var dateTemplate = $('#dateTemplate').html();
        var dateRendered = Mustache.render(dateTemplate, data);
        $('#containerArea').html(dateRendered);
        returnPlaceChangeMode = false;
        locationCode = '';
        currentStep = 2;
    });


    //뒤로 가기 or 대여장소 변경
    $('#backBtn, #rentalPlace').on('click', function () {
        if (currentStep != 1) {
            if(!confirm(commonMessage.resetMsg)) return false;
            returnPlaceChangeMode = false;
            step1Print();
            reservationDateObj.reset();
            rentalForm.init();

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
        rentalForm.startHour = $('#startDateSelectHour').val();
        timeChange();
    });

    $('#containerArea').on('change', '#startDateSelectMinute', function(){
        rentalForm.startMinute = $('#startDateSelectMinute').val();
        timeChange();
    });

    $('#containerArea').on('change', '#returnDateSelectHour', function(){
        rentalForm.returnHour = $('#returnDateSelectHour').val();
        timeChange();
    });

    $('#containerArea').on('change', '#returnDateSelectMinute', function(){
        rentalForm.returnMinute = $('#returnDateSelectMinute').val();
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
            $('#rentalPeriodDay').text(returnDate.diff(startDate, 'days'));
            $('#rentalPeriodHour').text(moment.duration(returnDate.diff(startDate)).hours());
            $('#rentalPeriodMinute').text(moment.duration(returnDate.diff(startDate)).minutes());
            $('#rentalDate').text(startDate.format('MM/DD (dd) HH:mm') + ' ~ ' + returnDate.format('MM/DD (dd) HH:mm'))
        }
    }

});
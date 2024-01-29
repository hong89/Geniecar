$(function(){
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
        dateCalculator: function(){
            this.leftDate.list = new Array(); //초기화
            this.rightDate.list = new Array(); //초기화

            let _leftMoment = moment(this.today);
            let _rightMoment = _leftMoment.clone().add('1', 'M');

            this.leftDate.yearMonth = _leftMoment.format('YYYY.MM');
            this.leftDate.daysInMonth = _leftMoment.daysInMonth();
            this.leftDate.startDay = _leftMoment.clone().startOf('month').format('d');

            this.rightDate.yearMonth = _rightMoment.format('YYYY.MM');
            this.rightDate.daysInMonth = _rightMoment.daysInMonth();
            this.rightDate.startDay = _rightMoment.clone().startOf('month').format('d');
        },
        nextMonth: function(){
            this.today = moment(this.today).add('1', 'M');
        },
        beforeMonth: function(){
            this.today = moment(this.today).subtract('1', 'M');
        },
        fillDate: function(date){
            var isStart = false, currentDay = 0, isEnd = false;
            for(var j = 0; j < 6; j++){
                if(isEnd) break;
                date.list[j] = [];
                for(var i = 0; i < 7; i++){
                    if(currentDay >= date.daysInMonth) {
                        isEnd = true;
                        break;
                    }
                    if(i == Number(date.startDay)) isStart = true;

                    date.list[j].push(isStart ? ++currentDay : '');
                }
            }
        },
        run: function(){
            this.dateCalculator();

            this.fillDate(this.leftDate);
            this.fillDate(this.rightDate);

            var calendarTemplate = $('#calendarTemplate').html();
            var calendarRendered = Mustache.render(calendarTemplate, reservationDateObj);
            $('#calendarArea').html(calendarRendered);
        }
    }

    reservationDateObj.run();

//달력 왼쪽 클릭 시
    $('#containerArea').on('click', '#dateLeftBtn', function(){
        reservationDateObj.beforeMonth();
        reservationDateObj.run();
    });

//달력 오른쪽 클릭 시
    $('#containerArea').on('click', '#dateRightBtn', function(){
        reservationDateObj.nextMonth();
        reservationDateObj.run();
    });
});
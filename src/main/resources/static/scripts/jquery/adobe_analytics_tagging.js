//
$(document).ready(function() {
    //_satellite.log("Adobe_Test_221201J");
    try {
        get_aa_site_templete();
        get_aa_page_template();    
        //페이지명,페이지URL
        get_page_info();
        //로그인 완료
        if(_dl.pageInfo.login_status=='Y') {
            localStorage.setItem('aa_logoin_cnt', String(Number(localStorage.getItem('aa_logoin_cnt'))+1));
            if(Number(localStorage.getItem('aa_logoin_cnt'))==1) {
                _dl.page_event.login = true;
            }
        } else {
            localStorage.setItem('aa_logoin_cnt', '0');
        }
        //로그아웃
        $('.layer-gnb-list ul li p a').each(function(idx, el) {
            if($(el).text()=='로그아웃') {
                $(el).click(function() {
                    _satellite.track("log_out");
                });
            }
        });

        //페이지별 Tagging
        var url = location.pathname+location.search;
        if(_dl.pageInfo.page_url.indexOf('step1.do') > -1) {        
        	//step1_load();
        } else if(_dl.pageInfo.page_url.indexOf('reservation/index.do') > -1) {	// ds고도화 1단계 화면
        	reservIndex_load();
        } else if(_dl.pageInfo.page_url.indexOf('step2.do') > -1) {
            step2_load();
        } else if(_dl.pageInfo.page_url.indexOf('step3.do') > -1) {
            step3_load();
        } else if(_dl.pageInfo.page_url.indexOf('complete.do') > -1) {
            step4_load();
        } else if(_dl.pageInfo.page_url.indexOf('reservationMonthApply.do') > -1) {
            month_rsrv_load();
        } else if(_dl.pageInfo.page_url.indexOf('reservationMonthComplete.do') > -1) {
            month_rsrv_compl_load();
        } else if(_dl.pageInfo.page_url.indexOf('driverInclude/firstStep.do') > -1) {
            drv_step1_load();
        } else if(_dl.pageInfo.page_url.indexOf('driverInclude/secondStep.do') > -1) {
            drv_step2_load();
        } else if(_dl.pageInfo.page_url.indexOf('driverInclude/thirdStep.do') > -1) {
            drv_step3_load();
        } else if(_dl.pageInfo.page_url.indexOf('myPage/reservationDetail.do') > -1) {
            rsrv_detail_load();
        } else if(_dl.pageInfo.page_url.indexOf('reservation/carCheckIn.do') > -1) {
            car_checkin_load();
        }  
    } catch(e) {
        //
    }
    
    console.log('_dl', _dl);
});

//예약하기(step1)
function step1_load() {    
    localStorage.setItem('aa_booking_category', '언제');    
    localStorage.setItem('aa_one_way_return', 'N');    
    //같은지점반납
    var rent_area_text1 = '내륙';
    if(_dl.pageInfo.page_url.indexOf('rentArea=6') > -1) {
        rent_area_text1 = '제주';
    }
    var rent_area_text2 = '서울';
    if(_dl.pageInfo.page_url.indexOf('rentArea=6') > -1) {
        rent_area_text2 = '제주';
    }
    rent_area_text3 = '가산디지털';
    //다른지점반납
    var return_area_text1 = '내륙';
    if(_dl.pageInfo.page_url.indexOf('rentArea=6') > -1) {
        return_area_text1 = '제주';
    }
    var return_area_text2 = '서울';
    if(_dl.pageInfo.page_url.indexOf('rentArea=6') > -1) {
        return_area_text2 = '제주';
    }
    return_area_text3 = '가산디지털';
    //지점유형
    localStorage.setItem('aa_rental_office_type', '지점');    
    //스마트키박스
    localStorage.setItem('aa_smart_key_service', 'N');

    $('.btn.btn-gray.nextStep').click(function() {
        var cate_num = 0;
        if($('#part-1').hasClass('active')) {
            localStorage.setItem('aa_booking_category', '언제');
            cate_num = 0;
        } else if($('#part-2').hasClass('active')) {
            localStorage.setItem('aa_booking_category', '어디서');
            cate_num = 1;
        } else if($('#part-3').hasClass('active')) {
            localStorage.setItem('aa_booking_category', '어떤차');
            cate_num = 2;
        }

        if($('#same-branch-btn-'+(cate_num+1)).hasClass('active')) {            
            localStorage.setItem('aa_one_way_return', 'N');
        } else if($('#other-branch-btn-'+(cate_num+1)).hasClass('active')) {
            localStorage.setItem('aa_one_way_return', 'Y');            
        }

        if(localStorage.getItem('aa_one_way_return')=='N') {
            //같은지점반납            
            rent_area_text1 = $($('.same-branch-menu .sameAreaLi.active .sameAreaFlag-label')[cate_num]).text();
            rent_area_text2 = $($('.same-branch-menu .btn.btn-link.sameAreaList.active b')[cate_num]).text();
            rent_area_text3 = $('.same-branch-menu .sameBranchItem .btn.btn-link.active b').text();
            if($('.same-branch-menu .sameBranchItem .btn.btn-link.active').attr('onclick').indexOf('"HAVEPLACE":true') > -1) {
                localStorage.setItem('aa_rental_office_type', '지점');
            } else {
                localStorage.setItem('aa_rental_office_type', '딜리버리');
            }
            if($('.same-branch-menu .sameBranchItem .btn.btn-link.active').attr('onclick').indexOf('"SELFLOCK":"X"') > -1) {
                localStorage.setItem('aa_smart_key_service', 'Y_'+rent_area_text3+'_'+rent_area_text3);
            } else {
                localStorage.setItem('aa_smart_key_service', 'N');
            }
            localStorage.setItem('aa_pick_up_location', rent_area_text1+'_'+rent_area_text2+'_'+rent_area_text3+'_'+localStorage.getItem('aa_rental_office_type'));
            localStorage.setItem('aa_return_location', rent_area_text1+'_'+rent_area_text2+'_'+rent_area_text3+'_지점');            
        } else {
            //다른지점반납
            rent_area_text1 = $($('.other-branch-menu .otherAreaLi.active .otherAreaFlag-label')[cate_num]).text();
            rent_area_text2 = $($('.other-branch-menu .rent-branch-mode .btn.btn-link.rentAreaList.active b')[cate_num]).text();
            rent_area_text3 = $('.other-branch-menu .rent-branch-mode .rentBranchItem .btn.btn-link.active b').text();
            if($('.other-branch-menu .rent-branch-mode .rentBranchItem .btn.btn-link.active').attr('onclick').indexOf('"HAVEPLACE":true') > -1) {
                localStorage.setItem('aa_rental_office_type', '지점');
            } else {
                localStorage.setItem('aa_rental_office_type', '딜리버리');
            }            
            return_area_text1 = $($('.other-branch-menu .otherAreaLi.active .otherAreaFlag-label')[cate_num]).text();
            return_area_text2 = $($('.other-branch-menu .return-branch-mode .btn.btn-link.returnAreaList.active b')[cate_num]).text();
            return_area_text3 = $('.other-branch-menu .return-branch-mode .returnBranchItem .btn.btn-link.active b').text();
            if($('.other-branch-menu .rent-branch-mode .rentBranchItem .btn.btn-link.active').attr('onclick').indexOf('"SELFLOCK":"X"') > -1) {
                localStorage.setItem('aa_smart_key_service', 'Y_'+rent_area_text3+'_'+return_area_text3);
            } else {
                localStorage.setItem('aa_smart_key_service', 'N');
            }
            localStorage.setItem('aa_pick_up_location', rent_area_text1+'_'+rent_area_text2+'_'+rent_area_text3+'_'+localStorage.getItem('aa_rental_office_type'));
            localStorage.setItem('aa_return_location', return_area_text1+'_'+return_area_text2+'_'+return_area_text3+'_지점');
        }        
        localStorage.setItem('aa_pick_up_date', $($('.result-time .rentDate_txt')[cate_num]).text().replace(/\//g, '-'));
        localStorage.setItem('aa_return_date', $($('.result-time .returnDate_txt')[cate_num]).text().replace(/\//g, '-'));
        localStorage.setItem('aa_pick_up_time', $($('.result-time .selectbox.sHour')[cate_num]).val()+':'+$($('.result-time .selectbox.sMin')[cate_num]).val());
        localStorage.setItem('aa_return_time', $($('.result-time .selectbox.eHour')[cate_num]).val()+':'+$($('.result-time .selectbox.eMin')[cate_num]).val());

        $('.short-car-list-cont div.radioIconBox').each(function(idx,el) {            
            if($(el).find('.icon.radio-check').css('display')=='flex') {
                var car_data = JSON.parse($(el).children('input').attr('data-car'));                
                if(car_data.matnr.indexOf('1H') > -1) {
                    localStorage.setItem('aa_manufacturer', '현대');
                } else if(car_data.matnr.indexOf('1K') > -1) {
                    localStorage.setItem('aa_manufacturer', '기아');
                } else if(car_data.matnr.indexOf('1C') > -1 || car_data.matnr.indexOf('1DV') > -1) {
                    localStorage.setItem('aa_manufacturer', '쉐보레');
                } else if(car_data.matnr.indexOf('1TIV') > -1) {
                    localStorage.setItem('aa_manufacturer', '쌍용');
                } else if(car_data.matnr.indexOf('1B') > -1) {
                    localStorage.setItem('aa_manufacturer', '벤츠');
                } else if(car_data.matnr.indexOf('1TS') > -1) {
                    localStorage.setItem('aa_manufacturer', '테슬라');
                } else {
                    localStorage.setItem('aa_manufacturer', '기타');
                }
                localStorage.setItem('aa_oil_type', car_data.fueltTx);
                localStorage.setItem('aa_passengers', String(car_data.gplcnt));
                //차량정보
                localStorage.setItem('aa_vehicle_name', car_data.maktx);
                localStorage.setItem('aa_vehicle_category', car_data.mvgr2Tx);
                localStorage.setItem('aa_vehicle_code', car_data.matnr);
            }
        });
    });
    _satellite.track("reservation_step1");    
}

//예약하기(step1) 수정본
function reservIndex_load() {
	// localStorage 초기화
    localStorage.clear();
    	
    $('.tab-next').click(function() {
    	if(reservIdx.current.step == 'vehicle'){
    		// 세팅값 초기화
    		var pick_up_date		= "";  // 예시) 2022-06-02
    		pick_up_date = $("#reservForm input[name='rentDate']").val().substring(0,4)+"-"+$("#reservForm input[name='rentDate']").val().substring(4,6)+"-"+$("#reservForm input[name='rentDate']").val().substring(6,8);
    		
    		var return_date		    = "";  // 예시) 2022-06-02
    		return_date = $("#reservForm input[name='returnDate']").val().substring(0,4)+"-"+$("#reservForm input[name='returnDate']").val().substring(4,6)+"-"+$("#reservForm input[name='returnDate']").val().substring(6,8);
    		
    		var pick_up_location    = "";  // 예시) 렌터카 대여 장소 {{권역}}_{{지역}}_{{지점}}_{{지점타입}} -----> 내륙_전라/광주_동광주_딜리버리
    		pick_up_location = $("#reservForm input[name='rentBranchTx']").val();
    		
    		var return_location	    = "";  // 예시) 렌터카 반납 장소 {{권역}}_{{지역}}_{{지점}}_{{지점타입}} -----> 내륙_전라/광주_동광주_딜리버리
    		return_location = $("#reservForm input[name='returnBranchTx']").val();
    		
    		var pick_up_time		= "";  // 예시) 16:00
    		pick_up_time = $("#reservForm input[name='rentTime']").val().substring(0,2)+":"+$("#reservForm input[name='rentTime']").val().substring(2,4);
    		
    		var return_time		    = "";  // 예시) 07:00
    		return_time = $("#reservForm input[name='returnTime']").val().substring(0,2)+":"+$("#reservForm input[name='returnTime']").val().substring(2,4);
    		
    		var booking_category    = "";  // 예시) 언제, 어디서, 어떤차
    		booking_category = "어디서";	// "어디서" 로 고정
    		
    		var manufacturer	    = "";  // 예시) 현대, 기아, 쌍용
    		if(reservIdx.formEl.elements.carCode.value.indexOf('1H') > -1) {
    			manufacturer = '현대';
            } else if(reservIdx.formEl.elements.carCode.value.indexOf('1K') > -1) {
            	manufacturer = '기아';
            } else if(reservIdx.formEl.elements.carCode.value.indexOf('1C') > -1
            	   || reservIdx.formEl.elements.carCode.value.indexOf('1DV') > -1) {
            	manufacturer = '쉐보레';
            } else if(reservIdx.formEl.elements.carCode.value.indexOf('1TIV') > -1) {
            	manufacturer = '쌍용';
            } else if(reservIdx.formEl.elements.carCode.value.indexOf('1B') > -1) {
            	manufacturer = '벤츠';
            } else if(reservIdx.formEl.elements.carCode.value.indexOf('1TS') > -1) {
            	manufacturer = '테슬라';
            } else {
            	manufacturer = '기타';
            }
    		
    		var passengers		    = "";  // 예시) 차량 인승 - 숫자로기입
    		passengers = reservIdx.formEl.elements.carSeats.value;
    		
    		var oil_type			= "";  // 예시) 가솔린, 디젤, 하이브리드, 전기차
    		oil_type = reservIdx.formEl.elements.carFuelType.value;
    		
    		var one_way_return      = "";  // 예시) Y | N
    		if($("#reservForm input[name='rentPlace']").val() == $("#reservForm input[name='returnPlace']").val()){
    			one_way_return = "N";
    		}else{
    			one_way_return = "Y";
    		}
    		
    		var rental_office_type  = "";  // 예시) 지점 | 딜리버리
    		if($("#reservForm input[name='dsRentYn']").val() == "Y"){
    			rental_office_type = "딜리버리";
	    	}else{
	    		rental_office_type = "지점";
	    	}
    		
    		var smart_key_service	= "";  // 예시) NY_{{대여장소}}_{{반납장소}}  ----> Y_온수_온수
    		if($("#reservForm input[name='rentSelf']").val() == "X"){
    			smart_key_service = "Y_"+$("#reservForm input[name='rentPlace']").val()+"_"+$("#reservForm input[name='returnPlace']").val();
	    	}else{
	    		smart_key_service = "N";
	    	}
    		
    		var vehicle_name	    = "";  // 예시) 더 뉴 그랜저 2.5(G)
    		vehicle_name = reservIdx.formEl.elements.carName.value;
    		
    		var vehicle_category    = "";  // 예시) SUV, 경차, 준준형 등
    		if(reservIdx.formEl.elements.carSize.value.indexOf('14') > -1) {
    			vehicle_category = '경차';
            } else if(reservIdx.formEl.elements.carSize.value.indexOf('11') > -1) {
            	vehicle_category = '소형';
            } else if(reservIdx.formEl.elements.carSize.value.indexOf('12') > -1) {
            	vehicle_category = '중형';
            } else if(reservIdx.formEl.elements.carSize.value.indexOf('15') > -1) {
            	vehicle_category = '준대형';
            } else if(reservIdx.formEl.elements.carSize.value.indexOf('13') > -1) {
            	vehicle_category = '대형';
            } else if(reservIdx.formEl.elements.carSize.value.indexOf('21') > -1) {
            	vehicle_category = '승합';
            } else if(reservIdx.formEl.elements.carSize.value.indexOf('31') > -1) {
            	vehicle_category = 'RV';
            } else if(reservIdx.formEl.elements.carSize.value.indexOf('71') > -1) {
            	vehicle_category = '전기차';
            } else if(reservIdx.formEl.elements.carSize.value.indexOf('51') > -1) {
            	vehicle_category = '수입차';
            } else {
            	vehicle_category = '전체';
            }
    		
    		var vehicle_code	    = "";  // 예시) 1hav140
    		vehicle_code = reservIdx.formEl.elements.carCode.value;
	    	
	    	localStorage.setItem('aa_pick_up_date'		,pick_up_date		); // 예시) 2022-06-02
	    	localStorage.setItem('aa_return_date'		,return_date		); // 예시) 2022-06-02
	    	localStorage.setItem('aa_pick_up_location'	,pick_up_location   ); // 예시) 렌터카 대여 장소 {{권역}}_{{지역}}_{{지점}}_{{지점타입}} -----> 내륙_전라/광주_동광주_딜리버리
	    	localStorage.setItem('aa_return_location'	,return_location	); // 예시) 렌터카 반납 장소 {{권역}}_{{지역}}_{{지점}}_{{지점타입}} -----> 내륙_전라/광주_동광주_딜리버리
	    	localStorage.setItem('aa_pick_up_time'		,pick_up_time		); // 예시) 16:00
	    	localStorage.setItem('aa_return_time'		,return_time		); // 예시) 07:00
	    	localStorage.setItem('aa_booking_category'	,booking_category   ); // 예시) 언제, 어디서, 어떤차
	    	localStorage.setItem('aa_manufacturer'		,manufacturer	    ); // 예시) 현대, 기아, 쌍용
	    	localStorage.setItem('aa_passengers'		,passengers		    ); // 예시) 차량 인승 - 숫자로기입
	    	localStorage.setItem('aa_oil_type'			,oil_type			); // 예시) 가솔린, 디젤, 하이브리드, 전기차
	    	localStorage.setItem('aa_one_way_return'	,one_way_return     ); // 예시) Y | N
	    	localStorage.setItem('aa_rental_office_type',rental_office_type ); // 예시) 지점 | 딜리버리
	    	localStorage.setItem('aa_smart_key_service'	,smart_key_service	); // 예시) NY_{{대여장소}}_{{반납장소}}  ----> Y_온수_온수
	    	
	    	localStorage.setItem('aa_vehicle_name'		,vehicle_name		); // 예시) 더 뉴 그랜저 2.5(G)
	        localStorage.setItem('aa_vehicle_category'	,vehicle_category	); // 예시) SUV, 경차, 준준형 등
	        localStorage.setItem('aa_vehicle_code'		,vehicle_code		); // 예시) 1hav140
    	}
    });
    
    _satellite.track("reservation_index");    
}

//예약하기(step2)
function step2_load() {   
    _dl.reservation = {
        pick_up_date: localStorage.getItem('aa_pick_up_date'), // 예시) 2022-06-02
        return_date: localStorage.getItem('aa_return_date'), // 예시) 2022-06-02
        pick_up_location: localStorage.getItem('aa_pick_up_location'), // 예시) 렌터카 대여 장소 {{권역}}_{{지역}}_{{지점}}_{{지점타입}} -----> 내륙_전라/광주_동광주_딜리버리
        return_location: localStorage.getItem('aa_return_location'), // 예시) 렌터카 반납 장소 {{권역}}_{{지역}}_{{지점}}_{{지점타입}} -----> 내륙_전라/광주_동광주_딜리버리
        pick_up_time: localStorage.getItem('aa_pick_up_time'), // 예시) 16:00
        return_time: localStorage.getItem('aa_return_time'), // 예시) 07:00
        booking_category: localStorage.getItem('aa_booking_category'), // 예시) 언제, 어디서, 어떤차
        manufacturer: localStorage.getItem('aa_manufacturer'), // 예시) 현대, 기아, 쌍용
        passengers : localStorage.getItem('aa_passengers'), // 예시) 차량 인승 - 숫자로기입
        oil_type : localStorage.getItem('aa_oil_type'), // 예시) 가솔린, 디젤, 하이브리드, 전기차
        one_way_return: localStorage.getItem('aa_one_way_return'), // 예시) Y | N
        rental_office_type: localStorage.getItem('aa_rental_office_type'), // 예시) 지점 | 딜리버리
        smart_key_service: localStorage.getItem('aa_smart_key_service') // 예시) NY_{{대여장소}}_{{반납장소}}  ----> Y_온수_온수
    }
    _dl.vehicleInfo = {
        vehicle_name: localStorage.getItem('aa_vehicle_name'), // 예시) 더 뉴 그랜저 2.5(G)
        vehicle_category: localStorage.getItem('aa_vehicle_category'), // 예시) SUV, 경차, 준준형 등
        vehicle_code: localStorage.getItem('aa_vehicle_code'), // 예시) 1hav140
    }
    _dl.page_event.reservation_step2 = true;

    $('#btnNextPage').click(function() {
        localStorage.setItem('aa_rental_price', $('#rentalFee').text());               
        if($('#totalDiscountFeeView').length > 0) {             
            localStorage.setItem('aa_discount_price', $('#totalDiscountFeeView').text().replace('-','').replace('원',''));
            localStorage.setItem('aa_discount_detail', $('#eventShow').text());
        } else {
            localStorage.setItem('aa_discount_price', '0');
        }
        if($('#totalExtraPrice').length > 0) {
            localStorage.setItem('aa_additional_price', $('#totalExtraPrice').text().replace('원',''));
        } else {
            localStorage.setItem('aa_additional_price', '0');
        }
        localStorage.setItem('aa_total_price', $('#totalPrice').text().replace('원',''));  
    });      
}

//예약하기(step3)
function step3_load() {
    _dl.reservation = {
        pick_up_date: localStorage.getItem('aa_pick_up_date'), // 예시) 2022-06-02
        return_date: localStorage.getItem('aa_return_date'), // 예시) 2022-06-02
        pick_up_location: localStorage.getItem('aa_pick_up_location'), // 예시) 렌터카 대여 장소 {{권역}}_{{지역}}_{{지점}}_{{지점타입}} -----> 내륙_전라/광주_동광주_딜리버리
        return_location: localStorage.getItem('aa_return_location'), // 예시) 렌터카 반납 장소 {{권역}}_{{지역}}_{{지점}}_{{지점타입}} -----> 내륙_전라/광주_동광주_딜리버리
        pick_up_time: localStorage.getItem('aa_pick_up_time'), // 예시) 16:00
        return_time: localStorage.getItem('aa_return_time'), // 예시) 07:00
        rental_price: localStorage.getItem('aa_rental_price'), // 예시) 412000 ----- 숫자로기입
        discount_price: localStorage.getItem('aa_discount_price'), // 예시) 226600 ----- 숫자로기입
        additional_price: localStorage.getItem('aa_additional_price'), // 예시) 15000 ----- 숫자로기입
        total_price: localStorage.getItem('aa_total_price'), // 예시) 200400 ----- 숫자로기입
        discount_detail: localStorage.getItem('aa_discount_detail') // 예시) 회원할인(40%), 이벤트할인(55%), 생일자할인(50%) 등
    }
    _dl.vehicleInfo = {
        vehicle_name: localStorage.getItem('aa_vehicle_name'), // 예시) 더 뉴 그랜저 2.5(G)
        vehicle_category: localStorage.getItem('aa_vehicle_category'), // 예시) SUV, 경차, 준준형 등
        vehicle_code: localStorage.getItem('aa_vehicle_code'), // 예시) 1hav140
    }
    _dl.page_event.reservation_step3 = true;

    $('.detail-sticky .sticky-btn .btn.btn-red').click(function() {
        localStorage.setItem('aa_total_price', $('.price.totalRentalFeeView').text().replace('원',''))
        if($('#totalDiscountFeeView').length > 0) {             
            localStorage.setItem('aa_discount_price', $('#totalDiscountFeeView').text().replace('-','').replace('원',''));
            localStorage.setItem('aa_discount_detail', $('#eventShow').text());
        } else {
            localStorage.setItem('aa_discount_price', '0');
        }
        localStorage.setItem('aa_additional_price', $('#totalOptionFeeView').text().replace('원',''));
        localStorage.setItem('aa_point', String($('#pointUseFee').val()));
        var additional_detail = '';
        $('.sticky-cont .cont-result ul li').each(function(idx, el) {
            if($(el).html().indexOf('추가요금') > -1) {
                $(el).find('ul>li').each(function(idx2, el2) {
                    if($(el2).css('display')!='none') {
                        if(additional_detail=='') {
                            additional_detail = $(el2).find('strong').text();
                        } else {
                            additional_detail = additional_detail+'_'+$(el2).find('strong').text();
                        }
                    }
                });                
            }
        });
        localStorage.setItem('aa_additional_detail', additional_detail);
        $('#selLdwCode .chk-view-box').each(function(idx, el) {
            if($(el).children('input[name=rdoCDW]').is(':checked')) {
            localStorage.setItem('aa_cdw', $(el).find('label strong').text());
            }
        });
        $('.detail-radio-box .chk-view-box').each(function(idx, el) {
            if($(el).children('input[name=card-select]').is(':checked')) {
                localStorage.setItem('aa_payment_method', $(el).children('label').text());
            }
        });	
        _satellite.track("checkout_step3", {payment_method : localStorage.getItem('aa_payment_method')}); // 예시) 결제시 사용한 결제수단 ---- 간편결제, 네이버페이, 페이코 등	    
    });
}

//예약하기(step4)
function step4_load() {
    _dl.reservation = {
        pick_up_date: localStorage.getItem('aa_pick_up_date'), // 예시) 2022-06-02
        return_date: localStorage.getItem('aa_return_date'), // 예시) 2022-06-02
        pick_up_location: localStorage.getItem('aa_pick_up_location'), // 예시) 렌터카 대여 장소 {{권역}}_{{지역}}_{{지점}}_{{지점타입}} -----> 내륙_전라/광주_동광주_딜리버리
        return_location: localStorage.getItem('aa_return_location'), // 예시) 렌터카 반납 장소 {{권역}}_{{지역}}_{{지점}}_{{지점타입}} -----> 내륙_전라/광주_동광주_딜리버리
        pick_up_time: localStorage.getItem('aa_pick_up_time'), // 예시) 16:00
        return_time: localStorage.getItem('aa_return_time'), // 예시) 07:00
        rental_price: localStorage.getItem('aa_rental_price'), // 예시) 412000 ----- 숫자로기입
        discount_price: localStorage.getItem('aa_discount_price'), // 예시) 226600 ----- 숫자로기입
        additional_price: localStorage.getItem('aa_additional_price'), // 예시) 15000 ----- 숫자로기입
        total_price: localStorage.getItem('aa_total_price'), // 예시) 200400 ----- 숫자로기입
        discount_detail: localStorage.getItem('aa_discount_detail'), // 예시) 회원할인(40%), 이벤트할인(55%), 생일자할인(50%) 등
        point : localStorage.getItem('aa_point'), // 예시) 사용한 포인트 ----- 숫자로기입
        additional_detail: localStorage.getItem('aa_additional_detail'), // 예시) 고객부담금면제, 배반차 요금, 베이비시트 등 (1개 이상일경우 "_" 언더바로 구분)
        cdw : localStorage.getItem('aa_cdw'), // 예시) 미가입, 5만원, 30만원, 고객부담금 면제
        payment_method : localStorage.getItem('aa_payment_method') // 예시) 간편결제, 페이코, 네이버페이
    }
    _dl.vehicleInfo = {
        vehicle_name: localStorage.getItem('aa_vehicle_name'), // 예시) 더 뉴 그랜저 2.5(G)
        vehicle_category: localStorage.getItem('aa_vehicle_category'), // 예시) SUV, 경차, 준준형 등
        vehicle_code: localStorage.getItem('aa_vehicle_code'), // 예시) 1hav140
    }
    $('.section-format .format-area .row').each(function(idx, el) {        
        if($(el).html().indexOf('예약번호') > -1) {            
            localStorage.setItem('aa_reservation_id', $(el).children('dd').text());
        }
    });
    _dl.reservationInfo = {
        reservation_id : localStorage.getItem('aa_reservation_id')
    } 
    _dl.page_event.reservation_step4 = true;
}

//월간렌트 상담신청
function month_rsrv_load() {    
    $('.btn-area .btn.btn-red').click(function() {
        localStorage.setItem('aa_desired_rental_location', $('#rentArea option:selected').text()+'_'+$('#rentPlace option:selected').text());
    });
}
function month_rsrv_compl_load() {
    _dl.rentalInfo = {
        desired_rental_location : localStorage.getItem('aa_desired_rental_location')
    }
    _dl.page_event.monthly_rental = true;
}

//기사포함 단기렌트(step1)
function drv_step1_load() {
    localStorage.setItem('aa_vehicle_category', '승합차');    
    $('.btn.btn-red.driverNextBtn').click(function() {
        if($('#selCarListY').hasClass('active')) {
            localStorage.setItem('aa_vehicle_category', '승합차');
            $('#carListY .carSelector li').each(function(idx, el) {
                if($(el).children('input[name=car]').is(':checked')) {
                    localStorage.setItem('aa_vehicle_name', $(el).find('.car-name p').text());
                }
            });
        } else if($('#selCarListN').hasClass('active')) {
            localStorage.setItem('aa_vehicle_category', '승용차');
            $('#carListN .carSelector li').each(function(idx, el) {
                if($(el).children('input[name=car]').is(':checked')) {
                    localStorage.setItem('aa_vehicle_name', $(el).find('.car-name p').text());
                }
            });
        }
        $('.choice-list .chk-view-box').each(function(idx, el) {
            if($(el).children('input[name=carUseYnBtn]').is(':checked')) {
                localStorage.setItem('aa_usage_type', $(el).children('label').text().replace(/\n/g, '').replace(/\t/g, ''));
            }
            if($(el).children('input[name=productRadio]').is(':checked')) {
                localStorage.setItem('aa_rental_type', $(el).children('label').text().replace(/\n/g, '').replace(/\t/g, ''));
            }
            if($(el).children('input[name=driverlocation]').is(':checked')) {
                localStorage.setItem('aa_driving_location', $(el).children('label').text().replace(/\n/g, '').replace(/\t/g, ''));
            }
        });
    });  
}
//기사포함 단기렌트(step2)
function drv_step2_load() {
    _dl.rentalInfo = {
        vehicle_name: localStorage.getItem('aa_vehicle_name'), // 예시) 더 뉴 그랜저 2.5(G)
        vehicle_category: localStorage.getItem('aa_vehicle_category'), // 예시) SUV, 경차, 준준형 등
        usage_type: localStorage.getItem('aa_usage_type'), // 예시) 외국인 탑승, 장애인 탑승, 만65세 이상 탑승 등
        driving_location: localStorage.getItem('aa_driving_location'), // 예시) 인천공항>서울, 서울시내, 서울/경기, 전국 등
        rental_type: localStorage.getItem('aa_rental_type') // 예시) 공항픽업/샌딩, 시간사용(3시간), 올데이(10시간) 등
    }
    _dl.page_event.driver_included_rental_detail = true;
}
//기사포함 단기렌트(step3)
function drv_step3_load() {
    _dl.rentalInfo = {
        vehicle_name: localStorage.getItem('aa_vehicle_name'), // 예시) 더 뉴 그랜저 2.5(G)
        vehicle_category: localStorage.getItem('aa_vehicle_category'), // 예시) SUV, 경차, 준준형 등
        usage_type: localStorage.getItem('aa_usage_type'), // 예시) 외국인 탑승, 장애인 탑승, 만65세 이상 탑승 등
        driving_location: localStorage.getItem('aa_driving_location'), // 예시) 인천공항>서울, 서울시내, 서울/경기, 전국 등
        rental_type: localStorage.getItem('aa_rental_type') // 예시) 공항픽업/샌딩, 시간사용(3시간), 올데이(10시간) 등
    }
    _dl.page_event.driver_included_rental_complete = true;
} 

//예약취소
function rsrv_detail_load() {
    $('.btn.btn-red.layer-popup-close').click(function() {
        if($(this).text()=='예약취소') {            
            _satellite.track("cancel_reservaion", {cancel_type : $('#reasonCode option:selected').text()}); // 예시) 고객이 선택한 취소사유
        }
    });
    $('button.btn-small').each(function(idx, el) {
        if($(el).attr('data-link-text')=='사전체크인' || $(el).attr('data-link-text')=='추가운전자 등록/수정') {
            $(el).click(function() {
                localStorage.setItem('aa_vehicle_name', $('#carName').val());                
            });
        }
    });
}
//사전체크인
function car_checkin_load() {
    localStorage.setItem('aa_register_additional_driver', 'N');
    localStorage.setItem('aa_register_co_tenant', 'N');
    $('.btn-area .btn.btn-red').click(function() {
        if($('#driver2').is(':checked')) {
            localStorage.setItem('aa_register_additional_driver', 'Y');
        } else {
            localStorage.setItem('aa_register_additional_driver', 'N');
        }
        if($('#driver3').is(':checked')) {
            localStorage.setItem('aa_register_co_tenant', 'Y');
        } else {
            localStorage.setItem('aa_register_co_tenant', 'N');
        }
        _dl.rentalInfo = {
            vehicle_name: localStorage.getItem('aa_vehicle_name'), // 예시) 더 뉴 그랜저 2.5(G)
            vehicle_category: localStorage.getItem('aa_vehicle_category'), // 예시) SUV, 경차, 준준형 등
            register_additional_driver: localStorage.getItem('aa_register_additional_driver'), // 예시) Y | N
            register_co_tenant: localStorage.getItem('aa_register_co_tenant') // 예시) Y | N
        }
        _dl.page_event.advance_checkIn_complete = true;
    });
}

//공통함수
function get_page_info() {
    var url = location.pathname+location.search;
    var aa_page_name = '메인';
    if(url.indexOf("main/index.do") > -1) {
        aa_page_name = '메인';
    } else if(url.indexOf("myPage/") > -1 && url.indexOf("cbj/") === -1) {
        aa_page_name = '마이페이지';
        if(url.indexOf("reservation.do") > -1) {
            aa_page_name = '마이페이지 - 단기렌터카 예약';
        } else if(url.indexOf("reservationMonth.do") > -1) {
            aa_page_name = '마이페이지 - 월간단기렌터카 예약';
        } else if(url.indexOf("reservationDriver.do") > -1) {
            aa_page_name = '마이페이지 - 기사포함단기렌터카 예약';
        } else if(url.indexOf("usedCar.do") > -1) {
            aa_page_name = '마이페이지 - 장기렌터카 계약';
        } else if(url.indexOf("rentCarConsulting.do") > -1) {
            aa_page_name = '마이페이지 - 렌터카 상담';
        } else if(url.indexOf("successionList.do") > -1) {
            aa_page_name = '마이페이지 - 승계 매물 심사 내역';
        } else if(url.indexOf("carSeller.do") > -1) {
            aa_page_name = '마이페이지 - 내 차 팔기 상담';
        } else if(url.indexOf("point.do") > -1) {
            aa_page_name = '마이페이지 - 포인트 사용내역';
        } else if(url.indexOf("pointTransition.do") > -1) {
            aa_page_name = '마이페이지 - 포인트 전환 신청';
        } else if(url.indexOf("coupon.do") > -1) {
            aa_page_name = '마이페이지 - 할인쿠폰 및 무료이용권';
        } else if(url.indexOf("referfriend.do") > -1) {
            aa_page_name = '마이페이지 - 신차장 친구추천 활동';
        } else if(url.indexOf("creditCard.do") > -1) {
            aa_page_name = '마이페이지 - 결제카드';
        } else if(url.indexOf("license.do") > -1) {
            aa_page_name = '마이페이지 - 운전면허정보';
        } else if(url.indexOf("interestCar.do") > -1) {
            aa_page_name = '마이페이지 - 나의 관심 차종';
        } else if(url.indexOf("mypick.do") > -1) {
            aa_page_name = '마이페이지 - 나의 찜 차량';
        } else if(url.indexOf("branch.do") > -1) {
            aa_page_name = '마이페이지 - 나의 관심 지점';
        } else if(url.indexOf("member/") > -1) {
            aa_page_name = '마이페이지 - 회원정보 변경';
        }
    } else if(url.indexOf("reservation/step1.do") > -1) {
        if(url.indexOf("state=2&rentArea=6") > -1) {
            aa_page_name = '빠른예약 - 제주렌트';
        } else if(url.indexOf("state=2&rentArea=1") > -1) {
            aa_page_name = '빠른예약 - 내륙렌트';
        } else {
            aa_page_name = '빠른예약';
        }
    } else if(url.indexOf("reservation/step2.do") > -1) {
        aa_page_name = '빠른예약 - 예약/약관';
    } else if(url.indexOf("reservation/step3.do") > -1) {
        aa_page_name = '빠른예약 - 할인/결제';
    } else if(url.indexOf("reservation/complete.do") > -1) {
        aa_page_name = '빠른예약 - 완료';
    } else if(url.indexOf("shortInfo/pay.do") > -1) {
        aa_page_name = '단기렌트 서비스안내 - 대여 및 요금안내';
    } else if(url.indexOf("shortInfo/checkIn.do") > -1) {
        aa_page_name = '단기렌트 서비스안내 - 체크인 서비스';
    } else if(url.indexOf("shortInfo/service.do") > -1) {
        aa_page_name = '단기렌트 서비스안내 - 부가서비스안내';
    } else if(url.indexOf("shortInfo/benefits.do") > -1) {
        aa_page_name = '단기렌트 서비스안내 - 회원혜택안내';
    } else if(url.indexOf("shortMonth/info.do") > -1) {
        aa_page_name = '월간렌터카 - 월간렌트 서비스 안내';
    } else if(url.indexOf("shortMonth/reservationMonthApply.do") > -1) {
        aa_page_name = '월간렌터카 - 상담 신청 (상담작성)';
    } else if(url.indexOf("shortMonth/reservationMonthComplete.do") > -1) {
        aa_page_name = '월간렌터카 - 상담 신청 (작성완료)';
    } else if(url.indexOf("driverInclude/info.do") > -1) {
        aa_page_name = '기사포함렌터카 - 기사포함 서비스 안내';
    } else if(url.indexOf("driverInclude/firstStep.do") > -1) {
        aa_page_name = '기사포함렌터카 - 렌터카 예약 접수 (기본정보)';
    } else if(url.indexOf("driverInclude/secondStep.do") > -1) {
        aa_page_name = '기사포함렌터카 - 렌터카 예약 접수 (상세정보)';
    } else if(url.indexOf("driverInclude/thirdStep.do") > -1) {
        aa_page_name = '기사포함렌터카 - 렌터카 예약 접수 (작성완료)';
    } else if(url.indexOf("overseas/index.do") > -1) {
        aa_page_name = '해외렌터카';
    } else if(url.indexOf("shortInfo/insu.do") > -1) {
        aa_page_name = '사고대차 서비스';
    } else if(url.indexOf("/login/login.do") > -1) {
        aa_page_name = '로그인';
    } else if(url.indexOf("cbj/") > -1) {
        aa_page_name = '차방정';
        if(url.indexOf("index.do") > -1) {
            aa_page_name = '차방정 - 차방정 메인 - 차방정 메인';
        } else if(url.indexOf("about/product.do") > -1) {
            aa_page_name = '차방정 - 서비스안내 - 서비스안내';
        } else if(url.indexOf("about/repair.do") > -1) {
            aa_page_name = '차방정 - 서비스안내 - 정비 점검 안내';
        } else if(url.indexOf("about/notice.do") > -1) {
            aa_page_name = '차방정 - 서비스안내 - 공지';
        } else if(url.indexOf("about/faq.do") > -1) {
            aa_page_name = '차방정 - 서비스안내 - FAQ';
        } else if(url.indexOf("myPage/main.do") > -1) {
            aa_page_name = '차방정 - 내정보 - 가입서비스정보';
        } else if(url.indexOf("service/repairInfo.do") > -1) {
            aa_page_name = '차방정 - 정비 점검 - 점검/정비 정보';
        } else if(url.indexOf("service/repairAbout.do") > -1) {
            aa_page_name = '차방정 - 정비 점검 - 방문점검안내';
        } else if(url.indexOf("service/repairShop.do") > -1) {
            aa_page_name = '차방정 - 정비 점검 - 인증 정비소';
        } else if(url.indexOf("benefit/coupon.do") > -1) {
            aa_page_name = '차방정 - 혜택 - 차방정 쿠폰함';
        } else if(url.indexOf("board/review.do") > -1) {
            aa_page_name = '차방정 - 게시판 - 후기';
        } else if(url.indexOf("join.do") > -1) {
            aa_page_name = '차방정 - 차방정 가입하기 - 차방정 가입하기';
        } else if(url.indexOf("join02.do") > -1) {
            aa_page_name = '차방정 - 차방정 가입하기 - 가입완료';
        } else if(url.indexOf("promotion/") > -1) {
            aa_page_name = '차방정 - 프로모션';
            if(url.indexOf("kbInsure.do") > -1) {
                aa_page_name = '차방정 - 프로모션 - KB손해보험';
            } else if(url.indexOf("car-register.do") > -1) {
                aa_page_name = '차방정 - 프로모션 - 차량등록이벤트';
            }
        }
    }
    _dl.pageInfo.page_name = aa_page_name;
    _dl.pageInfo.page_url = url;    
}
function get_aa_site_templete() {
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
        // 모바일인 경우
        _dl.pageInfo.site_templete = 'M';
    } else {
        // PC인 경우
        _dl.pageInfo.site_templete = 'PC';
    }
}
function get_aa_page_template() {
    if(/Mobile|iP(hone|od|ad)|Android|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/i.test(window.navigator.userAgent)) {
        // 모바일인 경우
        _dl.pageInfo.page_templete = 'Mobile';
    } else if(/iPad|tablet/i.test(window.navigator.userAgent)) {
        // 태블릿인 경우
        _dl.pageInfo.page_templete = 'Tablet';
    } else {
        // PC인 경우
        _dl.pageInfo.page_templete = 'PC';
    }
}
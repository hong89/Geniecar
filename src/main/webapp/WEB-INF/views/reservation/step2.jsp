<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/4.1.0/mustache.min.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<style>
    .breadcrumb-item a {
        text-decoration: none;
        color: #41087c;
    }

    .priceArea ul li {
        padding: 30px;
        background: #23093d;
    }

    .location-name {
        align-self: center;
        border-radius: 30px;
        height: 50px;
        width: 200px;
        padding-top: 10px;
        margin: 20px 10px;
        font-size: 20px;
        border: 1px solid #d1c9ff;
    }

    .location-name > a, #searchName > a {
        text-decoration-line: none;
    }
    .add-rate button.on, .payments.on {
        background: #fffbfb;
        color: #E70012;
        border: 1px solid #FD1326 !important;
    }

    .cursor-pointer {
        cursor: pointer !important;
    }

    .location-name > a {
        display: block;
    }

</style>
<script>
    var rentalCost = {
        saleCost: ${detail.totalCost - detail.saleCost},
        totalCost: ${detail.totalCost},
        addCost: 20000,
        step1FinalCostCal: function () {
            return this.totalCost - this.saleCost;
        },
        step2FinalCostCal: function () {
            return this.totalCost - this.saleCost + this.addCost;
        }
    }

    function numberCostFormat(cost){
        return cost.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")
    }

    function step1Print(){
        var template = $('#step1Template').html();
        var rendered = Mustache.render(template);
        var $image = $('.container .step2-nav img:eq(1)');
        $image.attr('src', $image.attr('src').replace('circle-check-solid', 'circle-check-regular'));
        $('#addRateArea').hide();
        $('#step2Area').html(rendered);
        rentalCost.addCost = 20000;
        $('#finalCost').text(numberCostFormat(rentalCost.step1FinalCostCal()) + '원');
    }


    function step2Print(){
        var template = $('#step2Template').html();
        var rendered = Mustache.render(template);
        $('#step2Area').html(rendered);
        var $image = $('.container .step2-nav img:eq(1)');
        $image.attr('src', $image.attr('src').replace('circle-check-regular', 'circle-check-solid'));
        $('#addRateArea').show();
        $('#addRateCost').text(numberCostFormat(rentalCost.addCost + '원'));
        $('#finalCost').text(numberCostFormat(rentalCost.step2FinalCostCal()) + '원');
    }

    function step3Print(data) {
        var template = $('#step3Template').html();
        var rendered = Mustache.render(template, data);
        $('#templateArea').html(rendered);
        var $image = $('.container .step2-nav img:eq(2)');
        $image.attr('src', $image.attr('src').replace('circle-check-regular', 'circle-check-solid'));
    }

    var payInfo = {
        reservationNo: '${detail.reservationNo}',
        carName: '${detail.carName}',
        rentalPeriod: '${detail.rentalPeriod}',
        amount: '',
        orderedName : '${detail.reservationMemberName}',
        buyerTel: '${detail.reservationMemberHp}'
    }

    IMP.init('imp34077744');
    function kgPay(payInfo){

        if(!payInfo) {
            alert('오류가 발생되었습니다. 관리자에게 문의 바랍니다.');
            return false;
        }

        IMP.request_pay({
            pg : 'html5_inicis',
            pay_method : 'card',
            merchant_uid: payInfo.reservationNo, // 상점에서 관리하는 주문 번호를 전달
            name : 'geniecar_' + payInfo.carName + '_' + payInfo.rentalPeriod,
            amount : payInfo.amount,
            buyer_email : '',
            buyer_name : payInfo.orderedName,
            buyer_tel : payInfo.buyerTel,
        }, function(rsp) { // callback 로직
            if (rsp.success) {
                var reservationSaveData = {
                    //예약정보
                    reservationNo: rsp.merchant_uid,
                    carNo: ${detail.carNo},
                    rentalPlace: '${detail.rentalPlace}',
                    returnPlace: '${detail.returnPlace}',
                    rentalDate: '${detail.rentalDate}',
                    returnDate: '${detail.returnDate}',
                    rentalCarBranchNo: '${detail.rentalPlace}',
                    saleRate: ${detail.saleRate},
                    addPrice: rentalCost.addCost, //면책요금
                    finalReservationPrice: rsp.paid_amount,
                    regularPrice: ${detail.totalCost},

                    //결제정보
                    applyNum: rsp.apply_num,
                    buyerName: rsp.buyer_name,
                    buyerTel: rsp.buyer_tel,
                    cardName: rsp.card_name,
                    cardNumber: rsp.card_number,
                    cardQuota: rsp.card_quota,
                    currency: rsp.currency,
                    customData: rsp.custom_data,
                    impUid: rsp.imp_uid,
                    merchantUid: rsp.merchant_uid,
                    name: rsp.name,
                    paidAmount: rsp.paid_amount,
                    paidAt: rsp.paid_at,
                    payMethod: rsp.pay_method,
                    pgProvider: rsp.pg_provider,
                    pgTid: rsp.pg_tid,
                    pgType: rsp.pg_type,
                    status: rsp.status,
                    success: rsp.success,
                };

                $.post('reservationSuccess.do', reservationSaveData, function (res) {
                    //console.log(res);
                    step3Print({
                        reservation: res
                    });
                });


            }else{
                alert(rsp.error_msg); //오류 메시지 출력
            }
        });

    }

    $(function () {
        //면책제도 변경
        $('#templateArea').on('click', '.cdw-btn', function () {
            $('#templateArea .cdw-btn').removeClass('on');
            $(this).addClass('on');
            rentalCost.addCost = Number($(this).data('addCost'));
            payInfo.amount = rentalCost.step2FinalCostCal()
            $('#addRateCost').text(numberCostFormat(rentalCost.addCost + '원'));
            $('#finalCost').text(numberCostFormat(rentalCost.step2FinalCostCal()) + '원');
        });

        $('#templateArea').on('click', '.payments', function(){
            var payment = $(this).data('payment');
            $('#templateArea .payments').removeClass('on');
            $(this).addClass('on');

            if(payment == 'kginicis'){ //결제수단
                payInfo.amount = rentalCost.step2FinalCostCal();
                $('#paymentBtn').closest('div').show();
            }
        });

        $('#templateArea').on('click', '#paymentBtn', function () {
            kgPay(payInfo);
            return false;
        });

        step1Print();

        $('#templateArea').on('click', '#step2PrevBtn', function () {
            $('#step2PrevBtn').closest('div').hide();
            $('#step2NextBtn').closest('div').show();
            $('#paymentBtn').closest('div').hide();
            step1Print();
            return false;
        });

        $('#templateArea').on('click', '#step2NextBtn', function () {

            if($('[name^=termsCheck]:not(:checked)').length > 0){
                alert('필수 약관에 동의해주세요.');
                return false;
            }

            $('#step2PrevBtn').closest('div').show();
            $('#step2NextBtn').closest('div').hide();
            step2Print();
            return false;
        });

        $('#templateArea').on('click', '[name^=termsCheck]', function(e){
            e.stopPropagation();
        });

        $('#templateArea').on('click', 'button.accordion-button', function(){
            $(this).closest('.accordion-item').find('[id^=flush-collapse]').slideToggle();
        });

        $('#templateArea').on('click', '#totalAgreeBtn', function(){
            $('[name^=termsCheck]').prop('checked', true);
        });


    });
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
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


    <div class="container text-center">
        <h2 style="padding: 50px">예약 결제</h2>
        <div class="row justify-content-md-center step2-nav">
            <div class="col col-lg-2">
                <img src="/images/icons/circle-check-solid.svg" width="30px"/><br/>
                예약/약관
            </div>
            <div class="col col-lg-2">
                <img src="/images/icons/circle-check-regular.svg" width="30px"/><br/>
                할인/결제
            </div>
            <div class="col col-lg-2">
                <img src="/images/icons/circle-check-regular.svg" width="30px"/><br/>
                완료
            </div>
        </div>
    </div>

    <div class="container" id="templateArea" style="padding-top: 50px;">
        <div class="row">
            <div class="col-8" id="step2Area">
            </div>
            <div class="col-4">
                <div class="card border-secondary">
                    <div class="card-header text-center" style="height: 70px; padding-top: 20px;"><h4>${detail.carName}</h4></div>
                    <div class="card-body text-secondary">
                        <img src="/images/carImage/${detail.carNo}.png" width="100%"/>
                        <p class="card-text">실제 대여하는 차량과 외관, 색상, 옵션 등 차이가 있을 수 있으며
                            사고 또는 고장 등 부득이한 경우 동급차종으로 변경될 수 있습니다.</p>
                    </div>
                </div>

                <div class="card priceArea mt-4">
                    <ul class="list-group list-group-flush">

                        <li class="list-group-item text-white">
                            <div class="row">
                                <div class="col-6">대여정보</div>
                                <div class="col-6 text-end">${detail.rentalPlaceName}</div>
                            </div>
                        </li>
                        <li class="list-group-item text-white">
                            <div class="row">
                                <div class="col-6">반납정보</div>
                                <div class="col-6 text-end">${detail.returnPlaceName}</div>
                            </div>
                        </li>
                        <li class="list-group-item text-white">
                            <div class="row">
                                <div class="col-6">차량대여요금</div>
                                <div class="col-6 text-end"><fmt:formatNumber value="${detail.totalCost}" pattern="#,###" />원</div>
                            </div>
                        </li>
                        <li class="list-group-item text-white">
                            <div class="row">
                                <div class="col-6">할인요금</div>
                                <div class="col-6 text-end"><fmt:formatNumber value="${detail.saleCost - detail.totalCost}" pattern="#,###" />원</div>
                            </div>
                        </li>
                        <li class="list-group-item text-white" id="addRateArea" style="display: none;">
                            <div class="row">
                                <div class="col-6">추가요금</div>
                                <div class="col-6 text-end" id="addRateCost" >20,000원</div>
                            </div>
                        </li>
                        <li class="list-group-item text-white">
                            <div class="row">
                                <div class="col-6">총금액</div>
                                <div class="col-6 text-end" id="finalCost"><fmt:formatNumber value="${detail.saleCost}" pattern="#,###" />원</div>
                            </div>
                        </li>
                    </ul>
                </div>
                <span style="color:red">
                    다음 단계에서 할인의 변경, 보험 및 옵션의 선택에 따라 총금액은 달라질 수 있으니 결제 전 꼭 확인바랍니다.
                </span>
                <div class="row">
                    <div class="col location-name text-center" style="background: #f8f7fd; display: none">
                        <a class="text-dark" href="#" id="step2PrevBtn">이 전</a>
                    </div>
                    <div class="col location-name text-center" style="background: #41087c;">
                        <a class="text-white" href="#" id="step2NextBtn">다 음</a>
                    </div>
                    <div class="col location-name text-center" style="background: #ee505d; display: none;">
                        <a class="text-white" href="#" id="paymentBtn">결 제</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--예약/약관--%>
    <script type="x-tmpl-mustache" id="step1Template" style="display: none">
        <h4 style="background: #f8f7fd; padding: 20px;"><strong>예약상세내역</strong></h4>
            <div class="row" style="padding: 20px">
                <h5 class="col-3">대여일시/지점</h5>
                <h5 class="col-9">${detail.rentalPrintDate} / ${detail.rentalPlaceName}</h5>
            </div>
            <div class="row" style="padding: 20px">
                <h5 class="col-3">반납일시/지점</h5>
                <h5 class="col-9">${detail.returnPrintDate} / ${detail.returnPlaceName}</h5>
            </div>
            <div class="row" style="padding: 20px">
                <h5 class="col-3">차량상세정보</h5>
                <h5 class="col-9">${detail.carName}</h5>
            </div>
            <div class="row" style="padding: 20px">
                <h5 class="col-3"><strong>총 대여기간</strong></h5>
                <h3 class="col-9" style="color: red">${detail.rentalPeriod}</h3>
            </div>

            <h4 style="background: #f8f7fd; padding: 20px;"><strong>약관동의</strong></h4>
            <div style="padding: 20px 20px 0  20px;">
                <img src="/images/icons/circle-check-regular.svg" width="20px"/>
                <strong id="totalAgreeBtn" class="cursor-pointer" >전체동의</strong>
            </div>

            <div style="padding: 20px 40px 40px 40px;">
                <div class="accordion accordion-flush" id="accordionFlushExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed" type="button"
                                    data-bs-target="#flush-collapseOne" aria-expanded="false"
                                    aria-controls="flush-collapseOne">
                                <input type="checkbox" name="termsCheck1"/>&nbsp;&nbsp; 예약완료를 위한 이동 동의(필수)
                            </button>
                        </h2>
                        <div id="flush-collapseOne" class="accordion-collapse collapse"
                             aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                대여자격<br/>
                                * 소/중형/7/9인승 승합차 - 만 21세 이상, 운전경력 1년 이상<br/>
                                * 10인승 이상 승합차 - 만 21세 이상, 운전경력 1년 이상<br/>
                                * 15인승 승합차 - 만 26세 이상, 운전경력 1년 이상<br/>
                                * 운전면허 적성검사 유효기간이 대여기간 內 남아있어야 대여가 가능함<br/>
                                * 제 2운전자 등록을 원하실 경우 차량 픽업시 운전면허증을 지참하시어 동행하신 경우에 한해
                                등록이 가능함 (사전체크인을 통한 운전자 등록 시 예외 가능)<br/>
                                * 외국인일 경우 본인확인을 위한 여권 및 국제운전면허증 필수 지참(차량운전자가 위의 대여자격조건에
                                맞지 않을 경우 현장에서 차량인수가 불가할 수도 있으니 필히 대여자격을 확인해 주시기 바랍니다.)<br/>
                                운전면허<br/>
                                * 운전면허증<strong>(차량인수시 필히 지참)</strong><br/>
                                * 도로교통법상 유효한 운전면허소지자<br/>
                                <br/>
                                * 외국인일 경우 국제운전면허증 소지자(B등급 이상 - 9인승 이하차량만 대여가능<br/>
                                보험<br/>
                                * 전 차량 자동차 종합보험(대인,대물,자손)에 가입되어 있으며 자차손해 면책제도(CDW)는
                                선택 사항으로 차량인수시 해당지점에서 추가로 가입이 가능합니다.<br/>
                                결제 조건<br/>
                                * 대여요금 결제시에는 신용카드 결제(임차인 본인신용카드)를 우선하며, 현금결제시에는
                                신용 정보조회 후 이상이 없는 경우에만 차량대여가 가능합니다.<br/>
                                * 차량예약 후에도 신용정보조회시 불량거래 내역등이 있을 경우 현장에서 차량대여가 불가능 할 수도 있습니다.<br/>
                                * <strong>신용정보조회는 고객님의 동의하에 가능하며, 신용정보조회시 고객님의 금용거래 등에 영향을 미칠 수 있습니다.</strong><br/>
                                * 사전 연락없이 예약시간까지 지점에 방문하지 않으실 경우, 예약이 취소되며 일정 금액의 취소 수수료가 발생합니다.<br/>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingTwo">
                            <button class="accordion-button collapsed" type="button"
                                    data-bs-target="#flush-collapseTwo" aria-expanded="false"
                                    aria-controls="flush-collapseTwo">
                                <input type="checkbox" name="termsCheck2"/>&nbsp;&nbsp; 차량 대여를 위한 개인정보 수집(필수)
                            </button>
                        </h2>
                        <div id="flush-collapseTwo" class="accordion-collapse collapse"
                             aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                <strong>개인정보의 수집 및 이용 목적</strong><br/>
                                <strong><img src="/images/icons/check-solid.svg" width="10px"/>
                                    <span style="color:red;"> 지니카는 렌터카 예약서비스 이용</span></strong><br/>
                                <strong>개인정보 수집 항목</strong><br/>
                                <img src="/images/icons/check-solid.svg" width="10px"/>
                                성명, 생년월일, 성별, 이메일주소, 휴대전화번호, 주소<br/>
                                <strong>개인정보 이용 및 보유 기간</strong><br/>
                                <img src="/images/icons/check-solid.svg" width="10px"/>
                                <strong><span style="color:red;"> 이용자가 제공한 개인정보는 렌터카 서비스 이용 종료 후 1년간 회사가 보유 이용하게 됩니다.</span></strong><br/>
                                <span style="color:red;">* 동의 체크박스에 클릭할 경우, 개인정보 수집/이용 동의에 동의한 것으로 간주합니다.<br/>
                                    * 동의를 거부할 권리가 있으나, 위 사항에 동의하지 않으실 경우 렌터카 대여가 불가능 할 수 있음을 알려드립니다.<br/></span>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingThree">
                            <button class="accordion-button collapsed" type="button"
                                    data-bs-target="#flush-collapseThree" aria-expanded="false"
                                    aria-controls="flush-collapseThree">
                                <input type="checkbox" name="termsCheck3"/>&nbsp;&nbsp; 고유식별정보 수집에 대한 동의(필수)
                            </button>
                        </h2>
                        <div id="flush-collapseThree" class="accordion-collapse collapse"
                             aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                <img src="/images/icons/check-solid.svg" width="10px"/>
                                <strong><span style="color:red;">수집하는 고유식별정보 항목 : 운전면허번호</span></strong><br/>

                                <strong><span style="color:red;">수집 및 이용 목적</span></strong><br/>
                                <strong><span style="color:red;"> * 고객관리</span></strong><br/>
                                본인확인, 개인식별, 계약 체결 의사 확인, 명의도용 방지, 운전면허 소지 및 연령 등 확인, 분쟁 조정을 위한 기록 보존<br/>
                                수사기관/정부기관/행정청/법원 등의 적법한 조사, 요구 또는 명령 등에 대한 협조/이행<br/>
                                <br/>
                                <strong><span style="color:red;"> * 계약 체결·유지·이행·관리</span></strong><br/>
                                계약 체결/종료 처리, 계약 이행 및 요금 정산/청구/수납/추심, 계약 · 자동차대여약관 위반에 대한 조치, 물품 배송, 도로교통법 위반 등으로 인한
                                과태료/범칙금 처리<br/>
                                사고 처리, 보험계약체결 · 유지 · 관리(해지, 변경, 부활, 취소, 조회 등), 보험금 지급 · 심사, 보험사고 조사(보험사기 조사 포함),
                                긴급출동/차량대여 · 반납/대차 서비스 등 제공<br/>
                                <br/>
                                <strong><span
                                        style="color:red;"> * 보험 및 도로교통법 위반 등 처리 관련 제 3자 제공</span></strong><br/>
                                가) 차량 사고의 처리 및 보험 보상, 비용 정산(청구), 보험계약체결,유지,관리(해지,변경,부활,취소,조회 등), 보험금 지급, 심사, 보험사고
                                조사(보험사기 조사 포함)을 위한 제공<br/>
                                나) 도로교통법 위반 등으로 인한 과태료/범칙금 등에 관한 사항을 통지하거나 처분을 위한 경찰서, 경찰청, 관할 관청 등에게 이의 제기, 실제 위반자에
                                대한 통지·처분에 대한 제공<br/>
                                다) 유료도로관리청, 유료도로관리권자, 주차장관리자, 국가 또는 지방자치단체 등에게 유료도로 통행, 주차장 이용 등으로 인한 통행료, 사용료, 주차요금
                                등의 통지·부과·수납을 위한 제공<br/>
                                <strong><span style="color:red;">보유 및 이용 기간</span></strong><br/>
                                <strong><span style="color:red;">
                                    * 개인(신용)정보 수집*이용 목적 달성 시 까지 또는 본인의 수집*이용 동의 철회 요청 시까지<br/>
                                    * 단, 수집*이용 목적을 달성하거나 본인의 철회 요청이 있더라도 다음의 정보에 대해서는 아래의 명시한 기간 동안 보존<br/>
                                    * 요금 정산, 과태료/범칙금 처리, 채무 추심 등 계약이행, 분쟁 대비를 위해 필요한 정보는 계약에 따른 거래관계의 종료 후 3년까지, 미이행/분쟁이 계속될 경우 이행 완료/분쟁 해결 시까지<br/>
                                    * 고객의 불만 또는 분쟁 처리에 관한 기록은 마지막 처리일로부터 5년<br/>
                                    * 명의도용, 폭행, 협박, 사기, 공갈, 재물손괴, 차량의 무단 담보제공, 무단 처분, 무단 해체, 자동차 등록번호판 교체, 차대번호 훼손 등 불법행위, 차량을 이용한 범죄 등에 관한 기록은 행위일로부터 10년<br/>
                                    * 상법 등 관련 법령에 특별한 규정이 있을 경우 그에 의하여 보관<br/>
                                </span></strong>
                                <br/>
                                <span style="color:red;">* 귀하는 동의를 거부할 수 있습니다. 단 동의 거부시 렌터카 서비스 이용이 불가능할 수 있음을 알려 드립니다.</span><br/>

                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingFour">
                            <button class="accordion-button collapsed" type="button"
                                    data-bs-target="#flush-collapseFour" aria-expanded="false"
                                    aria-controls="flush-collapseFour">
                                <input type="checkbox" name="termsCheck4"/>&nbsp;&nbsp; 개인정보 제3자 제공 동의(필수)
                            </button>
                        </h2>
                        <div id="flush-collapseFour" class="accordion-collapse collapse"
                             aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <div class="col text-center border-top border-bottom border-end p-3">제공받는자</div>
                                    <div class="col text-center border-top border-bottom border-end p-3">이용 목적</div>
                                    <div class="col text-center border-top border-bottom border-end p-3">제공항목</div>
                                    <div class="col text-center border-top border-bottom p-3">보유 및 이용 기간</div>
                                </div>
                                <div class="row">
                                    <div class="col text-center border-bottom border-end p-3">도로교통공단</div>
                                    <div class="col border-bottom border-end p-3">여객자동차 운수사업법에 따른 운전자격 확인을 위한 운전면허정보
                                        검증
                                    </div>
                                    <div class="col border-bottom border-end p-3">운전면허번호, 이름, 생년월일, 면허종류, 대여시작일,
                                        대여종료일
                                    </div>
                                    <div class="col text-center border-bottom p-3">제공일로부터 3개월</div>
                                </div>
                            </div>
                            ※ 위의 개인정보 제공에 대한 동의를 거부할 권리가 있습니다. 다만, 동의를 거부하실 경우에는 서비스 제공이 불가합니다.
                        </div>
                    </div>
                </div>
            </div>
    </script>

    <%--할인/결제--%>
    <script type="x-tmpl-mustache" id="step2Template" style="display: none">
        <h4 style="background: #f8f7fd; padding: 20px;"><strong>자차손해 면책제도 (CDW)</strong></h4>
        <div class="p-5 pt-3">
            <div class="row add-rate">
                <div class="col-6 p-2">
                    <button type="button" data-add-cost="20000" class="btn p-3 cdw-btn on" style="border: 1px solid #41087c; width: 100%">
                        고객부담금 면제 20,000원
                    </button>
                </div>
                <div class="col-6 p-2">
                    <button type="button" data-add-cost="12000" class="btn p-3 cdw-btn" style="border: 1px solid #41087c; width: 100%">
                        사고시 면책금 10만원 12,000원
                    </button>
                </div>
                <div class="col-6 p-2">
                    <button type="button" data-add-cost="10000" class="btn p-3 cdw-btn" style="border: 1px solid #41087c; width: 100%">
                        사고시 면책금 30만원 10,000원
                    </button>
                </div>
                <div class="col-6 p-2">
                    <button type="button" data-add-cost="0" class="btn p-3 cdw-btn" style="border: 1px solid #41087c; width: 100%">
                        사고시 면책금 100% 부담 0원
                    </button>
                </div>
            </div>
            <span style="color: red">
            [자차손해 면책제도 가입 안내]<br/>
            * 자차손해 면책제도(CDW)를 가입하지 않은 경우 차량대여 중 고객의 귀책사유로 인해
            발생한 당사 차량손해(손, 망실)에 대한 차량 수리비를 지불하셔야 합니다.<br/>
            * 자차손해 면책제도 가입을 통해 고객의 실수로 발생하는 자차사고에 대한 보호를 받으시기 바랍니다.<br/>
            </span>
        </div>

        <h4 style="background: #f8f7fd; padding: 20px;"><strong>결제수단 선택</strong></h4>

        <div class="p-5 pt-3">
            <div class="row">
                <div class="col-3 p-2">
                    <button type="button" class="btn p-3 payments" data-payment="kginicis" style="border: 1px solid #41087c; width: 100%">
                        <img src="/images/logos/ico-enroll04.png" width="100%"/><br/>
                        신용카드
                    </button>
                </div>
            </div>
        </div>


        <h4 style="background: #f8f7fd; padding: 20px;"><strong>취소 수수료 안내</strong></h4>
        <div class="p-5 pt-3">
            * 차량 수령 24시간 전 취소 : 전액 환불<br/>
            * 차량 수령 24시간 이내 ~ 수령시간까지 취소 : 취소수수료 발생 (3,000원)<br/>
            * 차량 수령시간 이후 : NO SHOW 수수료 발생 (차량대여요금의 10% )<br/>
        </div>
    </script>

    <%--완료--%>
    <script type="x-tmpl-mustache" id="step3Template" style="display: none">
        <div style="width: 100%; background: #f8f7fd" class="text-center p-5">
            <h3 class="p-2">감사합니다</h3>
            <p>즐거움이 가득한 지니카 예약이<br/>
                아래와 같이 완료 되었습니다.<br/></p>
            <p style="color: red; font-weight: bold">※ 첫이용 고객님께서는 사전체크인 버튼을 눌러<br/>
                면허정보를 입력해주세요.<br/></p>
            <p style="color: red">사전체크인을 하면 지점 방문 시 빠른 차량 픽업이 가능하고<br/>
                추가운전자 등록도 가능합니다.<br/></p>
        </div>
        {{#reservation}}
        <div class="row p-5 pb-0">
            <div class="col-6">
                <div class="row p-3">
                    <div class="col-4">예약번호</div>
                    <div class="col-8">${detail.reservationNo}</div>
                </div>
                <div class="row p-3">
                    <div class="col-4">차명</div>
                    <div class="col-8">${detail.carName}</div>
                </div>
                <div class="row p-3">
                    <div class="col-4">예약일</div>
                    <div class="col-8">{{regDate}}</div>
                </div>
                <div class="row p-3">
                    <div class="col-4">지점</div>
                    <div class="col-8">${detail.rentalPlaceName}</div>
                </div>
                <div class="row p-3">
                    <div class="col-4">대여기간</div>
                    <div class="col-8">${detail.rentalPrintDate} ~ ${detail.returnPrintDate}</div>
                </div>
            {{/reservation}}
            </div>
            <div class="col-6 p-5">
                <img src="/images/carImage/${detail.carNo}.png" width="100%"/>
            </div>
        </div>
        <hr/>
        <div class="text-center">
            <button type="button" class="btn m-3" style="border: 1px solid #41087c" onclick="location.href='/'" >메인으로</button>
            <button type="button" class="btn text-white" style="background: #41087c" onclick="location.href='/mypage/license.do'" >사전체크인</button>
        </div>
        <br/>
        <br/><br/>

    </script>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
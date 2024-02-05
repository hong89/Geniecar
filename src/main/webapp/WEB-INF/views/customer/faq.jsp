<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>

</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">고객 지원</li>
                <li class="breadcrumb-item active" aria-current="page">자주하는 질문</li>
            </ol>
        </nav>
    </div>

    <div class="explain-header">
        <h2 class="tit-size-big">FAQ</h2>
        <hr/>
    </div>

    <div class="pt-5">
        <div class="accordion" id="accordionExampl">
            <c:forEach var="notice" items="${boardList}">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="heading${notice.no}">
                        <button class="accordion-button" type="button" style="background-color:#f8f7fd; box-shadow: none;"
                                data-bs-toggle="collapse" data-bs-target="#collapse${notice.no}"
                                aria-expanded="false" aria-controls="collapse${notice.no}">
                            <span class="ico-q"><img src="/images/common/Qmark.png" width="30">&nbsp;&nbsp;</span>${notice.title}
                        </button>
                    </h2>
                    <div id="collapse${notice.no}" class="accordion-collapse collapse"
                         aria-labelledby="heading${notice.no}" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            ${notice.content}
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">고객 지원</li>
                <li class="breadcrumb-item active" aria-current="page">자주하는 질문</li>
            </ol>
        </nav>
    </div>

    <div class="explain-header">
        <h2 class="tit-size-big">FAQ</h2>
        <hr/>
    </div>

    <div class="py-3">
        <div class="accordion" id="accordionExampl">
            <c:forEach var="notice" items="${boardList}">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="heading${notice.no}">
                        <button class="accordion-button" type="button" style="background-color: #41087c; box-shadow: none; color:white;"
                                data-bs-toggle="collapse" data-bs-target="#collapse${notice.no}"
                                aria-expanded="false" aria-controls="collapse${notice.no}">
                            <span class="ico-q"><img src="/images/common/Qmark2.png" width="30">&nbsp;&nbsp;</span>${notice.title}
                        </button>
                    </h2>
                    <div id="collapse${notice.no}" class="accordion-collapse collapse"
                         aria-labelledby="heading${notice.no}" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            ${notice.content}
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <c:if test="${boardVo.startPageBlock > boardVo.pageBlock}">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <c:forEach begin="${boardVo.startPageBlock}" end="${boardVo.endPageBlock}" step="1"
                               varStatus="status">
                        <li class="page-item"><a class="page-link" href="#"
                                                 onclick="javascript:fn_search('${status.index}')">${status.index}</a>
                        </li>
                    </c:forEach>
                    <c:if test="${boardVo.endPageBlock < boardVo.pageCount}">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </div>
    </div>

    

    <div class="pt-5">
        <div class="explain-header">
            <h2 class="tit-size-big">FAQ</h2>
            <hr/>
        </div>

        <div class="accordion" id="accordionExample">
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseOne"
                            aria-expanded="true" aria-controls="collapseOne">
                        <span class="ico-q">Q.&nbsp;</span><a href="/info/noticeDetail.do?no=${notice.no}" style="text-decoration-line: none; color:black">${notice.title}</a>차가 시끄럽고 속도가 안나는 느낌이에요.
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show"
                     aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <a style="text-decoration-line: none; color:black">${notice.content}</a>
                        기어레버가 D모드에서 왼쪽(or 오른쪽)으로 밀려 ‘수동모드'로 전환되어 있지는 않나요?<br>
                        <span style="color:red;">D모드에서 오른쪽(or 왼쪽)으로 밀어 ‘자동모드'로 변경해보세요!</span>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                            aria-expanded="false" aria-controls="collapseTwo">
                        <span class="ico-q">Q.&nbsp;</span>차에서 계속 “띵~띵~" 경고음이 나요. 왜 이러죠?
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse"
                     aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        앞차출발, 차선이탈 등의 경고음 옵션이 설정되어 발생합니다.<br>
                        블랙박스 안전도우미기능(ADAS)에서 개별 기능 해제 가능합니다.
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseThree"
                            aria-expanded="false" aria-controls="collapseThree">
                        <span class="ico-q">Q.&nbsp;</span>주행 중 갑자기 계기판에 타이어 공기압 경고등이 떴어요!
                    </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse"
                     aria-labelledby="headingThree"
                     data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <span class="txt-color-red">고객센터(1588-1230, 사고접수 1번)</span>로 접수해주세요. 즉시 현장 출동하여 문제를 해결해 드립니다!
                        <ul class="list-type-col4 mt-20">
                            <li class="box align-c">
                                <strong class="txt-bold">타이어 펑크</strong>
                                <p class="mt-10">
                                    못, 유리 등 날카로운 물체에 의해 <br>
                                    공기가 서서히 빠진 상황
                                </p>
                                <span class="txt-bold txt-color-red mt-20">현장 수리 요청</span>
                            </li>
                            <li class="box align-c">
                                <strong class="txt-bold">타이어 파스</strong>
                                <p class="mt-10">
                                    타이어가 찢어져서 육안으로<br>
                                    확인되며 공기가 빠르게 빠지는 상황
                                </p>
                                <span class="txt-bold txt-color-red mt-20">차량 교체 요청</span>
                            </li>
                            <li class="box align-c">
                                <strong class="txt-bold">날씨 변화</strong>
                                <p class="mt-10">
                                    겨울철 추운 공기의 부피 감소로<br>
                                    인한 공기압 감소
                                </p>
                                <span class="txt-bold txt-color-red mt-20">꺼지지 않을 경우 문의</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingFour">
                    <button class="accordion-button collapsed" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseFour"
                            aria-expanded="false" aria-controls="collapseFour">
                        <span class="ico-q">Q.&nbsp;</span>차에 블루투스 연결은 어떻게 하나요?
                    </button>
                </h2>
                <div id="collapseFour" class="accordion-collapse collapse"
                     aria-labelledby="headingFour"
                     data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <ul class="lst num-type2">
                            <li>
                                <span class="bul">1</span>
                                모바일 기기 블루투스를 활성화시킵니다.
                            </li>
                            <li>
                                <span class="bul">2</span>
                                핸들의 '통화' 버튼 or 내비게이션 화면 'SET UP' 버튼을 누릅니다.
                            </li>
                            <li>
                                <span class="bul">3</span>
                                '신규기기 검색' 진행하고, 모바일기기에서 해당 차종을 선택합니다.
                            </li>
                            <li>
                                <span class="bul">4</span>
                                화면에 제시되는 인증번호 4자리를 모바일기기에서 입력합니다. ▶ 연결 완료*
                            </li>
                            <p class="txt-color-red mt-20">* 차종마다 연결방법은 조금씩 다를 수
                                있습니다. 필요 시 지점(064-751-8000)으로 연락주세요.</p>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingFive">
                    <button class="accordion-button collapsed" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseFive"
                            aria-expanded="false" aria-controls="collapseFive">
                        <span class="ico-q">Q.&nbsp;</span>차량 대여 중 추가 운전자 등록은 어떻게 하나요?
                    </button>
                </h2>
                <div id="collapseFive" class="accordion-collapse collapse"
                     aria-labelledby="headingFive"
                     data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <p>지점방문 없이 롯데렌터카 APP 또는 홈페이지에서 즉시 추가할 수 있습니다. </p>
                        <ul class="lst num-type2">
                            <li>
                                <span class="bul">1</span>
                                롯데렌터카 APP 또는홈페이지에 접속합니다.
                            </li>
                            <li>
                                <span class="bul">2</span>
                                예약상세내역으로 이동합니다. [비회원: 예약조회 / 회원: 마이페이지 > 예약내역에서 확인가능]
                            </li>
                            <li>
                                <span class="bul">3</span>
                                예약상세정보 하단 '이용중 관리' 버튼을 누릅니다.
                            </li>
                            <li>
                                <span class="bul">4</span>
                                이용중 관리 화면에서 추가운전자의 면허정보 입력하여 등록합니다.
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

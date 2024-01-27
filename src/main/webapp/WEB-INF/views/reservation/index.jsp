<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://cdn.jsdelivr.net/npm/jquery-templates@1.0.0/jquery.tmpl.min.js"></script>
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
        margin: 10px;
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

    #searchCar {
        padding-top: 30px;
    }

    #searchCar div {
        padding: 7px;
    }

</style>
<script>
    $(function () {
        // 가지고 온 값 화면 그려주기
        // 지점 클릭하면 대여장소 반납장소 변경하기


        $(".locations").on("click", function () {
            var branchCode = $(this).data('branchCode');
            $.get("/reservation/selectBranch.do", {branchCode: branchCode}, function (res) {
                console.log(res);
            });
        });
    });
</script>
<!--------------------------------------------------상단---------------------------------------------------------->
<div class="container-xl" id="mainContainer">
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
                                    <a href="#">
                                        <i class="fa-solid fa-rotate-left"></i>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item" style="height: 70px; text-align: left">
                            <div class="row">
                                <div class="col-3">
                                    <p class="card-text"><small><strong>대여장소</strong></small><br/>
                                        어디서 대여할까요?</p>
                                </div>
                                <div class="col-3">
                                    <p class="card-text"><small><strong>반납장소</strong></small><br/>
                                        어디로 반납할까요?</p>
                                </div>
                                <div class="col-4">
                                    <p class="card-text"><small><strong>대여기간</strong></small><br/>
                                        얼마 동안 대여할까요?</p>
                                </div>
                                <div class="col-2" id="searchName" style="background: #f8f7fd;">
                                    <a href="#">
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

    <!-- Template 소스 -->
    <script type="text/x-jQuery-tmpl" id="listTest">
        <div class="row" style="padding-top: 50px; height: 550px;">
            <div class="col-2" style="height: 300px; border-right: 1px solid #23093d;">
                <h5><strong>대여 장소를 <br/>선택해 주세요</strong></h5>
            </div>
            <div class="col-3">
                <div class="card mb-3" style="height: 300px; border: none;">
                    <div class="card-body">
                        <div class="row">
        <c:forEach var="location" items="${locationList}">
            <div class="col-6 locations text-center" data-branch-code="${location.code}">
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
        <div class="row" id="branchList">
            강남 지점
        </div>
    </div>
</div>
</div>
</div>
    </script>

    <script>
        $(function () {
            $("#listTest").tmpl({}).appendTo("#containerArea");
        })
    </script>

    <!-- 날짜 선택 영역 -->
    <div class="container">
        <div class="row" style="padding-top: 50px;">
            <div class="col-2" style="height: 550px; border-right: 1px solid #23093d;">
                <h5><strong>대여 기간을 <br/>선택해 주세요</strong></h5>
            </div>
            <div class="col-10">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-11">
                        <div class="card mb-3" style="height: 350px; background: #f8f7fd;">
                            <div class="card-body">
                                <div class="row">
                                    날짜
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
    <div class="container" id="searchCar">
        <div class="row" style="padding-top: 50px;">
            <div class="col-3" style="height: 550px; border: 1px solid #23093d; border-radius: 20px; padding: 20px;">
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

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
    $(function () {
        $('.modify-btn').on('click', function () {
            $('[name=no]').val($(this).data('no'));
            $('[name=defaultCost]').val($(this).data('cost'));
            $('[name=carName]').val($(this).data('carName'));
        });
    })
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <h1 class="pb-5 tit"> 신차 목록</h1>
            <div class="row pb-5">
                <div class="col-3">
                    <select class="form-select" id="formSelect" aria-label="Default select example">
                        <option value="" selected>선택</option>
                        <c:forEach var="com" items="${companies}">
                            <option value="${com.fullCode}"
                                    <c:if test="${not empty param.keyword and param.keyword eq com.fullCode}">selected</c:if>>
                                    ${com.codeName}
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-6"></div>
                <div class="col-3">
                    <button class="btn text-white" style="background: #23093d"
                            onclick="location.href ='/admin/car/newCarRegister.do'">신차 등록하기
                    </button>
                </div>
            </div>


            <table class="pt-5 table caption-top align-middle">
                <thead>
                <tr>
                    <td class="col-2"><strong>차량명</strong></td>
                    <td class="col-2"><strong>연료</strong></td>
                    <td class="col-2"><strong>가격</strong></td>
                    <td class="col-1"><strong>수정</strong></td>
                    <td class="col-1"><strong>삭제</strong></td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="car" items="${newCarList}">
                    <tr>
                        <td class="text-center"><a href="/admin/car/newCarDetail.do?no=${car.no}">${car.carName}</a></td>
                        <td class="text-center">${car.fuelName}</td>
                        <td class="text-center">${car.defaultCost}원</td>
                        <td class="text-center">
                            <button type="button" class="btn btn-sm modify-btn"
                                    style="background: #f8f7fd; border: 1px solid #41087c"
                                    data-bs-toggle="modal" data-bs-target="#exampleModal"
                                    data-no="${car.no}" data-car-name="${car.carName}" data-cost="${car.defaultCost}">수정
                            </button>
                        </td>
                        <td class="text-center">
                            <button class="btn btn-sm" style="background: #f8f7fd; border: 1px solid #41087c"
                                    onclick="location.href='/admin/car/newCarDelete.do?no=${car.no}'">삭제
                            </button>
                        </td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div>
            <!--paginate -->
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item">
                        <a class="page-link" href="javascript:void(0);" aria-label="Previous">
                            <span aria-hidden="true"
                                  onclick="movePage(1);">&lt;&lt;</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="javascript:void(0);" aria-label="Previous">
                            <span aria-hidden="true" onclick="movePage(${pagination.currentPage} <c:if
                                    test="${pagination.hasPreviousPage}">-1</c:if>);">&lt;</span>
                        </a>
                    </li>

                    <c:forEach begin="${pagination.firstPage}" end="${pagination.lastPage}" var="idx">
                        <li class="page-item">
                            <a class="page-link" href="javascript:void(0);"
                               onclick="movePage(${idx},${pagination.cntPerPage}, ${pagination.pageSize});">
                                <c:out value="${idx}"/>
                            </a>
                        </li>
                    </c:forEach>

                    <li class="page-item">
                        <a class="page-link" aria-label="Next" href="javascript:void(0);"
                           onclick="movePage(${pagination.currentPage} <c:if
                                   test="${pagination.hasNextPage == true}">+1</c:if>);">
                            <span aria-hidden="true">&gt;</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" aria-label="Next" href="javascript:void(0);"
                           onclick="movePage(${pagination.totalRecordCount});">
                            <span aria-hidden="true">&gt;&gt;</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /paginate -->
            <!---->
            <script>

                $('#formSelect').on('change', function () {
                    movePage(1);
                });

                //페이지 이동
                function movePage(currentPage) {

                    var url = "/admin/car/newCarList.do";
                    var params = [];
                    params.push("currentPage=" + (currentPage || 1));

                    var formSelectVal = $('#formSelect').val();
                    if (formSelectVal) {
                        params.push("keyword=" + formSelectVal);
                    }

                    var queryParams = '';
                    for (var i = 0; i < params.length; i++) {
                        if (i == 0) queryParams = '?' + params[i];
                        else queryParams += '&' + params[i]
                    }
                    location.href = url + queryParams;
                }

            </script>
        </div>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">신규 차량 수정</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="/admin/car/newCarModify.do">
                    <input type="hidden" name="no"/>
                    <div class="mb-3 text-start">
                        <label for="carName" class="col-form-label">변경할 이름을 입력하세요.</label>
                        <input type="text" class="form-control" id="carName" name="carName"/>
                    </div>
                    <div class="mb-3 text-start">
                        <label for="defaultCost" class="col-form-label">변경할 10분 단위 가격을 입력하세요.</label>
                        <input type="text" class="form-control" id="defaultCost" name="defaultCost"/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                        <button type="submit" class="btn text-white" style="background: #23093d">수정</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


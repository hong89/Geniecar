<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">차량 인수 등록</h1>
            </section>
            <table class="pt-5 table caption-top">
                <thead>
                <tr>
                    <td class="col"><strong>차량명</strong></td>
                    <td class="col"><strong>차량타입</strong></td>
                    <td class="col"><strong>연료</strong></td>
                    <td class="col"><strong>차대번호</strong></td>
                    <td class="col"><strong>차량번호</strong></td>
                    <td class="col"><strong>인수</strong></td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="list" items="${rentalCarList}">
                    <tr>
                        <td>${list.carName}</td>
                        <td>${list.carType}</td>
                        <td>${list.carFuel}</td>
                        <td>${list.carIdentificationNumber}</td>
                        <td>${fn:substring(list.carIdentificationNumber, 11, 13)}
                            허 ${fn:substring(list.carIdentificationNumber, 13, 17)}</td>
                        <td>
                            <input type="hidden" id="branchCode" value="${list.branchCode}" />
                            <button class="btn text-white btn-sm" style="background: #41087c"
                                    value="${list.carIdentificationNumber}" id="submitBtn">인수하기</button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>
<script>
    $(function () {
       $(document).on('click', '#submitBtn', function () {
           var check = confirm('차량을 인수하시겠습니까?');
           if(check) {
               // 인수
               var carNumber = $(this).val();
               var branchCode = $('#branchCode').val();

               $.get("/business/car/modifyRentalCarBranchesCar.do", {carNumber: carNumber}, function (res) {
                   history.go(0);
               });

               alert('인수 완료되었습니다.');
           } else {
               alert('인수 취소되었습니다.');
           }

       });
    });
</script>

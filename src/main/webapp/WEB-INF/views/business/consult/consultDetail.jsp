<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
    #consultTable tr td {
        font-size: 18px;
        padding: 13px;
        vertical-align: middle;
    }

    #consultTable {
        height: 400px;
    }

    #consultTable tr td:nth-child(odd) {
        background: #f8f7fd;
    }
</style>
<script>
    $(function () {
        $('#consultBtn').on('click', function () {
            var check = confirm("상담이 종료되었습니까?");
            if (!check) {
                alert('취소되었습니다.');
                return false;
            }
            var no = $('[name=no]').val();
            $.get("/business/consult/consultComplete.do", {no: no}, function (res) {
                alert("상담이 완료되었습니다.");
            });
            location.replace("consultDetail.do?no=" + no);
        });
    });
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <div class="inner-type2">
            <h1 class="pb-5 tit"> 상담 내역</h1>
            <table class="table table-bordered border-secondary p-5" id="consultTable">
                <tr>
                    <td class="col-2"><strong>No</strong></td>
                    <td class="col-3">${consult.no}</td>
                    <td class="col-2"><strong>등록일</strong></td>
                    <td class="col-3"><fmt:formatDate value="${consult.regDate}" pattern="YYYY-MM-dd HH:mm"/></td>
                </tr>
                <tr>
                    <td><strong>고객명</strong></td>
                    <td>${consult.name}</td>
                    <td><strong>상담여부</strong></td>
                    <td>
                        <c:choose>
                            <c:when test="${consult.statusYn == 'Y'}">완료</c:when>
                            <c:when test="${consult.statusYn == 'N'}">대기중</c:when>
                        </c:choose>
                    </td>
                </tr>
                <tr>
                    <td><strong>전화번호</strong></td>
                    <td>${consult.tel}</td>
                    <td><strong>이메일</strong></td>
                    <td>${consult.email}</td>
                </tr>
                <tr>
                    <td><strong>이용 목적</strong></td>
                    <td colspan="3">${consult.purpose}</td>
                </tr>
            </table>
        </div>
        <input type="hidden" name="no" value="${consult.no}"/>
        <div class="pt-5">
            <button type="button" class="btn text-white" style="background: #41087c"
                    onclick="location.href='consultList.do'">목록가기
            </button>
            <button type="button" class="btn text-white" style="background: #41087c" id="consultBtn">상담완료
            </button>
        </div>
    </div>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
    String parentNo = request.getParameter("parentNo");
%>

<script>
    function submitForm() {
        var title = $('[name=title]').val();
        var content = $('[name=content]').val();

        if (title == '' || title.length == 0 || title == 'undefined') {
            alert("제목을 입력하세요.");
            $("#title").focus();
            return false;
        } else if (title.length > 100) {
            alert("제목은 100자를 초과할 수 없습니다.");
            $("#title").focus();
            return false;
        } else if (content == '' || content.length == 0 || content == 'undefined') {
            alert("내용을 입력하세요");
            $("#content").focus();
            return false;
        }
        var confirmSubmit = confirm("등록하시겠습니까?");
        if (confirmSubmit) {
            document.registerForm.submit();
            alert("등록되었습니다.");
        }
    }
</script>

<style>
    #registerForm {
        padding: 30px;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div id="registerForm" style="text-align: center;">
        <h3>등록하기</h3>
        <c:set var="parentNo" value="<%= parentNo %>" />
        <form name="registerForm" action="/mypage/insertBoard.do?returnUrl=/mypage/qna.do?typeCode=QNA" method="post" enctype="multipart/form-data">
            <c:choose>
                <c:when test="${empty parentNo}">
                <div class="mb-3 row">
                    <label for="title" class="col-sm-2 col-form-label">구분</label>
                    <div class="col-sm-10"> 
                        <select class="form-select" id="typeCode" name="typeCode">
                            <option value="QNA">1:1 문의</option>
                            <option value="REVIEW">이용 후기</option>
                        </select>
                    </div>
                </div>
                </c:when>
                <c:otherwise>
                    <input type="hidden" id="parentNo" name="parentNo" value="${parentNo}">
                    <input type="hidden" id="typeCode" name="typeCode" value="QNA">
                </c:otherwise>
            </c:choose>
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="title" name="title">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="content" class="col-sm-2 col-form-label">내용</label>
                <div class="col-sm-10"><textarea class="form-control" id="content" name="content" rows="20"
                                                 style="width: 100%;"></textarea>
                </div>
            </div>
            <div class="mb-3 row" style="display: none;">
                <label for="fileMultiple" class="col-sm-2 col-form-label">파일</label>
                <div class="col-sm-10">
                    <input class="form-control" type="file" id="fileMultiple" name="file" multiple>
                </div>
            </div>
            <button type="button" class="btn text-white" style="background: #41087c" onclick="submitForm();">등록하기</button>
        </form>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

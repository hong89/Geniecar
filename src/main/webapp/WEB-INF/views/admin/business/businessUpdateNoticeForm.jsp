<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    function handleFileSelect(event, imagePreviewId) {
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function (e) {
            const previewImage = document.getElementById(imagePreviewId);
            previewImage.src = e.target.result;
            previewImage.style.display = 'block'; // 이미지 미리보기 표시
        };

        reader.readAsDataURL(file);
    }
    function submitForm() {
        var title = $('[name=title]').val();
        var content = $('[name=content]').val();

        if (title == '' || title.length == 0 || title == undefined) {
            alert("제목을 입력하세요.");
            $("#title").focus();
            return false;
        } else if (title.length > 100) {
            alert("제목은 100자를 초과할 수 없습니다.");
            $("#title").focus();
            return false;
        } else if (content == '' || content.length == 0 || content == undefined) {
            alert("내용을 입력하세요");
            $("#content").focus();
            return false;
        }

        var confirmSubmit = confirm("수정을 적용하시겠습니까?");
        if (confirmSubmit) {
            document.registerForm.submit();
            alert("수정되었습니다.");
        }
    }
    function deleteNotice() {
        var confirmDelete = confirm("삭제 하시겠습니까?");
        if(confirmDelete) {
            var noticeNo = "${notice.no}";
            var fileNo = "${notice.fileNo}";

            $.ajax({
                url: "/admin/board/deleteNotice.do",
                type: "GET",
                data: { no: noticeNo,
                        fileNo: fileNo },
                success: function(response) {
                    alert("삭제 되었습니다.");
                    var typeCode = "${notice.typeCode}"
                    window.location.href = "/admin/business/reviewList.do?typeCode=" + typeCode;
                },
                error: function(xhr, status, error) {
                    alert("삭제에 실패하였습니다.", error);
                }
            });
        }
    }

    document.addEventListener("DOMContentLoaded", function() {
        var selectedTypeCode = "${notice.typeCode}";
        var selectElement = document.getElementById("typeCode");
        var options = selectElement.options;

        for (var i = 0; i < options.length; i++) {
            if (options[i].value === selectedTypeCode) {
                options[i].selected = true;
                break;
            }
        }
    });
</script>

<style>
    #registerForm {
        padding: 30px;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->

    <div id="registerForm">
        <h3>등록하기</h3>

        <form name="registerForm" action="/admin/business/updateNotice.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="no" value="${notice.no}">
            <section class="text-center">
                <h1 class="tit">내용 수정하기</h1>
            </section>
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">구분</label>
                <div class="col-sm-10">
                    <select class="form-select" id="typeCode" name="typeCode">
                        <option value="NOTICE">공지사항</option>
                        <option value="FAQ">FAQ</option>
                        <option value="EVENT">이벤트</option>
                        <option value="EVENTWINNER">이벤트 당첨자</option>
                        <option value="CONSULTING">상담 신청</option>
                        <option value="QNA">1:1 문의</option>
                        <option value="REVIEW">이용후기</option>
                    </select>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="title" class="col-sm-2 col-form-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="title" name="title" value="${notice.title}">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="content" class="col-sm-2 col-form-label">내용</label>
                <div class="col-sm-10"><textarea class="form-control" id="content" name="content" rows="20"
                                                 style="width: 100%;">${notice.content}</textarea>
                </div>
            </div>

            <div class="mb-3 row">
                <label for="fileMultiple" class="col-sm-2 col-form-label">파일</label>
                <div class="col-sm-10">
                    <input class="form-control" type="file" id="fileMultiple" name="file" multiple>
                </div>
            </div>

			<c:if test="${not empty imageFiles}">
                <c:forEach var="imageFile" items="${imageFiles}" varStatus="loop">
                    <c:if test="${not empty imageFile.saveName}">
                        <div class="mb-3 row">
                            <label for="images" class="col-sm-2 col-form-label"></label>
                            <div class="col-sm-10 text-center" style="position: relative;">
                                <img id="imagePreview_${loop.index}" src="/downloadFile/${imageFile.saveName}" alt="이미지 미리보기" width="300" height="200" style="display: block; margin: 0 auto; float: left;">
                                <!-- <input type="file" id="fileInput_${loop.index}" style="display: none;" onchange="handleFileSelect(event, 'imagePreview_${loop.index}')" class="btn text-white" style="background: #41087c;"> -->
                                <input type="file" id="fileInput_${loop.index}" style="display: none;" onchange="" class="btn text-white" style="background: #41087c;">
                                <button type="button" class="btn text-white" style="background: #41087c; position: absolute; top: 80px; left: 400px;  transform: translateX(-50%);" onclick="document.getElementById('fileInput_${loop.index}').click();">이미지 변경</button>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </c:if>
            
            <button type="button" class="btn text-white" style="background: #41087c"
                onclick="location.href='list.do?typeCode=${notice.typeCode}'">목록가기
            </button>
            <input type="hidden" name="no" value="${notice.no}">
            <button type="button" class="btn text-white" style="background: #41087c" onclick="submitForm();">수정적용</button>
            <!-- <button type="button" class="btn text-white" style="background: #41087c" onclick="location.href='updateNoticeForm.do?no=${notice.no}'">수정적용</button> -->
            <button type="button" class="btn text-white" style="background: #41087c"
                    onclick="deleteNotice();">삭제하기
            </button>

        </form>
    </div>

    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

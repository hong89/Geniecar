<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    function editImage(fileNo, currentFileName) {
        $('#editImageModal').modal('show');
        $('#currentFileName').val(currentFileName);
        $('#fileNo').val(fileNo);
    }

    function submitEditImageForm() {
        var formData = new FormData(document.getElementById('editImageForm'));
        formData.append("fileNo", $('#fileNo').val());
        alert('fileNo: ' + $('#fileNo').val());

        $.ajax({
            type: 'POST',
            url: '/admin/board/updateImage',
            data: formData,
            processData: false,
            contentType: false,
            success: function (data) {
                $('#editImageModal').modal('hide');
                location.reload();
            },
            error: function () {
                alert('이미지 수정를 수정할 수 없습니다.');
            }
        });
    }
</script>

<style>
    #registerForm {
        padding: 30px;
    }
</style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <form name="updateNotice" action="/admin/board/updateNotice.do" method="post" enctype="multipart/form-data">
        <div class="pt-5">
            <div class="inner-type2">
                <section class="text-center">
                    <h1 class="tit">내용 수정하기</h1>
                </section>
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
            </div>
            <c:if test="${not empty imageFiles}">
                <c:forEach var="imageFile" items="${imageFiles}">
                    <c:if test="${not empty imageFile.saveName}">
                        <div class="mb-3 row">
                            <label for="images" class="col-sm-2 col-form-label">이미지</label>
                            <div class="col-sm-10">
                                <img class="form-control" src="/downloadFile/${imageFile.saveName}" alt="images" width="300" height="500">
                                <button type="button" class="btn text-white" style="background: #41087c" onclick="editImage(${imageFile.fileNo}, '${imageFile.saveName}')">이미지 수정</button>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </c:if>
        </div>
        <button type="button" class="btn text-white" style="background: #41087c"
                onclick="location.href='list.do?typeCode=${notice.typeCode}'">목록가기
        </button>
        <input type="hidden" name="no" value="${notice.no}">
        <button type="button" class="btn text-white" style="background: #41087c" onclick="submit();">수정적용</button>
        <!-- <button type="button" class="btn text-white" style="background: #41087c" onclick="location.href='updateNoticeForm.do?no=${notice.no}'">수정적용</button> -->
        <button type="button" class="btn text-white" style="background: #41087c"
                onclick="location.href='deleteNotice.do?no=${notice.no}'">삭제하기
        </button>
        </form>
  
        <div class="modal fade" id="editImageModal" tabindex="-1" aria-labelledby="editImageModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editImageModalLabel">이미지 수정</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                  
                        <form id="editImageForm" action="/admin/board/updateImage" method="post" enctype="multipart/form-data">
                            <input type="hidden" id="fileNo" name="fileNo" value="">
                            <div class="mb-3">
                                <label for="editImageFile" class="form-label">이미지 선택</label>
                                <input type="file" class="form-control" id="editImageFile" name="editImageFile">
                            </div>
                            <button type="button" class="btn btn-primary" onclick="submitEditImageForm()">이미지 수정</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

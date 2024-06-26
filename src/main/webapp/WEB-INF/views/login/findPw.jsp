<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--복사해서 사용하세요--%>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <script>
        $(function () {
            let msg = "${msg}";
            if(msg ==="not") {alert("일치하는 회원정보가 없습니다.")};
            if(msg ==="ok") {alert("비밀번호가 변경되었습니다.")};
            var replaceName = /^[가-힣a-zA-Z\s]+$/
            $('#submitBtn').click(function () {
                var id =$("#id").val();
                var name =$("#name").val();
                var hp =$("#hp").val();

                if(id == '' || id == null) {
                    alert("아이디를 입력해주세요");
                    $("#id").focus();
                    return false;
                } else if(name == '' || name == null) {
                    alert("이름을 입력해주세요");
                    $("#name").focus();
                    return false;
                } else if (!name.match(replaceName)) {
                    alert("이름으로 올바르게 입력해 주세요");
                    $("#name").focus();
                    return false;
                }else if(hp == '' || hp == null) {
                    alert("전화번호를 입력해주세요");
                    $("#hp").focus();
                    return false;
                }
                $('[name=findpw]').submit();                  
            });
        })

        function oninputPhone(target) {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/(^02.{0}|^01.{1}|[0-9]{2,3})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
        }
        function chkCharCode(event) {
            const regExp = /[^0-9a-zA-Z]/g;
            const ele = event.target;
            if (regExp.test(ele.value)) {
                ele.value = ele.value.replace(regExp, '');
            }
        };
    </script>
    <h1 class="m-5 text-center fw-bolder pt-5">비밀번호 찾기</h1>
    <section class="row p-3">
        <div class="col"></div>
        <div class="col">
            <form name = "findpw" id = "findpw" method="post" action="/login/resultFindPw.do">
                <div class="row mb-5">
                    <div class="col text-center">
                        <label for="name" class="col-form-label">아이디</label>
                    </div>
                    <div class="col-auto">
                        <input type="text" id="id" name="id" class="form-control" onkeyup="chkCharCode(event)">
                    </div>
                </div>
                <div class="row mb-5">
                    <div class="col text-center">
                        <label for="name" class="col-form-label">이름</label>
                    </div>
                    <div class="col-auto">
                        <input type="text" id="name" name="name" class="form-control">
                    </div>
                </div>
                <div class="row mb-5">
                    <div class="col text-center">
                        <label for="hp" class="col-form-label">전화번호</label>
                    </div>
                    <div class="col-auto">
                        <input type="text" id="hp" name="hp" class="form-control" oninput="oninputPhone(this)"  maxlength="13">
                    </div>
                </div>
                <div class="text-center">
                    <button type="button" class="btn" style="border: 1px solid #41087c; width: 110px;" onclick="history.back()">뒤로가기</button>
                    <button type="button" class="btn text-white" id="submitBtn" style="background: #41087c; width: 110px;" >찾기</button>
                </div>
            </form>
            <div id="result" class="mt-5"></div>
        </div>
        <div class="col"></div>
    </section>




    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

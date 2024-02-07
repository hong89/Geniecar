<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
    #registerForm {
        padding: 70px;
    }

    #frmInsert {
        padding-top: 70px;
        padding-bottom: 50px;
    }

    #frmInsert > button {
        margin-top: 50px;
    }

</style>
<script>

</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->


    <div class="p-5">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="pb-5 tit">신차 등록</h1>
            </section>

            <form name="frmInsert" action="/admin/car/insertNewCar.do" id="frmInsert" method="post">
                <div class="mb-3 row">
                    <label for="company" class="col-sm-3 col-form-label">제조사</label>
                    <div class="col-sm-9">
                        <select class="form-select" aria-label="Default select example" id="company" name="company">
                            <option selected>선택</option>
                            <%--<c:forEach var="code" items="${codeList}">
                                <option value="${code.fullCode}">${code.codeName}</option>
                            </c:forEach>--%>
                        </select>
                    </div>
                </div>
                <button type="button" class="btn text-white" style="background: #41087c" id="frmSubmit">등록하기</button>

            </form>
        </div>
    </div>


    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

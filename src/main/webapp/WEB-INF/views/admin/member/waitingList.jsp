<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
    $(function() {    
        let msg = "${msg}";
        if(msg.length != 0){alert(msg);}
    })
    function fn_approvla() {
        var id = $("#id").val();
        if(confirm("승인 하시겠습니까?")){
            $.ajax({
                type: "get",
                url: "/admin/member/approvla.do",
                dataType: "text",
                data: { id: id },
                success: function (data, Status) {
                    alert("승인되었습니다.");
                    document.location.reload();
                },
                error: function (data, Status) {
                    alert("에러가 발생했습니다.");
                }
            });
        }
    }
</script>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="p-5">
        <section class="text-center">
            <h1 class="pb-5">사업자 유저 목록</h1>
        </section>
        <section>
            <table class="pt-5 table">
                <thead>
                <tr>
                    <td align="center" scope="col">No.</td>
                    <td align="center" scope="col">ID</td>
                    <td align="center" scope="col"><strong>이름</strong></td>
                    <td align="center" scope="col"><strong>지점코드</strong></td>
                    <td align="center" scope="col"><strong>가입일</strong></td>
                    <td align="center" scope="col"><strong>승인</strong></td>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="business" items="${waitingList }" varStatus="status">
                        <tr>
                            <td align="center">${status.count}</td>
                            <td align="center">${business.id}</td>
                            <td align="center"><a href="/admin/member/businessDetail.do?id=${business.id}">${business.name }</a></td>
                            <td align="center">${business.branchCode}</td>
                            <td align="center"><fmt:formatDate value="${business.joinDate}" pattern="yyyy-MM-dd" /></td>
                            <input type="hidden" value="${business.id}" id ="id">
                            <td align="center" scope="col"><button onclick="fn_approvla()" class="btn p-0" style="border:1px solid #41087c;height: 30px; width: 50px;">승인</button></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <button class="btn text-white" style="background-color:#41087c;" onclick='location.href="/admin/member/businessList.do"'>사업자 목록</button>
        </section>
    </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>

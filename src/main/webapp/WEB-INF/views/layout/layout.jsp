<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="test" value="test1"  />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        #header {
            padding: 5px;
            height: 200px;
            margin-bottom: 5px;
            border: 0px solid #bcbcbc;
            background-color: lightpink;
        }
        #container {
            width: 100%;
            margin: 0px auto;
            text-align:center;
            border: 0px solid #bcbcbc;
        }
        #content {
            width: 70%;
            padding: 5px;
            margin-right: 5px;
            border: 0px solid #bcbcbc;
        }
        #footer {
            clear: both;
            height: 200px;
            padding: 5px;
            border: 0px solid #bcbcbc;
            background-color: lightpink;
        }
    </style>
    <title><tiles:insertAttribute name="title" /></title>
</head>
<body>
<div class="container" id="container">
    <div id="header">
        <tiles:insertAttribute name="header" />
    </div>
    <div id="content">
        <tiles:insertAttribute name="body" />
    </div>
    <div id="footer">
        <tiles:insertAttribute name="footer" />
    </div>
</div>
</body>
</html>
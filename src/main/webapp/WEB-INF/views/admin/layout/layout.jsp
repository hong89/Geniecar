<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
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
            height: 80px;
            margin-bottom: 5px;
            border-bottom: #23093d 10px solid;
        }
        #container {
            width: 100%;
            margin: 0px auto;
            text-align:center;
        }
        #sidebar-left {
            width: 20%;
            padding: 5px;
            margin-right: 5px;
            margin-bottom: 5px;
            float: left;
        }
        #content {
            width: 70%;
            padding: 5px;
            margin-right: 5px;
            float: left;
        }
        #footer {
            clear: both;
            height: 80px;
            padding: 5px;
            border-top: #23093d 10px solid;
        }

    </style>
    <title><tiles:insertAttribute name="title" /></title>
</head>
<body>
<div class="container" id="container">
    <div id="header">
        <tiles:insertAttribute name="header" />
    </div>
    <div id="sidebar-left">
        <tiles:insertAttribute name="aside" />
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <html>

            <head>
                <meta charset="UTF-8">
                <title>복사해서 사용하세요</title>
                <!-- 스타일 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
                    crossorigin="anonymous">
                <!-- 자바스크립트 -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
                    integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
                    crossorigin="anonymous"></script>

                <!-- 공통 css 파일 -->
                <link rel="stylesheet" type="text/css" href="/styles/content.css" />
                <!-- 제이쿼리 -->
                <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
                <style>



























































                </style>
            </head>

            <body>
                <div class="container-xl">
                    <!--------------------------------------------------상단---------------------------------------------------------->

                    <div class="row">
                        <div class="col">
                        </div>

                        <div class="col">
                            <form>
                                <img class="mb-4" src="/images/common/logo-full-image.png" alt="지니카">
                                <h5 class="mb-3 fw-normal text-center">로그인 방식을 선택해 주세요</h5>

                                <div class="form-floating mb-3">
                                    <input type="email" class="form-control" id="floatingInput"
                                        placeholder="name@example.com">
                                    <label for="floatingInput">Email address</label>
                                </div>
                                <div class="form-floating">
                                    <input type="password" class="form-control" id="floatingPassword"
                                        placeholder="Password">
                                    <label for="floatingPassword">Password</label>
                                </div>
                                <!--
                            <div class="checkbox mb-3">
                                <label>
                                    <input type="checkbox" value="remember-me"> Remember me
                                </label>
                            </div>
                            -->
                                <button class="w-100 btn btn-lg mt-3 text-white" type="submit"
                                    style="background-color:#41087c;">로그인</button>
                                <button class="w-100 btn btn-lg btn-warning mt-3" type="submit">카카오 로그인</button>
                                <button class="w-100 btn btn-lg btn-success mt-3" type="submit">네이버 로그인</button>
                            </form>
                        </div>
                        <div class="col">
                        </div>
                        <!--------------------------------------------------하단---------------------------------------------------------->
                </div>
            </body>

            </html>
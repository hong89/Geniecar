<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

해당페이지는 네이버 로그인이 완료되면 나오는 페이지이며 naver_id_login에 고객 정보값을 가지고 있음
현재 페이지에서 네이버 사용자 프로필 조회 값을 받아서
db에 값이 존재한다면 로그인 처리를 해주고 존재하지 않는다면 회원가입 약관 보여고 동의하면 가입처리.
(한번의 로그인 시도로 가입처리와 로그인으로 나뉘어짐)
회원가입 처리와 로그인 완료 처리를 하고 로그인 유지
https://developers.naver.com/docs/login/web/web.md 참고 페이지


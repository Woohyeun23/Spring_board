<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="cp" value="${pageContext.request.contextPath}" />

<%@include file="../include_layout_forward.jsp" %>

<link rel="stylesheet" href="${cp}/resources/game/css/ft_common.css?ver=<%=System.currentTimeMillis()%>" /> <!-- 바디에 넣어도 됨  -->
<link rel="stylesheet" href="${cp}/resources/game/css/game.css?ver=<%=System.currentTimeMillis()%>" /> <!-- 바디에 넣어도 됨  -->
<!-- font link -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@800&family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700;800&family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet">
<div class="freeBoard">
<%@include file="../include_layout_left.jsp" %>

<div class="read_area">
<div class="right_area">
	<div class="rac"><a href="${cp}/board/board_read/s_no=${read.s_no}&s_category=${read.s_category}&hit=ok">다음글</a></div>
	<div class="rac"><a href="${cp}/board/free_board"><p>목록</p></a></div>
</div>
<section id="read_main">
<div class="read_title"><h2>${read.s_title}</h2></div>
<div class="article_container">
<div class="article_viewer">
${read.s_text }
</div>
</div>
<div class="right_area">
<div class="function_button"><a href="${cp}/board/board_del?s_no=${read.s_no}&s_category=${read.s_category }">삭제하기</a></div>
<div class="function_button"><a href="${cp}/board//board_modify?s_no=${read.s_no}&s_category=${read.s_category}">수정하기</a></div>

</div>
</section>
</div>
</div>

<%@include file="../include_layout_back.jsp"%>

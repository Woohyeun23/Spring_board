<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="cp" value="${pageContext.request.contextPath}" />

<%@include file="../include_layout_forward.jsp" %>

<link rel="stylesheet" href="${cp}/resources/game/css/ft_common.css?ver=<%=System.currentTimeMillis()%>" /> <!-- 바디에 넣어도 됨  -->
<link rel="stylesheet" href="${cp}/resources/game/css/game.css?ver=<%=System.currentTimeMillis()%>" /> <!-- 바디에 넣어도 됨  -->
<!-- font link -->
<div class="freeBoard">
<%@include file="../include_layout_left.jsp" %>

<div class="read_area">

<section id="read_main">
<form action="/board/board_modify" method="post">
		<input type="hidden" name='s_no' value='${read.s_no }' >
		<input class="modify_blank" name="s_title" value="${read.s_title }">
		<textarea name='s_text'>
			${read.s_text }
		</textarea>
		<input type="submit" value="수정하기">
	</form>
</section>
</div>
</div>

<%@include file="../include_layout_back.jsp"%>

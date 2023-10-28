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
<div class="read_title">
글 제목 : <input name="s_title" value="${read.s_title}">
</div>
<div class="article_container">
<textarea rows="" cols="">
${read.s_text }
</textarea>
</div>
<div class="right_area">
<button type=submit>수정</button>
</div>
</section>
</div>
		
</div>

<%@include file="../include_layout_back.jsp"%>

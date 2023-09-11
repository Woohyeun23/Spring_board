<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="cp" value="${pageContext.request.contextPath}" />

<%@include file="../include_layout_forward.jsp" %>

<link rel="stylesheet" href="${cp}/resources/game/css/ft_common.css?ver=<%=System.currentTimeMillis()%>" /> <!-- 바디에 넣어도 됨  -->
<link rel="stylesheet" href="${cp}/resources/game/css/game.css?ver=<%=System.currentTimeMillis()%>" /> <!-- 바디에 넣어도 됨  -->

<div class="freeBoard">
<%@include file="../include_layout_left.jsp" %>

<div class="read_area">

</div>
</div>

<%@include file="../include_layout_back.jsp"%>
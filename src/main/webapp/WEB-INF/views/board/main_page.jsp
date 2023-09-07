<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="cp" value="${pageContext.request.contextPath}" />

<%@include file="../include_layout_forward.jsp" %>

<link rel="stylesheet" href="${cp}/resources/game/css/ft_common.css?ver=<%=System.currentTimeMillis()%>" /> <!-- 바디에 넣어도 됨  -->
<link rel="stylesheet" href="${cp}/resources/game/css/game.css?ver=<%=System.currentTimeMillis()%>" /> <!-- 바디에 넣어도 됨  -->

<div id="screen_game_enter">
	<div class="x">
	<section class="container box feature1">
			<div class="board_title">
				<h2>메인 화면</h2>
			</div>
			<ul class="divided">
				<c:forEach var="guest" items="${list}">
					<li><a href="${cp}/board/board_read?s_no=${guest.s_no }&s_category=${guest.s_category }&hit=ok">${guest.s_title }</a><span class="writerHit"> (조회 : ${guest.s_hit })   ${guest.s_datetime }</span></li>
				</c:forEach>
			</ul>
	</section>
	</div>
	<div class="big_yy">
		<div class="yy">
		<div class="board_side">
				<h2>&nbsp; 공지 사항 </h2>
			</div>
			<ul class="divided">
				<c:forEach var="guest" items="${list}">
					<li><a href="${cp}/board/board_read?s_no=${guest.s_no }&hit=ok">${guest.s_title }</a><span class="writerHit"> (조회 : ${guest.s_hit })   ${guest.s_datetime }</span></li>
				</c:forEach>
			</ul>
		</div>
		
		<div class="yy">
		<div class="board_title">
				<h2>&nbsp; 그 밖에 오류들 </h2>
			</div>
			<ul class="divided">
				<c:forEach var="guest" items="${list}">
					<li><a href="${cp}/board/board_read?s_no=${guest.s_no }&hit=ok">${guest.s_title }</a><span class="writerHit"> (조회 : ${guest.s_hit })   ${guest.s_datetime }</span></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	
	<!-- 오른쪽 영역 -->
            <div id="mid_right">
                <div>
                    <a href="https://www.disneyplus.com/ko-kr/series/big-bet/506cEky88AhL" target="_blank"><img class="right_banner" src="${cp}/resources/site/img/Mr.son.jpg"></a>
                    <a href="https://www.disneyplus.com/ko-kr/series/big-bet/506cEky88AhL" target="_blank"><img class="right_banner" src="${cp}/resources/site/img/Mr.son.jpg"></a>
                </div>
            </div>
</div>

 
<%@include file="../include_layout_back.jsp"%>

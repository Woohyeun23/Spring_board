<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:set var="cp" value="${pageContext.request.contextPath}" />

<%@include file="../include_layout_forward.jsp" %>


<link rel="stylesheet" href="${cp}/resources/game/css/ft_common.css?ver=<%=System.currentTimeMillis()%>" /> <!-- 바디에 넣어도 됨  -->
<link rel="stylesheet" href="${cp}/resources/game/css/game.css?ver=<%=System.currentTimeMillis()%>" /> <!-- 바디에 넣어도 됨  -->
<!-- tableName -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@800&display=swap" rel="stylesheet">

<div class="freeBoard">
<%@include file="../include_layout_left.jsp" %>
<section id="freeBoardbox">

<section id="tableName">
<h2>자유 게시판</h2>
<div class="list_selector"> 
페이지 수 &nbsp; <select class="pageSelect">
        <option>5</option>
        <option>10</option>
        <option>15</option>
    </select>
</div>
</section>
<table class="freeTable">
					<tbody>
						<tr>
							<th
								style="background-color: #00cbfe; text-align: center; width: 10%">번호</th>
							<th
								style="background-color: #00cbfe; text-align: center; width: 50%">제목</th>
							<th
								style="background-color: #00cbfe; text-align: center; width: 10%">작성자</th>
							<th
								style="background-color: #00cbfe; text-align: center; width: 10%">조회수</th>
							<th
								style="background-color: #00cbfe; text-align: center; width: 20%">작성일</th>
						</tr>
					</tbody>
					<tbody>
						<c:forEach var="guest" items="${FBlist}">
						<tr>
							<th>${guest.s_no }</th>
							<th><a href="${cp}/board/board_read?no=${guest.s_no }&hit=ok">${guest.s_title }</a></th>
							<th>${guest.s_id }</th>
							<th>${guest.s_hit }</th>
							<th>${guest.s_datetime }</th>

						</tr>
						</c:forEach>
					</tbody>
				</table>
				
	<div class="paging_block">
	<c:if test="${hasPrev == true}" >
	[<a href="${cp}/board/free_board?page=${prevPage}"><b>이전</b></a>]
</c:if>

<c:forEach var="p" begin="${blockStartNo}" end="${blockEndNo}">
	[<a href="${cp}/board/free_board?page=${p}">${p}</a>]
</c:forEach>

<c:if test="${hasNext == true}" >
	[<a href="${cp}/board/free_board?page=${nextPage}"><b>다음</b></a>]
</c:if>
	
	</div>
				
				</section>

</div>


<%@include file="../include_layout_back.jsp"%>

<%@page import="com.peisia.spring.spb.domain.GuestVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	여기 진짜오나???
	
<%-- <%
	GuestVO read = (GuestVO)request.getAttribute("read");
	long bno = read.getS_no();
	String btext = read.getS_text();
%>	

글번호:<%=bno %><br>
글내용:	
	
	<form action="/guest/modify" method="post">
		<input type="hidden" name='bno' value='<%=bno %>' >
		<textarea name='btext'>
			<%=btext %>
		</textarea>
		<input type="submit" value="수정하기">
	</form> --%>
	글번호:${read.s_no}
<hr>
글내용:		
	<form action="/spring/guest/modifyproc" method="post"> <!-- /spring으로 경로 통일해 줄 것 -->
		<input type="hidden" name='s_no' value='${read.s_no}' >
		<textarea name='s_text'>${read.s_text}</textarea>
		<input type="submit" value="수정하기">
	</form>
</body>
</html>



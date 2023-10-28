<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>
	Hello world!  
</h1>



<P>  The time on the server is ${serverTime}. </P>
 <a href="/spb/guest/getList">방명록</a> 
<a href="/spb/guest/getList?currentPage=1">방명록가기</a>

<a href="http://localhost:8080/spb/board/main_page">메인 홈페이지</a>

</body>
</html>

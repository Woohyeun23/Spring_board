<%@page import="java.util.ArrayList"%>
<%@page import="com.peisia.spring.spb.domain.GuestVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- jstl 로 처리하면 더 짧게 가능 -->
<c:forEach var="guest" items="${list}">
    ${guest.s_no}
    <a href="/spring/guest/read?s_no=${guest.s_no}">${guest.s_title}</a>
   <%--  <a href="/spring/guest/read?bno=<%=bno%>"> <%=btext %> </a> --%>

   
    <hr>
</c:forEach>

<%-- <c:forEach var="guest" items="${list}"> --%>
<%--     <c:set var="bno" value="${guest.bno}" /> --%>
<%--     <c:set var="btext" value="${guest.btext}" /> --%>
<%--     ${bno} --%>
<%--     ${btext} --%>
<!--     <hr> -->
<%-- </c:forEach> --%>


<a href="/spring/guest/write">새글 쓰기</a>				

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 0. 웹 애플리케이션의 루트 경로(컨텍스트 경로) 를 가져와서 링크에 다 연결해줘야 함     -->
<!-- 1. 0을 위한 준비. jstl core 태그 선언     -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 2. 0을 위한 준비. el 태그로 가져올 수 있는데 이걸 더 짧게 찍기위해 변수 대입함.     -->    
<c:set var="cp" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>peisia.com</title>
    <!-- 3. 적용하기 -->    
    
    <link rel="stylesheet" type="text/css" href="${cp}/resources/site/css/reset.css?ver=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" type="text/css" href="${cp}/resources/site/css/index.css?ver=<%=System.currentTimeMillis()%>">
  
	<script type="text/javascript" src="${cp}/resources/site/js/index.js?ver=<%=System.currentTimeMillis()%>"></script>
	<script src="${cp }/resources/site/js/mainFont.js?ver=<%=System.currentTimeMillis()%>"></script>
</head>
<body>
    <div id="myLayout">
        <!-- ************************************************ -->
        <!-- 상단 영역 -->
        <!-- ************************************************ -->
        <div id="top">
        	<div id="nav2"> 
        	<%
String cookie_id = request.getParameter("id");
if(cookie_id==null){
	cookie_id="";
}
String session_id = (String)session.getAttribute("keyId");
if(session_id!=null){
	

%>            	
                <%=session_id%> 님 
                <div class="nav2_menu"><a href="ServletProcLogout"><input type="button" value="로그아웃"></a>     </div>           
<%
}else{
%>                            
                <!-- 로그인 영역 -->
                <div class="nav2_menu"><a href="${cp}/board/login">로그인</a></div>
                <div class="nav2_menu"><a href="${cp}/board/new_member">회원가입</a></div>
<%
}
%>           
                
                <div class="nav2_menu"><a href="#">Dice</a></div>
                <div class="nav2_menu"><a href="#">고객센터</a></div>
            </div>  
            <div id="main_banner">
            	<a href="${cp}/board/main_page" class="mainfont">
            	<h1>String Board</h1>
				</a>
            </div>
            <div id="nav">      
            	<div class="nav_menu"><a href="${cp}/board/free_board">자유 게시판</a></div>      
                <div class="nav_menu"><a href="#">영상게시판</a></div>
                <div class="nav_menu"><a href="#">패치노트</a></div>
                <div class="nav_menu"><a href="#">하고싶은 말</a></div>
            </div>    
        </div>
        <!-- ************************************************ -->
        <!-- 중단 영역 -->
        <!-- ************************************************ -->
        <div id="mid">
            <!-- 왼쪽 영역 -->
           <%-- <div id="mid_left">
            	<!-- 로그인 후 회원정보 영역 -->
 <%
String cookie_id = request.getParameter("id");
if(cookie_id==null){
	cookie_id="";
}
String session_id = (String)session.getAttribute("keyId");
if(session_id!=null){
	

%>            	
                <div id="logined">
                <%=session_id%>회원님 환영합니다.
                <a href="ServletProcLogout"><input type="button" value="로그아웃"></a>                
                </div>
<%
}else{
%>                            
                <!-- 로그인 영역 -->
                <div id="login">
                    <form action="/ServletProcLogin" method="post">
						<input id="login_id" name="id" placeholder="아이디" maxlength="10" minlength="3" value="<%=cookie_id%>">
						<input id="login_pw" name="pw" placeholder="암호" type="password"><br>                 
                        <input type="submit" value="로그인">
                        <a href="/member/reg_member.jsp"><input type="button" value="회원가입"></a><br>
                        ID 저장<input type="checkbox" name="auto_input_id">
                    </form>
                </div>
<%
}
%>   --%>
                <!-- 게시판(일반) 영역 -->
                <!-- <div id="board">
                    <p class="board_title">게시판</p>
                    <a href="/board/list.jsp">자유게시판</a><br>
                    <a href="#">공지게시판</a><br>
                    <a href="#">질문/답변 게시판</a>
                </div> -->
                <!-- 게시판(자랑하기) 영역 -->
                <!-- <div id="proud">
                    <p class="board_title">우리애 자랑하기</p>
                    <a href="#">우리 개는요~</a><br>
                    <a href="#">우리 고양이는요~</a><br>
                    <a href="#">우리 토끼는요~</a>
                </div>            
    
    
            </div> -->
    
            <!-- 가운데 영역 -->
            <div id="mid_mid">

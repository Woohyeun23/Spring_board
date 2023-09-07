<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 0. 웹 애플리케이션의 루트 경로(컨텍스트 경로) 를 가져와서 링크에 다 연결해줘야 함     -->
<!-- 1. 0을 위한 준비. jstl core 태그 선언     -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 2. 0을 위한 준비. el 태그로 가져올 수 있는데 이걸 더 짧게 찍기위해 변수 대입함.     -->    
<c:set var="cp" value="${pageContext.request.contextPath}" />  

<!-- 왼쪽 영역 -->
          <div id="mid_left">           
                <!-- 게시판들 영역 -->
                <div id="board">
                    <a href="/board/list.jsp">자유게시판</a><br>
                    <a href="#">공지게시판</a><br>
                    <a href="#">질문/답변 게시판</a>
                </div> 
                <!-- 게시판(자랑하기) 영역 -->
               <div id="proud">
                    <a href="#">우리 개는요~</a><br>
                    <a href="#">우리 고양이는요~</a><br>
                    <a href="#">우리 토끼는요~</a>
                </div>            
            </div> 





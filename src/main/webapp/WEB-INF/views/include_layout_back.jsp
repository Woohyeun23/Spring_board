<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 0. 웹 애플리케이션의 루트 경로(컨텍스트 경로) 를 가져와서 링크에 다 연결해줘야 함     -->
<!-- 1. 0을 위한 준비. jstl core 태그 선언     -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 2. 0을 위한 준비. el 태그로 가져올 수 있는데 이걸 더 짧게 찍기위해 변수 대입함.     -->    
<c:set var="cp" value="${pageContext.request.contextPath}" />    

            </div>
    
           
            
        </div>
        <!-- ************************************************ -->
        <!-- 하단 영역 -->
        <!-- ************************************************ -->        
        <div id="bot">
            <p>Copyright&nbsp; Peisia.com&nbsp; TEL 02-111-2222&nbsp;&nbsp;뉴 개발자 ITo</p>            
        </div>
        

    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[3]</title>
</head>
<body>
	<!-- JSP 내장 (implicit) 객체 : 선언하지 않고 사용 가능 
		1) out : (JspWriter 클래스 타입)
		2) request : 메소드 값으로 알아낼 수 있는 정보들을 확인하기
	-->
	<h3>Request 객체의 정보</h3>
	<hr>
	<!-- 요청 URL : http://localhost:8082/jsp1/day2/request_obj.jsp -->
	<ul>
		<li>요청 URL : <%= request.getRequestURL() %></li> <!-- L위치(주소) -->
		<li>요청 URI : <%= request.getRequestURI() %></li> <!-- U통합 R자원 I식별자  -->
		<li>컨텍스트(context) : <%=request.getContextPath() %></li>
		<li>서버 IP : <%= request.getLocalAddr() %>,<%= request.getLocalName() %></li>
		<li>서버 Port : <%= request.getLocalPort() %></li>
		<li>클라이언트 IP : <%= request.getRemoteAddr() %></li>	
		<% /* request 객체로 전달되는 인코딩 형식 설정. */ 
		request.setCharacterEncoding("UTF-8"); %>	
		<li>문자 인코딩 형식 : <%=request.getCharacterEncoding() %></li> <!-- IPv6 (64바이트, 8자리) -->
		<li></li>
		<!-- 출력 IPv4 설정 : Run -> Run Configurations -> tomcat -> Arguments -> VM Arg 에 입력
                        -Djava.net.preferIPv4Stack=true -->
	
		
	</ul>
	
</body>
</html>
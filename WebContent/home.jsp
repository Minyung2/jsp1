<%@page import="day1.MyUser"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
	<!-- 
	html 파일과 jsp 파일의 다른점
	JSP -> page 지시자 : java 프로그래밍 -> 웹 애플리케이션 서버(WAS) -> 서버가 컴파일 -> html 문서로 응담
	HTML -> 웹 서버 -> 서버에 배포되어 있는 존재하는 파일들을 요청에 대해 바로 응답
	
	요청 httl://localhos:8082/jsp1/파일명(경로)	-> 웹서버 -> WAS -> DB서버
									응답		<-		<-		<-
	 -->

	<!-- 이 소스 파일에 자바 코드를 작성할 수 있다. -> 스크립트릿(코드조각) -->
	<%
		String message = "Hello? JAVA";
	LocalDate now = LocalDate.now();
	%>

	<h4>I am JSP</h4>
	<ul>
		<li><%=now%></li>
		<!-- 자바 코드의 변수값(표현식) 출력해 보기 -->
		<li><%=message%></li>


		<%
			String[] names={"박세리", "김연경", "허재", "안정환"};
			for (int i = 0; i < names.length; i++) {
		%>
		<li><%= i+1 %> : <%=names[i] %></li>
		<%-- <li><%=names[i] %></li> --%>
		<%
			}
			
			MyUser my = new MyUser();
			my.setAge(23);
			my.setName("사나");
			my.setLocation("서울");
			out.print(my);
		%>
	</ul>
</body>
</html>
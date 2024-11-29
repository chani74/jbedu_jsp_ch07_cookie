
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 정보 확인</title>
</head>
<body>

<h2>쿠키 정보 확인</h2>
<hr>
<%
	// 쿠키 가져오기
	Cookie[] cookies = request.getCookies(); //쿠키객체의 배열 타입으로 변환
	String cookieID = "" ;
	
	if ( cookies!=null) {
		
		for( Cookie cookie  :  cookies ) {
			
			out.println("쿠키 이름: "+cookie.getName()+"<br>"); 
			out.println("쿠키 값 : "+cookie.getValue()+"<br>");
			
			if (cookie.getName().equals("cookieID")) {
				cookieID = cookie.getValue();
			}
		}
		out.println(cookieID +"님, 로그인 중입니다.<br>"); 
	}
%>	
<hr>	
<%= cookieID %>   님, 로그인 중입니다.

<a href="logout.jsp">로그아웃</a>
</body>
</html>
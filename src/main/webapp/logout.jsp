<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();

	if ( cookies!=null) {
		for( Cookie cookie  :  cookies ) {
			if (cookie.getName().equals("cookieID")) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}

	}	
	
%>

<a href='myinfo.jsp'>내 정보 확인 하기 </a>
<a href='logout2.jsp'>모든 쿠키 삭제 로그아웃 가기</a>
</body>
</html>
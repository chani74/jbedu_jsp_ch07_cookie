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
	request.setCharacterEncoding("UTF-8");
	
	String mid = request.getParameter("mid");
	String mpw = request.getParameter("mpw");
	
	if (mid.equals("chani74") && mpw.equals("1234")) {
		session.setAttribute("sessionid", mid);
		session.setAttribute("vaildMem", "yes");
		session.setAttribute("sessionpw", mpw);
		
		Cookie cookie1 = new Cookie("cookieID",mid);
		Cookie cookie2 = new Cookie("log_in","yes");
		
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		
		out.println("로그인 성공하셨습니다.");
		
	} else {
		response.sendRedirect("loginfail.jsp");	
	}
	%>
	<br><br>
	<a href='myinfo.jsp'>내 정보 확인하기</a>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		UserVO vo = (UserVO) session.getAttribute("user");
	%>
<h1>id: <%= vo.getId() %></h1>
<h1>name: <%= vo.getName() %></h1>
<h1>nickname: <%= vo.getNickname() %></h1>




</body>
</html>
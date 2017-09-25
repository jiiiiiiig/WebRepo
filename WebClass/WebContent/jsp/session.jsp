<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Integer cnt = (Integer) session.getAttribute("cnt");
		if (cnt == null) {
			out.println("최초 호출");
			cnt = 0;
		}
		session.setAttribute("cnt", ++cnt);
	%>
	<h1>
		cnt :
		<%=cnt%></h1>

<Br>
<%= request.getHeader("Cookie") %>







</body>
</html>
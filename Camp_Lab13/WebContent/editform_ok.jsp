<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.crud.dao.UserDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="u" class="com.crud.bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
		int i = UserDao.update(u);
		response.sendRedirect("list.jsp");
	%>
</body>
</html>
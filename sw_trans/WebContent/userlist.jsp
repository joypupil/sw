<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>账号信息</title>
</head>
<body>
	<a href="${pageContext.request.contextPath}/user/add">添加</a>
	<table border="1">
		<tr>
			<td>账号</td>
			<td>角色名称</td>
			<td>操作</td>
		</tr>
		
		<c:forEach var="user" items="${userList}">
			<tr>
				<td>${user.accountNumber}</td>
				<td>${user.userName}</td>
				<td><a href="${pageContext.request.contextPath}/user/delete/${user.Id}">删除</a> 
				    <a href="${pageContext.request.contextPath}/user/get/${user.Id}">修改</a></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>
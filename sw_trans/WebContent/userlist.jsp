<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息</title>
</head>
<body>
	<a href="${pageContext.request.contextPath}/add">添加</a>
	<table border="1">
		<tr>
			<td>姓名</td>
			<td>年龄</td>
			<td>性别</td>
			<td>班级</td>
			<td>操作</td>
		</tr>
		
		<c:forEach var="student" items="${studentList}">
			<tr>
				<td>${student.name}</td>
				<td>${student.age}</td>
				<td>${student.sex}</td>
				<td>${student.classes}</td>
				<td><a href="${pageContext.request.contextPath}/delete/${student.sid}">删除</a> 
				    <a href="${pageContext.request.contextPath}/get/${student.sid}">修改</a></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>
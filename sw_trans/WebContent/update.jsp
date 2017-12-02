<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/update" method="post">
		     <input type="hidden" name="student.sid" value="${student.sid}" /> 
		姓名： <input type="text" name="student.name" value="${student.name}" /> <br />
		年龄： <input type="text" name="student.age" value="${student.age}" /> <br /> 
		性别： <input type="text" name="student.sex" value="${student.sex}" /> <br />
		班级： <input type="text" name="student.classes" value="${student.classes}" /> <br /> 
			 <input type="submit" value="保存" />
	</form>
</body>
</html>
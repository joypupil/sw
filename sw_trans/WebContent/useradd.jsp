<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/user/save" method="post">
		账号： <input type="text" name="user.accountNumber" /><br /> 
		角色名称： <input type="text" name="user.userName" /> <br />
		<input type="submit" value="保存" />
	</form>
</body>
</html>
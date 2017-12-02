<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/user/update" method="post">
		     <input type="hidden" name="user.Id" value="${user.Id}" /> 
		账号： <input type="text" name="user.accountNumber" value="${user.accountNumber}" /> <br />
		角色： <input type="text" name="user.userName" value="${user.userName}" /> <br /> 
			 <input type="submit" value="保存" />
	</form>
</body>
</html>
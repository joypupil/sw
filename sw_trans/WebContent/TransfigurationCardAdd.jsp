<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/transfiguration/save" method="post">
	 属性：<select name= 'transfiguration_card.five_elements' >
    <option value=1>金</option>
    <option value=2>木</option>
    <option value=3>水</option>
    <option value=4>火</option>
    <option value=5>土</option>
  	</select><br /> 
  	 上：<select name= 'transfiguration_card.up' >
    <option value=1>金</option>
    <option value=2>木</option>
    <option value=3>水</option>
    <option value=4>火</option>
    <option value=5>土</option>
  	</select><br /> 
  	 下：<select name= 'transfiguration_card.down' >
    <option value=1>金</option>
    <option value=2>木</option>
    <option value=3>水</option>
    <option value=4>火</option>
    <option value=5>土</option>
  	</select><br /> 
  	 左：<select name= 'transfiguration_card.left' >
    <option value=1>金</option>
    <option value=2>木</option>
    <option value=3>水</option>
    <option value=4>火</option>
    <option value=5>土</option>
  	</select><br /> 
  	 右：<select name= 'transfiguration_card.right' >
    <option value=1>金</option>
    <option value=2>木</option>
    <option value=3>水</option>
    <option value=4>火</option>
    <option value=5>土</option>
  	</select><br /> 
  	 角色：<select name= 'transfiguration_card.userId' >
    <option value=1>放学来打我1</option> 
  	</select><br /> 
  	 仓库：<select name= 'transfiguration_card.warehouse' >
    <option value="BB1">背包1</option>
    <option value="CK1">仓库1</option>
  	</select><br />
	位置： <input type="text" name="transfiguration_card.position" /><br /> 
	<input type="submit" value="保存" />
	</form>
</body>
</html>
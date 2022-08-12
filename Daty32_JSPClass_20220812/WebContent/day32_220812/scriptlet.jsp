<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<%	// 스크립틀릿에서는 변수 선언은 가능하지만 메서드 선언은 불가능하다. 
	int a = 2;
	int b = 3;
	int sum = a + b;
	
	out.print("2 + 3 = " + sum);
	%>
</body>
</html>
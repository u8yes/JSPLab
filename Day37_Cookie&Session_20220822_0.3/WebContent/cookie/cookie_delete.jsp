<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
<%

	Cookie[] cookies = request.getCookies();

if(cookies != null){
	for ( int i = 0; i < cookies.length ; i++){
		if(cookies[i].getName().equals("id")){
			cookies[i].setMaxAge(0);	// 쿠키 삭제
			response.addCookie(cookies[i]);
			out.print("쿠키 정보 삭제 완료");
		}
	}
}else{
	out.print("설정된 쿠키 정보가 없습니다.");
}

%>



<p><a href="cookie_check.jsp">[쿠키 확인]</a>
</body>
</html>


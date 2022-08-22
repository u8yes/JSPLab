<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String mname = (String)session.getAttribute("mname");

	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
	
	boolean login = true;
	
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">product Detail</h1>
</div>	
</div>



<div class="container w-70">
<%
	String pid = request.getParameter("pid");

	DTOproduct product = DAOproduct.productDetail(pid);
	
/* 	String img =  file.getPfilename1();  
	String imgstr = "";
	if (img != null) {
		imgstr = "images/" + img;
	} */
%>
TEST
<%= product.getPdesc() %>
<%@ include file = "../footer.jsp" %>

</body>
</html>
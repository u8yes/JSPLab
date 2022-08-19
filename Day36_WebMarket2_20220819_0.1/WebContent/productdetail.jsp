<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "db.*" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<%
	String no = request.getParameter("no");

	DTOproduct file = DAOproduct.productDetail(no);
	
	String img1 =  file.getPfilename1();
	String imgstr1 = "";
	if (img1 != null) {
		imgstr1 = "images/" + img1; // images 폴더는 product를 나가야 있다.
	} 

	String img2 =  file.getPfilename2();
	String imgstr2 = "";
	if (img2 != null) {
		imgstr2 = "images/" + img2; // images 폴더는 product를 나가야 있다.
	} 


	String img3 =  file.getPfilename3();
	String imgstr3 = "";
	if (img3 != null) {
		imgstr3 = "images/" + img3; // images 폴더는 product를 나가야 있다.
	} 




%>


	 <img style="width: 40px;" src="<%=imgstr1%>">
	 <img style="width: 40px;" src="<%=imgstr2%>">
	 <img style="width: 40px;" src="<%=imgstr3%>">
	 
	 
	
	<br><br>
	<%=file.getPid()%>
	<%=file.getPname()%>
	<%=file.getPdesc()%>
	<%=file.getPprice()%>
	
	
	
	<br><br>
	<div class="d-grid gap-2 col-6 mx-auto">
	<a class="btn btn-primary" href="productlist.jsp" target="_blank" role="button">목록</a>
	<a class="btn btn-secondary" href="productinputpage.jsp" target="_blank" role="button">사진 등록</a>
	</div> 
</body>
</html>
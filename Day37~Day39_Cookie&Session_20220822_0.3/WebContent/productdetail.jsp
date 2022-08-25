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
	String pid = request.getParameter("pid");

	DTOproduct product = DAOproduct.productDetail(pid);
	
	String img1 =  product.getPfilename1();
	String imgstr1 = "";
	if (img1 != null) {
		imgstr1 = "../images/" + img1; // images 폴더는 product를 나가야 있다.
	} 

	String img2 =  product.getPfilename2();
	String imgstr2 = "";
	if (img2 != null) {
		imgstr2 = "../images/" + img2; // images 폴더는 product를 나가야 있다.
	} 


	String img3 =  product.getPfilename3();
	String imgstr3 = "";
	if (img3 != null) {
		imgstr3 = "../images/" + img3; // images 폴더는 product를 나가야 있다.
	} 




%>


	 <img style="width: 40px;" src="<%=imgstr1%>">
	 <img style="width: 40px;" src="<%=imgstr2%>">
	 <img style="width: 40px;" src="<%=imgstr3%>">
	 
	 
	
	<br><br>
	<%=product.getPid()%>
	<%=product.getPname()%>
	<%=product.getPdesc()%>
	<%=product.getPprice()%>
	
	
	
	<br><br>
	<div class="d-grid gap-2 col-6 mx-auto">
	<a class="btn btn-secondary" href="productlist.jsp" target="_blank" role="button">제품목록</a>
	<a class="btn btn-secondary" href="deliverypage.jsp?pid=<%=product.getPid()%>&pname=<%=product.getPname() %>&pprice=<%=product.getPprice()  %>" role="button">제품구매</a>
	</div> 
</body>
</html>
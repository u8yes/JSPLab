<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">


<%@ include file = "../header.jsp" %>
   
	

	
%>    
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

<%= product.getPdesc() %>

	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end"></label>
		<div class="col-sm-7 ">
			<a href="productlist.jsp" class="btn btn-secondary" role="button">제품목록 &raquo;</a>		
			<a href="deliverypage.jsp?pid=<%=product.getPid() %>&pname=<%=product.getPname() %>&pprice=<%=product.getPprice() %>" class="btn btn-danger" role="button">제품구매 &raquo;</a>		
		</div>	
	</div>
	
	
<%@ include file = "../footer.jsp" %>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>  

</body>
</html>
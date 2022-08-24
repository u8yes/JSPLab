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
<%@ include file = "../header.jsp" %>
    <%
	mname = (String)session.getAttribute("mname");

	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
	

	
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
TEST
<%= product.getPdesc() %>

	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end"></label>
		<div class="col-sm-7 ">
			<a href="productlist.jsp" class="btn btn-secondary" role="button">제품목록 &raquo;</a>		
			<a href="deliverypage.jsp?pid=<%=product.getPid() %>&pname=<%=product.getPname() %>&pprice=<%=product.getPprice() %>" class="btn btn-danger" role="button">제품구매 &raquo;</a>		
		</div>	
	</div>
	
	
<%@ include file = "../footer.jsp" %>

</body>
</html>
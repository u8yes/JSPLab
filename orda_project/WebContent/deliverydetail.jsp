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
    <%
	String mname = (String)session.getAttribute("mname");

	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
	

	
%>    
<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">delivery Detail</h1>
</div>	
</div>



<div class="container w-70">
<%
	String did = request.getParameter("did");

	DTOdelivery delivery = DAOdelivery.deliveryDetail(did);
	
/* 	String img =  file.getPfilename1();  
	String imgstr = "";
	if (img != null) {
		imgstr = "images/" + img;
	} */
%>

<div class="container">
<div class="card">
  

  <div class="card-body">
    <h5 class="card-title"><%=delivery.getDid() %></h5>
    <p class="card-text">제품번호 : <%=delivery.getDpid() %></p>
    <p class="card-text">멤버번호 : <%=delivery.getDmid() %></p>
      <p class="card-text">배송주소 : <%=delivery.getDmaddr() %></p>
      <p class="card-text">전화번호 : <%=delivery.getDmtel() %></p>
      <p class="card-text">상품명 : <%=delivery.getDpname() %></p>
      <p class="card-text">상품가격 : <%=delivery.getDpprice() %></p>
      <p class="card-text">진행상태 : <%=delivery.getDstatus() %></p>
      <p class="card-text">완료진행상태 : <%=delivery.getDdone() %></p>
      <p class="card-text">구매일 : <%=delivery.getDdate() %></p>
 
  </div>
</div>
</div>

	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end"></label>
		<div class="col-sm-7 ">
			<a href="deliverylist.jsp" class="btn btn-secondary" role="button">제품목록 &raquo;</a>		
		</div>	
	</div>
	
	
<%@ include file = "../footer.jsp" %>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>  

</body>
</html>
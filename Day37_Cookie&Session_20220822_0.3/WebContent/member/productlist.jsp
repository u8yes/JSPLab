<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String mname = (String)session.getAttribute("mname");

	if(mname == null){
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp';</script>");
	}
	
	
	boolean login = true;

	
%>
	
<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">member List</h1>
</div>	
</div>
<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
     <tr>
      <th scope="col">pid</th>
      <th scope="col">pname</th>
      <th scope="col">pdesc</th>
      <th scope="col">pprice</th>
      <th scope="col">pfilename1</th>
      <th scope="col">pfilename2</th>
      <th scope="col">pfilename3</th>
    </tr>
  </thead>
  <tbody>
  
  <%
    	ArrayList<DTOproduct> files = DAOproduct.productList();

                for (DTOmember file : files) {
  %>	





	<%
      if(login){
    	  out.print(mname = "님 로그인 상태입니다.");
      }else {
    	  out.print("방문을 환영합니다. 로그인 하세요");
      }
      
    %>
    
    
</body>
</html>
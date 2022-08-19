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

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">product List</h1>
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

                for (DTOproduct file : files) {
  %>		






	
	
    <tr>
      <th scope="row"><%=file.getPid()%></th>
      <td>	<a href="productdetail.jsp?no=<%=file.getPid() %>"><%=file.getPname() %></a></td>
      <td>	<a href="productdetail.jsp?no=<%=file.getPid() %>"><%=file.getPdesc() %></a></td>
      <td>	<a href="productdetail.jsp?no=<%=file.getPid() %>"><%=file.getPprice() %></a></td>
      <td class="fixed-end "><a href="productdetail.jsp?no=<%=file.getPid() %>">
      <img class="rounded " style="width: 100px; " src="images/<%=file.getPfilename1() %>"></a></td>
      <td class="fixed-end "><a href="productdetail.jsp?no=<%=file.getPid() %>">
      <img class="rounded " style="width: 100px; " src="images/<%=file.getPfilename2() %>"></a></td>
      <td class="fixed-end "><a href="productdetail.jsp?no=<%=file.getPid() %>">
      <img class="rounded " style="width: 100px; " src="images/<%=file.getPfilename3() %>"></a></td>
    
    </tr>
<% 	
	}
%>    
    
    
  </tbody>
</table>
</div>

	<br>
	
	
	<div align="center" class="row justify-content-center d-grid gap-2 col-6 mx-auto">
	
	<a class="btn btn-primary" href="productinputpage.jsp">사진 등록</a>
	</div>

<br><br><br>
<%@ include file = "../footer.jsp" %>

</body>
</html>
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
<%@ include file = "header.jsp" %>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">





<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">게시판 목록</h1>
</div>	
</div>
<div class="container w-70">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">작성시간</th>
    </tr>
  </thead>
  <tbody>
  
  <%
ArrayList<DTOboard> boards = DAOboard.boardlist();

for (DTOboard board : boards) {
%>		

    <tr>
      <th scope="row"><%=board.getBid()%></th>
      <td>	<a href="boarddetail.jsp?bid=<%=board.getBid() %>"><%=board.getTitle() %></a></td>
      <td><%=board.getAuthor() %></a></td>
      <td><%=board.getBdate() %></a></td>
    </tr>
<% 	
	}
%>    
    
    
  </tbody>
</table>
</div>
 <div class="d-grid gap-2 col-6 mx-auto">
<a href="boardinputpage.jsp" class="btn btn-secondary" role="button">게시물 작성</a>
 </div>
	<br>	<br>	<br>

<%@ include file = "footer.jsp" %>



<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>  

</body>
</html>
<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="">
tr{
	text-align: center;
}


</style>



</head>
<body>
<%@ include file = "header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Board List</h1>
</div>	
</div>
<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
    <tr>
      <!-- <th scope="col">#</th> -->
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
      <th scope="col">날짜</th>
    </tr>
  </thead>
  <tbody>
  
  <%
    	ArrayList<DTOboard> boards = DAOboard.boardList();

                for (DTOboard board : boards) {
    %>		

    <tr>
      <th scope="row"><%=board.getBid()%></th>
      <td>	<a href="boarddetail.jsp?bid=<%=board.getBid() %>"><%=board.getTitle() %></a></td>
      <td>	<a href="boarddetail.jsp?bid=<%=board.getBid() %>"><%=board.getAuthor() %></a></td>
      <td>	<a href="boarddetail.jsp?bid=<%=board.getBid() %>"><%=board.getBdate() %></a></td>
    </tr>
<% 	
	}
%>    
    
    
  </tbody>
</table>
</div>

	<br>
	
	
	<div align="center" class="row justify-content-center d-grid gap-2 col-6 mx-auto">
	
	<a class="btn btn-primary" href="boardinputpage.jsp">게시판 작성</a>
	</div>

<%@ include file = "footer.jsp" %>

</body>
</html>
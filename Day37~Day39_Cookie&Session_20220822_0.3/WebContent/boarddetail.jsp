<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "db.*" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "header.jsp" %>


<%

	String bid = request.getParameter("bid");
	DTOboard board = DAOboard.boardDetail(bid);
	
%>



<table class="table">
  <thead>
    <tr>
      <th scope="col"><%=board.getTitle()%></th>
      
    </tr>
  </thead>
  <tbody class="table-group-divider">
    <tr>
      
      <td><%=board.getAuthor()%></td>
      <td><%=board.getBdate()%></td>
    </tr>
    <tr>
      
      <td><%=board.getContent()%></td>
      
    </tr>
   
  </tbody>
</table>
	
	<%-- <br><br>
	<%=board.getBid()%>
	<%=board.getTitle()%>
	<%=board.getAuthor()%>
	<%=board.getContent()%>
	
	<%=board.getBdate()%>
	<br><br> --%>
	
	<div class="d-grid gap-2 col-6 mx-auto">
	<a class="btn btn-primary" href="boardlist.jsp" target="_blank" role="button">목록</a>
	<a class="btn btn-secondary" href="boardeditpage.jsp" target="_blank" role="button">수정</a>
	</div>
	
	
	
<%@ include file = "footer.jsp" %>
</body>
</html>
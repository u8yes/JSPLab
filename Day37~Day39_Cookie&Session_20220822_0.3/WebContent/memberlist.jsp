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
	<h1 class = "display-3">member List</h1>
</div>	
</div>
<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
    <tr>
      <!-- <th scope="col">#</th> -->
      <th scope="col">번호</th>
      <th scope="col">이름</th>
      <th scope="col">전화번호</th>
      <th scope="col">메일주소</th>
      <th scope="col">성별</th>
      <th scope="col">주소</th>
      <th scope="col">등급</th>
      <th scope="col">가입일</th>
    </tr>
  </thead>
  <tbody>
  
  <%
    	ArrayList<DTOmember> members = DAOmember.memberList();

                for (DTOmember member : members) {
    %>		

    <tr>
      <th scope="row"><%=member.getMno()%></th>
      <td>	<a href="memberdetail.jsp?mname=<%=member.getMname() %>"><%=member.getMname() %></a></td>
      <td>	<a href="memberdetail.jsp?mname=<%=member.getMname() %>"><%=member.getMtel() %></a></td>
      <td>	<a href="memberdetail.jsp?mname=<%=member.getMname() %>"><%=member.getMemail() %></a></td>
      <td>	<a href="memberdetail.jsp?mname=<%=member.getMname() %>"><%=member.getMgender() %></a></td>
      <td>	<a href="memberdetail.jsp?mname=<%=member.getMname() %>"><%=member.getMaddr() %></a></td>
      <td>	<a href="memberdetail.jsp?mname=<%=member.getMname() %>"><%=member.getMlevel() %></a></td>
      <td>	<a href="memberdetail.jsp?mname=<%=member.getMname() %>"><%=member.getMdate() %></a></td>
    </tr>
<% 	
	}
%>    
    
    
  </tbody>
</table>
</div>

	<br>
	
	
	<div align="center" class="row justify-content-center d-grid gap-2 col-6 mx-auto">
	
	<a class="btn btn-primary" href="memberinputpage.jsp">게시판 작성</a>
	</div>

<%@ include file = "footer.jsp" %>

</body>
</html>
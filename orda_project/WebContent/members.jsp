<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>


<%@ include file = "header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">회원 관리</h1>
</div>	
</div>
<div class="container w-70">
<table class="table table-hover">
  <thead>
    <tr>
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
  String mname = (String)session.getAttribute("mname");
  
  DTOmember member = DAOmember.memberdetail(mname);


%>		

    <tr>
      <th scope="row"><%=member.getMno()%></th>
      <td><a href="membersdetail.jsp?mname=<%=member.getMname() %>"><%=member.getMname() %></a></td>
      <td><%=member.getMtel() %></a></td>
      <td><%=member.getMemail() %></a></td>
      <td><%=member.getMgender() %></a></td>
      <td><%=member.getMaddr() %></a></td>
      <td><%=member.getMlevel() %></a></td>
      <td><%=member.getMdate() %></a></td>
    </tr>
<% 	
	

%>    
    
    
  </tbody>
</table>
</div>
<!--  <div class="d-grid gap-2 col-6 mx-auto">
<a href="boardinputpage.jsp" class="btn btn-secondary" role="button">게시물 작성</a>
 </div> -->
	<br>	<br>	<br>

<%@ include file = "footer.jsp" %>



</body>
</html>
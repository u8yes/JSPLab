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
	<h1 class = "display-3">게시판 목록</h1>
</div>	
</div>
<div class="container w-70">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">구매자</th>
      <th scope="col">구매물품</th>
      <th scope="col">주소</th>
      <th scope="col">전화번호</th>
      <th scope="col">가격</th>
      <th scope="col">구매일</th>
      <th scope="col">상태</th>
    </tr>
  </thead>
  <tbody>
  
  <%
 	mname = (String)session.getAttribute("mname");
	ArrayList<DTOdelivery> deliverys = DAOdelivery.deliveryList();

for (DTOdelivery delivery : deliverys) {
%>		

    <tr>
      <th scope="row"><%=delivery.getDid()%></th>
      <td>	<a href="deliverydetail.jsp?bid=<%=mname %>"></a></td>
      <td><%=delivery.getAuthor() %></a></td>
      <td><%=delivery.getBdate() %></a></td>
      <td><%=delivery.getBdate() %></a></td>
      <td><%=delivery.getBdate() %></a></td>
      <td><%=delivery.getBdate() %></a></td>
      <td><%=delivery.getBdate() %></a></td>
    </tr>
<% 	
	}
%>    
    
    
  </tbody>
</table>
</div>
 <div class="d-grid gap-2 col-6 mx-auto">
<a href="deliveryinputpage.jsp" class="btn btn-secondary" role="button">게시물 작성</a>
 </div>
	<br>	<br>	<br>

<%@ include file = "../footer.jsp" %>

</body>
</html>
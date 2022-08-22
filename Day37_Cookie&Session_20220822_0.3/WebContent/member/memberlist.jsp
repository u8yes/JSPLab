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
<%@ include file="header.jsp" %>	

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Member List</h1>
</div>	
</div>
<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">PassWord</th>
      <th scope="col">Image</th>
    </tr>
  </thead>
  <tbody>
  
  <%
    	ArrayList<DTOmember> files = DAOmember.memberList();

                for (DTOmember file : files) {
  %>		


    <tr>
      <th scope="row"><%=file.getMno()%></th>
      <td>	<a href="memberdetail.jsp?no=<%=file.getMno() %>"><%=file.getMname() %></a></td>
      <td>	<a href="memberdetail.jsp?no=<%=file.getMno() %>"><%=file.getMpass() %></a></td>
      <td class="fixed-end "><a href="memberdetail.jsp?no=<%=file.getMno() %>"><img class="rounded float-end" style="width: 40px; " src="../images/<%=file.getMiname() %>"></a></td>
    </tr>
<% 	
	}
%>    
    
    
  </tbody>
</table>
</div>

	<br>
	
	
	<div align="center" class="row justify-content-center d-grid gap-2 col-6 mx-auto">
	
	<a class="btn btn-primary" href="join.jsp">회원 가입</a>
	</div>

<%@ include file = "footer.jsp" %>

</body>
</html>





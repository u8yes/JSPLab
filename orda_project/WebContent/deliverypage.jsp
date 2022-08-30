<%@page import="java.time.*"%>
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
    <%
	String mname = (String)session.getAttribute("mname");

	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
%>    
<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">제품 구매</h1>
</div>	
</div>

<%
	String pid = request.getParameter("pid");
	String pname = request.getParameter("pname");
	String pprice = request.getParameter("pprice");
	
	DTOmember member = DAOmember.memberdetail(mname);  
	
%>
<div class="container"  style="max-width: 500px">

<main class="form-signin">


<div class="container">
	
	<strong>배송주소</strong> <br>
	<strong>성명(아이디)</strong> : <%=member.getMname() %><br>
	<strong>주소</strong> : <%=member.getMaddr() %><br>	
	<strong>전화번호</strong> : <%=member.getMtel() %><br>
	<em>주문일 : <%=LocalDate.now() %></em>




<table class="table table-hover">
	<tr>
		<th class="text-center">제품명</th> 
	<th class="text-center">제품가격</th> 
	</tr>
	<tr>
	<td class="text-center"><%=pname %></td>
	<td class="text-center"><%=pprice %>원</td>
</table>


		<%=mname %>님 정말 구매를 하시겠습니까?
		

	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end"></label>
		<div class="col-sm-7 ">
			<a href="productlist.jsp" class="btn btn-secondary" role="button">취소 &raquo;</a>		
			<a href="delivery.jsp?pid=<%=pid %>&pname=<%=pname %>&pprice=<%=pprice %>" class="btn btn-danger" role="button">주문완료 &raquo;</a>		
		</div>	
	</div>
	
		</div>	
	</div>	
	</div>	
	</main>
	</div>
<%@ include file = "../footer.jsp" %>

</body>
</html>
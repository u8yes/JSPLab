<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%
	String mname = (String)session.getAttribute("mname");

	if (mname == null) {
		out.println("<script>alert('로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
	
	boolean login = true;
	
%>    
   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "header.jsp" %>

        <%
        if (login) {
        	out.print(mname + "님 로그인 상태입니다.");
        }else {
        	out.print("방문을 환영합니다. 로그인 하세요.");
        }
        
        %>
        

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">제품 목록</h1>
</div>	
</div>


<%
 

ArrayList<DTOproduct> products = DAOproduct.productList();
%>
<div class="container">
<div class="row" align="center">
<% 
for (DTOproduct product : products) {
%>		
<div class="col-md-4">
	<h3><%=product.getPname() %></h3>
	<p><%=product.getPdesc() %></p>
	<p><%=product.getPprice() %></p>
</div>

<% 	
	}
%>
</div>
</div>




<%@ include file = "footer.jsp" %>
        
</body>
</html>
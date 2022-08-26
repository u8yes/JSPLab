<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송 관리</title>
</head>
<body>
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">배송 관리</h1>
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
ArrayList<DTOdelivery> deliverys = DAOdelivery.deliverylist();

for (DTOdelivery delivery : deliverys) {
%>		

    <tr>
      <th scope="row"><%=delivery.getDid()%></th>
      <td><%=delivery.getDmid() %></td>
      <td><%=delivery.getDpid() %></td>
      <td><%=delivery.getDmaddr() %></td>
      <td><%=delivery.getDmtel() %></td>
      <td><%=delivery.getDpprice() %></td>
      <td><%=delivery.getDdate() %></td>

     
      <td>
      
      <td> <%
		    if(delivery.getDstatus().equals("1")){
		    	out.print("<button onclick='confirm_onClick()'> 입금전 </button>");
		    } else if(delivery.getDstatus().equals("2")){
		    	out.print("[입금완료]");
		    } else if(delivery.getDstatus().equals("3")){
		    	out.print("[배송전]");
		    } else if(delivery.getDstatus().equals("4")){
		    	out.print("[배송중]");
		    } else if(delivery.getDstatus().equals("5")){
		    	out.print("[배송완료]");
		    }
		    %>
		    </td>
		    
	
    </tr>
<% 	
	}
%>    
    
    
  </tbody>
</table>
</div>
	<br>	<br>	<br>
      <script>
				function confirm_onClick() {
					var answer = confirm("상태를 변경하시겠습니까?");
					
				if (answer) {
					location.href = "seilingstatus.jsp";
				} 
				}
			</script>
	
			
<%@ include file = "../footer.jsp" %>

</body>
</html>
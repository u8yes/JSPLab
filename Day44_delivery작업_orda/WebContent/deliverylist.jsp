<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송 관리</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">


<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">배송 관리</h1>
</div>	
</div>
<div class="container w-70 text-center">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">상품명</th>
      <th scope="col">회원번호</th>
      <th scope="col">상품번호</th>
      <th scope="col">주소</th>
      <th scope="col">전화번호</th>
      <th scope="col">가격</th>
      <th scope="col">구매일</th>
      <th scope="col">상태</th>
    </tr>
  </thead>
  <tbody>
  
  <%
ArrayList<DTOdelivery> deliverys = DAOdelivery.deliveryList();

for (DTOdelivery delivery : deliverys) {
%>		

    <tr>
      <th scope="row"><%=delivery.getDid()%></th>
      <td><a href="deliverydetail.jsp?did=<%=delivery.getDid() %>"><%=delivery.getDpname()%></a></td>
      <td><%=delivery.getDmid() %></td>
      <td><%=delivery.getDpid() %></td>
      <td><%=delivery.getDmaddr() %></td>
      <td><%=delivery.getDmtel() %></td>
      <td><%=delivery.getDpprice() %></td>
      <td><%=delivery.getDdate() %></td>

     
     
      
      
      <td> 
      
      <%
	  if(delivery.getDstatus().equals("1")){
		  out.print("<button onclick='confirm_onClick()'> 입금전 </button>");
	  }else if(delivery.getDstatus().equals("2")){
		  
		  %>
		  
		  [<a href="javascript:mClick()">입금완료</a>]
		  		
		  <%
		  
	  /* out.print("[입금완료]"); */
	 
	  }else if(delivery.getDstatus().equals("3")){
 %>
		  
		  [<a href="javascript:dClick()">배송전</a>]
		  		
		  <%

	  }else if(delivery.getDstatus().equals("4")){
 	  out.print("[배송중]");  
	  }else{
 	  out.print("[배송완료]");  
	  }
	  %></td>
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
				
				location.href = "sellingstatus.jsp";
			} 
		}
		
		function mClick(){
			
			
			
			 if (confirm("입금완료되었나요?") == true){ 
				   //true는 확인버튼을 눌렀을 때 코드 작성						  
				   location.href = "sellingstatus.jsp";
				   
				 }else{
				   // false는 취소버튼을 눌렀을 때, 취소됨
				   console.log("취소되었습니다");
				 }
		}
		
		function dClick(){
			
			
			
			 if (confirm("배송을 시작할까요?") == true){ 
				   //true는 확인버튼을 눌렀을 때 코드 작성						  
				   location.href = "sellingstatus.jsp";
				 }else{
				   // false는 취소버튼을 눌렀을 때, 취소됨
				   console.log("취소되었습니다");
				 }
		}
	</script>
	
			
<%@ include file = "../footer.jsp" %>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>  

</body>
</html>
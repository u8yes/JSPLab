<%@page import="java.util.ArrayList"%>
<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@page import="java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<%@ include file="header.jsp" %>


<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		회원 정보
	</h1>
</div>	
</div>

<% 

String mname = (String)session.getAttribute("mname");

DTOmember member = DAOmember.memberDetail(mname);

%>



<div class="container align-items-center" >


<div class="container">
<div class="row" align="center">


<form action="memberinput.jsp" method="post" enctype="multipart/form-data">


	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">회원별명</label>
		<div class="col-sm-5">
			<input name="mname" value="<%=member.getMname() %>" text" class="form-control" placeholder="한글 사용도 가능합니다.">
		</div>
	</div>

	<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-end">패스워드</label>
		<div class="col-sm-5">
			<input name="mpass" value="<%=member.getMpass() %>" type="text" class="form-control" placeholder="암호를 입력하세요">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">전화번호</label>
		<div class="col-sm-5">
			<input name="mtel" value="<%=member.getMtel() %>" type="text" class="form-control" placeholder="전화번호를 입력하세요">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">전자우편</label>
		<div class="col-sm-5">
			<input name="memail" value="<%=member.getMemail() %>" type="text" class="form-control" placeholder="이메일주소를 입력하세요">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">본인성별</label>
		<div class="col-sm-5">
			<div class="form-check form-check-inline">
					<%
					String gender = member.getMgender();
			if ( gender.equals("남성")) {
					%>
			  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio1" value="남성"  checked>
			  <label class="form-check-label" for="inlineRadio1">남성</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio2" value="여성">
			  <label class="form-check-label" for="inlineRadio2">여성</label>
			  <%	} else {%>		
			 <input class="form-check-input" type="radio" name="mgender" id="inlineRadio1" value="남성">
			  <label class="form-check-label" for="inlineRadio1">남성</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio2" value="여성"  checked>
			  <label class="form-check-label" for="inlineRadio2">여성</label>
			<%	} %>		  
			</div>
		</div>
	</div>
	
		<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-end">배송주소</label>
		<div class="col-sm-5">
			<input name="maddr" value="<%=member.getMaddr() %>" type="text" class="form-control" placeholder="배송지를 입력하세요">
		</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2  d-flex justify-content-end">사진등록</label>
	<div class="col-sm-5">
	  <input type="file" name="image1" class="form-control" id="inputGroupFile02">
	 </div>
	</div>
	
	
	<script>
    // Get a reference to our file input
    const fileInput = document.querySelector('input[type="file"]');

    // Create a new File object
    const myFile = new File(['Hello World!'], '<%=member.getMiname() %>', {
        type: 'text/plain',
        lastModified: new Date(),
    });

    // Now let's create a DataTransfer to get a FileList
    const dataTransfer = new DataTransfer();
    dataTransfer.items.add(myFile);
    fileInput.files = dataTransfer.files;
	</script>
	
	
	<div class="container" style="height: 20px;"></div>
	
	<div class="form-group row">
			<label class="col-sm-2"></label>
				<div class="col-sm-5 d-flex justify-content-around">
			<input type="submit" class="btn btn-secondary" value="등록">
			<input type="reset" class="btn btn-dark" value="취소" onclick="reset()">			 
			<input type="button" class="btn btn-danger" value="탈퇴" onClick="confirm_onClick();">
		
		</div>
		
	</div>

</form>


	<script>
	function confirm_onClick() {
		var answer = confirm("정말 탈퇴하시겠습니까?");
			
		if (answer) {
			location.href = "memberout.jsp";
		} else {
			history.back();
		}	
	}
	</script>





</div>

<br><br>
<!-- <footer class="container">
	<p> &copy; Austin Yoon</p>
</footer> -->

<%@ include file="footer.jsp" %>


</body>
</html>
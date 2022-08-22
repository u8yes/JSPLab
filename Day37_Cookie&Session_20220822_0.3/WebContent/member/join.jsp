<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.time.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>




.form-signin {
  max-width: 430px;
  padding: 15px;
}

.form-signin .form-floating:focus-within {
  z-index: 2;
}

.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}



</style>



<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<%@ include file="header.jsp" %>



	
<%! //선언문 사용

	String greeting =  "Welcome to Web Shopping Mall";
	String tagline = "Welcome to Web Market!";
	String signup = "회원 가입";

%>

<!-- 표현문 사용 -->

<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		<%= signup %>
	</h1>
</div>	
</div>

<main class="form-signin w-100 m-auto">
  <form action="memberinput.jsp" method="post" enctype="multipart/form-data">  
  
    <img class="mb-4" src="/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">Please sign up</h1>

	
    <div class="form-floating">
      <input name="mname" type="text"" class="form-control" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">이름</label>
    </div>
    <div class="form-floating">
      <input name="mpass"  type="text" class="form-control" id="floatingInput" placeholder="Password">
      <label for="floatingPassword">비밀번호</label>
    </div>
	<div class="form-floating">
      <input name="mtel"  type="text" class="form-control" id="floatingInput" placeholder="Password">
      <label for="floatingPassword">전화번호</label>
    </div>
	<div class="form-floating">
      <input name="memail"  type="email" class="form-control" id="floatingInput" placeholder="Password">
      <label for="floatingPassword">이메일주소</label>
    </div>
	<div class="form-floating">
      <input name="mgender"  type="text" class="form-control" id="floatingInput" placeholder="">
      <label for="floatingPassword">성별</label>
    </div>
    <div class="form-floating">
      <input name="maddr"  type="text" class="form-control" id="floatingInput" placeholder="Password">
      <label for="floatingPassword">주소</label>
    </div>
    
    
    <div class="form-floating">
	
	  <input type="file" name="image" class="form-control" id="inputGroupFile02">
	 
	</div>
    
    
    
    <button class="w-100 btn btn-lg btn-primary" type="submit">Sign up</button>
    
  </form>
</main>



<%@ include file="footer.jsp" %>

	<!-- <footer class="container">
		<nav class="navbar navbar-dark bg-warning fixed-bottom">
	  		<p>&copy; Yongki Min</p>
		</nav>
		
	</footer> -->

<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
</body>
</html>
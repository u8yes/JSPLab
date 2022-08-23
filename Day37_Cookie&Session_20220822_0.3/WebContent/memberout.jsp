<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본인 확인</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<%@ include file="header.jsp" %>


<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		본인 확인
	</h1>
</div>	
</div>

<div class="container"  style="max-width: 330px">

<main class="form-signin">
  <form action="memberoutcheck.jsp">
  <div class="d-flex justify-content-center">
    <img class="mb-4" src="http://austiny.snu.ac.kr/image/mine.jpg" alt="" width="72" height="57">
        </div>
    
    <div class="form-floating">
      <input name="mpass" type="password" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">비밀번호</label>
    </div>


    <button class="w-100 btn btn-lg btn-primary" type="submit">비밀번호 확인</button>
    
    
    <p class="mt-1 mb-3 text-muted">&copy; 2017–2022</p>
  </form>
</main>


</div>

<br><br>

<%@ include file="footer.jsp" %>

</body>
</html>
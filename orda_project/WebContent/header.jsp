<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

body {
	padding-top: 75px;
}



@font-face {
    font-family: 'TTTogether';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/TTTogetherA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}


</style>
<!-- Custom styles for this template -->
<link href="source/css/TT투게더.ttf" rel="stylesheet">
<link href="source/css/TT투게더.otf" rel="stylesheet">

<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

 
  <nav class="navbar navbar-expand-lg bg-light fixed-top">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#"><img src="source/img/logo.png"></a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">홈</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="Crossfade.jsp">제품</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="boardlist.jsp">게시판</a>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            회원
	          </a>
	          <ul class="dropdown-menu" style=" position: absolute; z-index: 1;">
	            <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
	            <li><a class="dropdown-item" href="logout.jsp">로그아웃</a></li>
	            <li><a class="dropdown-item" href="#">------</a></li>
	            <li><a class="dropdown-item" href="memberinputpage.jsp">회원가입</a></li>
	            <li><a class="dropdown-item" href="members.jsp">회원정보</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">관리자전용</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="members.jsp">회원관리</a></li>
              <li><a class="dropdown-item" href="products.jsp">제품관리</a></li>
              <li><a class="dropdown-item" href="selling.jsp">배송관리</a></li>
              <li><a class="dropdown-item" href="boards.jsp">게시판관리</a></li>

           	</ul>
          	</li> 
          
	        <li class="nav-item">
	          <a class="nav-link" href="kakaomap.jsp">오시는 길</a>
	        </li>
	      </ul>
	      
	
	    </div>
	  <span class="bg-light" style="text-align:right;"></span>
	    
	  </div>
	  
	</nav>
  
  
  

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>  

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
</head>
<body>


	 <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Fifth navbar example">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Welcome</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample05">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">Disabled</a>
          </li>
          
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">회원 관리</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
              <li><a class="dropdown-item" href="logout.jsp">로그아웃</a></li>
              <li><a class="dropdown-item" href="#">------</a></li>
              <li><a class="dropdown-item" href="signupmemberpage.jsp">회원가입</a></li>
              <li><a class="dropdown-item" href="memberoutpage.jsp">회원탈퇴</a></li>
            </ul>
          </li>
          
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">관리자 전용</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="members.jsp">회원관리</a></li>
              <li><a class="dropdown-item" href="products.jsp">제품관리</a></li>
              <li><a class="dropdown-item" href="boards.jsp">게사판관리</a></li>
              <li><a class="dropdown-item" href="etcs.jsp">기타</a></li>
            </ul>
          </li>
          
        </ul>
        <form role="search">
          <input class="form-control" type="search" placeholder="Search" aria-label="Search">
        </form>
      </div>
    </div>
  </nav>
</body>
</html>
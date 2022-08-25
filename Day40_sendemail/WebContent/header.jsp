<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">


  <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Fifth navbar example">
    <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="http://austiny.snu.ac.kr/image/mine.jpg" alt="" width="30" height="24" class="d-inline-block align-text-top">
      WebMarket
    </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample05">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="welcome.jsp">홈</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="boardlist.jsp">게시판</a>
          </li>
          
<!--           <li class="nav-item">
            <a class="nav-link disabled">Disabled</a>
          </li> -->
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">제품</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="productlist.jsp">제품목록</a></li>
              <li><a class="dropdown-item" href="cart.jsp">장바구니</a></li>
              <li><a class="dropdown-item" href="#">------</a></li>
              <li><a class="dropdown-item" href="buyinglist.jsp">구매내역</a></li>
              <li><a class="dropdown-item" href="delivery.jsp">배송확인</a></li>
            </ul>
          </li>          
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">회원</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
              <li><a class="dropdown-item" href="logout.jsp">로그아웃</a></li>
              <li><a class="dropdown-item" href="#">------</a></li>
              <li><a class="dropdown-item" href="memberinputpage.jsp">회원가입</a></li>
              <li><a class="dropdown-item" href="membereditpage.jsp">회원정보</a></li>
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
          
        </ul>
<!--         <form role="search">
          <input class="form-control" type="search" placeholder="Search" aria-label="Search">
        </form> -->

 <%
	String mname = (String)session.getAttribute("mname");
	String status = "";
	if (mname == null) {
		status = "로그인 하세요";
	} else {
		status = mname + " 님 방문을 환영합니다.";
	}
	
	boolean login = true;
 %>
 	
    <span class="bg-light"><%=status%></span>
        
      </div>
    </div>
  </nav>


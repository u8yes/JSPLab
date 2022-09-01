<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>





<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title></title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/carousel/">

    

    

<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      
      a:link {	/* 방문하기 전의 링크 */
		
	
	}
	
	a:visited {	/* 방문한 링크 */
	
	
	}
	
	a:hover {	/* 링크에 마우스 포인터를 올려 놓았을 때 */
	
	
	}
	
	a:active {	/* 링크를 마우스로 클릭한 순간 */
	
	
	}
      
    </style>

    
    <!-- Custom styles for this template -->
    <link href="source/css/carousel.css" rel="stylesheet">
  </head>
  <body>
  <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  
 


  
  
<%@ include file="header.jsp" %>  
  

  
  
  

<main>

  <div id="myCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
    
    <div class="carousel-inner">
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><image href="source/img/totalSet.png" width="100%" height="100%" ></svg>
      	<div class="container">
          <div class="carousel-caption">
          <strong style="color:black; size: 50px;">사랑(18종), 창의(20종), 논리(18종)등 총 3단계로 구성</strong>
          <p><a class="btn btn-lg btn-primary" href="#">오르다</a></p>
          </div>
        </div>
      </div>
      
      
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><image href="source/img/GabeGuide.png" width="100%" height="100%" ></svg>

        <div class="container">
          <div class="carousel-caption">
            <strong style="color:black; size: 50px;">아이의 잠재능력을 일깨워주는 창의력 교육</strong>
            <p><a class="btn btn-lg btn-primary" href="#">자석가베</a></p>
          </div>
        </div>
      </div>
      
      
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><image href="source/img/papers.gif" width="100%" height="100%" ></svg>

        <div class="container">
          <div class="carousel-caption ">
            <strong style="color:black; size: 50px;">월 1회 게임활동 포함</strong>
            <p><a class="btn btn-lg btn-primary" href="#">활동지</a></p>
          </div>
        </div>
      </div>
      
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon bg-warning" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon bg-warning" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>


  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><image href="source/img/kyogoo1.gif" width="100%" height="100%" ></svg>
		
        <h2 class="fw-normal">교수자료</h2>
        <p>교육기관에서 게임식 학습법을 가능하게 해주는 교수매체</p>
        <p><a class="btn btn-secondary" href="kyosoo.jsp">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><image href="source/img/kyosu1.gif" width="100%" height="100%" ></svg>

        <h2 class="fw-normal">오르다 교구세트</h2>
		<p>교육기관 수업에 적합한 교구 17종을 엄선한 교육기관 전용 교구세트</p>        
		<p><a class="btn btn-secondary" href="kyogoo.jsp">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><image href="source/img/papers.gif" width="100%" height="100%" ></svg>

        <h2 class="fw-normal">활동지</h2>
        <p>게임판과 카드, 주사위, 게임말 등을 손쉽게 만들어 재미있게 수학개념을 인지하도록 구성</p>
        <p><a class="btn btn-secondary" href="papers.jsp">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->
<%
 

ArrayList<DTOproduct> products = DAOproduct.productList();
%>

    <hr class="featurette-divider">

    <div class="row featurette">
    <% 
		for (DTOproduct product : products) {
	%>	
      <div class="col-md-7">
        <br><br><h2 class="featurette-heading fw-normal lh-1"><a href="productdetail.jsp?pid=<%=product.getPid() %>"><%=product.getPname() %></a></h2>
        <br><p class="lead"><%=product.getPdesc() %></p>
		<p><%=product.getPprice() %></p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false" ><image href="source/img/<%=product.getPfilename1() %>" width="100%" height="100%" ></svg>

      </div>
      <hr class="featurette-divider">
    <% 	
		}
	%>
	
    </div>

    

   
    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->


 
</main>








<%@ include file="footer.jsp" %>

<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

  
  
  

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>  
    
  </body>
</html>

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
    <title>Heroes · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/heroes/">

    

    


    <!-- Favicons -->

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
    </style>

    
    <!-- Custom styles for this template -->
    <link href="heroes.css" rel="stylesheet">
  </head>
  <body>

<%@ include file = "header.jsp" %>

	<main>
  <h1 class="visually-hidden"></h1>

  <div class="px-2 py-5 my-5 text-center">
    <h1 class="display-3 fw-bold">활동지</h1>
    <div class="col-lg-6 mx-auto">
      <ul class="lead " style="list-style: none;">
      <li><strong>월 1회 게임활동 포함</strong></li>
	  <li>게임판과 카드, 주사위, 게임말 등을 손쉽게 만들어 재미있게 수학개념을 인지하도록 구성</li>

      </ul>
      <img class="d-block mx-auto mb-2" src="source/img/papers.gif" alt="" width="60%" height="60%">
      <table class="table table-success table-striped-columns">

      <thead>
      <tr>
      <th scope="col">단계</th>
      <th scope="col">Step1</th>
      <th scope="col">Step2</th>
      <th scope="col">Step3</th>
      </tr>
      </thead>
      
      <tbody class="table-group-divider">
	  <tr>	
      <th scope="row">대상연령</th>
      <td>5세</td>
      <td>6세</td>
      <td>7세</td>
      
      </tr>
      		
      <tr>	
      <th scope="row">교육기간</th>
      <td>12개월</td>
      <td>12개월</td>
      <td>12개월</td>
      </tr>
      
      <tr>	
      <th scope="row">교육기간</th>
      <td>12개월</td>
      <td>12개월</td>
      <td>12개월</td>
      </tr>
      		
      <tr>	
      <th scope="row">수업차시</th>
      <td>48차시</td>
      <td>48차시</td>
      <td>48차시</td>
      </tr>
      
      		
      <tr>	
      <th scope="row">수업시간</th>
      <td>주1회 50분</td>
      <td>주1회 50분</td>
      <td>주1회 50분</td>
      </tr>
      
      </tbody>
      </table>
      
    </div>
  </div>

<!-- 버튼 -->  
  
	<div class="row text-center">
      <div class="col-lg-4">
        
      <p><a class="btn btn-secondary" href="productlist.jsp">&laquo; 뒤로 가기</a></p>
    </div>

</main>

<%@ include file = "footer.jsp" %>



 </body>
</html>

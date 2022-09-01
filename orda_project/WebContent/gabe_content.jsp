<%@page import="java.util.ArrayList"%>
<%@page import="db.*"%>

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

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/jumbotron/">

    

    

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
    </style>

    
  </head>
  <body>
    

<%@ include file="header.jsp" %>
    
<main>
  <div class="container py-4">
    

    <div class="p-5 mb-4 bg-light rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">아이의 잠재능력을 일깨워주는 창의력 교육</h1>
        <p class="col-md-8 fs-4">정원에 뿌려진 씨앗과 같은 아이의 무한한 잠재능력을 가베놀이교육으로 일깨워줍니다. 자석가베는 Froebel이 수학적 구조에 의해 개발한 교육용 놀잇감 가베에 자석을 부착한 신개념의 블록으로 다양한 방식의 창작활동이 아동 주도적으로 이루어지며, 구체물을 통한 경험으로 수학의 기본개념을 자연스럽게 이해해나가게 됩니다.</p>
      </div>
    </div>

    <div class="row align-items-md-stretch">
      <div class="col-md-6">
        <div class="h-100 p-5 text-bg-dark rounded-3">
          <h2>1. 1837년 Froebel이 개발한 가베 블록에 자석 부착</h2>
          <p>프뢰벨 교육이념을 유지하면서 가베블록의 새로운 패러다임을 형성</p>
        </div>
      </div>
      <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
          <h2>2. 수학적구조에 의해 입체·면·선·점의 체계로 구성</h2>
          <p>점의 이념세계에서 시작하여 1차원, 2차원, 3차원의 구성물로 발전</p>
        </div>
      </div>
      
    </div>
    
    
    <div class="row align-items-md-stretch">
      <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
          <h2>3. 자석접합장치에 의해 자석의 극작용 극복</h2>
          <p>세계 최초로 발명한 <회전형자석접합장치> 특허획득(특허 제0457305)</p>
        </div>
      </div>
      <div class="col-md-6">
        <div class="h-100 p-5 text-bg-dark rounded-3">
          <h2>4. 과학적으로 설계된 자석의 위치</h2>
          <p>서로 다른 모양의 블록간 연결이 용이</p>
        </div>
      </div>
    </div>
    
    <div class="row align-items-md-stretch">
      <div class="col-md-6">
        <div class="h-100 p-5 text-bg-dark rounded-3">
          <h2>5. CE마크 인증</h2>
          <p>자석가베의 안전성, 무독성, 무해성 인증</p>
        </div>
      </div>
      <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
          <h2>6. 블록 연결의 이중음 효과</h2>
          <p>블록 연결시 자석이 돌며 붙는 소리는 아동의 활동욕구를 자극함</p>
        </div>
      </div>
      
    </div>
    
    <div class="section dotLine text-center">
		<div class="flowList">
			<table class="table table-borderless">
			<tr>
				<th><img class="" src="source/img/ride1.gif" alt="M GABE" /></th>
				<th><img src="source/img/curve1.gif" alt="활동가베 A" /></th>
				<th><img class="" src="source/img/art.gif" alt="활동가베 B" /></th>
			</tr>
			<tr>
				<td><img class="" src="source/img/mobile.gif" alt="활동가베 B" /></td>
				<td><img class="" src="source/img/bicycle1.gif" alt="활동가베 B" /></td>
				<td><img class="" src="source/img/helicopter1.gif" alt="활동가베 B" /></td>
			</tr>
			</table>
		</div>
		
		
	</div>
   
    
    <br><br>
    <div class="section dotLine text-center">
		<div class="flowList">
			<table class="table table-borderless">
			<tr>
				<th><img class="rounded float-start" src="source/img/Mgabe_mini.gif" alt="M GABE" /></th>
				<th><img src="source/img/gabeA_mini.gif" alt="활동가베 A" /></th>
				<th><img class="rounded float-end" src="source/img/gabeB_mini.gif" alt="활동가베 B" /></th>
			</tr>
			</table>
		</div>
		
		<table class="table table-dark table-sm yellowTable" summary="자석가베 로얄세트, 자석가베 A세트, 자석가베 b세트">
		</thead>
		<tbody>
		<tr>
			<th scope="row" rowspan="2" class="thead"><img src="source/img/set1.gif" alt="" /></th>
			<th scope="col">자석가베 로얄세트</th>
			<th scope="col">자석가베 A세트</th>
			<th scope="col">자석가베 B세트</th>
		</tr>
		<tr>
			<td>활동가베 A.B + M가베</td>
			<td>활동가베 A +  M가베</td>
			<td>활동가베 B +  M가베</td>
		</tr>
		</tbody>
		</table>
	</div>
			
	<div class="p-5 mb-4 bg-light rounded-3">
      <div class="container-fluid py-5 row d-flex justify-content-center">
      	<img src="source/img/active1.gif" alt="M GABE" />
      </div>
      
      <div class="container-fluid py-5 row">
        <h1 class="display-5 fw-bold col">활동판</h1>
        <p class="col-md-8 fs-4 col">새로워진 활동가베에는 평면 및 입체도형의 구성 활동을 할 수 있는 스틸 활동판이 원목패키지와 일체형으로 내장되어 있어 보관과 활용성이 더욱 뛰어 납니다.</p>
      </div>
    </div>		

    		<a href="productlist.jsp" class="btn btn-outline-info" role="button" data-bs-toggle="button" aria-pressed="true">&laquo; 뒤로 가기</a>
    		
    		
  </div>
</main>



<%@ include file="footer.jsp" %>
   
  </body>
</html>

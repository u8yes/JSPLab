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
    <h1 class="display-3 fw-bold">교수 자료</h1>
    <div class="col-lg-6 mx-auto">
      <ul class="lead " style="list-style: none;">
      <li >각 교구의 교육목표 및 게임방법을 효과적으로 전달할 수 있는 매체로 구성</li>
      <li>교구별 유아의 흥미 및 인지발달 수준을 고려한 풍부한 구성</li>
      <li>다양한 형태의 입체적 수업으로 유아의 자발적 흥미 및 적극적 활동 유발</li>
      </ul>
      <img class="d-block mx-auto mb-2" src="source/img/kyosu1.gif" alt="" width="60%" height="60%">
      <h3>※ 구성내용 15Set</h3>
      <p>거리좁혀맞추기/구슬감추기/기하도미노/덧셈주사위/메모리퍼즐/분수놀이/숫자동산-홀수짝수, 크다작다, 더하기 빼기, 숫자벌집/삐에로와 색동옷/ 세그림맞추기/얼굴맞추기빙고/초∙중급지능계발블록/ 카멜레온/패스트카드/해피넘버/ 해피매트릭스</p>
      
      <p style="color:orange;">사용하기 편리하게 게임판, 카드 등은 더욱 가벼워지고 자력은 더 강화되었습니다.</p>
      
    </div>
  </div>

  <div class="b-example-divider"></div>

  <div class="px-4 pt-5 my-5 text-center border-bottom">
  
    <h1 class="display-4 fw-bold">마그네틱 화이트보드</h1>
    <img src="source/img/whiteboard1.gif" class="img-fluid border rounded-3 shadow-lg mb-4" alt="Example image" width="700" height="500" loading="lazy">
    
    <div class="col-lg-6 mx-auto">
    
      <p class="lead mb-4">아이들 눈높이에 맞게 높이 조절이 가능합니다.</p>
      
    </div>
    <div class="overflow-hidden" style="max-height: 30vh;">
      <div class="container px-5">
      </div>
    </div>
  </div>

  <div class="b-example-divider"></div>

  <div class="container col-xxl-8 px-4 py-5">
    <div class="row flex-lg-row-reverse align-items-center g-5 py-5">
      <div class="col-10 col-sm-8 col-lg-6">
        <img src="source/img/cabinet1.gif" class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy">
      </div>
      <div class="col-lg-6">
        <h1 class="display-5 fw-bold lh-1 mb-3">전용보관함</h1>
        <p class="lead">적은 공간을 효과적으로 활용하여 교수자료를 체계적으로 보관할 수 있으며, 분실을 예방할 수 있습니다.</p>
        
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

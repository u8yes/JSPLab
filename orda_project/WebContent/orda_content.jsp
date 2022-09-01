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

    
  </head>
  <body>
    
<%@ include file="header.jsp" %>
    
<main>
  <div class="container py-4">
    

    <div class="p-5 mb-4 bg-light rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">유태인 영재교육을 기반으로 한 게임식 교육</h1>
        <p class="col-md-8 fs-4">오르다 교구는 이스라엘을 대표하는 교육용 게임업체 오르다社에서 개발된 교육용 게임으로 와이즈만 과학 연구소, 대학의 교육학자, 철학자, 미술학자, 심리학자를 비롯하여 다양한 분야의 전문가들이 20년간 연구한 노력의 결과물로 만들어진 교구입니다.</p>
      </div>
    </div>

    <div class="row align-items-md-stretch">
      <div class="col-md-6">
        <div class="h-100 p-5 text-bg-dark rounded-3">
          <h2>1. 지적능력의 계발 및 평생 습관화</h2>
          <p>오르다는 한번 게임에 몰두하게 되면 쉽게 놓아 버릴 수 없을 만큼 재미있고 도전적인(Education + Entertainment)기능을 갖추고 있습니다. 오르다의 게임식 학습법은 아동이 자발적인 흥미와 즐거움을 통해 논리·수학적 사고력 및 창의적인 문제해결력을 키우며, 이러한 사고를 평생 습관화하는데 초점을 두고 있습니다.</p>
        </div>
      </div>
      <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
          <h2>2. 인생의 간접 경험화</h2>
          <p>오르다 게임은 현실의 이미지와 경험들을 반영하는 축소된 대결상황이나 함께 협동해야 하는 문제해결 상황들이 시뮬레이션 되어 있습니다. 이러한 게임을 통해 얻은 창의적인 문제해결력은 아동이 겪게 될 실제상황을 준비하게 하고 규칙성을 지키는 습관과 타인을 배려하는 사랑이 길러지게 됩니다.</p>
        </div>
      </div>
    </div>
    
    
    <div class="row align-items-md-stretch">
      <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
          <h2>3. 지적능력의 계발 및 평생 습관화</h2>
          <p>각 오르다 게임은 개인 발달단계에 따라 단계별로 사용할 수 있도록 고안되어 있습니다.</p>
        </div>
      </div>
      <div class="col-md-6">
        <div class="h-100 p-5 text-bg-dark rounded-3">
          <h2>4. 유태인의 교육 철학법</h2>
          <p>오르다는 대화와 토론을 중시하는 헤브루타식 교육철학을 기반으로 하여 유태인 전통의</p>
        </div>
      </div>
    </div>
    <br><br>
    <div class="text-center ">
				<table cellspacing="0" class="table table-dark table-sm" summary="세트/영역, 수의 연산, 도형, 확률과 통계, 규칙성, 측정">
				<thead>
				<tr>
					<th scope="col" class="col2">세트/영역</th>
					<th scope="col" class="col2">수의 연산</th>
					<th scope="col" class="col2">도형</th>
					<th scope="col" class="col2">확률과 통계</th>
					<th scope="col" class="col2">규칙성</th>
					<th scope="col" class="col2">측정</th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<th scope="row">사랑</th>
					<td class="desc">출발1,2,3</td>
					<td class="desc">맞춰보세요<br />
					색깔<br />
					아가블록<br />
					입체도형<br />
					기하도미노<br />
					메모리퍼즐<br />
					얼굴맞추기빙고<br />
					초급지능계발블록</td>
					<td class="desc">곰돌이 퍼즐<br />
					끝동물이어가기<br />
					탑과 고리<br />
					세그림맞추기<br />
					해피매트릭스</td>
					<td class="desc">탑과 고리</td>
					<td class="desc">탑과 고리</td>
				</tr>
				<tr>
					<th scope="row">창의</th>
					<td class="desc">덧셈주사위<br />
					숫자동산<br />
					분수놀이<br />
					숫자10만들기</td>
					<td class="desc">다양한 선의 세계<br />
					삐에로와 색동옷<br />
					중급지능계발블록</td>
					<td class="desc">패스트카드<br />
					피콜로<br />
					거리좁혀맞추기</td>
					<td class="desc">&nbsp;</td>
					<td class="desc">&nbsp;</td>
				</tr>
				<tr>
					<th scope="row">논리</th>
					<td class="desc">기초등식<br />
					넘버링<br />
					상급분수놀이<br />
					숫자나라공룡<br />
					십진도미노<br />
					연산놀이<br />
					행렬게임</td>
					<td class="desc">상급지능계발블록<br />
					스퀘어스피릿<br />
					절구장기</td>
					<td class="desc">&nbsp;</td>
					<td class="desc">브레인트위스터</td>
					<td class="desc">&nbsp;</td>
				</tr>
				</tbody>
				</table>
			</div>

    		<a href="productlist.jsp" class="btn btn-outline-info" role="button" data-bs-toggle="button" aria-pressed="true">&laquo; 뒤로 가기</a>
    		
    		
  </div>
</main>



<%@ include file="footer.jsp" %>
    
  </body>
</html>

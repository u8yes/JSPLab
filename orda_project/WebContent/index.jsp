<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Fullscreen HTML5 Page Background Video</title>




<style>
body {
  margin: 0;
  background: #000; 
}
video { 
    position: fixed;
    top: 50%;
    left: 50%;
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -100;
    transform: translateX(-50%) translateY(-50%);
 background: url('source/img/sg1.jpg') no-repeat;
  background-size: cover;
  transition: 1s opacity;
}
.stopfade { 
   opacity: .5;
}

#polina { 
  font-family: Agenda-Light, Agenda Light, Agenda, Arial Narrow, sans-serif;
  font-weight:100; 
  background: rgba(0,0,0,0.3);
  color: white;
  padding: 2rem;
  width: 33%;
  margin:2rem;
  float: right;
  font-size: 1.2rem;
}
h1 {
  font-size: 3rem;
  text-transform: uppercase;
  margin-top: 0;
  letter-spacing: .3rem;
}
#polina button { 
  display: block;
  width: 80%;
  padding: .4rem;
  border: none; 
  margin: 1rem auto; 
  font-size: 1.3rem;
  background: rgba(255,255,255,0.23);
  color: #fff;
  border-radius: 3px; 
  cursor: pointer;
  transition: .3s background;
}
#polina button:hover { 
   background: rgba(0,0,0,0.5);
}

a {
  display: inline-block;
  color: #fff;
  text-decoration: none;
  background:rgba(0,0,0,0.5);
  padding: .5rem;
  transition: .6s background; 
}
a:hover{
  background:rgba(0,0,0,0.9);
}
@media screen and (max-width: 500px) { 
  div{width:70%;} 
}
@media screen and (max-device-width: 800px) {
  html { background: url(source/img/sg1.jpg) #000 no-repeat center center fixed; }
  #bgvid { display: none; }
}

</style>
</head>
<body>
<!-- partial:index.partial.html -->
<video poster="source/img/sg1.jpg" id="bgvid" playsinline autoplay muted loop>
  <!-- 
- Video needs to be muted, since Chrome 66+ will not autoplay video with sound.
WCAG general accessibility recommendation is that media such as background video play through only once. Loop turned on for the purposes of illustration; if removed, the end of the video will fade in the same way created by pressing the "Pause" button  -->
<source src="source/vid/edu1.mp4" >

</video>

<div id="polina">
<h1><a class="nav-link fw-bold py-1 px-0 active" aria-current="page" href="Crossfade.jsp">HOME</a></h1>

<p>히브리어로 “지혜의 빛”(אור חוכמה)이라는 뜻을 가지고 있는 오르다(ORDA)의 게임들은 그 의미 그대로 현명하게 세상을 살아가는 지혜를 배우는 한편, 생각하면서 살아가는 습관이 몸에 배이도록 고안되었습니다.</p>
<em>‘물고기를 잡아주면 하루를 살 수 있지만 물고기를 잡을 수 있는 방법을 가르치면 일생을 살 수 있다.’오르다와 함께 하면서 머리에는 지혜를 가슴에는 사랑을 키우며 ‘물고기를 잡을 수 있는 방법’을 터득해나갑니다.</em>

<button>Pause</button>
</div>
<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="source/index.js"></script>

</body>
</html>

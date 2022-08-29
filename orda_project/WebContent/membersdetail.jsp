<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
<%@ include file = "../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">회원 정보</h1>
</div>	
</div>

<%
	String mname = request.getParameter("mname");

	DTOmember member = DAOmember.memberdetail(mname);
	
%>


<div class="container">
<div class="card">
  <img src="images/<%=member.getMiname() %>" width=300px class="card-img-top" alt="...">

  <div class="card-body">
    <h5 class="card-title"><%=member.getMname() %></h5>
    <p class="card-text">전화번호 : <%=member.getMtel() %></p>
    <p class="card-text">메일주소 : <%=member.getMemail() %></p>
      <p class="card-text">성별 : <%=member.getMgender() %></p>
      <p class="card-text">주소 : <%=member.getMaddr() %></p>
      <p class="card-text">등급 : <%=member.getMlevel() %></p>
      <p class="card-text">가입일 : <%=member.getMdate() %></p>
 
  </div>
</div>
</div>

<div class="container">
<div id="map" style="height:350px;"></div>
</div>

<div class="container">
<div id="roadview" style="height:350px;"></div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eb87d531ac2ccb7011e1e6d0d8a328e3&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  
   
var map = new kakao.maps.Map(mapContainer, mapOption); 
var geocoder = new kakao.maps.services.Geocoder();


var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체


// 주소로 좌표를 검색합니다
geocoder.addressSearch('<%=member.getMaddr() %>', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;"><%=member.getMname() %></div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        
        roadviewClient.getNearestPanoId(coords, 50, function(panoId) {
            roadview.setPanoId(panoId, coords); 
        });
        
    } 
    
});   





   
</script>



 <div class="d-grid gap-2 col-6 mx-auto">
<a href="members.jsp" class="btn btn-secondary" role="button">회원목록</a>
 </div> 
 
 
	<br>	<br>	<br>

<%@ include file = "../footer.jsp" %>

</body>
</html>
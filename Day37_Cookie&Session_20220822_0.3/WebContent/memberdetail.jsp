<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "db.*" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "header.jsp" %>


<%

	String mname = request.getParameter("mname");
	DTOmember member = DAOmember.memberDetail(mname);
	
%>



<table class="table">
  <thead>
    <tr>
    
      <th><%=member.getMname()%></th>
      
    </tr>
    
    
  </thead>
  <tbody class="table-group-divider">
    
    <tr>
      <td>전화번호</td>
      <td><%=member.getMtel()%></td>
      
    </tr>
   	<tr>
      <td>메일주소</td>
      <td><%=member.getMemail()%></td>
      
    </tr>
    <tr>
      <td>성별</td>
      <td><%=member.getMgender()%></td>
      
    </tr>
    <tr>
      <td>주소</td>
      <td><%=member.getMaddr()%></td>
      
      </tr>
    <tr>
      <td>등급</td>
      <td><%=member.getMlevel()%></td>
      
    </tr>
    <tr>
      <td>가입일</td>
      <td><%=member.getMdate()%></td>
      
    </tr>
    
    <%
	

	
	
	String img =  member.getMiname();
	String imgstr = "";
	if (img != null) {
		imgstr = "../images/" + img;
	}
%>

	
    <tr>
    <td>프로필 사진</td>
    <td><img src="<%=imgstr%>"></td>
      
      
    </tr>
  </tbody>
</table>


<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eb87d531ac2ccb7011e1e6d0d8a328e3&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('서울 동작구 남부순환로 269길 167', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;"></div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        
     // 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
        roadviewClient.getNearestPanoId(coords, 50, function(panoId) {
            roadview.setPanoId(panoId, coords); //panoId와 중심좌표를 통해 로드뷰 실행
        });
    } 
});    
</script>

<!-- 로드뷰를 표시할 div 입니다 -->
<div id="roadview" style="width:100%;height:300px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eb87d531ac2ccb7011e1e6d0d8a328e3"></script>
<script>
var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

var position = new kakao.maps.LatLng(33.450701, 126.570667);



//
var geocoder = new kakao.maps.services.Geocoder();
geocoder.addressSearch('서울 동작구 남부순환로 269길 167', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;"><img src="../images/<%=imgstr%>"></div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        
     
    } 
}); 
</script>


	
<br><br><br>	
	
<%@ include file = "footer.jsp" %>
</body>
</html>
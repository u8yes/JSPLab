<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<%@ include file="header.jsp" %>


<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		회원 등록
	</h1>
</div>	
</div>

<div class="container align-items-center" >

<form action="memberinput.jsp" method="post" enctype="multipart/form-data">


	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">아이디</label>
		<div class="col-sm-5">
			<input name="mname" type="text" class="form-control" placeholder="한글 사용도 가능합니다.">
		</div>
	</div>

	<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-end">패스워드</label>
		<div class="col-sm-5">
			<input name="mpass" type="password" class="form-control" placeholder="암호를 입력하세요">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">전화번호</label>
		<div class="col-sm-5">
			<input name="mtel" type="text" class="form-control" placeholder="전화번호를 입력하세요">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">전자우편</label>
		<div class="col-sm-5">
			<input name="memail" type="text" class="form-control" placeholder="이메일주소를 입력하세요">
		</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2 d-flex justify-content-end">본인성별</label>
		<div class="col-sm-5">
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio1" value="남성">
			  <label class="form-check-label" for="inlineRadio1">남성</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio2" value="여성">
			  <label class="form-check-label" for="inlineRadio2">여성</label>
		</div>

	</div>
	</div>
	
	<!-- 우편번호 API -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	         
	                document.getElementById("sample4_engAddress").value = data.addressEnglish;
	                       
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }
	
	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	    }
	</script>
	
	
	
	<div class="form-group row ">
		<label class="col-sm-2  d-flex justify-content-end">배송주소</label>
		<div class="col-sm-5">
			<input text" id="sample4_postcode" placeholder="우편번호">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<input name="maddr" class="form-control" type="text" id="sample4_roadAddress" placeholder="도로명주소  + 상세주소" size="60" >
			<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소"  size="60">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="hidden" id="sample4_extraAddress" placeholder="참고항목"  size="60">
			<input type="hidden" id="sample4_engAddress" placeholder="영문주소"  size="60" >
			
			<%
			String  addr1 = request.getParameter("postAddr1");
			String  addr2 = request.getParameter("postAddr2");
			String  addr3 = request.getParameter("postAddr3");
			String  maddr = addr1+" "+addr2+" "+addr3;
			%>
		</div>
	</div>
	
	<div class="form-group row">
	<label class="col-sm-2  d-flex justify-content-end">사진등록</label>
	<div class="col-sm-5">
	  <input type="file" name="image1" class="form-control" id="inputGroupFile02">
	 </div>
	</div>
	
	
	
	<div class="container" style="height: 20px;"></div>
	
	<div class="form-group row">
			<label class="col-sm-2"></label>
				<div class="col-sm-5 d-flex justify-content-around">
			<input type="submit" class="btn btn-secondary" value="등록">
			<input type="reset" class="btn btn-dark" value="취소" onclick="reset()">			 
		
		</div>
		
	</div>

</form>
</div>

<br><br>


<%@ include file="footer.jsp" %>


</body>
</html>
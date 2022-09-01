<%@page import="db.DAOmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String mname = request.getParameter("mname");
    String mpass = request.getParameter("mpass");
    
    int result = DAOmember.login(mname, mpass);

	//로그인시 3가지 경우의 수가 발생된다. 
	//1로그인 성공(아이디/비번 일치) -> 로그인 승인 메인으로 보내기
	//2로그인 실패(아이디는일치/비번 불일치) -> 다시 로그인으로 보내기
	//3로그인 실패(아이디가 없는 경우) -> 회원가입으로 보내기

	if (result == 1) {
		
		//로그인 성공 후 세션넣기
		session.setAttribute("mname", mname);
		
		out.println("<script>alert('로그인 성공, 제품목록으로 이동');</script>");
		out.println("<script>location.href='Crossfade.jsp';</script>");
	}else if (result == 2) {
		out.println("<script>alert('비밀번호 불일치, 재로그인');</script>");
		out.println("<script>location.href='login.jsp';</script>");
	}else {
		out.println("<script>alert('회원 가입이 필요합니다.');</script>");
		out.println("<script>location.href='memberinputpage.jsp';</script>");
	}
		
%>




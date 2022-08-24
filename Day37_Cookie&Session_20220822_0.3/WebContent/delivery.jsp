<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%
	String dpid = null;
	String dmid = null;
	String dmaddr = null;
	String dmtel = null;
	String dpname = null;
	String dpprice = null;
	

	// 구매 정보 넘겨 받기

	String pid = request.getParameter("pid");
	String panme = request.getParameter("panme");
	String pprice = request.getParameter("pprice");

	// 고객 정보 조회
	
	String mname = (String)session.getAttribute("mname");
	DTOmember member = DAOmember.memberDetail(mname);	
	 
	String mid = member.getMno();
	String mtel = member.getMtel();
	String memail = member.getMemail();
	String maddr = member.getMaddr();
	
	// DB 넣기
	
	int result = DAOdelivery.deliveryinsert(dpid, dmid, dmaddr, dmtel, dpname, dpprice);
	
	

%>
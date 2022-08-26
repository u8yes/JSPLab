<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String status = request.getParameter("did");

	DAOdelivery.statusup("did");


%>

<%@page import="smtp.*"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	


	Map<String, String> emailInfo = new HashMap<String, String>();

	emailInfo.put("from", request.getParameter("from"));
	emailInfo.put("to", request.getParameter("to"));
	emailInfo.put("subject", request.getParameter("subject"));
		
	String content = request.getParameter("content");
	String format = request.getParameter("format");

	if(format.equals("text")){
		// 일반 그냥 글자로 넘어오면 그대로 저장한다. 
		emailInfo.put("content", content);
		emailInfo.put("format", "text/plain:charset=UTF-8");
		
	}else if(format.equals("html")){
		// HTML 형식을 선택했다면 html로 변환하여 저장
		content = content.replace("\r\n", "<br/>"); // 줄바꿈을 html형식으로 변경.
		
		String htmlContent = "";
		
		try{
		
		
		// HTML 템플릿에 별도로 만들어 함께 붙여서 전송한다.
		String templatePath = application.getRealPath("/d0825/MailForm.html");
		BufferedReader br = new BufferedReader(new FileReader(templatePath));
		
		
		// 한줄씩 읽어서 변수에 저장
		String oneLine;
		while ((oneLine = br.readLine()) != null){	// 더이상 줄이 없을 때까지 한줄씩 읽기
			htmlContent += oneLine + "\n";
			
		}
		
		br.close();
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		// 읽어온 템플릿에 내용만 넣기
		htmlContent = htmlContent.replace("__CONTENT__", content);
		
		// html 템플릿에 넣어서 변경한 내용을 전송
		
		emailInfo.put("content", htmlContent);
		emailInfo.put("content", "text/html:charset=UTF-8");
		
		
		
	}	
	
NaverSMTP smtpServer = new NaverSMTP();
smtpServer.emailSending(emailInfo);
		
		
		
%>
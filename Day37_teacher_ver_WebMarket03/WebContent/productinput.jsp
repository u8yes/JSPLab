<%@page import="db.*"%>
<%@page import="util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.apache.commons.fileupload.*" %>    
<%@ page import="org.apache.commons.fileupload.disk.*" %>    
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>    

<%

	String pid = null;
	String pname = null;
	String pdesc = null;
	String pprice = null;	
	
	String pimagename1 = null;
	byte[] pimagefile1 = null;
	String pimagename2 = null;
	byte[] pimagefile2 = null;
	String pimagename3 = null;
	byte[] pimagefile3 = null;

	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

	List items = sfu.parseRequest(request);

	Iterator iter = items.iterator();
	
	while(iter.hasNext()){
		FileItem item = (FileItem) iter.next();
		String name = item.getFieldName(); //키값 즉 이름을 추출
		
		if(item.isFormField()) {
			//제목,내용 등 사진을 제외한 나머지 항목들을 차례대로 추출
			String value = item.getString("utf-8");
			if (name.equals("pid")) pid = value;
			else if (name.equals("pname")) pname = value;
			else if (name.equals("pdesc")) pdesc = value;
			else if (name.equals("pprice")) pprice = value;

		} else {
			//사진에 관련된 즉 사진이름과 사진파일 추출
			if (name.equals("image1")) {
				pimagename1 = item.getName();
				pimagefile1 = item.get();
					
					String root = application.getRealPath(java.io.File.separator);
					FileUtil.saveImage(root,pimagename1,pimagefile1);			
			} else if (name.equals("image2")) {
				pimagename2 = item.getName();
				pimagefile2 = item.get();
					
					String root = application.getRealPath(java.io.File.separator);
					FileUtil.saveImage(root,pimagename2,pimagefile2);					
				
			} else if (name.equals("image3")) {
				pimagename3 = item.getName();
				pimagefile3 = item.get();
					
					String root = application.getRealPath(java.io.File.separator);
					FileUtil.saveImage(root,pimagename2,pimagefile2);					
				
			}
			
			
			
		}
	}

	DAOproduct.productinsert(pid, pname, pdesc, pprice, pimagename1, pimagename2, pimagename3);
	response.sendRedirect("productdetail.jsp");
%> 

   
    
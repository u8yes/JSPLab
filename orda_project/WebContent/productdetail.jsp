<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@page import="db.*"%>
<%@page import="java.util.*"%>
   
<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>Features · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/features/">

    

    


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

    
    <!-- Custom styles for this template -->
    <link href="source/css/features.css" rel="stylesheet">
  </head>
  <body>
  
 
<%@ include file = "header.jsp" %>
    

<main>
  
  <div class="b-example-divider"></div>

  <div class="container px-4 py-5" id="hanging-icons">
  <%
	String pid = request.getParameter("pid");

	DTOproduct product = DAOproduct.productDetail(pid);
	
	/* 	String img =  file.getPfilename1();  
		String imgstr = "";
		if (img != null) {
			imgstr = "images/" + img;
		} */
	%>
	
    <h2 class="pb-2 border-bottom"><%=product.getPname() %></h2>
    
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-2">
      <div class="col d-flex align-items-start">
        
        <div>
       	  <img src="source/img/<%=product.getPfilename1() %>" width=300px class="card-img-top" alt="...">
          <h2><%=product.getPdesc() %></h2>
          
          
          <div class="form-group row">
			<label class="col-sm-1 d-flex justify-content-end"></label>
			<div class="col-sm-7 d-flex justify-content-end">
				<a href="productlist.jsp" class="btn btn-secondary" role="button">제품목록 &laquo;</a>		
			</div>	
		  </div>
        </div>
      </div>
      
      
      
    </div>
  </div>

  
    
  
</main>

<%@ include file = "../footer.jsp" %>

      
  </body>
</html>

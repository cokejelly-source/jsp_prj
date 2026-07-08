<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("respnseHtml.jsp =>"+request.getMethod());
	System.out.println("respnseHtml.jsp =>"+request.getParameter("name"));
	System.out.println("respnseHtml.jsp =>"+request.getParameter("age"));
%>
<marquee behavior="scroll" direction="left" scrollamount="5">안녕하세요</marquee>
<%@page import="java.util.UUID" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/siteProperty.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String uuid=UUID.randomUUID().toString(); %>
원본 <%=uuid %><td>
-삭제<%=uuid.replaceAll("-", "") %><td>
<hr>
<%
String name="테스트";
//한글이 
%>

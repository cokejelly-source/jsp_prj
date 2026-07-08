<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="kr.co.sist.board.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/siteProperty.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String sessionId="test"; 
	String sessionName="테스트";
	pageContext.setAttribute("userId", sessionId);
	pageContext.setAttribute("userName", sessionName);
%>
<%
if("GET".equals(request.getMethod())){
	return;
}//end if
request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bDTO" class="kr.co.sist.board.BoardDTO" scope="page"/>
<jsp:setProperty name="bDTO" property="*"/>
<jsp:setProperty name="bDTO" property="ip" value="<%=request.getRemoteAddr() %>"/>
<%
//request는 web parameter를 받을 수 없다.
File saveDir=new File("C:/Users/cokejelly/git/jsp_prj/jsp_prj/src/main/webapp/upload");
MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath());
bDTO.setTitle(URLDecoder.decode(URLEncoder.encode(mr.getParameter("title"),"8859_1"),"UTF-8"));
bDTO.setContent(mr.getParameter("content"));

out.println(bDTO);
BoardService bs=new BoardService();
pageContext.setAttribute("result", bs.addBoard(bDTO));
%>
<script type="text/javascript">
var msg="글 저장 중 문제가 발생하였습니다. 잠시 후 다시 시도";
<c:choose>
<c:when test="${result}"
	alert("글을 작성하였습니다.");
	location.href="boardList.jsp"
</c:when>
<c:otherwise>
	alert("글 저장 중 문제가 발생하였습니다. \n 잠시 후 다시 시도");
	history.back();
</c:otherwise>
</c:choose>
</script>
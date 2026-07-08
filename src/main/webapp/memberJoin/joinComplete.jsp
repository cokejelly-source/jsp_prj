<%@page import="kr.co.sist.user.member.MemberService"%>
<%@page import="kr.co.sist.user.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
//POST방식일 때 한글 처리
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입 완료 | BallPick</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/kr.user.member/member.css">
</head>
<body>

<main class="member-page">
    <section class="member-shell">
        <h1 class="member-title">회원가입</h1>
        <div class="member-steps" aria-label="회원가입 단계">
            <div class="member-step"><span class="member-step-number">1</span>약관동의</div>
            <div class="member-step"><span class="member-step-number">2</span>정보입력</div>
            <div class="member-step active"><span class="member-step-number">3</span>가입완료</div>
        </div>

        <div class="member-result">
            <div class="member-result-icon">✓</div>
            <jsp:useBean id="mDTO" class="kr.co.sist.user.member.MemberDTO" scope="page"/>
            <jsp:setProperty property="*" name="mDTO"/>
            <jsp:setProperty property="ip" name="mDTO" value="<%=request.getRemoteAddr() %>"/>
            <%
            /* //web parameter 값 받기
            String smsReceiveYN=request.getParameter("smsReceiveYN");
			String emailReceiveYN=request.getParameter("emailReceiveYN");
	
			String memberCode=request.getParameter("memberCode");
			String password=request.getParameter("password");
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String phone1=request.getParameter("phone1");
			String phone2=request.getParameter("phone2");
			String phone3=request.getParameter("phone3");
			String zipcode=request.getParameter("zipcode");
			String address=request.getParameter("address");
			String address2=request.getParameter("address2");
			String ip=request.getRemoteAddr();
			
		  	String[] hobby=request.getParameterValues("hobby");
		  	
		  	//받아온 parameter 값을 DTO에 입력
		  	MemberDTO mDTO=new MemberDTO();
		  	mDTO.setSmsReceiveYN(Integer.parseInt(smsReceiveYN));
		  	mDTO.setEmailReceiveYN(Integer.parseInt(emailReceiveYN));
		  	mDTO.setMemberCode(memberCode);
		  	mDTO.setPassword(password);
		  	mDTO.setEmail(email);
		  	mDTO.setPhone1(phone1);
		  	mDTO.setPhone1(phone2);
		  	mDTO.setPhone1(phone3);
			mDTO.setZipcode(zipcode);
			mDTO.setAddress(address);
			mDTO.setAddress2(address2);
			mDTO.setIp(ip);
			mDTO.setHobby(hobby); */
		  	
			MemberService ms=new MemberService();
			boolean flag=ms.addMember(mDTO);
			
			if(flag){//회원가입 성공
			%>
			<h2><%=mDTO.getName() %>님 회원가입을 축하드립니다.</h2>
			<h2>${param.name }님 회원가입을 축하드립니다.</h2>
			입력하신 정보는 아래와 같습니다.<br>
			<label>이메일 </label> : <%=mDTO.getEmail() %><br>
			<label>이메일 </label> : ${param.email }<br>
			<label>전화번호 </label> : <%=mDTO.getPhone1() %>-<%=mDTO.getPhone2() %>-<%=mDTO.getPhone3() %><br>
			<label>전화번호 </label> : ${param.phone1 }-${param.phone2 }-${param.phone3 }<br>
			<a href="#void">로그인</a>
			<%	
			}else{//회원가입 실패
			%>
			<h2>회원가입 실패</h2>
			<%=mDTO.getName() %>님 회원가입 실패하였습니다.<br>
			<%	
			}//end else
            %>
        </div>

        <div class="member-actions">
            <a class="member-button member-button-light" href="<%=request.getContextPath()%>/index.html">메인으로</a>
            <a class="member-button" href="<%=request.getContextPath()%>/include/logi">로그인</a>
        </div>
    </section>
</main>

</body>
</html>

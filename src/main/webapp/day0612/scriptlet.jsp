<%@page import="java.util.Calendar"%>
<%@page import="java.util.List"%>
<%@page import="day0612.TestService"%>
<%@page import="day0612.TestDTO"%>
<%@page import="java.util.Random"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="scriptlet의 사용"
    %>
    
<%
//method 내 정의하는 Java 코드 작성. 변수선언, 연산자사용, 제어문, 객체 생성,
String name="홍길동";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= name %> here</title>
<link rel="shortcut icon" href="http://192.168.0.15/jsp_prj/common/images/favicon.ico"/>
<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js" integrity="sha384-G/EV+4j2dNv+tEPo3++6LCgdCROaejBqfUeNjuKAiuXbjrxilcCdDz6ZAVfHWe1Y" crossorigin="anonymous"></script>


<style type="text/css">
#wrap{ width: 1000px; height: 900px; margin: 0px auto;  }
#header{  height: 200px; }
#container{  height: 600px;}
#footer{  height: 100px; }

.age{font-weight: bold;}
.age2{font-weight: bold; color: red;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">
$( function() {
	
});
</script>
</head>
<body>
<div id="wrap">
<div id="header">
</div>
<div id="container">
<%
// _jspService() 안쪽으로 코드가 생성된다.
int age=25; //지역변수 => 초기화를 하지않고 사용하면 error

String css="age";
if(new Random().nextBoolean()){
	css="age2";
}
%>
나이는 <span class="<%= css %>"><%= age %></span>입니다
<table class="table table-hover">
<thead>
<tr>
<th>번호</th>
<th>이름</th>
<th>나이</th>
</tr>
</thead>
<tbody>
<%
TestService ts=new TestService();
List<TestDTO> list=ts.searchMember();

TestDTO tDTO=null;
for(int i=0;i<list.size();i++){
	tDTO=list.get(i);
%>
<tr>
<td><input type="text" value="<%= i+1 %>" readonly="readonly"/></td>
<td><input type="text" value="<%= tDTO.getName() %>"/></td>
<td><%= tDTO.getAge() %>
<select>
<% for(int j=0;j<101;j++){ %>
<option <%= j == tDTO.getAge()?"selected='selected'":""%>><%= j %></option>
<%} %>
<option >
</select>
</td>
<td><button class="btn btn-warning btn-sm">삭제</button></td>
</tr>
<%}//end for %>
</tbody>
</table>
<%
int sum=0;
for(int i=1;i<=100;i++){ 
	sum+=i;
}//end for%>
<%= sum %>

<!-- 올해를 기준으로 (2026) 이전 2년 이후 2년을 옵션으로 보여주는 select을 Calendar를 사용하여 만들어보세요 -->
<%
Calendar cal=Calendar.getInstance();
int year=cal.get(Calendar.YEAR);
int month=cal.get(Calendar.MONTH) + 1;
int day=cal.get(Calendar.DAY_OF_MONTH);
int lastday=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
%>
<select>
<%for(int i=-2;i < 3;i++){%>
<option<%=year+i==year?" selected='selected'":"" %>><%=year+i%></option>
<%} %>
</select>
<span>년</span>
<select>
<%for(int i=1;i<=12;i++){ %>
<option <%=i==month?" selected='selected'":"" %>><%= i %></option>
<%} %>
</select>
<span>월</span>
<select>
<%for(int i=1;i<=lastday;i++){ %>
<option <%=i==day?" selected='selected'":"" %>><%= day %></option>
<%} %>
</select>
<span>일</span>

<!-- 0점~10점까지 선택할 수 있는 라디오버튼 11개 생성 -->
<br>
<div>
<%for(int i=0;i<12;i++){%>
<input type="radio" name="score" value="<%=i %>>" <%=i==5?" checked='checked'":"" %>/><%=i %>점
<%} %>
</div>

<!-- 아래 이미지가 강아지 또는 google.png, naver.png, daum.png가 보여지도록 -->
<%
String[] imgs="default_img2,google,naver,daum".split(",");%>
<img src="../common/images/<%=imgs[new Random().nextInt(imgs.length)]%>.png">
<%
//method안에 method는 중첩정의할 수 없다 : error
//public void test(){
//	
//}
%>
</div>
<div id="footer">
</div>
</div>
</body>
</html>
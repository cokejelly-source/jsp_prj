<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="http://192.168.10.69/jsp_prj/common/images/favicon.ico"/>
<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.min.js" integrity="sha384-G/EV+4j2dNv+tEPo3++6LCgdCROaejBqfUeNjuKAiuXbjrxilcCdDz6ZAVfHWe1Y" crossorigin="anonymous"></script>


<style type="text/css">
#wrap{ width: 1000px; height: 900px; margin: 0px auto;  }
#header{  height: 200px; }
#container{  height: 600px;}
#footer{  height: 100px; }

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">
$( function(){

});//ready
</script>
</head>
<body>
<div id="wrap">
<div id="header">
</div>
<div id="container">
<ul>
<li>요청방식 : GET</li>
<li>요청URL : http://192.168.10.68/jsp_prj/day0616/useRequest.jsp</li>
<li>요청 QueryString : null</li>
<li>요청 protocol : HTTP/1.1</li>
<li>요청 서버명 : 192.168.10.68</li>
<li>요청 서버 port : 80</li>
<li>요청 URI : /jsp_prj/day0616/useRequest.jsp</li>
<li>요청 servlet명 : /day0616/useRequest.jsp</li>
<li>요청 parameter : null</li>
<!-- 이름이 같으면 처음 값만 얻는다. -->
<li>요청 parameter : null</li>
<!-- 이름이 같으면 배열로 처리한다. -->
<li>요청 parameter : null</li>

<li>접속자 ip : 192.168.10.67</li>
<li>접속자 port : 58578</li>
</ul>
<div>
<a href="http://localhost/jsp_prj/day0616/useRequest.jsp?name=kim&age=20&age=21">요청</a>
</div>
<div>
<h2>요청 Header의 값들</h2>
<ul>
<li>host / 192.168.10.68</li>
<li>connection / keep-alive</li>
<li>upgrade-insecure-requests / 1</li>
<li>user-agent / Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36</li>
<li>accept / text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7</li>
<li>accept-encoding / gzip, deflate</li>
<li>accept-language / ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7</li>
<li>cookie / JSESSIONID=253B2A94D74A6F3C2318EBB7766B6F08</li>
</ul>

</div>
</div>
<div id="footer">
</div>
</div>
</body>
</html>
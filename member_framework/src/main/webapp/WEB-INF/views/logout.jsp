<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Log Out</title>
<style>
@font-face {
    font-family: 'establishRetrosansOTF';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2112@1.0/establishRetrosansOTF.woff') format('woff');
    font-weight: normal;
    font-style: normal;}
</style>
  
</head>
<body>

<%
    HttpSession usersession = request.getSession();
    usersession.invalidate();
%>

<!-- 로그아웃 메시지에 폰트 적용 -->
<h1 id="logoutMessage" style="font-family: 'establishRetrosansOTF';"> Logout _page 🪐 </h1>


<!-- 메인화면으로 돌아가는 버튼 -->
<button onClick="index()" style="font-family: 'establishRetrosansOTF';"> 🌐 메인화면 </button> 

<script>

    // 메인 화면으로 리다이렉션
    const index = () => {
        location.href = "/";
    }
</script>

</body>
</html>
